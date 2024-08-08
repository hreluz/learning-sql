SELECT booking_date, COUNT(booking_date)
FROM bookings
-- the where is applied before COUNT, aggregate func
WHERE amount_billed > 30
GROUP BY booking_date;


SELECT booking_date, COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 30;