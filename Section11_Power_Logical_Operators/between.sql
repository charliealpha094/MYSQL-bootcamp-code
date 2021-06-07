-- Done by Carlos Amaral (2021/02/26)

-- BETWEEN

-- "Select all books published between 2004 and 2015"
SELECT title, released_year FROM books
WHERE released_year >= 2004 AND released_year <= 2015;

-- or 

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015
ORDER BY released_year;

-- NOT BETWEEN
SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015
ORDER BY released_year;


-- Dates
SHOW databases;
use new_testing_db;

SELECT * FROM people;

SELECT title, released_year FROM people
WHERE birthdt BETWEEN '1980-01-01' AND '2000-01-01';

SELECT name, birthdt FROM people
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME)
AND CAST('2000-01-01' AS DATETIME);

