-- Done by Carlos Amaral (2021/02/07)

-- LIKE (Used when we're not so sure about the exact name of something)

-- '%da% can have letters before and after 'da'
SELECT title, author_fname FROM books
WHERE author_fname LIKE '%da%';


-- 'da%' can have other letters after 'da' only.
SELECT title, author_fname FROM books
WHERE author_fname LIKE 'da%';


SELECT title FROM books
WHERE title LIKE '%the%';


-------------------
'____' -- Underscore wildcard character
-- An Underscore is a wildcard to specify exactly one character.

SELECT title, stock_quantity FROM books;

-- Get the 4 digit stock quantity
SELECT title, stock_quantity FROM books
WHERE stock_quantity LIKE '____';


-- Get 2-digit stock quantities
SELECT title, stock_quantity FROM books
WHERE stock_quantity LIKE '__';


-- What if we're searching something with a '%' in it?
SELECT title FROM books
WHERE title LIKE '%\%%';

-- What if we're searching something with a '_' in it?
SELECT title FROM books
WHERE title LIKE '%\_%';
