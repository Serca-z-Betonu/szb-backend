from typing import Callable, List

from sqlalchemy.orm.session import Session

from .models import Metric


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
