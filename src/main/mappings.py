from datetime import date, datetime
from random import random
from typing import List

from dateutil.relativedelta import relativedelta

from .models import Metric, Patient
from .schemas import MetricRequest, MetricResponse, MetricSample, MetricType, PatientDetailedResponse, PatientPreviewResponse, Sex


def metric_request_to_model(
        request: MetricRequest,
        patient_id: int,
) -> Metric:
    return Metric(
        patient_id=patient_id,
        metric_type=request.metric_type.value,
        value=request.value,
        timestamp=request.timestamp
    )


def metric_models_to_response(
        models: List[Metric],
        expected_metric_type: MetricType
):
    if not all(model.metric_type == expected_metric_type.value for
               model in models):
        raise RuntimeError(
            "Not all metrics are of the same type. Cannot make MetricResponse")
    return MetricResponse(
        metric_type=expected_metric_type,
        samples=[MetricSample(value=model.value, timestamp=model.timestamp) for
                 model in models]
    )


def patient_model_to_detailed_response(model: Patient):
    return PatientDetailedResponse(
        patient_id = model.patient_id,
        name = model.name,
        surname = model.surname,
        pesel = model.pesel,
        sex = Sex(model.sex),
        birth_date = model.birth_date,
        age = _calculate_age(model.birth_date),
        health_state = random(),
    )


def patient_model_to_preview_response(model: Patient):
    return PatientPreviewResponse(
        patient_id = model.patient_id,
        name = model.name,
        pesel = model.pesel,
        surname = model.surname,
        health_state = random(),
    )


def _calculate_age(birth_date: date):
    now_date=datetime.now().date()
    now_date = datetime.now().date()
    return relativedelta(now_date, birth_date).years
