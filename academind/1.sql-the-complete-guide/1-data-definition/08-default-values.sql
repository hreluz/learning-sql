CREATE TABLE conversations(
    user_name VARCHAR(200),
    employer_name VARCHAR(250),
    message TEXT,
    date_sent TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE employers(
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5,2) -- Approximaton: 123.13 12.1 , Not allowed: 1234.12 1.2354354
    yearly_revenue NUMERIC(5,2), -- Exact Value, Alloed: 123.12, Not Allowed: 12345.43
    is_hiring BOOLEAN DEFAULT FALSE
);