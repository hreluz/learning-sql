--  Cities
INSERT INTO cities (name) VALUES ('Berlin'),('Paris'), ('Rome'), ('New York'), ('London');


-- Addresses
INSERT INTO addresses (street, house_number, city_id) VALUES
('Test street', '8A', 1),
('Evergreen street', '8 F3', 2),
('Wall street', '213', 3),
('Green street', '999', 4),
('Washington street', '8A', 4);


-- Users
INSERT INTO users (first_name, last_name, email, address_id) VALUES
('Bruce', 'Wayne', 'batman@gmail.com', 1),
('Clark', 'Kent', 'superman@gmail.com', 2),
('Diana', 'T', 'wonderwoman@gmail.com', 3),
('Barry', 'Allen', 'flash@gmail.com', 4);