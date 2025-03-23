USE ShoeStore;

CREATE TABLE Account (
    id INT IDENTITY(1,1) PRIMARY KEY,
    email NVARCHAR(100) NOT NULL UNIQUE,
    password NVARCHAR(255) NOT NULL,
    fullname NVARCHAR(100) NOT NULL,
    role NVARCHAR(10) CHECK (role IN ('ADMIN', 'USER')) NOT NULL
);

-- Insert sample data
INSERT INTO Account (email, password, fullname, role) VALUES
('admin@gmail.com', '6B86B273FF...', 'Administrator', 'ADMIN'),
('john@gmail.com', '6B86B273FF...', 'John Smith', 'USER');
