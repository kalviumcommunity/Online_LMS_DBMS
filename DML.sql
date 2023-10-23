-- Insert data into Authors table
INSERT INTO Authors (author_id, author_name) VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Bob Johnson');

-- Insert data into UserRoles table
INSERT INTO UserRoles (role_id, role_name) VALUES
    (1, 'Admin'),
    (2, 'Member');

-- Insert data into Admins table (1st admin)
INSERT INTO Admins (admin_id, name, email, password, role_id) VALUES
    (1, 'admin', 'admin@gmail.com', 'adminpass', 1);

-- Insert data into Members table (1st member)
INSERT INTO Members (member_id, name, email, password, role_id) VALUES
    (1, 'member', 'member@gmail.com', 'memberpass', 2);

-- Insert data into Books table
INSERT INTO Books (book_id, title, author_id, genre, available_quantity, total_quantity) VALUES
    (1, 'Book 1', 1, 'Genre 1', 5, 10),
    (2, 'Book 2', 1, 'Genre 2', 3, 7),
    (3, 'Book 3', 2, 'Genre 3', 4, 8);

-- Insert data into TransactionTypes table
INSERT INTO TransactionTypes (type_id, type_name) VALUES
    (1, 'Borrow'),
    (2, 'Return');

-- Insert data into Transactions table (sample transactions)
INSERT INTO Transactions (transaction_id, admin_id, member_id, book_id, type_id, issue_date, due_date, return_date, late_charges) VALUES
    (1, 1, 1, 1, 1, '2023-09-01', '2023-09-10', '2023-09-05', 0.00),
    (2, 1, 1, 2, 2, '2023-09-03', '2023-09-15', '2023-09-16', 2.50);

-- Display all tables
SELECT * FROM Authors;
SELECT * FROM UserRoles;
SELECT * FROM Admins;
SELECT * FROM Members;
SELECT * FROM Books;
SELECT * FROM TransactionTypes;
SELECT * FROM Transactions;


-- Update an author's name
UPDATE Authors SET author_name = 'Alice Anderson' WHERE author_id = 3;

-- Delete an author
DELETE FROM Authors WHERE author_id = 3;

-- Insert a new admin
INSERT INTO Admins (admin_id, name, email, password, role_id) VALUES (2, 'admin2', 'admin2@gmail.com', 'admin2pass', 1);

-- Update an admin's email
UPDATE Admins SET email = 'adminupdated@gmail.com' WHERE admin_id = 2;

-- Delete an admin
DELETE FROM Admins WHERE admin_id = 2;

-- Insert a new member
INSERT INTO Members (member_id, name, email, password, role_id) VALUES (3, 'member2', 'member2@gmail.com', 'member2pass', 2);

-- Update a member's password
UPDATE Members SET password = 'member2updated' WHERE member_id = 3;

-- Delete a member
DELETE FROM Members WHERE member_id = 3;

-- Insert a new book
INSERT INTO Books (book_id, title, author_id, genre, available_quantity, total_quantity) VALUES (3, 'Book 3', 2, 'Genre 3', 2, 5);

-- Update a book's available quantity
UPDATE Books SET available_quantity = 1 WHERE book_id = 3;

-- Delete a book
DELETE FROM Books WHERE book_id = 3;

-- Insert a new transaction
INSERT INTO Transactions (transaction_id, admin_id, member_id, book_id, type_id, issue_date, due_date, return_date, late_charges)
VALUES (3, 1, 2, 2, 1, '2023-09-10', '2023-09-20', '2023-09-15', 1.50);

-- Update a transaction's return date
UPDATE Transactions SET return_date = '2023-09-16' WHERE transaction_id = 3;

-- Delete a transaction
DELETE FROM Transactions WHERE transaction_id = 3;