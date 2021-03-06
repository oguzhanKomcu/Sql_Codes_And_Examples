USE [master]
GO
/****** Object:  Database [tire_and_rim_shop1]    Script Date: 2.01.2022 16:56:06 ******/
CREATE DATABASE [tire_and_rim_shop1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'tire_and_rim_shop1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tire_and_rim_shop1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'tire_and_rim_shop1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\tire_and_rim_shop1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [tire_and_rim_shop1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [tire_and_rim_shop1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [tire_and_rim_shop1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ARITHABORT OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [tire_and_rim_shop1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [tire_and_rim_shop1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [tire_and_rim_shop1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [tire_and_rim_shop1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET RECOVERY FULL 
GO
ALTER DATABASE [tire_and_rim_shop1] SET  MULTI_USER 
GO
ALTER DATABASE [tire_and_rim_shop1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [tire_and_rim_shop1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [tire_and_rim_shop1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [tire_and_rim_shop1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [tire_and_rim_shop1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [tire_and_rim_shop1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'tire_and_rim_shop1', N'ON'
GO
ALTER DATABASE [tire_and_rim_shop1] SET QUERY_STORE = OFF
GO
USE [tire_and_rim_shop1]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](60) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[Tittle] [nvarchar](20) NULL,
	[Address] [nvarchar](200) NOT NULL,
	[BirtDate] [datetime2](7) NOT NULL,
	[City] [nvarchar](15) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrdersId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[OrdarDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrdersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdersDetails]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdersDetails](
	[OrdersDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrdersId] [int] NOT NULL,
	[TiresId] [int] NULL,
	[RimsId] [int] NULL,
	[TiresUnitPrice] [float] NULL,
	[RimsUnitPrice] [float] NULL,
	[TireQuantity] [int] NULL,
	[RimsQuantity] [int] NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrdersDetails] PRIMARY KEY CLUSTERED 
(
	[OrdersDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rims]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rims](
	[RimsId] [int] IDENTITY(1,1) NOT NULL,
	[Diameter] [int] NOT NULL,
	[Width] [nvarchar](10) NULL,
	[WheelBoltSpacing] [nvarchar](10) NOT NULL,
	[Offset] [nvarchar](10) NOT NULL,
	[Material] [nvarchar](30) NULL,
	[YearOfProduction] [smalldatetime] NOT NULL,
	[Type] [nvarchar](30) NULL,
	[DateOfReceipt] [datetime] NOT NULL,
	[UnıtsInStock] [smallint] NULL,
	[ArrivalPrice] [money] NULL,
	[SalePrice] [money] NULL,
 CONSTRAINT [PK_Rims] PRIMARY KEY CLUSTERED 
(
	[RimsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SuppliersId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](300) NULL,
	[City] [nvarchar](500) NOT NULL,
	[Phone] [nvarchar](24) NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[SuppliersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TireAndRimSuppliers]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TireAndRimSuppliers](
	[TireAndRimSuppliersId] [int] IDENTITY(1,1) NOT NULL,
	[SuppliersId] [int] NULL,
	[TiresId] [int] NULL,
	[RimsId] [int] NULL,
 CONSTRAINT [PK_TireAndRimSuppliers] PRIMARY KEY CLUSTERED 
(
	[TireAndRimSuppliersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tires]    Script Date: 2.01.2022 16:56:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tires](
	[TiresId] [int] IDENTITY(1,1) NOT NULL,
	[Diameter] [int] NOT NULL,
	[Thickness] [int] NOT NULL,
	[Width] [int] NOT NULL,
	[Brand] [nvarchar](30) NULL,
	[Season] [nvarchar](30) NULL,
	[YearOfProduction] [smalldatetime] NOT NULL,
	[Type] [nvarchar](30) NULL,
	[DateOfReceipt] [datetime] NOT NULL,
	[UnıtsInStock] [smallint] NULL,
	[ArrivalPrice] [money] NULL,
	[SalePrice] [money] NULL,
 CONSTRAINT [PK_Tires] PRIMARY KEY CLUSTERED 
(
	[TiresId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_CustomerId]
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetails_OrdersId] FOREIGN KEY([OrdersId])
REFERENCES [dbo].[Orders] ([OrdersId])
GO
ALTER TABLE [dbo].[OrdersDetails] CHECK CONSTRAINT [FK_OrdersDetails_OrdersId]
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetails_RimsId] FOREIGN KEY([RimsId])
REFERENCES [dbo].[Rims] ([RimsId])
GO
ALTER TABLE [dbo].[OrdersDetails] CHECK CONSTRAINT [FK_OrdersDetails_RimsId]
GO
ALTER TABLE [dbo].[OrdersDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrdersDetails_TiresId] FOREIGN KEY([TiresId])
REFERENCES [dbo].[Tires] ([TiresId])
GO
ALTER TABLE [dbo].[OrdersDetails] CHECK CONSTRAINT [FK_OrdersDetails_TiresId]
GO
ALTER TABLE [dbo].[TireAndRimSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_TireAndRimSuppliers_RimsId] FOREIGN KEY([RimsId])
REFERENCES [dbo].[Rims] ([RimsId])
GO
ALTER TABLE [dbo].[TireAndRimSuppliers] CHECK CONSTRAINT [FK_TireAndRimSuppliers_RimsId]
GO
ALTER TABLE [dbo].[TireAndRimSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_TireAndRimSuppliers_SuppliersId] FOREIGN KEY([SuppliersId])
REFERENCES [dbo].[Suppliers] ([SuppliersId])
GO
ALTER TABLE [dbo].[TireAndRimSuppliers] CHECK CONSTRAINT [FK_TireAndRimSuppliers_SuppliersId]
GO
ALTER TABLE [dbo].[TireAndRimSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_TireAndRimSuppliers_TiresId] FOREIGN KEY([TiresId])
REFERENCES [dbo].[Tires] ([TiresId])
GO
ALTER TABLE [dbo].[TireAndRimSuppliers] CHECK CONSTRAINT [FK_TireAndRimSuppliers_TiresId]
GO
USE [master]
GO
ALTER DATABASE [tire_and_rim_shop1] SET  READ_WRITE 
GO
