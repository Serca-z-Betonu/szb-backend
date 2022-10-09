from datetime import date, datetime
from random import random
from typing import List, Tuple

import numpy as np
from dateutil.relativedelta import relativedelta

from .models import Drug, MedicalEvent, Metric, Patient, Prescription
from .schemas import DrugResponse, DrugUnit, MedicalEventResponse, MedicalEventType, MetricRequest, MetricResponse, MetricSample, MetricType, PatientDetailedResponse, PatientPreviewResponse, PrescribeRequest, PrescriptionStatusResponse, Sex


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


def patient_model_to_detailed_response(
    model: Patient,
    health_state: float
):
    return PatientDetailedResponse(
        patient_id=model.patient_id,
        name=model.name,
        surname=model.surname,
        pesel=model.pesel,
        sex=Sex(model.sex),
        birth_date=model.birth_date,
        age=model.age,
        health_state=health_state,
    )


def patient_model_to_preview_response(
    model: Patient,
    health_state: float
):
    return PatientPreviewResponse(
        patient_id=model.patient_id,
        name=model.name,
        sex=Sex(model.sex),
        pesel=model.pesel,
        surname=model.surname,
        health_state=health_state,
    )


def drug_model_to_response(model: Drug):
    return DrugResponse(
        drug_id=model.drug_id,
        name=model.name,
        unit=DrugUnit(model.unit)
    )


def prescription_status_response(
    pairs: List[Tuple[Prescription, Drug]],
    now: datetime
):
    return [PrescriptionStatusResponse(
        prescription_id=prescription.prescription_id,
        drug_id=drug.drug_id,
        drug_name=drug.name,
        drug_unit=DrugUnit(drug.unit),
        average_actual_daily_dosage=prescription.average_actual_daily_dosage,
        expected_daily_dosage=prescription.expected_daily_dosage,
        expires_at=prescription.start_date,
    ) for (prescription, drug) in pairs]


def prescribe_request_to_model(request: PrescribeRequest, patient_id: int):
    return Prescription(
        patient_id=patient_id,
        drug_id=request.drug_id,
        start_date=request.start_date,
        end_date=request.end_date,
        dose_size=request.dose_size,
        daily_dose_count=request.daily_dose_count,
    )

def medical_event_model_to_response(model: MedicalEvent):
    return MedicalEventResponse(
        medical_event_type=MedicalEventType(model.medical_event_type),
        summary=model.summary,
        description=model.description,
        timestamp=model.timestamp
    )

def prediction_features(patient: Patient):
    return np.array([
        patient.age, # age
        1 if patient.sex == Sex.MALE else 0, # sex
        1, # chest pain
        120, # rest blood pressure
        250, # cholesterol
        1, # rest ecg
        150 # max heartrate
    ])
