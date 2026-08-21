(SELECT u.name as results
FROM Users AS u
INNER JOIN MovieRating AS m
    ON u.user_id = m.user_id
GROUP BY u.user_id, u.name
ORDER BY COUNT(m.movie_id) DESC, u.name ASC
LIMIT 1)
UNION ALL
(SELECT m.title as results
FROM Movies AS m
INNER JOIN MovieRating AS mo
    ON m.movie_id = mo.movie_id
WHERE DATE_FORMAT(mo.created_at, "%Y-%m") = '2020-02'
GROUP BY m.movie_id, m.title
ORDER BY AVG(mo.rating) DESC, m.title ASC
LIMIT 1); 
