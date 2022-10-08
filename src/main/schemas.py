from enum import Enum
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


class NoteRequest(BaseModel):
    title: str
    content: str


class NoteResponse(BaseModel):
    note_id: NonNegativeInt
    title: str
    content: str


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
