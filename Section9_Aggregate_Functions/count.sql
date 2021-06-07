-- Done by Carlos Amaral (2021/02/11)

-- COUNT

SELECT COUNT(*) FROM books;

SELECT author_fname FROM books;
SELECT COUNT(author_fname) FROM books;


-- How many distinct author_fnames?
SELECT COUNT(DISTINCT author_fname) FROM books;

-- How many distinct author_lnames?
SELECT COUNT(DISTINCT author_lname) FROM books;


SELECT COUNT(DISTINCT author_lname, author_fname) FROM books;


-- How many titles contain "the"?
--1st:
SELECT title FROM books WHERE title LIKE '%the%';

--2nd:
SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
