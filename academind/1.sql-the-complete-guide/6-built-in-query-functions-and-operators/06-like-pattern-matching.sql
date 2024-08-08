SELECT first_name LIKE '_o%', first_name
FROM memberships;

SELECT first_name 
FROM memberships
WHERE first_name LIKE 'J___';

SELECT first_name LIKE 'Ma%', first_name
FROM memberships