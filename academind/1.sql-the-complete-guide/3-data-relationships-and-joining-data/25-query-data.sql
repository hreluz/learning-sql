-- Get employees and which projects they are working

-- SELECT e.id, e.first_name, e.last_name, p.title, p.deadline
-- FROM employees e
-- LEFT JOIN projects_employees pe ON pe.employee_id = e.id
-- LEFT JOIN projects p ON p.id = pe.project_id;


SELECT e.id as employee_id, e.first_name, e.last_name, t.name
FROM employees AS e
INNER JOIN teams AS t ON t.id = e.team_id
WHERE t.id = 2;

SELECT e.id as employee_id, e.first_name, e.last_name, t.name, b.name
FROM employees AS e
INNER JOIN teams AS t ON t.id = e.team_id
INNER JOIN company_buildings AS b ON b.id = t.building_id
WHERE b.id = 3;