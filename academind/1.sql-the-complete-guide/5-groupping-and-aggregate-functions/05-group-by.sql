SELECT booking_date, SUM(num_guests)
FROM bookings
GROUP BY booking_date;

SELECT p.name, SUM(b.num_guests)
FROM payment_methods AS p
INNER JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.name;

SELECT b.booking_date, SUM(b.num_guests), p.name, round(AVG(b.amount_tipped), 2)
FROM bookings AS b
INNER JOIN payment_methods AS p ON b.payment_id = p.id
GROUP BY p.id, b.booking_date
