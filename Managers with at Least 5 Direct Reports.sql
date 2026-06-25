SELECT e.name
FROM employee as e
INNER JOIN employee as em
ON e.id = em.managerid
GROUP BY e.name, e.id
HAVING COUNT(em.id) >= 5;
