-- Done by Carlos Amaral (2021/02/03)

SELECT CHAR_LENGTH('Hello world');


SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length'
FROM books;


-- Combining concatenate and char length
SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname),
'characters long') FROM books;

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname),
' characters long ') AS 'last name length'
FROM books;
