SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;

-- For MySQL
-- SELECT CONVERT(last_checkin,  DATE), CONVERT(last_checkin,  TIME)
-- FROM memberships

-- SELECT EXTRACT(DOW FROM last_checkin), last_checkin -- for PostgreSQL
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin -- for MySQL
-- FROM memberships; 


-- For PostgreSQL

SELECT EXTRACT(DOW FROM last_checkin), last_checkin -- for PostgreSQL
FROM memberships; 

SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships