from datetime import date, datetime
from enum import Enum
from typing import Any, Dict, List
from fastapi.responses import JSONResponse
from pydantic import BaseModel, NonNegativeFloat, NonNegativeInt, PositiveFloat, PositiveInt, root_validator, validator


class MetricType(Enum):
    HEARTRATE = "HEARTRATE"
    AFTER_ACTIVITY_HEARTRATE = "AFTER_ACTIVITY_HEARTRATE"
    WEIGHT = "WEIGHT"
    BLOOD_PRESSURE_MIN = "BLOOD_PRESSURE_MIN"
    BLOOD_PRESSURE_MAX = "BLOOD_PRESSURE_MAX"
    CHEST_PAIN = "CHEST_PAIN"
    CHOLESTEROL = "CHOLESTEROL"
    REST_ECG = "REST_ECG"


class MetricRequest(BaseModel):
    metric_type: MetricType
    value: float
    timestamp: datetime


class MetricSample(BaseModel):
    value: float
    timestamp: datetime


class MetricResponse(BaseModel):
    metric_type: MetricType
    samples: List[MetricSample]


class ActivityRequest(BaseModel):
    duration_us: NonNegativeInt
    end_timestamp: datetime
    description: str


class ActivityResponse(BaseModel):
    duration_us: NonNegativeInt
    end_timestamp: datetime
    description: str


class Sex(Enum):
    MALE = "MALE"
    FEMALE = "FEMALE"


class PatientDetailedResponse(BaseModel):
    patient_id: int
    name: str
    surname: str
    pesel: str
    sex: Sex
    birth_date: date
    age: NonNegativeInt
    health_state: float


class PatientPreviewResponse(BaseModel):
    patient_id: int
    name: str
    surname: str
    sex: Sex
    pesel: str
    health_state: float


class DrugUnit(Enum):
    MG = "MG"
    ML = "ML"


class DrugResponse(BaseModel):
    drug_id: int
    name: str
    unit: DrugUnit


class PrescribeRequest(BaseModel):
    drug_id: int
    start_date: date
    end_date: date
    dose_size: PositiveInt
    daily_dose_count: PositiveInt

    @validator("end_date")
    def end_date_cant_be_ealier_than_today(cls, v: date):
        if datetime.now().date() > v:
            raise ValueError("cant be ealier than today")
        return v


class UpdatePrescriptionRequest(BaseModel):
    drug_id: int | None
    end_date: date | None
    dose_size: PositiveInt | None
    daily_dose_count: PositiveInt | None

    @validator("end_date")
    def end_date_cant_be_ealier_than_today(cls, v: date | None):
        if v is None:
            return
        if datetime.now().date() > v:
            raise ValueError("cant be ealier than today")
        return v

    @root_validator()
    def something_must_change(cls, values_dict: Dict[str, Any]):
        if all(value is None for value in values_dict.values()):
            raise ValueError("nothing changed")
        return values_dict


class PrescriptionStatusResponse(BaseModel):
    prescription_id: int
    drug_id: int
    drug_name: str
    drug_unit: DrugUnit
    average_actual_daily_dosage: NonNegativeFloat
    expected_daily_dosage: PositiveFloat
    expires_at: date


class MedicalEventType(Enum):
    PROCEDURE = "PROCEDURE"
    ADVISE = "ADVISE"


class MedicalEventResponse(BaseModel):
    medical_event_type: MedicalEventType
    summary: str
    description: str
    timestamp: datetime


class MessageResponse(BaseModel):
    message: str


def error_message_response(
    exception: Exception,
    status: int,
) -> JSONResponse:
    content = MessageResponse(message=str(exception)).dict()
    return JSONResponse(
        status_code=status,
        content=content,
    )
