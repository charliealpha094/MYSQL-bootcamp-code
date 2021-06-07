-- Done by Carlos Amaral (2021/02/06)

-- DISTINCT (used when we don't want to see duplicated data)

SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT released_year FROM books;


-- Select distinct data from 2 columns
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;

-- or:

SELECT DISTINCT author_fname, author_lname FROM books;

