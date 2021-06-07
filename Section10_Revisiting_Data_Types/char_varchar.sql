-- Done by Carlos Amaral (2021/02/14)

-- CHAR and VARCHAR


-- Char has a fixed length.
/* The length of a CHAR column is fixed to the length that we declare when
we create the table. It can be any from 0 to 255. */

CREATE TABLE dogs(name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs(name, breed)
VALUES('bob', 'beagle'),
('rob', 'corgi');

SELECT * FROM dogs;
