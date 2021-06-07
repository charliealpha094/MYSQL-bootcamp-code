-- Done by Carlos Amaral (2021/03/10)

-- RIGHT JOIN
-- Select everything from B along with any matching records in A

SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers RIGHT JOIN orders
ON customers.id = orders.customer_id
ORDER BY first_name;


SELECT first_name, last_name, order_date, amount, SUM(amount)
FROM customers RIGHT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customer_id;


SELECT IFNULL(first_name, 'MISSING') AS first,
IFNULL(last_name, 'USER') AS last,
order_date,
amount,
SUM(amount)
FROM customers RIGHT JOIN  orders
ON customers.id = orders.customer_id
GROUP BY customer_id;
