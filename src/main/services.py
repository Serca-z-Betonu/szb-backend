from datetime import datetime, timedelta
import logging
from typing import Dict, List

from src.main.models import Metric, Patient, PrescriptionFulfillment
from src.main.prediction import Predictor

from .mappings import (
    activity_model_to_response,
    activity_request_to_model,
    drug_model_to_response,
    medical_event_model_to_response,
    metric_models_to_response,
    metric_request_to_model,
    patient_model_to_detailed_response,
    patient_model_to_preview_response,
    prediction_features,
    prescribe_request_to_model,
    prescription_status_response,
)
from .repositories import (
    ActivityRepository,
    DrugRepository,
    MedicalHistoryRepository,
    MetricRepository,
    PatientRepository,
    PrescriptionRepository,
)
from .schemas import (
    ActivityRequest,
    MedicalEventResponse,
    MedicalEventType,
    MetricRequest,
    MetricType,
    PrescribeRequest,
    PrescriptionStatusResponse,
    UpdatePrescriptionRequest,
)

logger = logging.getLogger(__name__)

DEFAULT_CHART_WINDOW = timedelta(days=7)


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
            start_timestamp = end_timestamp - DEFAULT_CHART_WINDOW
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


class ActivityService:

    def __init__(self, activity_repository: ActivityRepository):
        self._repository: ActivityRepository = activity_repository

    def create_activity(self, patient_id: int, request: ActivityRequest):
        activity_model = activity_request_to_model(
            request,
            patient_id=patient_id
        )
        self._repository.save(activity_model)

    def get_activities_for_patient(
            self,
            patient_id: int,
            start_timestamp: datetime | None,
            end_timestamp: datetime | None,
    ):
        if not end_timestamp:
            end_timestamp = datetime.now()
        if not start_timestamp:
            start_timestamp = end_timestamp - DEFAULT_CHART_WINDOW
        activities = self._repository.get_for_patient(
            patient_id=patient_id,
            start_timestamp=start_timestamp,
            end_timestamp=end_timestamp
        )
        return [activity_model_to_response(activity, patient_id=patient_id)
                for activity in activities]

class PatientService:

    DEFAULT_METRICS = {
        "AFTER_ACTIVITY_HEARTRATE": 149,
        "BLOOD_PRESSURE_MAX": 131,
        "CHEST_PAIN": 2,
        "CHOLESTEROL": 246,
        "REST_ECG": 1,
    }

    def __init__(
        self,
        patient_repository: PatientRepository,
        metric_repository: MetricRepository,
        predictor: Predictor,
    ):
        self._patient_repository: PatientRepository = patient_repository
        self._metric_repository: MetricRepository = metric_repository
        self._predictor = predictor

    def get_patient_details_by_id(self, patient_id: int):
        patient_model = self._patient_repository.get_by_id(patient_id)
        health_state = self._predict_health_state(patient_model)
        return patient_model_to_detailed_response(
            model=patient_model,
            health_state=health_state
        )

    def get_all_patients_preview_info(self):
        patient_models = self._patient_repository.get_all()
        health_states = {
            patient: self._predict_health_state(patient) for
            patient in patient_models
        }
        return [
            patient_model_to_preview_response(
                model=patient,
                health_state=health_states[patient]
            ) for patient in patient_models
        ]

    def _predict_health_state(self, patient: Patient) -> float:
        latest_metrics = self._metric_repository.get_last_metrics_for_patient(
            patient.patient_id)
        metric_map: Dict[str, float] = {
            metric.metric_type: metric.value for
            metric in latest_metrics
        }
        metric_map = PatientService.DEFAULT_METRICS | metric_map
        features = prediction_features(
            patient=patient,
            chest_pain=metric_map["CHEST_PAIN"],
            rest_blood_pressure=metric_map["BLOOD_PRESSURE_MAX"],
            cholesterol=metric_map["CHOLESTEROL"],
            rest_ecg=metric_map["REST_ECG"],
            heartrate_after_activity=metric_map["AFTER_ACTIVITY_HEARTRATE"],
        )
        logger.info("Predicting using %s", metric_map |
                    {"age": patient.age, "sex": patient.sex})
        return self._predictor.predict_health_state(features)


class DrugService:

    def __init__(self, drug_repository: DrugRepository):
        self._repository: DrugRepository = drug_repository

    def get_all_drugs_preview_info(self):
        drug_models = self._repository.get_all()
        return [drug_model_to_response(drug_model) for
                drug_model in drug_models]


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

    def update_prescription(
        self,
        prescription_id: int,
        request: UpdatePrescriptionRequest
    ):
        self._repository.update_by_replacement(
            prescription_id=prescription_id,
            drug_id=request.drug_id,
            dose_size=request.dose_size,
            daily_dose_count=request.daily_dose_count,
            end_date=request.end_date,
        )

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
