-- Done by Carlos Amaral (2021/02/02)

-- CRUD (Create, Read, Update, Delete)

-- Creating a table named dogs
CREATE TABLE dogs (
    dog_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY(dog_id)
);


-- Describing table dogs
DESC dogs;


-- Inserting data into dogs table
INSERT INTO dogs(name, breed, age)
VALUES('Ringo', 'Tabby', 4),
('Cindy', 'Maine Coon', 10),
('Dumbledoore', 'Maine Coon', 11),
('Egg', 'Persian', 4),
('Misty', 'Tabby', 13),
('George Michaeli', 'Ragdoll', 9),
('Jackson', 'Sphynx', 7);


-- Selecting all the data contained in the table dogs
SELECT * FROM dogs;

-- Selecting all the rows of data, but only dispaying the column called name
SELECT name FROM dogs;  

-- Selecting all rows of data, but only dispaying columns name and age
SELECT name, age FROM dogs;


----------------------------
----- WHERE Selection ------
----------------------------
SELECT * FROM dogs WHERE age=4;  --Select only 4 years aged dogs


----------------------------
--------- Aliases ----------
----------------------------
SELECT dog_id AS id, name FROM dogs;


----------------------------
---------- Update ----------
----------------------------
UPDATE dogs SET breed='Shorthair'
WHERE breed='Tabby';


----------------------------
---------- Delete ----------
----------------------------
DELETE FROM dogs WHERE name='Egg';

-- Delete all the records in the dogs table
DELETE FROM dogs;
