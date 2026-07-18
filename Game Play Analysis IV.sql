SELECT ROUND( COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM activity), 2) AS fraction
FROM activity AS a
INNER JOIN (SELECT player_id, MIN(event_date) AS first_log FROM activity GROUP BY player_id) AS ac
ON a.player_id = ac.player_id AND a.event_date = DATE_ADD(ac.first_log, INTERVAL 1 DAY);
