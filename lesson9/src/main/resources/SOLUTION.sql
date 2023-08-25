SELECT s.* FROM student s WHERE s.id IN ( SELECT m.student_id FROM mark m GROUP BY m.student_id HAVING AVG(m.mark) > 8 );
SELECT s.id, s.name FROM student s WHERE s.id IN ( SELECT m.student_id FROM mark m GROUP BY m.student_id HAVING MIN(m.mark) > 7 );
SELECT s.id, s.name FROM student s WHERE s.id IN ( SELECT p.student_id FROM payment p WHERE YEAR(p.payment_date) = 2019 GROUP BY p.student_id HAVING COUNT(p.id) > 2 );