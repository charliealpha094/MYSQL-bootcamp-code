-- Done by Carlos Amaral (2021/02/12)

-- AVG (Average Function)

-- Calculate the average released_year across all books
SELECT AVG(released_year) FROM books;

-- Calculate the average pages across all books
SELECT AVG(pages) FROM books;


-- Calculate the average stock quantity for books released in the same year
SELECT AVG(stock_quantity) FROM books
GROUP BY released_year;


SELECT released_year, AVG(stock_quantity) FROM books
GROUP BY released_year;


SELECT author_fname, author_lname, AVG(pages)
FROM books
GROUP BY author_lname, author_fname;
