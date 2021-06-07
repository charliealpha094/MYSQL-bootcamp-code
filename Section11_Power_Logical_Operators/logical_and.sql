-- Done by Carlos Amaral (2021/02/23)

-- LOGICAL AND (&&)

-- "Select books written by David Eggers, publishe the year 2010."

-- 1st:
SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers';

-- 2nd:
SELECT title, author_lname, released_year FROM books
WHERE released_year > 2010;

-- Combine both queries
SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers'
AND released_year > 2010;


SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Eggers'
AND released_year > 2010
AND title LIKE '%novel%';
