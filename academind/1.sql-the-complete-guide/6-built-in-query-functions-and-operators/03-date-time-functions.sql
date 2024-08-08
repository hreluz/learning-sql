SELECT EXTRACT(MONTH FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(DAY FROM last_checkin), last_checkin
FROM memberships;

SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
FROM memberships;