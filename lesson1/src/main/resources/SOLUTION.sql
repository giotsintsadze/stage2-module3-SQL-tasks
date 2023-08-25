CREATE DATABASE University;
USE University;
CREATE TABLE Student (
    id BIGINT PRIMARY KEY,
    name VARCHAR(55),
    birthday DATE,
    group_id INT
);
CREATE TABLE Subject (
    id BIGINT PRIMARY KEY,
    name VARCHAR(250),
    description VARCHAR(255),
    grade INT
);

CREATE TABLE PaymentType (
    id BIGINT PRIMARY KEY,
    name VARCHAR(55)
);

CREATE TABLE Payment (
    id BIGINT PRIMARY KEY,
    type_id BIGINT,
    amount DECIMAL,
    student_id BIGINT,
    payment_date DATETIME,
    FOREIGN KEY (type_id) REFERENCES PaymentType(id),
    FOREIGN KEY (student_id) REFERENCES Student(id)
);

CREATE TABLE Mark (
    id BIGINT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT,
    FOREIGN KEY (student_id) REFERENCES Student(id),
    FOREIGN KEY (subject_id) REFERENCES Subject(id)
);