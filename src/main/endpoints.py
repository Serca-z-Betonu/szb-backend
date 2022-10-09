from datetime import datetime
from typing import Any, Dict, List

from dependency_injector.wiring import Provide, inject
from fastapi import APIRouter, Depends, status
from src.main.repositories import DrugNotFound, PatientNotFound, PrescriptionExpired, PrescriptionNotFound

from src.main.services import ActivityService, DrugService, MedicalAlertService, MedicalHistoryService, MetricService, PatientService, PrescriptionService

from .containers import Container
from .schemas import ActivityRequest, ActivityResponse, DrugResponse, MedicalAlertRequest, MedicalAlertResponse, MedicalEventResponse, MessageResponse, MetricRequest, MetricResponse, MetricType, PatientDetailedResponse, PatientPreviewResponse, PrescribeRequest, PrescriptionStatusResponse, UpdatePrescriptionRequest, error_message_response


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
    try:
        metric_service.create_metrics(patient_id=patient_id, requests=requests)
        return MessageResponse(message="metric added")
    except PatientNotFound as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.get(
    "/metrics",
    response_model=MetricResponse,
)
@inject
def read_metric_for_patient(
    patient_id: int,
    metric_type: MetricType,
    start_timestamp: datetime | None = None,
    end_timestamp: datetime | None = None,
    metric_service: MetricService = Depends(Provide[Container.metric_service])
):
    return metric_service.get_metrics_for_patient(
        patient_id=patient_id,
        metric_type=metric_type,
        start_timestamp=start_timestamp,
        end_timestamp=end_timestamp,
    )


@router.post(
    "/activities",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse,
    responses=PATIENT_NOT_FOUND_RESPONSE
)
@inject
def post_activity(
    patient_id: int,
    request: ActivityRequest,
    activity_service: ActivityService = Depends(Provide[Container.activity_service])
):
    try:
        activity_service.create_activity(request=request, patient_id=patient_id)
        return MessageResponse(message="activity added")
    except PatientNotFound as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.get(
    "/activities",
    response_model=List[ActivityResponse],
)
@inject
def read_activities_for_patient(
    patient_id: int,
    start_timestamp: datetime | None = None,
    end_timestamp: datetime | None = None,
    activity_service: ActivityService = Depends(Provide[Container.activity_service])
):
    return activity_service.get_activities_for_patient(
        patient_id=patient_id,
        start_timestamp=start_timestamp,
        end_timestamp=end_timestamp,
    )


@router.get(
    "/patients/{patient_id}",
    response_model=PatientDetailedResponse
)
@inject
def read_detailed_patient_info(
    patient_id: int,
    patient_service: PatientService = Depends(
        Provide[Container.patient_service])
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
    patient_service: PatientService = Depends(
        Provide[Container.patient_service])
):
    return patient_service.get_all_patients_preview_info()


@router.get(
    "/prescriptions",
    response_model=List[PrescriptionStatusResponse],
)
@inject
def read_patient_prescriptions_valid_now(
    patient_id: int,
    prescription_service: PrescriptionService =
        Depends(Provide[Container.prescription_service])
):
    return prescription_service.get_prescriptions_valid_now_for(patient_id)


@router.get(
    "/drugs",
    response_model=List[DrugResponse],
)
@inject
def read_all_drugs(
    drug_service: DrugService = Depends(Provide[Container.drug_service])
):
    return drug_service.get_all_drugs_preview_info()

@router.post(
    "/prescriptions",
    status_code=status.HTTP_201_CREATED,
    response_model=MessageResponse,
)
@inject
def prescribe(
    patient_id: int,
    request: PrescribeRequest,
    prescription_service: PrescriptionService =
        Depends(Provide[Container.prescription_service])
):
    try:
        prescription_service.prescribe(
            patient_id=patient_id,
            request=request
        )
        return MessageResponse(message="new prescription created")
    except (PatientNotFound, DrugNotFound) as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.post(
    "/prescriptions/update",
    response_model=MessageResponse,
)
@inject
def update_prescription(
    prescription_id: int,
    request: UpdatePrescriptionRequest,
    prescription_service: PrescriptionService =
        Depends(Provide[Container.prescription_service])
):
    try:
        prescription_service.update_prescription(
            request=request,
            prescription_id=prescription_id,
        )
        return MessageResponse(message="prescription updated")
    except (PrescriptionNotFound, DrugNotFound) as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)
    except (PrescriptionExpired) as e:
        return error_message_response(e, status.HTTP_400_BAD_REQUEST)


@router.post(
    "/prescriptions/fulfill",
    status_code=status.HTTP_201_CREATED,
)
@inject
def fulfill_prescription(
    prescription_id: int,
    timestamp: datetime | None,
    prescription_service: PrescriptionService =
        Depends(Provide[Container.prescription_service])
):
    try:
        prescription_service.fulfill(
            prescription_id=prescription_id,
            timestamp=timestamp,
        )
        return MessageResponse(message="prescription fulfilled")
    except PrescriptionNotFound as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.get(
    "/history",
    response_model=List[MedicalEventResponse],
)
@inject
def read_patients_medical_history(
    patient_id: int,
    medical_history_service: MedicalHistoryService =
        Depends(Provide[Container.medical_history_service])
):
    return medical_history_service.get_patients_medical_history(patient_id)


@router.post(
    "/medical-alerts",
    response_model=MessageResponse,
    responses=PATIENT_NOT_FOUND_RESPONSE
)
@inject
def create_medical_alert(
    patient_id: int,
    request: MedicalAlertRequest,
    medical_alert_service: MedicalAlertService = Depends(Provide[Container.medical_alert_service])
):
    try:
        medical_alert_service.create_medical_alert(
            patient_id=patient_id,
            request=request
        )
        return MessageResponse(message="medical alert added")
    except PatientNotFound as e:
        return error_message_response(e, status.HTTP_404_NOT_FOUND)


@router.get(
    "/medical-alerts",
    response_model=List[MedicalAlertResponse]
)
@inject
def get_medical_alerts_for_patient(
    patient_id: int,
    medical_alert_service: MedicalAlertService = Depends(Provide[Container.medical_alert_service])
):
    return medical_alert_service.get_all_alerts_for_patient(patient_id=patient_id)


@router.post(
    "/medical-alerts/read",
    response_model=List[MedicalAlertResponse]
)
@inject
def get_medical_alerts_for_patient(
    patient_id: int,
    medical_alert_service: MedicalAlertService = Depends(Provide[Container.medical_alert_service])
):
    return medical_alert_service.read_unread_alerts_for_patient(patient_id=patient_id)
