SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM sales AS s
INNER JOIN (SELECT MIN(year) as first_year, product_id FROM sales GROUP BY product_id) as sa
ON s.product_id = sa.product_id AND s.year = sa.first_year;
