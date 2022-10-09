from typing import Callable, List, Tuple, Type
from datetime import date, datetime, timedelta
from sqlalchemy import and_, func, select
from sqlalchemy.orm import joinedload, subqueryload

from sqlalchemy.orm.session import Session
from sqlalchemy.exc import IntegrityError

from .models import Activity, Base, Drug, MedicalAlert, MedicalEvent, Metric, Patient, Prescription, PrescriptionFulfillment


class Repository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

    def _new_session(self) -> Session:
        return self._session_factory()


class MetricRepository(Repository):

    def save_all(self, metrics: List[Metric]):
        try:
            with self._new_session() as session:
                for metric in metrics:
                    session.add(metric)
                session.commit()
                for metric in metrics:
                    session.refresh(metric)
                return metrics
        except IntegrityError as e:
            raise PatientNotFound(e.params["patient_id"]) from e

    def get_metrics_for_patient(
        self,
        patient_id: int,
        metric_type: str,
        start_timestamp: datetime,
        end_timestamp: datetime
    ):
        statement = select(Metric).where(
            Metric.patient_id == patient_id,
            Metric.metric_type == metric_type,
            Metric.timestamp >= start_timestamp,
            Metric.timestamp <= end_timestamp,
        ).order_by(Metric.timestamp)
        with self._new_session() as session:
            metrics: List[Metric] = session.execute(statement).scalars().all()
            return metrics

    def get_last_metrics_for_patient(self, patient_id: int) -> List[Metric]:
        with self._new_session() as session:
            subquery = session.query(
                Metric.metric_type,  # type: ignore
                func.max(Metric.timestamp).label("latest_timestamp")
            ).filter(
                Metric.patient_id == patient_id
            ).group_by(Metric.metric_type).subquery('t2')
            metrics: List[Metric] = session.query(Metric).join(
                subquery,
                and_(
                    Metric.metric_type == subquery.c.metric_type,
                    Metric.timestamp == subquery.c.latest_timestamp
                )
            ).all()  # type: ignore
            return metrics


class ActivityRepository(Repository):

    def save(self, activity: Activity):
        try:
            with self._new_session() as session:
                session.add(activity)
                session.commit()
                session.refresh(activity)
                return activity
        except IntegrityError as e:
            raise PatientNotFound(e.params["patient_id"]) from e

    def get_for_patient(
        self,
        patient_id: int,
        start_timestamp: datetime,
        end_timestamp: datetime
    ):
        statement = select(Activity).where(
            Activity.patient_id == patient_id,
            Activity.end_timestamp >= start_timestamp,
            Activity.end_timestamp <= end_timestamp,
        ).order_by(Activity.end_timestamp)
        with self._new_session() as session:
            activities: List[Activity] = session.execute(statement).scalars().all()
            return activities


class PatientRepository(Repository):

    def get_by_id(self, patient_id: int):
        statement = select(Patient).where(Patient.patient_id == patient_id)
        with self._new_session() as session:
            patient: Patient | None = session.execute(
                statement).scalars().first()
            if patient:
                return patient
            else:
                raise PatientNotFound(patient_id)

    def get_all(self):
        statement = select(Patient)
        with self._new_session() as session:
            patients: List[Patient] = session.execute(
                statement).scalars().all()
            return patients


class DrugRepository(Repository):

    def get_all(self):
        statement = select(Drug)
        with self._new_session() as session:
            drugs: List[Drug] = session.execute(statement).scalars().all()
            return drugs


class PrescriptionRepository(Repository):

    def get_for_patient(
        self,
        patient_id: int,
        valid_at: date
    ) -> List[Tuple[Prescription, Drug]]:
        statement = select(Prescription, Drug).join(Drug).where(
            Prescription.patient_id == patient_id,
            Prescription.expired == False,
            Prescription.start_date <= valid_at,
            Prescription.end_date >= valid_at
        ).options(subqueryload(Prescription.fulfillments))
        with self._new_session() as session:
            result = session.execute(statement) \
                .all()
            return [tuple(row) for row in result]

    def save(self, prescription: Prescription):
        try:
            with self._new_session() as session:
                session.add(prescription)
                session.commit()
                session.refresh(prescription)
                return prescription
        except IntegrityError as e:
            if is_foreign_key_violation(e, of_table=Patient):
                raise PatientNotFound(e.params["patient_id"]) from e
            elif is_foreign_key_violation(e, of_table=Drug):
                raise DrugNotFound(e.params["drug_id"]) from e
            raise

    def update_by_replacement(
        self,
        prescription_id: int,
        drug_id: int | None,
        dose_size: int | None,
        daily_dose_count: int | None,
        end_date: date | None,
    ):
        try:
            statement = select(Prescription) \
                .where(Prescription.prescription_id == prescription_id)
            today = datetime.now().date()
            yesterday = today - timedelta(days=1)
            with self._new_session() as session:
                previous: Prescription | None = session.execute(statement) \
                    .scalar()
                if not previous:
                    raise PrescriptionNotFound(prescription_id)
                elif not previous.is_valid_now():
                    raise PrescriptionExpired(prescription_id)


                current = Prescription(
                    patient_id=previous.patient_id,
                    drug_id=drug_id if drug_id else previous.drug_id,
                    dose_size=dose_size if dose_size else previous.dose_size,
                    daily_dose_count=daily_dose_count if daily_dose_count
                        else previous.daily_dose_count,
                    start_date=today,
                    end_date=end_date if end_date else previous.end_date,
                )

                previous.expired = True

                session.merge(previous)
                session.add(current)
                session.commit()
                session.refresh(current)
                return (previous, current)
        except IntegrityError as e:
            if is_foreign_key_violation(e, of_table=Drug):
                raise DrugNotFound(e.params["drug_id"]) from e
            raise

    def save_fulfillment(self, fulfillment: PrescriptionFulfillment):
        try:
            with self._new_session() as session:
                session.add(fulfillment)
                session.commit()
                session.refresh(fulfillment)
                return fulfillment
        except IntegrityError as e:
            if is_foreign_key_violation(e, of_table=Prescription):
                raise PrescriptionNotFound(e.params["prescription_id"]) from e


class MedicalHistoryRepository(Repository):

    def get_for_patient(
        self,
        patient_id: int,
    ):
        statement = select(MedicalEvent).where(
            MedicalEvent.patient_id == patient_id
        )
        with self._new_session() as session:
            medical_events: List[MedicalEvent] = session.execute(statement) \
                .scalars().all()
            return medical_events


class MedicalAlertRepository(Repository):

    def save(self, alert: MedicalAlert):
        try:
            with self._new_session() as session:
                session.add(alert)
                session.commit()
                session.refresh(alert)
                return alert
        except IntegrityError as e:
            if is_foreign_key_violation(e, of_table=Patient):
                raise PatientNotFound(e.params["patient_id"]) from e
            raise

    def get_for_patient(self, patient_id: int) -> List[MedicalAlert]:
        statement = select(MedicalAlert) \
            .where(MedicalAlert.patient_id == patient_id)
        with self._new_session() as session:
            return session.execute(statement).scalars().all()


class PatientNotFound(RuntimeError):

    def __init__(self, patient_id: int) -> None:
        self.patient_id = patient_id
        super().__init__(f"patient with id {patient_id} not found")


class DrugNotFound(RuntimeError):

    def __init__(self, drug_id: int) -> None:
        self.drug_id = drug_id
        super().__init__(f"drug with id {drug_id} not found")


class PrescriptionNotFound(RuntimeError):

    def __init__(self, prescription_id: int) -> None:
        self.prescription_id = prescription_id
        super().__init__(f"prescription with id {prescription_id} not found")


class PrescriptionExpired(RuntimeError):

    def __init__(self, prescription_id: int) -> None:
        self.prescription_id = prescription_id
        super().__init__(
            f"prescription with id {prescription_id} already expired"
        )


def is_foreign_key_violation(error: IntegrityError, of_table: Type[Base]):
    table_name: str = of_table.__tablename__
    return str(error.orig).endswith(
        f"is not present in table \"{table_name}\".\n"
    )
