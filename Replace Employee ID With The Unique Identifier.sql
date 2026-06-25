SELECT f.unique_id, e.name
FROM employees AS e
LEFT JOIN employeeuni AS f
ON e.id = f.id;
