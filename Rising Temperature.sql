SELECT w.id
FROM weather AS w
INNER JOIN weather AS y
ON DATEDIFF(w.recorddate, y.recorddate) = 1
WHERE w.temperature > y.temperature;
