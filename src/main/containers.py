from dependency_injector.containers import (
    DeclarativeContainer, WiringConfiguration)
from dependency_injector.providers import Configuration, Factory, Singleton

from .database import Database
from .repositories import MetricRepository, NoteRepository
from .services import MetricService, NoteService
from .settings import Settings


class Container(DeclarativeContainer):

    wiring_config = WiringConfiguration(modules=[".endpoints"])

    config = Configuration(
        pydantic_settings=[Settings()]  # type: ignore
    )

    database = Singleton(
        Database,
        url=config.database.url,
        echo=config.database.echo
    )

    metric_repository = Factory(
        MetricRepository,
        session_factory=database.provided.session,
    )

    metric_service = Factory(
        MetricService,
        metric_repository=metric_repository,
    )

    note_repository = Factory(
        NoteRepository,
        session_factory=database.provided.session,
    )

    note_service = Factory(
        NoteService,
        note_repository=note_repository,
    )
