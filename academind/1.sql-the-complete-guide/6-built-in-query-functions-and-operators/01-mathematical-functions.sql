SELECT SUM(price * billing_frequency) AS annual_revenue
FROM memberships;

-- CEIL()
-- FLOOR()
-- ROUND()
-- TRUNC() TRUNCATE() mysql

SELECT ROUND(consumption, 1)
FROM memberships;

SELECT CEIL(consumption)
FROM memberships;

SELECT FLOOR(consumption)
FROM memberships;

SELECT TRUNCATE(consumption, 1)
FROM memberships;