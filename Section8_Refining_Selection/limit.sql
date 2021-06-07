-- Done by Carlos Amaral (2021/02/07)

-- LIMIT (allows to specify a number or how many results we want to select)

-- Retrieves only 3 rows 
SELECT title FROM books LIMIT 3; 

-- Retrieves 1 row only
SELECT title FROM books LIMIT 1;


SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5;

-- Start from row 0 and go until row 5
SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 0,5;


SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 1,3;


SELECT title FROM books LIMIT 5,50;
