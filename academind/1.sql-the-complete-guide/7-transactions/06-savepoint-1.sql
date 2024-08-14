START TRANSACTION;

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'Bruce',
    'Wayne',
    'maria@test.com'
);

SAVEPOINT save_1;

SELECT * FROM customers;