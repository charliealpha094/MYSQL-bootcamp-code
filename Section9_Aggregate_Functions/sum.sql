-- Done by Carlos Amaral (2021/02/11)

-- SUM

-- Sum all pages in the entire database
SELECT SUM(pages) FROM books;


SELECT SUM(released_year) FROM books;


--------------------------
-- SUM + GROUP BY

-- Sum all pages each other has written
SELECT author_fname, author_lname, SUM(pages)
FROM books
GROUP BY author_lname, author_fname;


SELECT author_fname, author_lname, SUM(released_year)
FROM books
GROUP BY author_lname, author_fname;
