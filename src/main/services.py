from typing import List

from .mappings import metric_request_to_model
from .repositories import MetricRepository
from .schemas import MetricRequest


class MetricService:

    def __init__(self, metric_repository: MetricRepository):
        self._repository: MetricRepository = metric_repository

    def create_metrics(self, user_id: int, requests: List[MetricRequest]):
        metric_models = [
            metric_request_to_model(request, user_id=user_id) for
            request in requests
        ]
        self._repository.save_all(metric_models)
