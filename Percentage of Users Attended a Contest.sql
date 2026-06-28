SELECT r.contest_id, ROUND(COUNT(r.user_id)/(SELECT COUNT(*) FROM users)*100, 2) AS percentage
FROM users AS u
INNER JOIN register AS r
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id;
