-- Done by Carlos Amaral (2021/02/01)

-- CONCAT (Concatenate)

SELECT * FROM books;


SELECT author_fname, author_lname FROM books;


SELECT CONCAT (author_fname, '  ', author_lname)
	FROM books;


SELECT CONCAT (author_fname, ' ', author_lname) AS " full name "
	FROM books;


SELECT author_fname AS first, author_lname AS last,
CONCAT (author_fname, ' ', author_lname) AS full
	FROM books;


-------------------
-- Concat_ws (Concat with Separator)
SELECT CONCAT_WS ('-', title, author_fname, author_lname)
	FROM books;
