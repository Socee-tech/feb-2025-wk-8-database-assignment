--  Create the library database
CREATE DATABASE library;

--  Use the library database
USE library;

--  Create the books table
CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  year INT NOT NULL
);

--  Create the patrons table
CREATE TABLE patrons (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL
);

--  Create the copies table
CREATE TABLE copies (
  id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  FOREIGN KEY (book_id) REFERENCES books(id)
);

--  Create the checkouts table
CREATE TABLE checkouts (
  id INT AUTO_INCREMENT PRIMARY KEY,
  copy_id INT NOT NULL,
  patron_id INT NOT NULL,
  checkout_date DATE NOT NULL,
  return_date DATE,
  FOREIGN KEY (copy_id) REFERENCES copies(id),
  FOREIGN KEY (patron_id) REFERENCES patrons(id)
);

--  Insert some books
INSERT INTO books (title, author, year) VALUES 
('To Kill a Mockingbird', 'Harper Lee', 1960),
('Animal Farm', 'George Orwell', 1949),
('The Great Gatsby', 'F. Scott Fitzgerald', 1925);

--  Insert some patrons
INSERT INTO patrons (name, email, phone_number) VALUES 
('John Doe', 'john.doe@example.com', '+2547645364747'),
('Jane Smith', 'jane.smith@example.com', '+2547867564578');

--  Insert some copies
INSERT INTO copies (book_id) VALUES 
(1),
(2),
(3);

-- Insert some checkouts
INSERT INTO checkouts (copy_id, patron_id, checkout_date, return_date) VALUES 
(1, 1, '2023-10-01', '2023-10-15'),
(2, 2, '2023-10-05', NULL);
