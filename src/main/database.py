from contextlib import contextmanager
from io import FileIO, TextIOWrapper
import logging
from typing import Callable, Iterator

from sqlalchemy import create_engine, text
from sqlalchemy.orm import Session, scoped_session, sessionmaker

from .models import Base


logger = logging.getLogger(__name__)
logging.getLogger('sqlalchemy').setLevel(logging.INFO)


class Database:

    def __init__(self, url: str, echo: bool) -> None:
        self._engine = create_engine(
            url=url,
            echo=echo,
        )
        self._session_factory: Callable[..., Session] = scoped_session(
            sessionmaker(
                autocommit=False,
                autoflush=False,
                future=True,
                bind=self._engine,
            )
        )

    def create_database(self, wipe: bool = False) -> None:
        if wipe:
            Base.metadata.drop_all(self._engine)
        Base.metadata.create_all(self._engine)

    def insert_data(self, file: TextIOWrapper) -> None:
        query = text(file.read())
        with self._engine.connect() as con:
            con.execute(query)

    @contextmanager
    def session(self) -> Iterator[Session]:
        session = self._session_factory()
        try:
            yield session
        except Exception:
            logger.error("Session exception. Rolling back.")
            session.rollback()
            raise
        finally:
            session.close()
