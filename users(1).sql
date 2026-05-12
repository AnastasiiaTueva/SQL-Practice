CREATE DATABASE users;

USE users;

CREATE TABLE user (
user_id INT,
user_name VARCHAR(50),
user_age INT,
user_phone_number VARCHAR(20),
user_email VARCHAR(50)
);

ALTER TABLE user
ADD birthdate date;

ALTER TABLE user
MODIFY user_id INT NOT NULL PRIMARY KEY;

ALTER TABLE user
MODIFY user_name VARCHAR(50) NOT NULL;

ALTER TABLE user
MODIFY user_age INT NOT NULL;

ALTER TABLE user
MODIFY user_phone_number VARCHAR(20) UNIQUE;

ALTER TABLE user
MODIFY user_email VARCHAR(50) UNIQUE;