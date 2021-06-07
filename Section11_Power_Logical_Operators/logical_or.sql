-- Done by Carlos Amaral (2021/02/23)

-- LOGICAL OR (II)

SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers' OR
released_year > 2010;

SELECT title, author_lname, released_year, stock_quantity FROM books
WHERE author_lname = 'Eggers' OR
released_year > 2010 OR
stock_quantity > 100;

SELECT 40 <= 400 || -2 > 0;
SELECT 10 > 5 || 5 = 5;
SELECT 'a' = 5 || 3000 > 2000;

