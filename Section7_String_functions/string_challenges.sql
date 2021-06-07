-- Done by Carlos Amaral (2021/02/03)


-- Reverse and Uppercase: "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'))


-- What does the following print out?
SELECT
	REPLACE
	(
	CONCAT('I', '  ', 'like', '  ', 'cats'),
	'  ', 
	'-'
	);
-- It will concatenate the words and replace the whitespace with '-'



-- Replace spaces in titles with '->'
SELECT REPLACE(title, '  ', '->') AS title FROM books;



/* Print and author's last name column, renamed 'forwards' and another column
called 'backwards' using the same data as before, but with reversed last names
*/
SELECT author_lname AS forwards, REVERSE(author_lname)
AS 'backwards'
FROM books;



-- Print full author's name in CAPS. (as "full name in caps")
SELECT CONCAT(UPPER(author_fname), '  ', UPPER(author_lname))
AS 'full name in caps'
FROM books;
--or
SELECT UPPER(CONCAT(author_fname, '  ', author_lname))
AS 'full name in caps'
FROM books;



-- Select title, year and in the rows combine it with "was released in" 
SELECT CONCAT(title, ' was released in ', released_year )
AS 'blurb'
FROM books;


/* Print the title as 'title' and in other column, the number of characters in 
each title as 'character count'
*/
SELECT title, CHAR_LENGTH(title) AS 'character count' 
FROM books;



/* Print 3 columns: 
-title as 'short title', only first 10 characters followed by '...'
-author full name as 'author' with last_name, first_name format
-print stock quantity column is 'quantity' and the amount followed by
'in stock'
*/
SELECT CONCAT(SUBSTRING(title, 1, 10), '...') AS 'short tile',
CONCAT(author_lname, ',', author_fname) AS 'author',
CONCAT(stock_quantity, ' in stock') AS ' quantity'
FROM books;
