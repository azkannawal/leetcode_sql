SELECT a.machine_id, ROUND(AVG(ac.timestamp - a.timestamp), 3) AS processing_time
FROM activity a
INNER JOIN activity ac
ON a.process_id = ac.process_id AND a.machine_id = ac.machine_id
WHERE a.activity_type = 'start' AND ac.activity_type = 'end'
GROUP BY a.machine_id;
