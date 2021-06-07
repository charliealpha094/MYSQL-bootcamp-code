-- Done by Carlos Amaral (2021/02/01)

-- REVERSE

SELECT REVERSE('Hello world');

SELECT REVERSE(author_fname) FROM books;

SELECT CONCAT('woof', REVERSE('woof'));

SELECT CONCAT(author_fname, REVERSE(author_fname))
FROM books;
