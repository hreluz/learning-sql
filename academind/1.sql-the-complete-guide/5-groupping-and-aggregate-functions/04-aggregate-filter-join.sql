SELECT ROUND(AVG(amount_tipped),2)
FROM bookings
WHERE amount_billed > 20 AND num_guests > 2;

SELECT MAX(b.num_guests), MAX(t.num_seats) 
FROM bookings AS b
INNER JOIN tables AS t ON t.id = b.table_id;

SELECT MAX(b.num_guests), MAX(t.num_seats) 
FROM bookings AS b
INNER JOIN tables AS t ON t.id = b.table_id
INNER JOIN payment_methods AS p ON b.payment_id = p.id
WHERE t.num_seats < 5 AND p.name = 'Cash'