DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS conversations;

-- Postgresql
-- CREATE TYPE employment_status AS  ENUM('employed', 'self-employed', 'unemployed');

CREATE TABLE users (
    id SERIAL PRIMARY KEY , -- POSTGRESQL
    full_name VARCHAR(300) NOT NULL,
    yearly_salary INT CHECK(yearly_salary > 0),
    current_status employment_status -- PostgreSQL Syntax
);

CREATE TABLE employers(
    id SERIAL PRIMARY KEY , -- POSTGRESQL
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    id SERIAL PRIMARY KEY , -- POSTGRESQL
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT NOT NULL,
    date_sent TIMESTAMP
);


-- MySQL
-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT CHECK(yearly_salary > 0) ,
--     current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL Syntax
-- );

-- CREATE TABLE employers(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     company_name VARCHAR(300) NOT NULL,
--     company_address VARCHAR(300) NOT NULL,
--     yearly_revenue FLOAT CHECK (yearly_revenue > 0),
--     is_hiring BOOLEAN DEFAULT FALSE
-- );

-- CREATE TABLE conversations (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     user_name VARCHAR(200),
--     employer_name VARCHAR(250),
--     message TEXT NOT NULL,
--     date_sent TIMESTAMP
-- );