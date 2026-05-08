CREATE DATABASE school;

USE school;

CREATE TABLE students (
 id INT,
 name VARCHAR(50),
 age INT,
 email VARCHAR(100),
 grade  FLOAT,
 is_active BOOLEAN
);

INSERT INTO students VALUES
(1, 'Ali', 20, 'ali@gmail.com', 4.5, true),
(2, 'Anna', 22, 'anna@gmail.com', 3.9, true),
(3, 'John', 19, 'john@gmail.com', 4.2, true);

SELECT * FROM students;