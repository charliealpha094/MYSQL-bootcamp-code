-- Done by Carlos Amaral (2021/02/22)

-- GREATER THAN (>) 

SELECT title, released_year FROM books
ORDER BY released_year;

SELECT title, released_year FROM books
WHERE released_year > 2000
ORDER BY released_year;


-- GREATER THAN OR EQUAL TO (>=)

SELECT title, released_year FROM books
WHERE released_year >= 2000
ORDER BY released_year;

SELECT title, stock_quantity FROM books;

SELECT title, stock_quantity FROM books
WHERE stock_quantity >= 100;


-- Boolean Values in SQL (or something similiar)
SELECT 99 > 1;
SELECT 99 > 567;
SELECT 100 > 5;
SELECT -15 > 15;
SELECT 'a' > 'b';
SELECT 'A' > 'a';
SELECT 'A' = 'a';
