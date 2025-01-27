INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '2008-01-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Chris', '2008-02-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Carl', '2008-03-01', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Oliver', '2007-01-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('James', '2007-02-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Lucas', '2007-03-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Henry', '2007-04-01', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Jacob', '2006-01-01', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES ('Logan', '2006-02-01', 3);
INSERT INTO subject (name, description, grade) VALUES ('Art and Music', 'Arts and music class for grade 1', 1);
INSERT INTO subject (name, description, grade) VALUES ('Geography and History', 'Geography and history class for grade 2', 2);
INSERT INTO subject (name, description, grade) VALUES ('PE and Math', 'Physical education and math class for grade 3', 3);
INSERT INTO subject (name, description, grade) VALUES ('Science and IT', 'Science and IT class for grade 4', 4);
INSERT INTO subject (name, description, grade) VALUES ('Subject 1 for Grade 5', 'Description for subject 1 in grade 5', 5);
INSERT INTO subject (name, description, grade) VALUES ('Subject 2 for Grade 5', 'Description for subject 2 in grade 5', 5);
INSERT INTO paymenttype (name) VALUES ('DAILY');
INSERT INTO paymenttype (name) VALUES ('WEEKLY');
INSERT INTO paymenttype (name) VALUES ('MONTHLY');
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name = 'WEEKLY' LIMIT 1), 50.00, CURRENT_TIMESTAMP, (SELECT id FROM student WHERE name = 'John' LIMIT 1));
INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name = 'Chris' LIMIT 1), (SELECT id FROM subject WHERE name = 'Art and Music' LIMIT 1), 8);