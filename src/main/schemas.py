from datetime import date, datetime
from enum import Enum
from typing import List
from fastapi.responses import JSONResponse
from pydantic import BaseModel, NonNegativeInt


class MetricType(Enum):
    HEARTRATE = "HEARTRATE"
    WEIGHT = "WEIGHT"
    BLOOD_PRESSURE_MIN = "BLOOD_PRESSURE_MIN"
    BLOOD_PRESSURE_MAX = "BLOOC_PRESSURE_MAX"


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
    pesel: str
    health_state: float


class PrescribeRequest(BaseModel):
    patient_id: int
    drug_id: int
    start_date: date
    end_date: date
    daily_dose_count: int
    dose_size: int


class DrugUnit(Enum):
    MG = "MG"
    ML = "ML"


class PrescriptionStatusResponse(BaseModel):
    prescription_id: int
    drug_id: int
    drug_name: str
    drug_unit: DrugUnit
    average_actual_daily_dosage: float
    expected_daily_dosage: float


class MedicalEventType(Enum):
    PROCEDURE = "PROCEDURE"
    ADVISE = "ADVISE"


class MedicalEventResponse(BaseModel):
    medical_event_type: MedicalEventType
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
