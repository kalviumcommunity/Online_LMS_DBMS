-- Drop the Library database if it exists
DROP DATABASE IF EXISTS Library;

-- Create the Library database
CREATE DATABASE Library;

-- Switch to the Library database
USE Library;

-- Create the Authors table
CREATE TABLE Authors (
  author_id INT PRIMARY KEY,
  author_name VARCHAR(50) NOT NULL
);

-- Create the UserRoles table
CREATE TABLE UserRoles (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(50) NOT NULL
);

-- Create the Admins table
CREATE TABLE Admins (
  admin_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(25) NOT NULL,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES UserRoles(role_id)
);

-- Create the Members table
CREATE TABLE Members (
  member_id INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  password VARCHAR(25) NOT NULL,
  role_id INT,
  FOREIGN KEY (role_id) REFERENCES UserRoles(role_id)
);

-- Create the Books table
CREATE TABLE Books (
  book_id INT PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  author_id INT,
  genre VARCHAR(50),
  available_quantity INT,
  total_quantity INT,
  FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create the TransactionTypes table
CREATE TABLE TransactionTypes (
  type_id INT PRIMARY KEY,
  type_name VARCHAR(50) NOT NULL
);

-- Create the Transactions table with one less column initially
CREATE TABLE Transactions (
  transaction_id INT PRIMARY KEY,
  admin_id INT,
  member_id INT,
  book_id INT,
  type_id INT,
  issue_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  due_date DATE,
  return_date DATE
);

-- Add a new column 'late_charges' to the Transactions table
ALTER TABLE Transactions
ADD COLUMN late_charges DECIMAL(10, 2);
