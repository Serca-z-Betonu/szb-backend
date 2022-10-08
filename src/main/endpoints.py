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
from .services import MetricService, NoteService


router = APIRouter()


@router.post(
    "/metric",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse
)
@inject
def post_metric(
    user_id: int,
    requests: List[MetricRequest],
    metric_service: MetricService = Depends(Provide[Container.metric_service])
):
    metric_service.create_metrics(user_id=user_id, requests=requests)
    return MessageResponse(message="metric added")
