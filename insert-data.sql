truncate table patients, metrics, prescriptions, drugs, prescription_fulfillments;
commit;

insert into patients values(1, 'Jan', 'Kowalski', '76052302345', 'MALE', '1976-05-23');
insert into patients values(2, 'Ewa', 'Kowalska', '99010254321', 'FEMALE', '1999-01-02');
commit;

insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-10-07T10:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 120, '2022-10-07T11:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-10-07T12:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-10-07T13:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-10-07T14:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 120, '2022-10-07T15:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-10-07T16:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-10-07T17:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-10-07T18:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 120, '2022-10-07T19:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-10-07T20:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-10-07T21:00:00Z');

insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 100, '2022-10-07T10:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 120, '2022-10-07T11:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 110, '2022-10-07T12:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-10-07T13:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 100, '2022-10-07T14:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 120, '2022-10-07T15:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 110, '2022-10-07T16:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-10-07T17:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 100, '2022-10-07T18:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 120, '2022-10-07T19:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 110, '2022-10-07T20:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-10-07T21:00:00Z');
commit;

insert into drugs values(1, 'srakolin turbo forte', 'MG');
insert into drugs values(2, 'harnas', 'ML');
commit;

insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(1, 1, '2022-10-01', '2022-11-01', 5, 3);
insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(2, 2, '2022-10-01', '2023-11-01', 5, 3);
commit;

insert into prescription_fulfillments(prescription_id, timestamp) values(1, '2022-10-01T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(1, '2022-10-01T20:00:00Z');
commit;
