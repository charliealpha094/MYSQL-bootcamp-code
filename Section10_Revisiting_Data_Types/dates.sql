-- Done by Carlos Amaral (2021/02/16)

/* DATE
Values with Date, but no Time
'YYYY-MM-DD' */

/* TIME
Values with a Time but no Date
'HH:MM:SS' */

/* DATETIME
Values with a Date and Time
'YYYY-MM-DD  HH:MM:SS' */

CREATE TABLE people(
    name VARCHAR(100),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people(name, birthdate, birthtime, birthdt)
    VALUES('Padme', '1983-11-11', '10:07:35', '1983-11-11 10:07:35')
          ('Larry', '1943-12-25', '04:10:42', '1983-11-11 04:10:42');

SELECT * FROM people;


SELECT CURDATE(); -- Gives current date 
SELECT CURTIME(); -- Gives current time 
SELECT NOW(); -- Gives current datetime


INSERT INTO people(name, birthdate, birthtime, birthdt)
VALUES('Microwave', CURDATE(), CURTIME(), NOW());

DELETE FROM people WHERE name='Microwave';
