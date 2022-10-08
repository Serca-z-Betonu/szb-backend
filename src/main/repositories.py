from typing import Callable, List, Tuple
from datetime import date, datetime
from sqlalchemy import select
from sqlalchemy.orm import joinedload, subqueryload

from sqlalchemy.orm.session import Session
from sqlalchemy.exc import IntegrityError

from .models import Drug, MedicalEvent, Metric, Patient, Prescription, PrescriptionFulfillment


class MetricRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

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

    def _new_session(self) -> Session:
        return self._session_factory()


class PatientRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

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

    def _new_session(self) -> Session:
        return self._session_factory()


class DrugRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

    def get_by_id(self, drug_id: int):
        statement = select(Drug).where(Drug.drug_id == drug_id)
        with self._new_session() as session:
            drug: Drug | None = session.execute(
                statement).scalars().first()
            if drug:
                return drug
            else:
                raise DrugNotFound(drug_id)

    def _new_session(self) -> Session:
        return self._session_factory()


class PrescriptionRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

    def get_for_patient(
        self,
        patient_id: int,
        valid_at: date
    ) -> List[Tuple[Prescription, Drug]]:
        statement = select(Prescription, Drug).join(Drug).where(
            Prescription.patient_id == patient_id,
            Prescription.start_date <= valid_at,
            Prescription.end_date >= valid_at
        ).options(subqueryload(Prescription.fulfillments))
        with self._new_session() as session:
            result = session.execute(statement) \
                .all()
            return [tuple(row) for row in result]

    def _new_session(self) -> Session:
        return self._session_factory()


class MedicalHistoryRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

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

    def _new_session(self) -> Session:
        return self._session_factory()


class PatientNotFound(RuntimeError):

    def __init__(self, patient_id: int) -> None:
        self.patient_id = patient_id
        super().__init__(f"Patient with id {patient_id} not found")


class DrugNotFound(RuntimeError):

    def __init__(self, drug_id: int) -> None:
        self.drug_id = drug_id
        super().__init__(f"Drug with id {drug_id} not found")
