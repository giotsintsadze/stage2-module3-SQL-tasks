INSERT INTO student (name, birthday, groupnumber)
VALUES ('John', '2023-01-01', 1),
       ('Chris', '2023-02-02', 1),
       ('Carl', '2023-03-03', 1),
       ('Oliver', '2023-04-04', 2),
       ('James', '2023-05-05', 2),
       ('Lucas', '2023-06-06', 2),
       ('Henry', '2023-07-07', 2),
       ('Jacob', '2023-08-08', 3),
       ('Logan', '2023-09-09', 3);

INSERT INTO subject (name, description, grade)
VALUES ('Art', 'Subject about art', 1),
       ('Music', 'Subject about music', 1),
       ('Geography', 'Subject about geography', 2),
       ('History', 'Subject about history', 2),
       ('PE', 'Subject about PE', 3),
       ('Math', 'Subject about math', 3),
       ('Science', 'Subject about science', 4),
       ('IT', 'Subject about IT', 4);

INSERT INTO mark (student_id, subject_id, mark)
VALUES (1, 1, 8),
       (2, 2, 5),
       (3, 3, 9),
       (4, 4, 4),
       (5, 5, 9);

INSERT INTO paymenttype (name)
VALUES ('DAILY'),
       ('WEEKLY'),
       ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id)
VALUES (2, 100, '2023-08-25', 1),
       (3, 200, '2023-08-26', 2),
       (2, 50, '2023-08-27', 3);