from datetime import date, datetime
from random import random

from dateutil.relativedelta import relativedelta

from .models import Metric, Patient
from .schemas import MetricRequest, PatientDetailedResponse, PatientPreviewResponse, Sex


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


def patient_model_to_detailed_response(model: Patient):
    return PatientDetailedResponse(
        patient_id=model.patient_id,
        name=model.name,
        surname=model.surname,
        pesel=model.pesel,
        sex=Sex(model.sex),
        birth_date=model.birth_date,
        age=_calculate_age(model.birth_date),
        health_state=random(),
    )


def patient_model_to_preview_response(model: Patient):
    return PatientPreviewResponse(
        patient_id=model.patient_id,
        name=model.name,
        pesel=model.pesel,
        surname=model.surname,
        health_state=random(),
    )


def _calculate_age(birth_date: date):
    now_date = datetime.now().date()
    return relativedelta(now_date, birth_date).years
