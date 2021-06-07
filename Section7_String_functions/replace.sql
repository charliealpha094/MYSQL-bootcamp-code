-- Done by Carlos Amaral (2021/02/01)

-- REPLACE 

SELECT REPLACE('Hello world', 'Hell', '%#$@');

SELECT REPLACE('Hello world', 'l', 7);

SELECT REPLACE('HellO world', 'o', '*'); -- Case sensitive


SELECT REPLACE('choose bread coffee milk', ' ', ' and '); -- Replace whitespace with 'and'

SELECT REPLACE(title, 'e', 3) FROM book;


SELECT SUBSTRING(REPLACE(title, 'e', 3), 1, 10)
FROM books;

SELECT SUBSTRING(REPLACE(title, 'e', 3), 1, 10)
AS 'weird string'
FROM books;
