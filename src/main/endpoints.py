from typing import Any, Dict, List

from dependency_injector.wiring import Provide, inject
from fastapi import APIRouter, Depends, status

from .containers import Container
from .repositories import DuplicateTitleError, NoteNotFoundError
from .schemas import (
    MessageResponse,
    MetricRequest,
    NoteRequest,
    NoteResponse,
    error_message_response,
)
from .services import NoteService


router = APIRouter()


@router.post(
    "/metric",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse
)
@inject
def post_metric(
    user_id: int,
    request: List[MetricRequest],
    note_service: NoteService = Depends(Provide[Container.note_service])
):
    return MessageResponse(message="metric added")
