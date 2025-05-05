CREATE DATABASE school;

USE school;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  gender VARCHAR(255) NOT NULL
);

CREATE TABLE classes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  teacher VARCHAR(255) NOT NULL
);

CREATE TABLE student_classes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT NOT NULL,
  class_id INT NOT NULL,
  FOREIGN KEY (student_id) REFERENCES students(id),
  FOREIGN KEY (class_id) REFERENCES classes(id)
);

INSERT INTO students (first_name, last_name, age, gender) VALUES 
('John', 'Doe', 21, 'Male'),
('Jane', 'Smith', 20, 'Female'),
('Bob', 'Johnson', 22, 'Male'),
('Alice', 'Williams', 19, 'Female'),
('Michael', 'Brown', 23, 'Male'),
('Sarah', 'Davis', 20, 'Female'),
('David', 'Miller', 22, 'Male'),
('Emily', 'Wilson', 19, 'Female'),
('Thomas', 'Moore', 23, 'Male'),
('Lisa', 'Taylor', 20, 'Female');

INSERT INTO classes (name, teacher) VALUES 
('Math', 'Mr. Johnson'),
('English', 'Mrs. Smith'),
('Science', 'Mr. Brown'),
('History', 'Miss Davis');

INSERT INTO student_classes (student_id, class_id) VALUES 
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 2),
(3, 4),
(4, 1),
(4, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2);