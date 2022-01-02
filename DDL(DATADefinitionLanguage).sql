

use tire_and_rim_shop1



---Creating a table in the newly established database. 

---First of all, we need to enter the name of the table we will create. Then we enter other data in parentheses . The data must be written in order.
---Column name , data type and null - not null are determined.

Create Table [dbo].[Tires] 
(
  [TiresId] INT IDENTITY (1,1) NOT NULL,  ---The data type of the "Id" column, which is the primary key, must be "INT IDENTITY".
  [Diameter] INT  NOT NULL,
  [Thickness]  INT  not null,
  [Width] int  NOT NULL, 
  [Brand]  nvarchar(30) NULL, 
  [Season] nvarchar(30) NULL,
  [YearOfProduction]  smalldatetime NOT NULL ,
  [Type]  nvarchar(30) NULL,
  [DateOfReceipt] datetime not null,
  [UnýtsInStock]  smallint   null,
  [ArrivalPrice]  money null,
  [SalePrice]    money null,

  CONSTRAINT [PK_Tires] PRIMARY KEY CLUSTERED ( [TiresId] ASC ) ---CONSTRAINT [PK_"TABLE NAME"] PRIMARY KEY CLUSTERED ( ["ID NAME "] ASC ) Primary key must be determined. For this reason, these fields are filled as desired.
   )

   Create Table [dbo].[Rims]
(
  [RimsId] INT IDENTITY (1,1) NOT NULL,
  [Diameter] INT  NOT NULL,
  [Width] INT  NOT NULL,
  [WheelBoltSpacing]  nvarchar(10)  not null,
  [Offset] nvarchar(10)  NOT NULL, 
  [Material]  nvarchar(30) NULL, 
  [YearOfProduction]  smalldatetime NOT NULL ,
   [Type]  nvarchar(30) NULL,
  [DateOfReceipt] datetime not null,
  [UnýtsInStock]  smallint   null,
  [ArrivalPrice]  money null,
  [SalePrice]    money null,

  CONSTRAINT [PK_Rims] PRIMARY KEY CLUSTERED ( [RimsId] ASC ) 
   )


      Create Table [dbo].[Suppliers]
(
  [SuppliersId] INT IDENTITY (1,1) NOT NULL,
  [CompanyName] nvarchar(50)  NOT NULL,
  [Address]  nvarchar(60)  not null,
  [City] nvarchar(500)  NOT NULL, 
  [Phone]  nvarchar(24) not NULL, 


  CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ( [SuppliersId] ASC ) 
   )

drop table TireAndRimSuppliers

 Create Table [dbo].[TireAndRimSuppliers]
(
  [TireAndRimSuppliersId] INT IDENTITY (1,1) NOT NULL,
  [SuppliersId]  Int   NULL,
  [TiresId] INT  NULL,
  [RimsId]  int   null,
 
  CONSTRAINT [PK_TireAndRimSuppliers] PRIMARY KEY CLUSTERED ( [TireAndRimSuppliersId] ASC ) ,
  CONSTRAINT [FK_TireAndRimSuppliers_SuppliersId] FOREIGN KEY ([SuppliersId]) REFERENCES [dbo]. [Suppliers] ([SuppliersId]),
  CONSTRAINT [FK_TireAndRimSuppliers_TiresId] FOREIGN KEY ([TiresId]) REFERENCES [dbo]. [Tires] ([TiresId]),
  CONSTRAINT [FK_TireAndRimSuppliers_RimsId] FOREIGN KEY ([RimsId]) REFERENCES [dbo]. [Rims] ([RimsId])
   )


  Create Table [dbo].[Customers]
(
  [CustomerId] INT IDENTITY (1,1) NOT NULL,
  [CustomerName] nvarchar(50)  NOT NULL,
  [Address]  nvarchar(60)  not null,
  [City] nvarchar(15)  NOT NULL, 
  [Phone]  nvarchar(24) not NULL ,

  CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ( [CustomerId] ASC ) 
   )


---FOREIGN KEY :In SQL, tables are usually related to each other. "Foreign key" is used to provide this relationship.

  Create Table [dbo].[Orders]
  (
  [OrdersId] INT IDENTITY (1,1) NOT NULL,
  [CustomerId] INT  NOT NULL,
  [OrdarDate] datetime2(7)  NOT NULL,

  CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ( [OrdersId] ASC ) , 
  CONSTRAINT [FK_Orders_CustomerId] FOREIGN KEY ([CustomerId]) REFERENCES [dbo]. [Customers] ([CustomerId]) ) /*  CONSTRAINT [FK_"TABLO NAME"_"ID TO ASSOCIATE"] FOREIGN KEY (["ID TO ASSOCIATE"]) 
                                                                                                                               REFERENCES [dbo]. ["TABLE WITH KEY RECEIVED"] (["TABLO PRÝMARY KEY"])   */

   

     Create Table [dbo].[OrdersDetails]
(
  [OrdersDetailsId] INT IDENTITY (1,1) NOT NULL,
  [OrdersId] INT  NOT NULL,
  [TiresId] INT   NULL,
  [RimsId] INT  NULL,
  [TiresUnitPrice] float(50)  NULL,
  [RimsUnitPrice] float(50)  NULL,
  [TireQuantity] int null,
  [RimsQuantity] int null,
  [Discount] FLOAT(50) null,



   CONSTRAINT [PK_OrdersDetails] PRIMARY KEY CLUSTERED ( [OrdersDetailsId] ASC ),
   CONSTRAINT [FK_OrdersDetails_OrdersId] FOREIGN KEY ([OrdersId]) REFERENCES [dbo]. [Orders] ([OrdersId]),
   CONSTRAINT [FK_OrdersDetails_TiresId] FOREIGN KEY ([TiresId]) REFERENCES [dbo]. [Tires] ([TiresId]),
   CONSTRAINT [FK_OrdersDetails_RimsId] FOREIGN KEY ([RimsId]) REFERENCES [dbo]. [Rims] ([RimsId]),

   )


  Create Table [dbo].[Employees]
(
  [EmployeeId] INT IDENTITY (1,1) NOT NULL,
  [EmployeeName] nvarchar(50)  NOT NULL,
  [Tittle] nvarchar(20) null,
  [Address]  nvarchar(200)  not null,
  [BirtDate] datetime2(7)  NOT NULL, 
  [City] nvarchar(15)  NOT NULL, 
  [Phone]  nvarchar(24) not NULL ,
 

  CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ( [EmployeeId] ASC ) 
   )
  

---Codes used to make corrections in tables.
  
-- Adding a new column to the created table.
ALTER TABLE Customers
ADD Email nvarchar(100)

---Replace existing column in table
Alter table Customers
alter column Email nvarchar(255) null

---Deleting an existing column in a table
alter table Customers
drop column Email

---Delete the table
DROP TABLE TOYS --- DROP TABLE (TABLO NAME)