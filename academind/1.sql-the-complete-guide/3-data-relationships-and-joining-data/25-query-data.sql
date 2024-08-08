-- Get employees and which projects they are working

SELECT e.id, e.first_name, e.last_name, p.title, p.deadline
FROM employees e
LEFT JOIN projects_employees pe ON pe.employee_id = e.id
LEFT JOIN projects p ON p.id = pe.project_id;