
# Create tables

CREATE TABLE user
(
 Id_user INT PRIMARY KEY AUTO_INCREMENT,
 name_user INT,
 CreatedAt DATE
 );

CREATE TABLE orders
(
 Id_order INT PRIMARY KEY AUTO_INCREMENT,
 Customer_id INT,
 CreatedAt DATE,
 FOREIGN KEY (Customer_id) REFERENCES user (Id_user)
 );
 
# Modify column using ALTER

ALTER TABLE user
MODIFY COLUMN name_user VARCHAR(20);

# Insert data into tables

INSERT INTO user (name_user, CreatedAt)
VALUES
('john', '2023-01-01'),
('Maria', '2023-01-02'),
('Chuck', '2023-01-03');

INSERT INTO  orders (Customer_id, CreatedAt)
VALUES
('2', '2023-02-01'),
('2', '2023-02-02'),
('1', '2023-02-04');

# Use Inner join and Outer join

SELECT orders.CreatedAt, Orders.Id_order, Orders.Customer_id
FROM orders
jOIN user ON orders.Customer_id = user.Id_user

SELECT orders.CreatedAt, Orders.Id_order, Orders.Customer_id
FROM orders LEFT JOIN user
ON Orders.Customer_id = user.Id_user

# Use COUNT to calculate the number of orders

SELECT COUNT(Id_order) AS Orders_quantity
FROM orders;

# Use CASE statement

SELECT Customer_id,
CASE
 WHEN Customer_id = 1
  THEN 'Johns order'
 WHEN Customer_id = 2
  THEN 'Marias order'
 WHEN Customer_id = 3
  THEN 'Chucks order'
ELSE 'Error'
END AS order_status
from orders;