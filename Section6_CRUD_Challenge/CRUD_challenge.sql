-- Done by Carlos Amaral (2021/02/02)

-- CRUD Challenge Section


-- Create a new database shirts_db
CREATE DATABASE shirts_db;

-- After creating a database, if we want to use it, we need this command:
use shirts_db;

-- Create table shirts
/* 
Contains: - short_id: Can't be NULL; Primary key
          - article: text
          - color: text
          - shirt_size: text
          - last_worn: number
*/

CREATE TABLE shirts(
    shirt_id INT NOT NULL AUTO_INCREMENT,
    article VARCHAR(50),
    color VARCHAR(50),
    shirt_size(50)
    last_worn INT,
    PRIMARY KEY(shirt_id));

-- Insert data into shirts table
INSERT INTO shirts(article, color, shirt_size, last_worn)
    VALUES('t-shirt', 'white', 'S', 10),
          ('t-shrit', 'green', 'S', 200),
          ('poloshirt', 'black', 'M', 10),
          ('tank top', 'blue', 'S', 50),
          ('t-shirt', 'pink', 'S', 0),
          ('poloshirt', 'red', 'M', 5),
          ('tank top', 'white', 'S', 200),
          ('tank top', 'blue', 'M', 15);


-- Add a new shirt - purple polo shirt, size M, last worn 50 days ago.
INSERT INTO shirts(article, color, shirt_size, last_worn,)
VALUES('poloshirt', 'purple', 'M', 50);

-- Select all shirts (but only print out article and color)
SELECT article, color FROM shirts;

-- SELECT all medium shirts - Print Out Everything but shirt_id
SELECT article, color, shirt_size, last_worn FROM shirts 
WHERE shirt_size = 'M';


-- Update all polo shirts - Change their size to L
UPDATE shirts SET shirt_size='L'
WHERE article='poloshirt';

-- Update the shirt last worn 15 days ago - Change last_worn to 0
UPDATE shirts SET last_worn = 0
WHERE last_worn = 15;

-- Update all white shirts - Change size to 'XS' and color to 'off white'
UPDATE shirts SET short_size 'XS', color='off white'
WHERE color='white';

-- Delete all old shirts - Last worn 200 days ago
--1st:
SELECT * FROM shirts WHERE last_worn=200;
--2nd:
DELETE FROM shirts WHERE last_worn=200;

-- Delete all tank tops
--1st:
SELECT * FROM shirts WHERE article='tank top';
--2nd:
DELETE FROM shirts WHERE article='tank top';


-- Delete all shirts
DELETE FROM shirts;

-- Drop the entire shirts table
DROP TABLE shirts;

