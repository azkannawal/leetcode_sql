SELECT employee_id
FROM employees
WHERE salary < 30000 AND manager_id IS NOT NULL AND manager_id NOT IN (
    SELECT e.employee_id
    FROM employees AS e
    INNER JOIN employees AS em
    ON e.employee_id = em.manager_id
)
ORDER BY employee_id;
