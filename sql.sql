USE [master]
GO
/****** Object:  Database [DepartmentStoreManagementSystem]    Script Date: 1/22/2019 7:35:34 PM ******/
CREATE DATABASE [DepartmentStoreManagementSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DepartmentStoreManagementSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DepartmentStoreManagementSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DepartmentStoreManagementSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\DepartmentStoreManagementSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DepartmentStoreManagementSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET  MULTI_USER 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [DepartmentStoreManagementSystem]
GO
/****** Object:  Table [dbo].[AddProduct]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AddProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[PurchaseProduct] [int] NULL,
	[SaleProduct] [int] NULL,
	[Brand] [varchar](50) NULL,
	[Vat] [int] NULL,
	[Discount] [int] NULL,
	[Quantity] [int] NULL,
	[Date] [date] NULL,
	[Weight] [int] NULL,
	[Supplier] [varchar](50) NULL,
	[Receivedby] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Type] [varchar](250) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[SalesNo] [int] NULL,
	[Date] [date] NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[Amount] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogIn]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogIn](
	[ID] [int] IDENTITY(1001,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[PresentAddress] [varchar](200) NOT NULL,
	[PermanentAddress] [varchar](2000) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[NID] [int] NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Date] [date] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Payment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Total] [float] NULL,
	[Give] [float] NULL,
	[Return] [float] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RefundProduct]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RefundProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NULL,
	[Name] [varchar](50) NULL,
	[Brand] [varchar](50) NULL,
	[Weight] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[Date] [date] NULL,
	[Type] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleProductNew]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleProductNew](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesNo] [int] NULL,
	[ProductCode] [int] NULL,
	[Quantity] [int] NULL,
	[ProductPrice] [float] NULL,
	[Discount] [int] NULL,
	[Vat] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[ProductWeight] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleProductsss]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleProductsss](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SalesNo] [int] NULL,
	[ProductCode] [int] NULL,
	[Quantity] [int] NULL,
	[ProductPrice] [int] NULL,
	[Discount] [int] NULL,
	[Vat] [int] NULL,
	[ProductName] [varchar](50) NULL,
	[ProductWeight] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 1/22/2019 7:35:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Supplier](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
	[Phone] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AddProduct] ON 

INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (1002, N'1001', N'Morich Powder', 17, 20, N'Pran', 1, 0, 59, CAST(0x133F0B00 AS Date), 50, N'Tanvir', N'Ovi')
INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (3, N'1002', N'Vatica', 110, 120, N'Dabur_in_Bangladesh', 1, 0, 8, CAST(0x153F0B00 AS Date), 150, N'Shoibal das', N'Durjoy')
INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (4, N'1003', N'Lichi_Drink', 8, 10, N'Pran', 1, 0, 98, CAST(0x143F0B00 AS Date), 140, N'Tanvir', N'Ovi')
INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (1003, N'1004', N'Fresh Drinking Water', 75, 85, N'Fresh', 1, 0, 10, CAST(0x0D3F0B00 AS Date), 5000, N'Tanvir', N'Durjoy')
INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (1004, N'1005', N'Biscuit', 120, 125, N'Well Food', 2, 0, 127, CAST(0x1C3F0B00 AS Date), 100, N'Korim', N'Momin')
INSERT [dbo].[AddProduct] ([Id], [Code], [Name], [PurchaseProduct], [SaleProduct], [Brand], [Vat], [Discount], [Quantity], [Date], [Weight], [Supplier], [Receivedby]) VALUES (2004, N'1006', N'Laddo', 180, 220, N'Misti Mukh', 1, 2, 18, CAST(0x1F3F0B00 AS Date), 1000, N'Nayan Chowdhury', N'Durjoy')
SET IDENTITY_INSERT [dbo].[AddProduct] OFF
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (1, N'Pran', N'Food')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (2, N'Dabur_in_Bangladesh', N'Cosmetic')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (3, N'RFL', N'Plastic_Company')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (1002, N'Unlever', N'Cosmetic')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (1003, N'Fresh', N'Food')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (1004, N'Well Food', N'Food')
INSERT [dbo].[Brand] ([Id], [Name], [Type]) VALUES (2004, N'Misti Mukh', N'Food')
SET IDENTITY_INSERT [dbo].[Brand] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (1, 1, 1, CAST(0x153F0B00 AS Date), N'Rahim_Ullah', N'Agrabad', N'0183927427', 929.1)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (2, 2, 2, CAST(0x173F0B00 AS Date), N'Nayan Chowdhury', N'Roufabad', N'01837268917', 399.8)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (3, 3, 3, CAST(0x183F0B00 AS Date), N'Piash Baura', N'Lal Khan Bazar', N'01836423668', 519.8)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (4, 4, 4, CAST(0x1B3F0B00 AS Date), N'Bulbul_Ahmed', N'Abdul Hamid Road', N'01843902873', 390)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (5, 5, 5, CAST(0x0E3F0B00 AS Date), N'Manik', N'ctg', N'01983762892', 265)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (6, 6, 6, CAST(0x0C3F0B00 AS Date), N'Momin', N'AkbarSah', N'01734526421', 85)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (7, 7, 7, CAST(0x1B3F0B00 AS Date), N'Sadia Khanom', N'Golap shign road', N'01852278962', 540)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (8, 8, 8, CAST(0x1F3F0B00 AS Date), N'Munni Chowdhury', N'Ctg', N'01872637495', 541)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (9, 9, 9, CAST(0x263F0B00 AS Date), N'Karim_Ali', N'Chok Bazar', N'01839205358', 387.8)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (10, 10, 10, CAST(0x2A3F0B00 AS Date), N'Mobakkor_Ali', N'Jamal Khan', N'01716330694', 300)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (11, 11, 11, CAST(0x2A3F0B00 AS Date), N'Subarna_Chowdhury', N'Dhaka', N'01817622770', 640.6)
INSERT [dbo].[Customer] ([Id], [CustomerId], [SalesNo], [Date], [Name], [Address], [Phone], [Amount]) VALUES (12, 12, 12, CAST(0x2A3F0B00 AS Date), N'Sajib', N'ctg', N'01789654873', 125)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[LogIn] ON 

INSERT [dbo].[LogIn] ([ID], [Name], [PresentAddress], [PermanentAddress], [Email], [DateOfBirth], [NID], [Phone], [Password], [Type], [Date]) VALUES (1001, N'Durjoy', N'Chattogram', N'Sitakund', N'durjoystkchy@gmail.com', CAST(0xF71D0B00 AS Date), 1234565432, N'01862086555', N'123456', N'Admin', NULL)
INSERT [dbo].[LogIn] ([ID], [Name], [PresentAddress], [PermanentAddress], [Email], [DateOfBirth], [NID], [Phone], [Password], [Type], [Date]) VALUES (1002, N'Ovi', N'Chattogram', N'Sitakund', N'nathovi11@gmail.com', CAST(0x2D1D0B00 AS Date), 124689567, N'01940753825', N'234567', N'Salesman', NULL)
INSERT [dbo].[LogIn] ([ID], [Name], [PresentAddress], [PermanentAddress], [Email], [DateOfBirth], [NID], [Phone], [Password], [Type], [Date]) VALUES (2005, N'Prabir', N'Oxcigen', N'Fatikchari', N'prabir@gmail.com', CAST(0x651F0B00 AS Date), 123466854, N'01858392013', N'987654', N'Salesman', CAST(0x163F0B00 AS Date))
INSERT [dbo].[LogIn] ([ID], [Name], [PresentAddress], [PermanentAddress], [Email], [DateOfBirth], [NID], [Phone], [Password], [Type], [Date]) VALUES (3005, N'Momin', N'ctg', N'ctg', N'momin@gmail.com', CAST(0x4B1E0B00 AS Date), 0, N'017526836517', N'1234567', N'Salesman', CAST(0x1C3F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[LogIn] OFF
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([Id], [CustomerName], [Phone], [Total], [Give], [Return]) VALUES (1, N'Karim_Ali', N'01839205358', 388, 390, 2)
INSERT [dbo].[Payment] ([Id], [CustomerName], [Phone], [Total], [Give], [Return]) VALUES (2, N'Mobakkor_Ali', N'01716330694', 300, 300, 0)
INSERT [dbo].[Payment] ([Id], [CustomerName], [Phone], [Total], [Give], [Return]) VALUES (3, N'Subarna_Chowdhury', N'01817622770', 641, 650, 9)
INSERT [dbo].[Payment] ([Id], [CustomerName], [Phone], [Total], [Give], [Return]) VALUES (4, N'Sajib', N'01789654873', 125, 140, 15)
INSERT [dbo].[Payment] ([Id], [CustomerName], [Phone], [Total], [Give], [Return]) VALUES (5, N'Sajib', N'01789654873', 125, 400, 275)
SET IDENTITY_INSERT [dbo].[Payment] OFF
SET IDENTITY_INSERT [dbo].[RefundProduct] ON 

INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (1, 1003, N'Lichi_Drink', N'Pran', N'140', 3, CAST(0x063F0B00 AS Date), N'Refund')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (2, 1003, N'Lichi_Drink', N'Pran', N'140', 2, CAST(0x073F0B00 AS Date), N'Damage')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (1002, 1003, N'Lichi_Drink', N'Pran', N'140', 2, CAST(0x0E3F0B00 AS Date), N'Damage')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (1003, 1002, N'Vatica', N'Dabur in Bangladesh', N'150', 2, CAST(0x063F0B00 AS Date), N'Refund')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (1004, 1003, N'Lichi_Drink', N'Pran', N'140', 2, CAST(0x073F0B00 AS Date), N'Damage')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (1005, 1003, N'Lichi_Drink', N'Pran', N'140', 2, CAST(0x153F0B00 AS Date), N'Refund')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (2005, 1006, N'Laddo', N'Misti Mukh', N'1000', 1, CAST(0x203F0B00 AS Date), N'Refund')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (2006, 1006, N'Laddo', N'Misti Mukh', N'1000', 1, CAST(0x153F0B00 AS Date), N'Damage')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (2007, 1006, N'Laddo', N'Misti Mukh', N'1000', 1, CAST(0x153F0B00 AS Date), N'Select')
INSERT [dbo].[RefundProduct] ([Id], [Code], [Name], [Brand], [Weight], [Quantity], [Date], [Type]) VALUES (2008, 1006, N'Laddo', N'Misti Mukh', N'1000', 2, CAST(0x263F0B00 AS Date), N'Refund')
SET IDENTITY_INSERT [dbo].[RefundProduct] OFF
SET IDENTITY_INSERT [dbo].[SaleProductNew] ON 

INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1, 1, 1003, 3, 29.7, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (2, 1, 1002, 2, 240, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (3, 1, 1002, 1, 120, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (4, 1, 1004, 3, 60, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (5, 1, 1003, 2, 19.8, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (6, 1, 1002, 2, 240, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (7, 1, 1003, 2, 19.8, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (8, 1, 1003, 2, 19.8, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (9, 1, 1004, 2, 40, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (10, 1, 1002, 1, 120, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (11, 1, 1004, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (12, 2, 1003, 2, 19.8, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (13, 2, 1004, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (14, 2, 1002, 3, 360, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (15, 3, 1003, 2, 19.8, 2, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (16, 3, 1002, 4, 480, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (17, 3, 1004, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1027, 8, 1003, 2, 20, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1028, 8, 1005, 1, 125, 0, 2, N'Biscuit', N'100')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1029, 8, 1006, 2, 396, 2, 1, N'Laddo', N'1000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1030, 9, 1004, 2, 170, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1031, 9, 1006, 1, 217.8, 2, 1, N'Laddo', N'1000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1032, 10, 1001, 2, 40, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1033, 10, 1003, 1, 10, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1038, 12, 1001, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1039, 12, 1003, 2, 20, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1040, 12, 1004, 1, 85, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (18, 4, 1004, 2, 40, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (19, 4, 1003, 4, 40, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (20, 4, 1003, 3, 30, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (21, 4, 1004, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (22, 4, 1002, 2, 240, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (23, 4, 1004, 1, 20, 0, 1, N'Morich Powder', N'50')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (24, 5, 1004, 3, 255, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (25, 5, 1003, 1, 10, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (27, 7, 1004, 2, 170, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (28, 7, 1003, 1, 10, 0, 1, N'Lichi_Drink', N'140')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (29, 7, 1002, 3, 360, 0, 1, N'Vatica', N'150')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (26, 6, 1004, 1, 85, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1034, 10, 1005, 2, 250, 0, 2, N'Biscuit', N'100')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1035, 11, 1006, 2, 435.6, 2, 1, N'Laddo', N'1000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1036, 11, 1004, 1, 85, 0, 1, N'Fresh Drinking Water', N'5000')
INSERT [dbo].[SaleProductNew] ([Id], [SalesNo], [ProductCode], [Quantity], [ProductPrice], [Discount], [Vat], [ProductName], [ProductWeight]) VALUES (1037, 11, 1002, 1, 120, 0, 1, N'Vatica', N'150')
SET IDENTITY_INSERT [dbo].[SaleProductNew] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone]) VALUES (1, N'Tanvir', N'Hadi FokirHat', N'01834563782')
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone]) VALUES (2, N'Shoibal das', N'Bau Bazar', N'01734562882')
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone]) VALUES (3, N'Nayan Chowdhury', N'Sitakund', N'01336437457')
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone]) VALUES (1002, N'Piash Barua', N'Lala Khal', N'01846727829')
INSERT [dbo].[Supplier] ([Id], [Name], [Address], [Phone]) VALUES (1003, N'Korim', N'ctg', N'0197526765')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
USE [master]
GO
ALTER DATABASE [DepartmentStoreManagementSystem] SET  READ_WRITE 
GO
