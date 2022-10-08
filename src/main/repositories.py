from typing import Callable, List
from datetime import datetime
from sqlalchemy import select

from sqlalchemy.orm.session import Session

from .models import Metric, Patient


class MetricRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

    def save_all(self, metrics: List[Metric]):
        with self._new_session() as session:
            for metric in metrics:
                session.add(metric)
            session.commit()
            for metric in metrics:
                session.refresh(metric)
            return metrics

    def _new_session(self) -> Session:
        return self._session_factory()


class PatientRepository:

    def __init__(self, session_factory: Callable[..., Session]):
        self._session_factory = session_factory

    def get_by_id(self, patient_id: int):
        statement = select(Patient).where(Patient.patient_id == patient_id)
        with self._new_session() as session:
            patient: Patient | None = session.execute(statement).scalars().first()
            if patient:
                return patient
            else:
                raise PatientNotFound(patient_id)

    def get_all(self):
        statement = select(Patient)
        with self._new_session() as session:
            patients: List[Patient] = session.execute(statement).scalars().all()
            return patients

    def _new_session(self) -> Session:
        return self._session_factory()


class PatientNotFound(RuntimeError):

    def __init__(self, patient_id: int) -> None:
        self.patient_id = patient_id
        super().__init__(f"Patient with id {patient_id} not found")
