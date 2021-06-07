-- Done by Carlos Amaral (2021/02/23)

-- Less than (<)

SELECT title, released_year FROM books
ORDER BY released_year;

SELECT title, released_year FROM books
WHERE released_year < 2000 ORDER BY released_year;


-- Less than or equal to (<=)
SELECT title, released_year FROM books
WHERE released_year <= 2000 ORDER BY released_year;



SELECT 3 < -10;
SELECT -10 < -9;
SELECT 42 <= 42;
SELECT 'h' < 'p';
SELECT 'Q' <= 'q';

