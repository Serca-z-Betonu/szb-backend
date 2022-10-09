from datetime import date, datetime, timedelta
from typing import List
from dateutil.relativedelta import relativedelta
from keras.utils.generic_utils import default
from sqlalchemy import DATE, TEXT, Column, INTEGER, VARCHAR, ForeignKey
from sqlalchemy.dialects.postgresql import BOOLEAN, CHAR, DOUBLE_PRECISION, ENUM, TIMESTAMP
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship
from sqlalchemy.sql import expression


Base = declarative_base()


metric_type_enum = ENUM(
    "HEARTRATE",
    "AFTER_ACTIVITY_HEARTRATE",
    "WEIGHT",
    "BLOOD_PRESSURE_MIN",
    "BLOOD_PRESSURE_MAX",
    "CHEST_PAIN",
    "CHOLESTEROL",
    "REST_ECG",
    name="metric_type"
)


class Metric(Base):
    __tablename__ = "metrics"
    metric_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    patient_id: int = Column(                           # type: ignore
        INTEGER,
        ForeignKey("patients.patient_id")
    )
    metric_type: str = Column(metric_type_enum)         # type: ignore
    value: float = Column(DOUBLE_PRECISION)             # type: ignore
    timestamp: datetime = Column(TIMESTAMP)             # type: ignore


sex_enum = ENUM(
    "MALE",
    "FEMALE",
    name="sex"
)


class Patient(Base):
    __tablename__ = "patients"
    patient_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    name: str = Column(VARCHAR(64))                     # type: ignore
    surname: str = Column(VARCHAR(64))                  # type: ignore
    pesel: str = Column(CHAR(11))                       # type: ignore
    sex = Column(sex_enum)                     # type: ignore
    birth_date: date = Column(DATE)                     # type: ignore

    @property
    def age(self):
        now_date = datetime.now().date()
        return relativedelta(now_date, self.birth_date).years


class PrescriptionFulfillment(Base):
    __tablename__ = "prescription_fulfillments"
    prescription_fulfillment_id: int = Column(  # type: ignore
        INTEGER, primary_key=True)
    prescription_id: int = Column(  # type: ignore
        INTEGER,
        ForeignKey("prescriptions.prescription_id"),
    )
    timestamp: datetime = Column(TIMESTAMP)  # type: ignore


class Prescription(Base):
    __tablename__ = "prescriptions"
    prescription_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    patient_id: int = Column(INTEGER, ForeignKey(
        "patients.patient_id"))  # type: ignore
    drug_id: int = Column(INTEGER, ForeignKey("drugs.drug_id"))  # type: ignore
    start_date: date = Column(DATE)  # type: ignore
    end_date: date = Column(DATE)  # type: ignore
    dose_size: int = Column(INTEGER)  # type: ignore
    daily_dose_count: int = Column(INTEGER)  # type: ignore
    expired: bool = Column(BOOLEAN, server_default=expression.false())  # type: ignore
    fulfillments = relationship("PrescriptionFulfillment")

    def is_valid_now(self) -> bool:
        return not self.expired and \
            date.today() <= self.end_date and \
            date.today() >= self.start_date

    @property
    def average_actual_daily_dosage(self):
        now_date = datetime.now().date()
        days_since_start = relativedelta(now_date, self.start_date).days
        if days_since_start == 0:
            return 0
        taken_count: int = len(self.fulfillments)
        return float(taken_count) * self.dose_size / days_since_start

    @property
    def expected_daily_dosage(self):
        return self.daily_dose_count * self.dose_size


drug_unit_enum = ENUM(
    "MG",
    "ML",
    name="drug_unit"
)


class Drug(Base):
    __tablename__ = "drugs"
    drug_id: int = Column(INTEGER, primary_key=True)    # type: ignore
    name: str = Column(VARCHAR(64), unique=True)        # type: ignore
    unit: str = Column(drug_unit_enum)                  # type: ignore


medical_event_type_enum = ENUM(
    "ADVISE",
    "PROCEDURE",
    name="medical_event_type"
)


class MedicalEvent(Base):
    __tablename__ = "medical_events"
    medical_event_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    patient_id: int = Column(  # type: ignore
        INTEGER,
        ForeignKey("patients.patient_id")
    )
    medical_event_type = Column(medical_event_type_enum)
    summary: str = Column(VARCHAR(128))  # type: ignore
    description: str = Column(TEXT)  # type: ignore
    timestamp: datetime = Column(TIMESTAMP)  # type: ignore
