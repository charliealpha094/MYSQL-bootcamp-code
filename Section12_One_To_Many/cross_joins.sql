-- Done by Carlos Amaral (2021/03/04)

SELECT * FROM customers;
SELECT * FROM orders;


-- Find orders placed by Boy George in a 2 step process
SELECT * FROM customers WHERE last_name='George';
SELECT * FROM orders WHERE customer_id = 1;


-- Now use a subquery to do the same research
SELECT * FROM orders WHERE customer_id = 
    (
        SELECT id FROM customers
        WHERE last_name='George'
    );


-- Cross join
SELECT * FROM customers, orders;
