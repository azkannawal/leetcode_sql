# Write your MySQL query statement below
SELECT e.name AS employee
FROM employee AS e
INNER JOIN employee AS em
ON e.managerId = em.id
WHERE e.salary > em.salary;
