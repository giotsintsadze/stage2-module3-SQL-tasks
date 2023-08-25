SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name ASC;
SELECT * FROM student ORDER BY name DESC;
SELECT s.* FROM student s
WHERE EXISTS (SELECT 1 FROM payment p WHERE s.id = p.student_id AND p.amount > 1000) ORDER BY s.birthday ASC;