from typing import List

from dependency_injector.wiring import Provide, inject
from fastapi import APIRouter, Depends, status

from src.main.services import MetricService

from .containers import Container
from .schemas import MessageResponse, MetricRequest


router = APIRouter()


@router.post(
    "/metrics",
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
