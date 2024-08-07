DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS employers;
DROP TABLE IF EXISTS conversations;

-- MySQL
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(300) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    yearly_salary INT CHECK(yearly_salary > 0) ,
    current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL Syntax
);

CREATE TABLE employers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    company_name VARCHAR(300) NOT NULL,
    company_address VARCHAR(300) NOT NULL,
    yearly_revenue FLOAT CHECK (yearly_revenue > 0),
    is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT NOT NULL,
    date_sent TIMESTAMP
);


INSERT INTO users (first_name, last_name) VALUES  ('Bruce','Wayne');
SELECT * FROM users;