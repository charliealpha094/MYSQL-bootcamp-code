-- Done by Carlos  Amaral (2021/02/13)

-- Print the number of books in the database
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT released_year, COUNT(*)
FROM books GROUP BY released_year;

-- Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each author
SELECT author_fname, author_lname, AVG(released_year)
FROM books GROUP BY author_lname, author_fname;

-- Find the full name of the author who wrote the longest book 
SELECT CONCAT(author_fname, ' ', author_lname) AS author,
pages FROM books
WHERE pages=(SELECT MAX(pages) FROM books);


/* Print a column with the year_released as "year", a second column with the 
number of books as "# books", released in that year and a third column
with the average number of pages for each year. */
SELECT released_year AS year, COUNT(*) as '# books',
AVG(pages) AS 'avg pages'
FROM books GROUP BY released_year;
