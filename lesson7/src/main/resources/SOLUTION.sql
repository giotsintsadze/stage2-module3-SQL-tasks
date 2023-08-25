SELECT mark FROM mark WHERE mark > 6 ORDER BY mark DESC;
SELECT amount FROM payment WHERE amount < 300 ORDER BY amount ASC;
SELECT name FROM paymenttype ORDER BY name;
SELECT name FROM student ORDER BY name DESC;
SELECT * FROM student WHERE id IN (SELECT student_id FROM payment WHERE amount > 1000) ORDER BY birthday ASC;