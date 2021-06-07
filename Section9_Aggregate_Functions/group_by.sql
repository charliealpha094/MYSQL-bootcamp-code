-- Done by Carlos Amaral (2021/02/11)

-- GROUP BY
/* GROUP BY summarizes or aggregates identical data into single rows. */

SELECT title, author_lname FROM books;

SELECT title, author_lname FROM books
GROUP BY author_lname;

-- Now we have grouped data, and we can do things like:
-- COUNT how many books each author has written

SELECT author_lname, COUNT(*)
FROM books GROUP BY author_lname;


SELECT title, author_fname, author_lname FROM books;

SELECT title, author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;


-- Group by year of release
SELECT released_year FROM books;
SELECT released_year, COUNT(*) FROM books
GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released')
AS 'year' FROM books
GROUP BY released_year;
