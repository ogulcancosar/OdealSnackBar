USE [master]
GO
/****** Object:  Database [OdealDB]    Script Date: 23.01.2020 09:43:22 ******/
CREATE DATABASE [OdealDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OdealDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER2017EXP\MSSQL\DATA\OdealDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OdealDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLSERVER2017EXP\MSSQL\DATA\OdealDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OdealDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OdealDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OdealDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OdealDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OdealDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OdealDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OdealDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [OdealDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OdealDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OdealDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OdealDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OdealDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OdealDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OdealDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OdealDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OdealDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OdealDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OdealDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OdealDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OdealDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OdealDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OdealDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OdealDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OdealDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OdealDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OdealDB] SET  MULTI_USER 
GO
ALTER DATABASE [OdealDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OdealDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OdealDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OdealDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OdealDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OdealDB] SET QUERY_STORE = OFF
GO
USE [OdealDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23.01.2020 09:43:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[CategoryDescription] [ntext] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 23.01.2020 09:43:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[ProductName] [nvarchar](40) NULL,
	[UnitPrice] [money] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription]) VALUES (1, N'Foods', N'Anything convenient to eat.')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName], [CategoryDescription]) VALUES (2, N'Beverages', N'Hot and Cold Beverages, Soft drinks, coffees, teas, beers, and ales')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (1, 1, N'Snickers', 4.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (2, 1, N'Twix', 3.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (3, 1, N'Bounty', 3.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (4, 1, N'Toblerone', 4.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (5, 1, N'Nestle Classic', 3.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (6, 1, N'M&M''s Crispy', 3.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (7, 1, N'Toffifee', 6.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (8, 1, N'Milka Bonibon', 10.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (9, 1, N'Sandwich with Cheese', 11.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (10, 1, N'Sandwich with Pepperoni', 12.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (11, 1, N'Sandwich with Tuna', 11.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (12, 1, N'Activia Cherry', 7.8000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (13, 1, N'Eti Form with Kinoas', 5.2000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (14, 1, N'Eti Form with Olives', 4.9000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (15, 1, N'Nestle Corn Flakes', 2.2000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (16, 1, N'Eti Maximus', 3.4000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (17, 1, N'Ulker Metro ', 2.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (18, 1, N'Mom''s Granola with Blueberry', 8.9000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (19, 1, N'Mom''s Granola with Strawberry', 8.9000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (20, 1, N'Baricci Fava', 9.9000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (21, 2, N'Coca-Cola ', 3.7500)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (22, 2, N'Coca-Cola Light', 3.7500)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (23, 2, N'Coca-Cola Zero', 3.7500)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (24, 2, N'Hot Coffee', 2.0000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (25, 2, N'Tea', 1.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (26, 2, N'Hot Chocolate', 2.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (27, 2, N'Sprite', 3.7500)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (28, 2, N'Fanta', 3.7500)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (29, 2, N'Schweppes Tonic', 4.5000)
INSERT [dbo].[Products] ([ProductId], [CategoryId], [ProductName], [UnitPrice]) VALUES (30, 2, N'Schweppes Mandarin', 4.5000)
SET IDENTITY_INSERT [dbo].[Products] OFF
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [OdealDB] SET  READ_WRITE 
GO
