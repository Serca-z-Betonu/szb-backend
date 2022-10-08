from datetime import date, datetime
from typing import List
from sqlalchemy import DATE, Column, INTEGER, VARCHAR, ForeignKey
from sqlalchemy.dialects.postgresql import CHAR, DOUBLE_PRECISION, ENUM, TIMESTAMP
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship


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
    patient_id: int = Column(                           # type: ignore
        INTEGER,
        ForeignKey("patients.patient_id")
    )
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
    patient_id: int = Column(INTEGER, primary_key=True)  # type: ignore
    name: str = Column(VARCHAR(64))                     # type: ignore
    surname: str = Column(VARCHAR(64))                  # type: ignore
    pesel: str = Column(CHAR(11))                       # type: ignore
    sex = Column(sex_enum)                     # type: ignore
    birth_date: date = Column(DATE)                     # type: ignore


drug_unit_enum = ENUM(
    "MG",
    "ML",
    name="drug_unit"
)


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
    fulfillments = relationship("PrescriptionFulfillment")


class Drug(Base):
    __tablename__ = "drugs"
    drug_id: int = Column(INTEGER, primary_key=True)    # type: ignore
    name: str = Column(VARCHAR(64), unique=True)        # type: ignore
    unit: str = Column(drug_unit_enum)                  # type: ignore
