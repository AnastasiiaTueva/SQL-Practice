CREATE DATABASE Customers;

USE Customers;

CREATE TABLE Customers
(
Id_user INT PRIMARY KEY AUTO_INCREMENT,
FirstName_user VARCHAR(20) NOT NULL,
LastName_user VARCHAR(20) NOT NULL,
Age_user INT,
Email_user VARCHAR(50) NOT NULL UNIQUE,
Phone_number_user VARCHAR(50) NULL UNIQUE,

CHECK (( Age_user > 0 AND Age_user < 100) AND (Email_user !=' ') AND (Phone_number_user !=' '))
);

CREATE TABLE Orders
(
Id_order INT PRIMARY KEY AUTO_INCREMENT,
User_id INT,
Product VARCHAR(100),
FOREIGN KEY (User_id) REFERENCES Customers(Id_user)
);

INSERT INTO Customers(FirstName_user, LastName_user, Age_user, Email_user, Phone_number_user)
Values
( 'John', 'Smith', 23, 'John@hmail.com', '+123456'),
( 'Maria', 'Smith', 24, 'maria@gmail.com', '+234567'),
('Anna', 'Backer', 35, 'Anna@gmail.com', '+345678');

INSERT INTO Orders (User_id, Product)
VALUES
(1, 'Phone'),
(3, 'Tablet');