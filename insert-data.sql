truncate table patients, metrics, prescriptions, drugs, prescription_fulfillments, medical_events, activities, medical_alerts;
commit;

insert into patients values(1, 'Jan', 'Kowalski', '76052302345', 'MALE', '1976-05-23');
insert into patients values(2, 'Ewa', 'Kowalska', '99010254321', 'FEMALE', '1999-01-02');
insert into patients values(3, 'Kacper', 'Duży', '56010254321', 'MALE', '1956-01-02');
insert into patients values(4, 'Danuta', 'Mała', '77010254321', 'FEMALE', '1977-01-02');
insert into patients values(5, 'Marianna', 'Wąska', '46010254321', 'FEMALE', '1946-01-02');
insert into patients values(6, 'Jacek', 'Szeroki', '86010254321', 'MALE', '1986-01-02');
insert into patients values(7, 'Maciek', 'Niski', '55010254321', 'MALE', '1955-01-02');
insert into patients values(8, 'Włodzimierz', 'Biały', '67010254321', 'MALE', '1967-01-02');
commit;


insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 94, '2022-09-01 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 95, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 104, '2022-09-02 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 98, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 115, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-03 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 92, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 115, '2022-09-04 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 119, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-05 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-06 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 106, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 102, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-09-07 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-08 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 101, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-09-09 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 107, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 92, '2022-09-10 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 97, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 118, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-11 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 119, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-12 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 107, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 107, '2022-09-13 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-14 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 117, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 91, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-09-15 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 97, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 115, '2022-09-16 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 102, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-09-17 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 93, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-18 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 92, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 100, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 101, '2022-09-19 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 109, '2022-09-20 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 96, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 97, '2022-09-21 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 104, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 102, '2022-09-22 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 117, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 115, '2022-09-23 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 118, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 109, '2022-09-24 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 107, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 91, '2022-09-25 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-09-26 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 117, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 110, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 95, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 104, '2022-09-27 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 116, '2022-09-28 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 111, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-29 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 92, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 98, '2022-09-30 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 114, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 91, '2022-10-01 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 116, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 118, '2022-10-02 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 99, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 94, '2022-10-03 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 90, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 94, '2022-10-04 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 111, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 113, '2022-10-05 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 116, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 108, '2022-10-06 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 119, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 93, '2022-10-07 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 118, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 112, '2022-10-08 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 96, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 117, '2022-10-08 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 104, '2022-10-09 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'HEARTRATE', 93, '2022-10-09 14:24:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 126.85, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 128.55, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 120.33, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 127.66, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 129.3, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 121.96, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.91, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 126.12, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 129.17, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 125.22, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 128.05, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 121.35, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 125.4, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.02, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 120.99, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 122.42, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 125.92, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 127.45, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 122.86, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 122.31, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 121.06, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 124.41, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 126.95, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.81, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 122.08, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 129.11, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 124.83, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.7, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 128.41, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 120.51, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.23, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 124.54, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 127.57, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.66, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 122.33, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 125.0, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 121.63, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 128.02, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 129.02, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 121.66, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 120.95, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 125.32, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 124.48, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.81, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 123.75, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 126.29, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 127.15, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 129.35, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MAX', 126.27, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.79, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.07, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 86.86, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 84.41, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 89.02, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.75, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.14, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.04, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.36, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.36, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 89.98, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 89.31, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.5, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 85.93, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 85.89, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.89, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.81, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 86.1, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 84.86, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 86.32, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.03, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.25, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.75, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 84.13, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 89.91, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 88.84, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 88.71, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.66, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 89.9, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 84.42, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.05, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.25, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.26, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.06, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 88.13, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.65, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.16, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 80.06, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.58, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 88.65, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 80.35, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.59, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.81, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.55, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.99, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 81.24, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 83.95, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 82.52, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'BLOOD_PRESSURE_MIN', 88.17, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 99, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 91, '2022-09-01 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 83, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 80, '2022-09-02 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 93, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 83, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-09-03 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 76, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 97, '2022-09-04 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 86, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 78, '2022-09-05 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 77, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 94, '2022-09-06 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 88, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 97, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 83, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 89, '2022-09-07 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 79, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-09-08 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 82, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 75, '2022-09-09 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 72, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 90, '2022-09-10 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 91, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 98, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-09-11 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 91, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-09-12 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 85, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 70, '2022-09-13 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 80, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-09-14 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 72, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 75, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 93, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 88, '2022-09-15 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 81, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 98, '2022-09-16 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 92, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 99, '2022-09-17 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 93, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 91, '2022-09-18 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 89, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 70, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 83, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 81, '2022-09-19 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 84, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 80, '2022-09-20 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 94, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 72, '2022-09-21 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 72, '2022-09-22 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 94, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 87, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 93, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 73, '2022-09-23 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 97, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 81, '2022-09-24 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 84, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 74, '2022-09-25 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 81, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 73, '2022-09-26 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 99, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 96, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 87, '2022-09-27 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 82, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 89, '2022-09-28 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 72, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 87, '2022-09-29 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 85, '2022-09-30 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 92, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 80, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 81, '2022-10-01 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 93, '2022-10-02 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 70, '2022-10-03 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 96, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 91, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 98, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 73, '2022-10-04 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 97, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-10-05 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 84, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 71, '2022-10-06 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 74, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 96, '2022-10-07 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 95, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 80, '2022-10-08 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 92, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 88, '2022-10-08 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 96, '2022-10-09 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'HEARTRATE', 85, '2022-10-09 14:24:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 104.68, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.55, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.07, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 104.36, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.93, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.77, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 108.12, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 108.05, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 106.66, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 104.02, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.38, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.65, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 105.16, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.9, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 104.51, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 105.74, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.79, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.42, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.96, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.55, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.95, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.45, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 104.21, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.54, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.55, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 106.22, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 108.62, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.18, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 101.74, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 109.11, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.28, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.87, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.77, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.47, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.63, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.17, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 101.23, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.02, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 105.11, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.23, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 106.32, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.76, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.88, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.48, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 102.74, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 107.87, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 100.85, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.62, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MAX', 103.83, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.97, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.78, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.05, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 82.23, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 79.14, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.26, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 78.8, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 79.09, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.1, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.9, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 75.48, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 79.86, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 76.27, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 78.82, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.3, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 75.21, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.76, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.3, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 78.19, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.9, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.2, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 77.28, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.79, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.67, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 79.76, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 82.24, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.55, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.79, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.73, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 76.05, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.4, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.55, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.88, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.27, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.8, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.62, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 83.94, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 82.3, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.49, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 82.01, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.8, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.08, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 77.36, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 84.46, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.28, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.94, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 81.52, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 80.0, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'BLOOD_PRESSURE_MIN', 76.54, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 195, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-09-01 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 143, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 148, '2022-09-02 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 144, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 172, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 161, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-09-03 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 168, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 142, '2022-09-04 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 169, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 168, '2022-09-05 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 164, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 199, '2022-09-06 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 183, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 146, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 168, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 171, '2022-09-07 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 176, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 174, '2022-09-08 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 189, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 174, '2022-09-09 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 172, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 177, '2022-09-10 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 194, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 148, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 166, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 179, '2022-09-11 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 197, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 190, '2022-09-12 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 149, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 181, '2022-09-13 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 185, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 181, '2022-09-14 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 172, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 195, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 175, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 183, '2022-09-15 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 143, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 184, '2022-09-16 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 151, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 156, '2022-09-17 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 186, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 164, '2022-09-18 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 193, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 157, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 144, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 178, '2022-09-19 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 148, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 161, '2022-09-20 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 152, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 158, '2022-09-21 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 163, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 172, '2022-09-22 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 155, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 176, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 166, '2022-09-23 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 183, '2022-09-24 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 157, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 185, '2022-09-25 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 198, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 190, '2022-09-26 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 141, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 182, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 155, '2022-09-27 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 161, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 143, '2022-09-28 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 151, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 193, '2022-09-29 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 145, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 158, '2022-09-30 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 148, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 190, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 160, '2022-10-01 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 189, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 166, '2022-10-02 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 189, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 179, '2022-10-03 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 148, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 192, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 159, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 196, '2022-10-04 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 159, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 175, '2022-10-05 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 172, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 159, '2022-10-06 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 170, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 157, '2022-10-07 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 177, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 171, '2022-10-08 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 162, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 194, '2022-10-08 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 180, '2022-10-09 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'HEARTRATE', 192, '2022-10-09 14:24:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 164.33, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 163.48, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.99, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.34, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.78, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.11, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.85, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 162.08, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 169.53, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 162.08, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 169.61, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.32, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 160.83, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.71, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 169.64, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 160.51, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.64, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 163.7, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.85, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.13, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 164.24, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 164.01, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.15, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 160.19, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.32, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.97, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 163.08, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 169.69, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.69, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.83, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.89, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.66, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.71, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.08, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.53, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.71, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.5, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.02, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.16, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.58, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 161.97, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 165.64, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 162.78, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.85, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.1, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.4, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 166.96, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 167.82, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MAX', 168.11, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 130.45, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 138.41, '2022-09-01 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 132.52, '2022-09-02 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 130.79, '2022-09-03 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.82, '2022-09-04 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.55, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.71, '2022-09-05 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.56, '2022-09-06 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.59, '2022-09-07 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.68, '2022-09-08 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 134.99, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 131.26, '2022-09-09 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 138.42, '2022-09-10 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.42, '2022-09-11 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 132.77, '2022-09-12 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 131.29, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.54, '2022-09-13 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 138.58, '2022-09-14 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 131.34, '2022-09-15 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 135.14, '2022-09-16 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.26, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 138.94, '2022-09-17 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.66, '2022-09-18 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.22, '2022-09-19 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 138.94, '2022-09-20 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.54, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 135.51, '2022-09-21 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.58, '2022-09-22 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 137.82, '2022-09-23 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 132.58, '2022-09-24 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.43, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 130.51, '2022-09-25 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.32, '2022-09-26 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 137.26, '2022-09-27 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 134.53, '2022-09-28 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 136.89, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 137.91, '2022-09-29 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.65, '2022-09-30 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 134.35, '2022-10-01 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 132.74, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.35, '2022-10-02 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 130.41, '2022-10-03 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 132.59, '2022-10-04 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 131.21, '2022-10-05 04:48:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 137.71, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 133.21, '2022-10-06 19:12:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 137.34, '2022-10-07 14:24:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 134.08, '2022-10-08 09:36:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'BLOOD_PRESSURE_MIN', 139.95, '2022-10-09 04:48:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.01, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 75.99, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.81, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 76.76, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 76.42, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 80.61, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 81.64, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 77.04, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.59, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 78.52, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 80.58, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 82.95, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 78.37, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.8, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 82.64, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 82.7, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 81.62, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 75.9, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 77.91, '2022-10-08 00:00:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 61.94, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 62.51, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 59.46, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 59.06, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 60.7, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 62.76, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 62.48, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 61.3, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 60.49, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 60.6, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 62.39, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 57.59, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 57.68, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 61.27, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 59.98, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 61.64, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 60.97, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 57.48, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(2, 'WEIGHT', 58.65, '2022-10-08 00:00:00');

insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 156.38, '2022-09-01 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 151.23, '2022-09-03 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 161.25, '2022-09-05 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 150.07, '2022-09-07 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 150.82, '2022-09-09 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 162.26, '2022-09-11 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 154.93, '2022-09-13 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 161.17, '2022-09-15 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 152.7, '2022-09-17 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 157.97, '2022-09-19 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 155.87, '2022-09-21 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 159.59, '2022-09-23 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 158.14, '2022-09-25 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 157.57, '2022-09-27 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 152.06, '2022-09-29 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 152.22, '2022-10-02 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 151.14, '2022-10-04 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 152.75, '2022-10-06 00:00:00');
insert into metrics (patient_id, metric_type, value, timestamp) values(3, 'WEIGHT', 151.78, '2022-10-08 00:00:00');

insert into metrics (patient_id, metric_type, value, timestamp)
  values(3, 'AFTER_ACTIVITY_HEARTRATE', 170, '2022-10-07T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp)
  values(3, 'CHOLESTEROL', 300, '2022-10-07T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp)
  values(3, 'CHEST_PAIN', 3, '2022-10-07T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp)
  values(3, 'REST_ECG', 3, '2022-10-07T21:00:00Z');
commit;

insert into activities (patient_id, duration, end_timestamp, description)
  values(3, '00:13:22', '2022-10-07T21:00:00Z', 'Bieganie');
insert into activities (patient_id, duration, end_timestamp, description)
  values(3, '02:10:43', '2022-10-03T15:00:00Z', 'Rower');
insert into activities (patient_id, duration, end_timestamp, description)
  values(3, '01:04:13', '2022-10-06T17:00:00Z', 'Pływanie');
insert into activities (patient_id, duration, end_timestamp, description)
  values(3, '10:12:33', '2022-10-04T20:00:00Z', 'Wycieczka w góry');
commit;

insert into drugs values(1, 'Ibum', 'MG');
insert into drugs values(2, 'Marsjanki', 'MG');
insert into drugs values(3, 'Apap', 'MG');
insert into drugs values(4, 'Rutinoscorbin', 'MG');
insert into drugs values(5, 'Gripex', 'MG');
insert into drugs values(6, 'Gripex Max', 'MG');
insert into drugs values(7, 'Gripex Ultra', 'MG');
insert into drugs values(8, 'Syrop na kaszel', 'ML');
commit;

insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(1, 1, '2022-10-01', '2022-11-01', 20, 3);
insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(2, 2, '2022-10-01', '2023-11-01', 50, 3);
insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(3, 5, '2022-10-07', '2022-12-20', 15, 2);
insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(3, 6, '2022-10-07', '2022-10-15', 30, 1);
insert into prescriptions (patient_id, drug_id, start_date, end_date, dose_size, daily_dose_count)
  values(3, 7, '2022-10-07', '2022-11-08', 45, 2);
commit;

insert into prescription_fulfillments(prescription_id, timestamp) values(1, '2022-10-01T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(1, '2022-10-01T20:00:00Z');
commit;

insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-01T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-01T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-01T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-02T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-02T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-02T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-03T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-03T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-03T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-04T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-04T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-04T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-05T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-05T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-07T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-07T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-08T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-08T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-08T20:00:00Z');

insert into prescription_fulfillments(prescription_id, timestamp) values(3, '2022-10-07T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(3, '2022-10-08T07:00:00Z');

insert into prescription_fulfillments(prescription_id, timestamp) values(4, '2022-10-08T15:00:00Z');

insert into prescription_fulfillments(prescription_id, timestamp) values(5, '2022-10-07T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(5, '2022-10-08T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(5, '2022-10-08T13:00:00Z');
commit;

insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(1, 'ADVISE', 'Ból Pleców', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
  values(1, 'ADVISE', 'Przeziębienie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(1, 'PROCEDURE', 'Operacja plastyczna prawego łokcia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2020-09-22T20:22:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(1, 'PROCEDURE', 'Przeszczep nerki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2004-5-13T07:23:44');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(1, 'ADVISE', 'Bezsenność', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2015-01-22T12:13:43Z');

insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(2, 'ADVISE', 'Ból Pleców', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
  values(2, 'ADVISE', 'Przeziębienie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(2, 'PROCEDURE', 'Operacja plastyczna prawego łokcia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2020-09-22T20:22:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(2, 'PROCEDURE', 'Przeszczep nerki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2004-5-13T07:23:44');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(2, 'ADVISE', 'Bezsenność', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2015-01-22T12:13:43Z');

insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(3, 'ADVISE', 'Ból Pleców', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
  values(3, 'ADVISE', 'Przeziębienie', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2022-10-06T12:13:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(3, 'PROCEDURE', 'Operacja plastyczna prawego łokcia', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2020-09-22T20:22:43Z');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(3, 'PROCEDURE', 'Przeszczep nerki', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2004-5-13T07:23:44');
insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
  values(3, 'ADVISE', 'Bezsenność', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vitae dictum dui. Suspendisse imperdiet consequat sem ac volutpat. Praesent id sapien enim. Phasellus convallis eu lectus vel suscipit. Pellentesque placerat accumsan ligula, sit amet dictum lorem.
    Donec iaculis ligula quis ante finibus rhoncus. Mauris sit amet rutrum elit, ut blandit ex. Donec quis neque diam. Aenean sagittis enim sit amet magna auctor, ac hendrerit leo facilisis. Curabitur nec rutrum quam. Maecenas quis sagittis est, sed pellentesque leo. Duis blandit dictum mollis.',
    '2015-01-22T12:13:43Z');
commit;

insert into medical_alerts(patient_id, message) values(3, 'Proszę pilnie o umówienie wizyty.');
commit;
