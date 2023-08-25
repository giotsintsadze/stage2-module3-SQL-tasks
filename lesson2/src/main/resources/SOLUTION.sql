INSERT INTO student (name, birthday, groupnumber) VALUES
  ('John', '2000-01-15', 1),
  ('Chris', '2001-03-20', 1),
  ('Carl', '2002-05-10', 1),
  ('Oliver', '2003-07-05', 2),
  ('James', '2002-09-18', 2),
  ('Lucas', '2003-11-22', 2),
  ('Henry', '2001-02-12', 2),
  ('Jacob', '2000-12-01', 3),
  ('Logan', '2001-10-08', 3)
;

INSERT INTO Subject (id, name, description, grade) VALUES
  (1, 'Art and Music', 'Arts and Music subject for grade 1', 1),
  (2, 'Geography', 'Geography subject for grade 2', 2),
  (3, 'History', 'History subject for grade 2', 2),
  (4, 'PE', 'Physical Education subject for grade 3', 3),
  (5, 'Math', 'Math subject for grade 3', 3),
  (6, 'Science', 'Science subject for grade 4', 4),
  (7, 'IT', 'Information Technology subject for grade 4', 4),
  (8, 'Subject 1', 'Subject 1 for grade 5', 5),
  (9, 'Subject 2', 'Subject 2 for grade 5', 5)
;

INSERT INTO PaymentType (id, name) VALUES
  (1, 'DAILY'),
  (2, 'WEEKLY'),
  (3, 'MONTHLY')
;

INSERT INTO Payment (id, type_id, amount, student_id, payment_date) VALUES
   (1, 2, 100.00, 1, NOW()),
   (2, 3, 500.00, 4, NOW()),
   (3, 2, 120.00, 7, NOW()),
   (4, 1, 10.00, 5, NOW())
;

INSERT INTO Mark (id, student_id, subject_id, mark) VALUES
   (1, 2, 1, 8),
   (2, 4, 3, 5),
   (3, 5, 2, 9),
   (4, 8, 5, 4),
   (5, 9, 4, 9)
;