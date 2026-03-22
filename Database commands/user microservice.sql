create table users (
    id BIGINT primary key auto_increment,
    name VARCHAR(100) not null,
    email VARCHAR(100) not null unique,
    password VARCHAR(255) not null,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table doctor_details (
    id bigint primary key auto_increment,
    user_id bigint not null,
    specialization varchar(100) not null,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE INDEX idx_user_email ON users(email);