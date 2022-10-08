from datetime import datetime
from sqlalchemy import Column, INTEGER, TEXT, VARCHAR
from sqlalchemy.dialects.postgresql import DOUBLE_PRECISION, ENUM, TIMESTAMP
from sqlalchemy.ext.declarative import declarative_base


Base = declarative_base()


metric_type_enum = ENUM(
    "HEARTRATE",
    "WEIGHT",
    "BLOOD_PRESSURE_MIN",
    "BLOOC_PRESSURE_MAX",
    name="metric_type"
)


class Metric(Base):
    __tablename__ = "metrics"
    metric_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    user_id: int = Column(INTEGER)                      # type: ignore
    metric_type = Column(metric_type_enum)
    value: float = Column(DOUBLE_PRECISION)             # type: ignore
    timestamp: datetime = Column(TIMESTAMP)             # type: ignore
