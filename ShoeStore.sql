raiserror('Creating ShoeStore database....',0,1)
SET NOCOUNT ON
GO
USE [master]
GO
CREATE DATABASE [ShoeStore]
GO
USE [ShoeStore]
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] [varchar](50) NOT NULL
)
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[description] [varchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
	[categoryId] [int] references Category(id) NOT NULL
)
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[phone] [varchar](12) NOT NULL,
	[email] [varchar](30) NOT NULL,
	[shipToAddress] [varchar](50) NOT NULL
)
GO
CREATE TABLE [dbo].[OrderHeader](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[date] [datetime] NOT NULL,	
	[customerId] [int] references Customer(id) NOT NULL,
	[status] [varchar](30) NOT NULL default('New') CHECK([status] IN ('New','Shipping','Cancel','Close')),
)
GO
CREATE TABLE [dbo].[OrderDetail](
	[id] [int] IDENTITY(1,1) PRIMARY KEY NOT NULL,
	[orderHeaderId] [int] references OrderHeader(id) NOT NULL,
	[productId] [int] references Product(id) NOT NULL,
	[quantity] [int] NOT NULL,
	[price] [float] NOT NULL,
	[discount] [float] NOT NULL,
)
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name]) VALUES (1, N'Sneakers')
INSERT [dbo].[Category] ([id], [name]) VALUES (2, N'Heels')
INSERT [dbo].[Category] ([id], [name]) VALUES (3, N'Loafers')
INSERT [dbo].[Category] ([id], [name]) VALUES (4, N'Wedges')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (1, N'Sneakers 1', 204.99, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (2, N'Sneakers 2', 73.94, 0.05, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (3, N'Sneakers 3', 74.11, 0.05, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (4, N'Sneakers 4', 52.73, 0, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (5, N'Sneakers 5', 171.13, 0.15, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (6, N'Sneakers 6', 140.55, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (7, N'Sneakers 7', 56.01, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (8, N'Sneakers 8', 48.17, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (9, N'Sneakers 9', 62.03, 0, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (10, N'Sneakers 10', 88.19, 0.1, 1)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (11, N'Heels 11', 20.31, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (12, N'Heels 12', 96.47, 0.15, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (13, N'Heels 13', 155.58, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (14, N'Heels 14', 204.26, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (15, N'Heels 15', 148.25, 0.1, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (16, N'Heels 16', 209.9, 0.05, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (17, N'Heels 17', 104.29, 0.1, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (18, N'Heels 18', 146.36, 0, 2)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (19, N'Loafers 19', 154.76, 0.15, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (20, N'Loafers 20', 135.82, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (21, N'Loafers 21', 158.46, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (22, N'Loafers 22', 165.89, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (23, N'Loafers 23', 95.7, 0.1, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (24, N'Loafers 24', 80.16, 0.05, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (25, N'Loafers 25', 19.25, 0.1, 3)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (26, N'Wedges 26', 171.36, 0.1, 4)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (27, N'Wedges 27', 35.08, 0.05, 4)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (28, N'Wedges 28', 57.92, 0.05, 4)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (29, N'Wedges 29', 157.81, 0, 4)
INSERT [dbo].[Product] ([id], [description], [price], [discount], [categoryId]) VALUES (30, N'Wedges 30', 151, 0.05, 4)

SET IDENTITY_INSERT [dbo].[Product] OFF

SET IDENTITY_INSERT [dbo].[Customer] ON 
INSERT [dbo].[Customer] ([id], [name], [address], [phone], [email], [shipToAddress]) VALUES
(1, N'Customer1', N'1873 Lion Circle', N'5678901234', N'c1@gmail.com', N'1873 Lion Circle'),
(2, N'Customer2', N'5747 Shirley Drive', N'6789872314', N'c2@gmail.com', N'5747 Shirley Drive')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET NOCOUNT OFF
raiserror('The ShoeStore database in now ready for use.',0,1)
GO
