from .models import Metric, Note
from .schemas import MetricRequest, NoteRequest, NoteResponse


def metric_request_to_model(
        request: MetricRequest,
        user_id: int,
) -> Metric:
    return Metric(
        user_id=user_id,
        metric_type=request.metric_type.value,
        value=request.value,
        timestamp=request.timestamp
    )


def note_model_to_response(model: Note) -> NoteResponse:
    return NoteResponse(
        note_id=model.note_id,
        title=model.title,
        content=model.content,
    )


def note_request_to_model(
        request: NoteRequest,
        note_id: int | None = None
) -> Note:
    return Note(
        note_id=note_id,
        title=request.title,
        content=request.content,
    )
