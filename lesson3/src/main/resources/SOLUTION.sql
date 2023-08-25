ALTER TABLE student MODIFY birthday DATE NOT NULL;

ALTER TABLE mark MODIFY mark INT NOT NULL CHECK (mark >= 1 AND mark <= 10);
MODIFY student_id BIGINT NOT NULL;
MODIFY subject_id BIGINT NOT NULL;

ALTER TABLE subject MODIFY grade INT NOT NULL CHECK (grade >= 1 AND grade <= 5);

ALTER TABLE paymenttype MODIFY name VARCHAR(45) UNIQUE;

ALTER TABLE payment MODIFY type_id BIGINT NOT NULL;
MODIFY amount decimal NOT NULL;
MODIFY payment_date DateTime NOT NULL;