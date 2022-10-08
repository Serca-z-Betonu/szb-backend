from .models import Metric
from .schemas import MetricRequest


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
