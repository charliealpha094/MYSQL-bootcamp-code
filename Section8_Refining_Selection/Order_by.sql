-- Done by Carlos Amaral (2021/02/06)

-- ORDER BY


SELECT author_lname FROM books ORDER BY author_lname;
-- it's oder is ascending by default

-- If we want to see the data in a descending order:
SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT title FROM books ORDER BY title DESC;


SELECT released_year FROM books ORDER BY released_year;

SELECT released_year FROM books ORDER BY released_year DESC;

SELECT title, released_year, pages FROM books ORDER BY released_year;

SELECT title, pages FROM books ORDER BY released_year;

-- Only the 2nd column (author_fname) willbe ordered
SELECT title, author_fname, author_lname FROM books ORDER BY 2;

SELECT title, author_fname, author_lname FROM books ORDER BY 3;

SELECT title, author_fname, author_lname FROM books ORDER BY 1 DESC;

SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;
