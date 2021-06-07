-- Done by Carlos Amaral (2021/02/22)

SELECT title FROM books
WHERE title NOT LIKE 'W%';

SELECT title FROM books
WHERE title NOT LIKE '%W%';
