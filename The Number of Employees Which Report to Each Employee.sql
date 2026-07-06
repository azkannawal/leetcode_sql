SELECT e.employee_id, e.name, COUNT(e.employee_id) AS reports_count, ROUND(AVG(em.age), 0) AS average_age
FROM employees AS e
INNER JOIN employees AS em
ON e.employee_id = em.reports_to
GROUP BY e.employee_id
ORDER BY e.employee_id; 
