-- INSERT INTO customers(
--     first_name,
--     last_name,
--     email
-- )
-- VALUES(
--     'Ken',
--     'Brooks',
--     'ken@test.com'
-- );


-- SELECT email 
-- FROM customers;

-- SELECT email 
-- FROM customers AS c
-- INNER JOIN orders as o ON o.customer_id = c.id;


SELECT email 
FROM customers AS c
WHERE c.id IN (
    SELECT DISTINCT(o.customer_id) FROM orders o 
);

SELECT email 
FROM customers AS c
WHERE first_name IN ('Max', 'Manu')