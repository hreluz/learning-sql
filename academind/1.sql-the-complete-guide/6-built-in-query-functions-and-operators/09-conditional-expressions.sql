SELECT amount_billed,
    CASE WHEN amount_billed > 30 THEN 'Good Day'
        WHEN amount_billed > 15 THEN 'Normal Day'
        ELSE 'Bad Day'
    END
FROM orders;


SELECT 
    CASE 
        WHEN r.weekday_number = 7 THEN 'Sunday'
        WHEN r.weekday_number = 1 THEN 'Monday'
        WHEN r.weekday_number = 2 THEN 'Tuesday'
        WHEN r.weekday_number = 3 THEN 'Wednesday'
        WHEN r.weekday_number = 4 THEN 'Thursday'
        WHEN r.weekday_number = 5 THEN 'Friday'
        WHEN r.weekday_number = 6 THEN 'Saturday'
        ELSE 'Not found'
    END,
    r.last_checkin
FROM (
    SELECT WEEKDAY(last_checkin) as weekday_number, last_checkin
    FROM memberships
) AS r