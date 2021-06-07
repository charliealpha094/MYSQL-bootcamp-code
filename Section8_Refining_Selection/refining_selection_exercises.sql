-- Done by Carlos Amaral (2021/02/09)


-- Select all Story Collections (titles that contain 'stories')
SELECT title FROM books
WHERE title LIKE '%stories%';


-- Find the Longest Book (Print out the title and page content)
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;


/* Print a summary containing title and year for the 3 most recent books
(as 'summary') */
SELECT CONCAT(title, ' - ', released_year) AS 'summary'
FROM books ORDER BY released_year DESC LIMIT 3;


/* Find all books with an author_lname that contains a space (" ")
(Retrieve title and author_lname) */
SELECT title, author_lname FROM books
WHERE author_lname like '% %';


-- Find the 3 books with the lowest stock (select title, year and stock)
SELECT title, released_year, stock_quantity FROM books
ORDER BY stock_quantity LIMIT 3;


-- Print title and author_lname, sorted first by author_lname and then by title
SELECT title, author_lname FROM books
ORDER BY author_lname, title;


/* Print author's last name in caps, concated with "MY FAVOURITE BOOK IS", 
'!' as 'yell' */
SELECT UPPER(CONCAT('MY FAVOURITE BOOK IS ', author_lname, '!')) AS 'yell'
FROM books ORDER BY author_lname;
