from datetime import datetime, timedelta
from typing import List

from src.main.models import PrescriptionFulfillment

from .mappings import medical_event_model_to_response, metric_models_to_response, metric_request_to_model, patient_model_to_detailed_response, patient_model_to_preview_response, prescribe_request_to_model, prescription_status_response
from .repositories import DrugRepository, MedicalHistoryRepository, MetricRepository, PatientRepository, PrescriptionRepository
from .schemas import MedicalEventResponse, MedicalEventType, MetricRequest, MetricType, PrescribeRequest, PrescriptionStatusResponse


DEFAULT_METRICS_BUFFER = timedelta(days=7)


class MetricService:

    def __init__(self, metric_repository: MetricRepository):
        self._repository: MetricRepository = metric_repository

    def create_metrics(self, patient_id: int, requests: List[MetricRequest]):
        metric_models = [
            metric_request_to_model(request, patient_id=patient_id) for
            request in requests
        ]
        self._repository.save_all(metric_models)

    def get_metrics_for_patient(
            self,
            patient_id: int,
            metric_type: MetricType,
            start_timestamp: datetime | None,
            end_timestamp: datetime | None,
    ):
        if not end_timestamp:
            end_timestamp = datetime.now()
        if not start_timestamp:
            start_timestamp = end_timestamp - DEFAULT_METRICS_BUFFER
        metrics = self._repository.get_metrics_for_patient(
            patient_id=patient_id,
            metric_type=metric_type.value,
            start_timestamp=start_timestamp,
            end_timestamp=end_timestamp
        )
        return metric_models_to_response(
            models=metrics,
            expected_metric_type=metric_type,
        )


class PatientService:

    def __init__(self, patient_repository: PatientRepository):
        self._repository: PatientRepository = patient_repository

    def get_patient_details_by_id(self, patient_id: int):
        patient_model = self._repository.get_by_id(patient_id)
        return patient_model_to_detailed_response(patient_model)

    def get_all_patients_preview_info(self):
        patient_models = self._repository.get_all()
        return [patient_model_to_preview_response(patient_model) for
                patient_model in patient_models]


class PrescriptionService:

    def __init__(self, prescription_repository: PrescriptionRepository):
        self._repository: PrescriptionRepository = prescription_repository

    def get_prescriptions_valid_now_for(self, patient_id: int):
        pairs = self._repository.get_for_patient(
            patient_id=patient_id,
            valid_at=datetime.now().date()
        )
        return prescription_status_response(pairs, now=datetime.now())

    def prescribe(self, patient_id: int, request: PrescribeRequest):
        prescription_model = prescribe_request_to_model(
            request,
            patient_id=patient_id
        )
        self._repository.save(prescription_model)

    def fulfill(self, prescription_id: int, timestamp: datetime | None):
        if not timestamp:
            timestamp = datetime.now()
        self._repository.save_fulfillment(
            PrescriptionFulfillment(
                prescription_id=prescription_id,
                timestamp=timestamp
            )
        )


class MedicalHistoryService:

    def __init__(self, medical_history_repository: MedicalHistoryRepository):
        self._repository: MedicalHistoryRepository = medical_history_repository

    def get_patients_medical_history(self, patient_id: int):
        medical_event_models = self._repository.get_for_patient(patient_id)
        return [medical_event_model_to_response(model) for
                model in medical_event_models]
