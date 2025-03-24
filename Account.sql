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
('admin@gmail.com', '6B86B273FF34FCE19D6B804EFF5A3F5747ADA4EAA22F1D49C01E52DDB7875B4B', 'Administrator', 'ADMIN'),
('john@gmail.com', '6B86B273FF34FCE19D6B804EFF5A3F5747ADA4EAA22F1D49C01E52DDB7875B4B', 'Adam Smith', 'USER');
