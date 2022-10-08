from datetime import datetime, timedelta
from typing import List

from .mappings import metric_models_to_response, metric_request_to_model, patient_model_to_detailed_response, patient_model_to_preview_response
from .repositories import MetricRepository, PatientRepository
from .schemas import MetricRequest, MetricType


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
