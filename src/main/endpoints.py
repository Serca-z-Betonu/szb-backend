from typing import List

from dependency_injector.wiring import Provide, inject
from fastapi import APIRouter, Depends, status

from src.main.services import MetricService, PatientService

from .containers import Container
from .schemas import MessageResponse, MetricRequest, PatientDetailedResponse, PatientPreviewResponse


router = APIRouter()


@router.post(
    "/metrics",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse
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
    return patient_service.get_patient_details_by_id(patient_id)


@router.get(
    "/patients",
    response_model=List[PatientPreviewResponse]
)
@inject
def real_all_patients_preview_info(
    patient_service: PatientService = Depends(Provide[Container.patient_service])
):
    return patient_service.get_all_patients_preview_info()
