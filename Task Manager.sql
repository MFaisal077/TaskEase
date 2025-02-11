create database task_manager;
use task_manager;
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    due_date DATE,
    status ENUM('Pending', 'Completed') DEFAULT 'Pending',
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
select * from users;
select * from tasks;