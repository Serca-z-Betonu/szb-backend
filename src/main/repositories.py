from typing import Callable, List
from datetime import datetime

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
        return Patient(
            patient_id=patient_id,
            name="Jakub",
            surname="Kowieski",
            sex="FEMALE",
            birth_date=datetime.now().date()
        )

    def get_all(self):
        return [
            Patient(
                patient_id=1,
                name="Jakub",
                surname="Kowieski",
                sex="FEMALE",
                birth_date=datetime.now().date()
            ), Patient(
                patient_id=2,
                name="Pan",
                surname="Policjant",
                sex="FEMALE",
                birth_date=datetime.now().date()
            )
        ]

    def _new_session(self) -> Session:
        return self._session_factory()


class PatientNotFound(RuntimeError):

    def __init__(self, patient_id: int) -> None:
        self.patient_id = patient_id
        super().__init__(f"Patient with id {patient_id} not found")
