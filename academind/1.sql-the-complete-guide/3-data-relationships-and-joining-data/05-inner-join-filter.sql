SELECT u.id, u.first_name, u.last_name, a.street, a.house_number, c.name as city_name
FROM users AS u
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id
WHERE c.name = "Rome" or c.name = "Berlin"
ORDER by c.id DESC;