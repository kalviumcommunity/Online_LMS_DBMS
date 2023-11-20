-- Create roles
CREATE ROLE Librarian;
CREATE ROLE Member;
CREATE ROLE Admin;

-- Grant permissions to roles
-- Librarian role can manage books
GRANT SELECT, INSERT, UPDATE, DELETE ON library.* TO Librarian;

-- Members can borrow and return books
GRANT SELECT, INSERT ON library.books TO Member;
GRANT SELECT, INSERT ON library.transactions TO Member;

-- Admin has full access
GRANT ALL PRIVILEGES ON library.* TO Admin;

-- Create users
CREATE USER 'Librarian_User'@'localhost' IDENTIFIED BY 'librarian_password';
CREATE USER 'Member_User'@'localhost' IDENTIFIED BY 'member_password';
CREATE USER 'Admin_User'@'localhost' IDENTIFIED BY 'admin_password';

-- Assign roles to users
GRANT Librarian TO 'Librarian_User'@'localhost';
GRANT Member TO 'Member_User'@'localhost';
GRANT Admin TO 'Admin_User'@'localhost';
