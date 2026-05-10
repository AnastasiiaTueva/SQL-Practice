CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,

nickname VARCHAR(50) NOT NULL,

email VARCHAR(255) NOT NULL UNIQUE,

phone VARCHAR(20) UNIQUE,

created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (nickname, email, phone)
VALUES
('Anna', 'Anna@gmail.com', NULL),
('John', 'John@gmail.com', '+35912345'),
('Anna', 'Anna123@gmail.com', +088333444)