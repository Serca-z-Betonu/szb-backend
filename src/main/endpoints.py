from typing import Any, Dict, List

from dependency_injector.wiring import Provide, inject
from fastapi import APIRouter, Depends, status
from src.main.repositories import PatientNotFound

from src.main.services import MetricService, PatientService

from .containers import Container
from .schemas import MessageResponse, MetricRequest, PatientDetailedResponse, PatientPreviewResponse, error_message_response


router = APIRouter()


PATIENT_NOT_FOUND_RESPONSE: Dict[int | str, Dict[str, Any]] = {
    404: {
        "model": MessageResponse
    }
}


@router.post(
    "/metrics",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse,
    responses=PATIENT_NOT_FOUND_RESPONSE
)
@inject
def post_metric(
    patient_id: int,
    requests: List[MetricRequest],
    metric_service: MetricService = Depends(Provide[Container.metric_service])
):
    metric_service.create_metrics(patient_id=patient_id, requests=requests)
    return MessageResponse(message="metric added")


@router.get(
    "/patients/{patient_id}",
    response_model=PatientDetailedResponse
)
@inject
def read_detailed_patient_info(
    patient_id: int,
    patient_service: PatientService = Depends(Provide[Container.patient_service])
):
    try:
        return patient_service.get_patient_details_by_id(patient_id)
    except PatientNotFound as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.get(
    "/patients",
    response_model=List[PatientPreviewResponse],
    responses=PATIENT_NOT_FOUND_RESPONSE
)
@inject
def read_all_patients_preview_info(
    patient_service: PatientService = Depends(Provide[Container.patient_service])
):
    return patient_service.get_all_patients_preview_info()
