SELECT birthday FROM student ORDER BY birthday ASC LIMIT 1;
SELECT MIN(payment_date) FROM payment;
SELECT AVG(m.mark) FROM mark m JOIN subject s ON m.subject_id = s.id WHERE s.name = 'Math';
SELECT MIN(amount) FROM payment WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');