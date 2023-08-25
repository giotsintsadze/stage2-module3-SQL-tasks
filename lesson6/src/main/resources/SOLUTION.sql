SELECT * FROM payment WHERE type_id IN (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art and music');
SELECT s.* FROM student s INNER JOIN payment p ON s.id = p.student_id INNER JOIN paymenttype pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';
SELECT s.* FROM student s INNER JOIN mark m ON s.id = m.student_id INNER JOIN subject sub ON m.subject_id = sub.id WHERE sub.name = 'Math';