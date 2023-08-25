DELETE FROM mark WHERE student_id IN (SELECT id FROM student WHERE grade >= 4);
DELETE FROM payment WHERE student_id IN (SELECT id FROM student WHERE grade >= 4);
DELETE FROM student WHERE grade >= 4;
DELETE FROM mark WHERE mark < 4 AND student_id IN (SELECT id FROM student);
DELETE FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'DAILY');
DELETE FROM paymenttype WHERE name = 'DAILY';
DELETE FROM mark WHERE mark < 7;