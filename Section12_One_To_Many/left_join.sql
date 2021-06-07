-- Done by Carlos Amaral (2021/03/04)

SELECT first_name, last_name, 
SUM(amount) AS total_spent
FROM customers JOIN orders ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;

-- LEFT JOIN
-- Select everything from A, along with any matching records in B

SELECT * FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers LEFT JOIN orders
ON customers.id = orders.customer_id;


SELECT first_name, last_name,
ISNULL(SUM(amount), 0) AS total_spent
FROM customers LEFT JOIN orders
ON customer_id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;
