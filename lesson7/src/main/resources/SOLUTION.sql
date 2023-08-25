SELECT * FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT * FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT * FROM paymenttype ORDER BY name;
SELECT * FROM student ORDER BY name DESC;
SELECT DISTINCT s.* FROM student s INNER JOIN payment p ON s.id = p.student_id WHERE p.amount > 1000 ORDER BY s.birthday ASC;