-- Done by Carlos Amaral (2021/02/11)

-- MIN and MAX

-- Find the minimum released_year
SELECT MIN(released_year) FROM books;

-- Find the longest book 
SELECT MAX(pages) FROM books;


-- What if we want the title of the longest book?
SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
-- However this query is quite slow for mysql

-- Faster way
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;


----------------------------
-- MIN and MAX with Group By

-- Find the year each author published their first book
SELECT author_fname, author_lname, MIN(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- Find the longest page count for each author
SELECT author_fname, author_lname, MAX(pages)
FROM books
GROUP BY author_lname, author_fname;

-- Better version of the above code
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname, author_fname;
