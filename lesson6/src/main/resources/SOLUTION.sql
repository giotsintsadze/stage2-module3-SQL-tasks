SELECT * FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'MONTHLY');
SELECT * FROM mark WHERE subject_id = (SELECT id FROM subject WHERE name = 'Art');
SELECT DISTINCT s.* FROM student s INNER JOIN payment p ON s.id = p.student_id INNER JOIN paymenttype pt ON p.type_id = pt.id WHERE pt.name = 'WEEKLY';
SELECT DISTINCT s.* FROM student s INNER JOIN mark m ON s.id = m.student_id INNER JOIN subject sb ON m.subject_id = sb.id WHERE sb.name = 'Math';