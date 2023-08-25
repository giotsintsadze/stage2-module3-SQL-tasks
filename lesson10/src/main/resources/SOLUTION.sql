SELECT * FROM subject WHERE AVG(mark) > ( SELECT AVG(mark) FROM mark );
SELECT * FROM student WHERE id IN ( SELECT student_id FROM payment GROUP BY student_id HAVING SUM(amount) < ( SELECT SUM(amount) FROM payment GROUP BY student_id ORDER BY SUM(amount) DESC LIMIT 1 ) );