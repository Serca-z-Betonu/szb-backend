from typing import List

from .mappings import metric_request_to_model, note_model_to_response, note_request_to_model
from .repositories import MetricRepository, NoteRepository
from .schemas import MetricRequest, NoteRequest, NoteResponse


class MetricService:

    def __init__(self, metric_repository: MetricRepository):
        self._repository: MetricRepository = metric_repository

    def create_metrics(self, user_id: int, requests: List[MetricRequest]):
        metric_models = [
            metric_request_to_model(request, user_id=user_id) for
            request in requests
        ]
        self._repository.save_all(metric_models)


class NoteService:

    def __init__(self, note_repository: NoteRepository) -> None:
        self._repository = note_repository

    def create_note(self, request: NoteRequest) -> NoteResponse:
        note_model = note_request_to_model(request)
        self._repository.save(note_model)
        return note_model_to_response(note_model)

    def get_note_by_id(self, note_id: int) -> NoteResponse:
        note_model = self._repository.get_by_id(note_id)
        return note_model_to_response(note_model)

    def update_note(self, note_id: int,
                    request: NoteRequest) -> NoteResponse:
        note_model = note_request_to_model(request, note_id=note_id)
        self._repository.update(note_model)
        return note_model_to_response(note_model)

    def delete_note_by_id(self, note_id: int) -> None:
        self._repository.delete_by_id(note_id)

    def get_all_notes(self) -> List[NoteResponse]:
        return [
            note_model_to_response(note_model)
            for note_model in self._repository.get_all()
        ]
