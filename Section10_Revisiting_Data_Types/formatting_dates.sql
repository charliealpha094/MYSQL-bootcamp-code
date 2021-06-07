-- Done by Carlos Amaral (2021/02/16)

SELECT name, birthdate FROM people;

SELECT name, DAY(birthdate) FROM people;

SELECT name, birthdate, DAYNAME(birthdate) FROM people;
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;


SELECT name, birthdate, 
    CONCAT(MONTHNAME(birthdate), ' ', DAY(birthdate), ' ', YEAR(birthdate)) AS 'date'
FROM people;

SELECT name, birthdate, DATE_FORMAT(birthdate, '%W')
AS 'day of week' FROM people;


SELECT name, birthdate, DATE_FORMAT(birthdate, 'was born on a %w')
AS 'day of week' FROM people;


SELECT name, birthdate, DATE_FORMAT(birthdate, '%m/%d/%y') 
AS 'full date' FROM people;


SELECT name, birthdate, DATE_FORMAT(birthdate, '%m/%d/%y at %h:%m')
AS 'full date' FROM people;
