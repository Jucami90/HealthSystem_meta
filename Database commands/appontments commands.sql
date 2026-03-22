create table appointments (
    id bigint primary key auto_increment,
    doctor_id bigint not null,
    patient_id bigint not null,
    appointment_date datetime not null,
    status varchar(20) not null, -- e.g., 'scheduled', 'completed', 'canceled'
    created_at timestamp default current_timestamp
);

create index idx_patient on appointments(patient_id);
create index idx_doctor on appointments(doctor_id);
create index idx_date on appointments(appointment_date);