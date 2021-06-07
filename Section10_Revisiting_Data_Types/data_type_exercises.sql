-- Done by Carlos Amaral (2021/02/18)

-- What's a good use case for CHAR?
/* Scince the length of a CHAR is fixed to the length that we declare when we
create the table, we should use CHAR if all rows will or should have the same
length. e.g.: a column for country abreviations. */


CREATE TABLE inventory(
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);


-- What's the difference between DATETIME and TIMESTAMP?
/* Timestamp values are converted by MYSQL from the current time zone to UTC
for storage and back from UTC to the current timezone for retrieval.
Timestamp also has a much smaller range. */ 

-- Print out the current time.
SELECT CURTIME();

-- Print Out the Current Date(but not time)
SELECT CURDATE();

-- Print Out the Current Day of the week (the number)
SELECT DAYOFWEEK(NOW()); --or:
SELECT DATE_FORMAT(NOW(), '%w');

-- Print Out the Current Day of the week (day name)
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

-- Print out the current day and time using the format: mm/dd/yyyy
SELECT DATE_FORMAT(NOW(), '%M %D at %h: %i');


CREATE TABLE tweets(
tweet VARCHAR(255),
username VARCHAR(100),
time TIMESTAMP DEFAULT NOW()
);

INSERT INTO tweets (tweet, username)
VALUES ('my first tweet', 'alphauser1');
