CREATE DATABASE Books;
CREATE TABLE Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    genre VARCHAR(100),
    price DECIMAL(10, 2)
);
-- Create database
CREATE DATABASE bookstore_db;

-- Select the database
USE bookstore_db;

-- Create Books table
CREATE TABLE Books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255),
    genre VARCHAR(100),
    price DECIMAL(10, 2)
);

-- Create Customers table
CREATE TABLE Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE
);

-- Create Orders table
CREATE TABLE Orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(id),
    FOREIGN KEY (book_id) REFERENCES Books(id)
);

-- Insert sample data
INSERT INTO Books (title, author, genre, price) VALUES 
('To Kill a Mockingbird', 'Harper Lee', 'Fiction', 12.99),
('1984', 'George Orwell', 'Science Fiction', 10.99),
('Pride and Prejudice', 'Jane Austen', 'Romance', 8.99);

INSERT INTO Customers (name, email) VALUES 
('Alice Johnson', 'alice@example.com'),
('Bob Smith', 'bob@example.com');

INSERT INTO Orders (customer_id, book_id, quantity, order_date) VALUES 
(1, 1, 2, '2024-05-08'),
(2, 2, 1, '2024-05-08');



