DROP DATABASE IF EXISTS shop;

-- 1 - create a new database for the shop
CREATE DATABASE shop;

USE shop;

-- 2 - add a table for the products
-- 3 - choose appropiate column names and data types

CREATE TABLE products(
    product_name VARCHAR(300),
    price NUMERIC(10, 2),
    description VARCHAR(500),
    amount_stock INT,
    image VARCHAR(400)
);

-- 4 - insert dummy data into created table
INSERT INTO products (product_name, price, description, amount_stock, image)
VALUES ('pencil', 10.2, 'for drawing', 300, 'pencil.jpg');

INSERT INTO products (product_name, price, description, amount_stock, image)
VALUES ('eraser', 5.5, 'for erasing', 100, 'erase.jpg');


-- 5 - update table and add sensible contraint

-- MySQL
-- ALTER TABLE products drop FOREIGN KEY price_positive;
-- ALTER TABLE products drop FOREIGN KEY amount_stock_positive;

ALTER TABLE products
MODIFY COLUMN product_name VARCHAR(300) NOT NULL,
MODIFY COLUMN description VARCHAR(500) NOT NULL,
ADD CONSTRAINT price_positive CHECK (price > 0),
ADD CONSTRAINT  amount_stock_positive CHECK (amount_stock > 0);

-- PostgreSQL

-- ALTER TABLE products
-- ALTER COLUMN name SET NOT NULL,
-- ALTER COLUMN price SET NOT NULL,
-- ALTER COLUMN price description SET NOT NULL,
-- ADD CONSTRAINT price_positive CHECK (price > 0),
-- ADD CONSTRAINT  amount_stock_positive CHECK (amount_stock > 0);

-- 6 - update table and add a primary key
ALTER TABLE products ADD id int PRIMARY KEY  AUTO_INCREMENT AFTER product_name;