-- Done by Carlos Amaral (2021/03/03)

-- INNER JOINS
-- Select all records from A and B where the join condition is met


-- Implicit Inner Join
SELECT * FROM customers, orders
WHERE customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers_id = orders.customer_id;


-- Explicit Inner Join
SELECT * FROM customers
JOIN ORDERS
ON customers_id = orders.customer_id;

SELECT first_name, last_name, order_date, amount
FROM customers JOIN orders
ON customers_id = orders.customer_id
ORDER BY order_date;
