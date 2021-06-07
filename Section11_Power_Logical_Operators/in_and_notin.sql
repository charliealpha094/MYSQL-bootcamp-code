-- Done by Carlos Amaral (2021/02/27)

-- IN
SELECT title, author_lname FROM books
WHERE author_lname = 'Carver' OR
author_lname = 'Lahiri' OR
author_lname = 'Smith';

-- or in a better way
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985);


-- NOT IN
-- "Select all books not published in: 2000, 2002, 2004, 2006, etc"
SELECT title, released_year FROM books
WHERE released_year NOT IN
(2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

"I only want books released after year 2000."
SELECT title, released_year FROM books
WHERE released_year >= 2000
AND released_year NOT IN
(2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016);

-- Better way to do it
-- use modulo (remainder operator)
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND
released_year % 2 != 0
ORDER BY released_year;
