BEGIN;

INSERT INTO customers(
    first_name,
    last_name,
    email
)
VALUES(
    'John',
    'Jones',
    'jjones@test.com'
);

INSERT INTO orders(
   amount_billed,
   customer_id 
)
VALUES(
    103.12,
    11
);

COMMIT;