from datetime import date, datetime
from random import random
from typing import List, Tuple

from dateutil.relativedelta import relativedelta

from .models import Drug, MedicalEvent, Metric, Patient, Prescription
from .schemas import DrugUnit, MedicalEventResponse, MedicalEventType, MetricRequest, MetricResponse, MetricSample, MetricType, PatientDetailedResponse, PatientPreviewResponse, PrescriptionStatusResponse, Sex


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
    now_date = datetime.now().date()
    return relativedelta(now_date, birth_date).years


def prescription_status_response(
    pairs: List[Tuple[Prescription, Drug]],
    now: datetime
):
    return [PrescriptionStatusResponse(
        prescription_id=prescription.prescription_id,
        drug_id=drug.drug_id,
        drug_name=drug.name,
        drug_unit=DrugUnit(drug.unit),
        average_actual_daily_dosage=_average_actual_daily_dosage(
            prescription=prescription,
            now=now),
        expected_daily_dosage=_expected_daily_dosage(prescription),
    ) for (prescription, drug) in pairs]


def _average_actual_daily_dosage(prescription: Prescription, now: datetime):
    days_since_start = relativedelta(now.date(),
                                     prescription.start_date).days
    taken_count: int = len(prescription.fulfillments)
    return float(taken_count) * prescription.dose_size / days_since_start

def _expected_daily_dosage(prescription: Prescription):
    return prescription.daily_dose_count * prescription.dose_size

def medical_event_model_to_response(model: MedicalEvent):
    return MedicalEventResponse(
        medical_event_type=MedicalEventType(model.medical_event_type),
        summary=model.summary,
        description=model.description,
        timestamp=model.timestamp
    )
