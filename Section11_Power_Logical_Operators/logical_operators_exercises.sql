-- Done by Carlos Amaral (2021/02/27)

SELECT 10 != 10;

SELECT 15 > 14 && 99-5 <= 94;

SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;


-- Select all books written before 1980 (non inclusive)
SELECT title, released_year FROM books
WHERE released_year < 1980 ORDER BY released_year;

-- Select all books written by Eggers or Chabon
SELECT title, author_lname FROM books
WHERE author_lname = 'Eggers' OR 
author_lname = 'Chabon';

-- Select all books written by Lahiri, published after 2000
SELECT title, author_lname, released_year FROM books
WHERE author_lname = 'Lahiri'
AND released_year > 2000 ORDER BY released_year;

-- Select all books with page counts between 100 and 200
SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200
ORDER BY pages;

-- Select all books where author_lname starts with a 'C' or a 'S'
SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

/* Select title and author_lname. If title contains 'stories' -> Short stories
'Just kids' and 'a hearbreaking work' -> Memoir
Everything else -> Novel
The last column mus be called "TYPE" */
SELECT title, author_lname,
CASE WHEN title LIKE '%stories%' THEN 'Short stories'
WHEN title LIKE '%Just Kids%' THEN 'Memoir'
WHEN title LIKE '%A Heartbreaking work%' THEN 'Memoir'
ELSE 'Novel'
END AS TYPE FROM books;

-- Count how many books each author has published
SELECT author_lname, CONCAT(COUNT(*), ' ', 'books') AS count 
FROM books GROUP BY author_lname;
