-- mysql and postgresql
SELECT CONCAT(first_name, ' ', last_name) 
FROM memberships;

-- Postgresql only
SELECT first_name || ' ' || last_name
FROM memberships;

SELECT CONCAT('$ ', price)
FROM memberships;