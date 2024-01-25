CREATE DATABASE IF NOT EXISTS university_game_management;
USE university_game_management;

CREATE TABLE IF NOT EXISTS games (
    game_id INT PRIMARY KEY AUTO_INCREMENT,
    game_name VARCHAR(255) NOT NULL,
    game_type VARCHAR(50) NOT NULL,
    board_number INT NOT NULL,
    max_players INT NOT NULL
);

CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(255) NOT NULL,
    student_id_number VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS slot_bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    game_id INT,
    student_id INT,
    booking_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (game_id) REFERENCES games(game_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
