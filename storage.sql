CREATE DATABASE storage;

USE storage;

CREATE TABLE products
(
 product_id INT,
 product_name VARCHAR(20),
 product_availability BOOL,
 product_quantity INT
);

INSERT INTO products( product_id, product_name, product_availability, product_quantity)
VALUES 
('1', 'apple', 1, 20),
('2', 'orange', 1, 5),
('3', 'peach', 0, NULL);

SELECT product_name, product_quantity from products;

SELECT * FROM products
WHERE product_availability = 1;

SELECT * FROM products
WHERE product_id = 1 OR product_id = 3;

UPDATE Products
SET product_availability = 1,
product_quantity = 3
WHERE product_id = 3;

DELETE FROM products
WHERE product_id = 1;