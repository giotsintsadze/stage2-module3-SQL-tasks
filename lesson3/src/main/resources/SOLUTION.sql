CREATE TABLE student (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    birthday DATE NOT NULL,
    groupnumber INT NOT NULL
);

CREATE TABLE subject(
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250),
    description VARCHAR(255),
    grade INT NOT NULL CHECK (grade >= 1 AND grade <= 5)
);

CREATE TABLE mark (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT NOT NULL,
    subject_id BIGINT NOT NULL,
    mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (subject_id) REFERENCES subject(id)
);

CREATE TABLE paymenttype (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) UNIQUE
);

CREATE TABLE payment (
    id BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id BIGINT NOT NULL,
    amount DECIMAL NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    student_id BIGINT NOT NULL,
    FOREIGN KEY (type_id) REFERENCES paymenttype(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);
