SELECT customer_id
FROM customer AS c
INNER JOIN product AS p
ON c.product_key = p.product_key
GROUP BY customer_id
HAVING COUNT(DISTINCT c.product_key) = (SELECT COUNT(product_key) FROM product);
