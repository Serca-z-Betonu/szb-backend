truncate table patients, metrics, prescriptions, drugs, prescription_fulfillments, medical_events;
commit;

insert into patients values(1, 'Jan', 'Kowalski', '76052302345', 'MALE', '1976-05-23');
insert into patients values(2, 'Ewa', 'Kowalska', '99010254321', 'FEMALE', '1999-01-02');
insert into patients values(3, 'Kacper', 'Duży', '99010254321', 'MALE', '1999-01-02');
insert into patients values(4, 'Danuta', 'Mała', '99010254321', 'FEMALE', '1999-01-02');
insert into patients values(5, 'Marianna', 'Wąska', '99010254321', 'FEMALE', '1999-01-02');
insert into patients values(6, 'Jacek', 'Szeroki', '99010254321', 'MALE', '1999-01-02');
insert into patients values(7, 'Maciek', 'Niski', '99010254321', 'MALE', '1999-01-02');
insert into patients values(8, 'Włodzimierz', 'Biały', '99010254321', 'MALE', '1999-01-02');
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

insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 80, '2022-10-02T08:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 80.5, '2022-10-02T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.7, '2022-10-03T08:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79, '2022-10-03T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 78.6, '2022-10-04T08:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 79.5, '2022-10-04T21:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 81.1, '2022-10-07T08:00:00Z');
insert into metrics (patient_id, metric_type, value, timestamp) values(1, 'WEIGHT', 81.5, '2022-10-07T21:00:00Z');

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
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-05T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-06T20:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-07T07:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-07T13:00:00Z');
insert into prescription_fulfillments(prescription_id, timestamp) values(2, '2022-10-07T20:00:00Z');
commit;

insert into medical_events(patient_id, medical_event_type, summary, description, timestamp)
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
commit;
