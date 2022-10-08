from dependency_injector.containers import (
    DeclarativeContainer, WiringConfiguration)
from dependency_injector.providers import Configuration, Factory, Singleton

from .database import Database
from .repositories import DrugRepository, MedicalHistoryRepository, MetricRepository, PatientRepository, PrescriptionRepository
from .services import DrugService, MedicalHistoryService, MetricService, PatientService, PrescriptionService
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

    patient_repository = Factory(
        PatientRepository,
        session_factory=database.provided.session,
    )

    patient_service = Factory(
        PatientService,
        patient_repository=patient_repository,
    )

    drug_repository = Factory(
        DrugRepository,
        session_factory=database.provided.session,
    )

    drug_service = Factory(
        DrugService,
        drug_repository=drug_repository,
    )

    prescription_repository = Factory(
        PrescriptionRepository,
        session_factory=database.provided.session,
    )

    prescription_service = Factory(
        PrescriptionService,
        prescription_repository=prescription_repository,
    )

    medical_history_repository = Factory(
        MedicalHistoryRepository,
        session_factory=database.provided.session,
    )

    medical_history_service = Factory(
        MedicalHistoryService,
        medical_history_repository=medical_history_repository,
    )
