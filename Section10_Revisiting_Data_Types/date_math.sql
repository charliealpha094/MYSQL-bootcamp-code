-- Done by Carlos Amaral (2021/02/17)

-- DATE MATH

SELECT * FROM people();

-- Find the age in number of days for each person
SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

-- Add 1 month to the birthdates
SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) 
AS 'date added' FROM people;

SELECT birthdt, birthdt + INTERVAL 1 MONTH
AS 'date added' FROM people;


SELECT birthdt, birthdt - INTERVAL 5 MONTH
AS 'date subtracted' FROM people;

SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR
AS 'date added' FROM people;
