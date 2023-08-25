CREATE TABLE student
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL
);
CREATE TABLE subject
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250),
    description VARCHAR(255),
    grade int NOT NULL CHECK ( grade >=1 AND grade <= 5 )
);

CREATE TABLE mark
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT,
    subject_id BIGINT,
    mark INT CHECK (mark >= 1 AND mark <= 10),
    foreign key (student_id) references student(id),
    foreign key (subject_id) references subject(id)
);

CREATE TABLE paymenttype
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) UNIQUE
);

CREATE TABLE payment
(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL,
    amount decimal NOT NULL,
    payment_date DateTime NOT NULL,
    student_id BIGINT NOT NULL,
    foreign key (type_id) references paymenttype(id),
    foreign key (student_id) references student(id)
);

