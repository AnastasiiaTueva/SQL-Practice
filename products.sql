CREATE DATABASE practice;

USE practice;

CREATE TABLE products (
 name VARCHAR(50),
 price DECIMAL(5,2),
 quantity INT,
 date_added DATE
);

INSERT INTO products VALUES
(Milk, 2.50, 2, 2023-02-01),
(Bread, 1.75, 3, 2023-02-02),
(Egg, 4.00, 2, 2023-02-03);

SELECT * FROM products;