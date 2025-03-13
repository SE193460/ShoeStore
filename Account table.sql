USE ShoeStore;
GO

CREATE TABLE [dbo].[Account](
    [id] INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    [username] VARCHAR(255) UNIQUE,
    [password] VARCHAR(255) NOT NULL,
    [role] VARCHAR(50) CHECK ([role] IN ('Admin', 'User')) NOT NULL,
	[customerId] INT NULL,
    FOREIGN KEY ([customerId]) REFERENCES [dbo].[Customer]([id])
);
GO

SET IDENTITY_INSERT [dbo].[Account] ON

INSERT INTO [dbo].[Account] ([id], [username], [password], [role], [customerId]) VALUES
(1, 'admin', '1', 'Admin', NULL),
(2, 'user1', '1', 'User', 1),
(3, 'user2', '1', 'User', 2);

SET IDENTITY_INSERT [dbo].[Account] OFF
GO
