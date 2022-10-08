from datetime import date, datetime
from sqlalchemy import DATE, Column, INTEGER, VARCHAR
from sqlalchemy.dialects.postgresql import CHAR, DOUBLE_PRECISION, ENUM, TIMESTAMP
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

sex_enum = ENUM(
    "MALE",
    "FEMALE",
    name="sex"
)

class Patient(Base):
    __tablename__ = "patients"
    patient_id: int = Column(INTEGER, primary_key=True)    # type: ignore
    name: str = Column(VARCHAR(64))                     # type: ignore
    surname: str = Column(VARCHAR(64))                  # type: ignore
    pesel: str = Column(CHAR(11))                       # type: ignore
    sex = Column(sex_enum)                     # type: ignore
    birth_date: date = Column(DATE)                     # type: ignore
