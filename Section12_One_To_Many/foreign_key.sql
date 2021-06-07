-- Done by Carlos Amaral (2021/03/03)

-- FOREIGN KEYS

CREATE database section_12;

use section_12;


-- Create a customers table
CREATE TABLE customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE, 
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


INSERT INTO customers(first_name, last_name, email)
VALUES('Boy', 'George', 'george@gmail.com'),
('George', 'Michael', 'gm@gmail.com'),
('David', 'Bowie', 'david@gmail.com'),
('Blue', 'Steele', 'blue@gmail.com'),
('Bette', 'Davis', 'bette@aol.com');
