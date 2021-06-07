-- Done by Carlos Amaral (2021/02/02)

----------------------------
----- Select Challenges-----
----------------------------

-- Write SQL that selects all the dog_id only columns
SELECT dog_id FROM dogs;

-- Write SQL that selects all the name and breed only columns
SELECT name, breed FROM dogs;

-- Write SQL that selects: (Tabby dogs)
SELECT * FROM dogs WHERE breed='Tabby';

-- Write SQL that selects: (dog_id is same as age)
SELECT * FROM dogs WHERE dog_id=age;



----------------------------
----- Update Challenges-----
----------------------------

-- Change Jackson's name to "Jack"
-- 1st:
SELECT * FROM dogs WHERE name="Jackson";
--2nd:
UPDATE dogs SET name='Jack'
WHERE name='Jackson';

-- Change Ringo's breed to "British Shorthair"
--1st:
SELECT * FROM dogs WHERE name='Ringo';
--2nd:
UPDATE dogs SET breed='British Shorthair'
WHERE name='Ringo';

-- Update both Maine Coons' ages to be 12
--1st:
SELECT * FROM dogs WHERE breed='Maine Coons';
--2nd:
UPDATE dogs SET age=12
WHERE breed='Maine Coons';


----------------------------
----- Update Challenges-----
----------------------------

-- Delete all 4 year old dogs
--1st:
SELECT * FROM dogs WHERE age=4;
-- 2nd:
DELETE FROM dogs WHERE age=4;

-- Delete dogs whose age is the same as their dog_id
--1st:
SELECT * FROM dogs WHERE age=dog_id;
--2nd:
DELETE FROM dogs WHERE age=dog_id;

-- Delete all dogs
DELETE FROM dogs;
