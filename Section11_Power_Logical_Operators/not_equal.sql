-- Done by Carlos Amaral (2021/02/22)

-- "Select all books NOT published in 2017"

SELECT title, released_year FROM books 
WHERE released_year != 2017;


SELECT title, author_lname FROM books;

SELECT title, author_lname FROM books
WHERE author_lname != 'Harris';
