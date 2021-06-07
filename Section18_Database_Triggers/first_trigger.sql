/* Done by Carlos Amaral (2021/06/07) */

DELIMITER $$

CREATE TRIGGER must_be_plus_18
    BEFORE INSERT ON users FOR EACH ROW
    BEGIN 
        IF NEW.age < 18
            THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Must be plus 18!';
        END IF;
    END;
$$

DELIMITER;
