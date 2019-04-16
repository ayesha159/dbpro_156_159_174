USE [FoodCorner]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] NOT NULL,
	[AdminName] [nvarchar](50) NULL,
	[ContactNo] [nchar](13) NULL,
	[City] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[Address] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Catagory]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catagory](
	[CatID] [int] IDENTITY(1,1) NOT NULL,
	[CatName] [nvarchar](20) NOT NULL,
	[CatDiscription] [nvarchar](50) NULL,
 CONSTRAINT [PK_Catagory] PRIMARY KEY CLUSTERED 
(
	[CatID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodItem]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItem](
	[FdId] [int] NOT NULL,
	[FdName] [nvarchar](50) NULL,
	[FdPrice] [decimal](8, 2) NULL,
	[FdQuantity] [smallint] NULL,
 CONSTRAINT [PK_FoodItem] PRIMARY KEY CLUSTERED 
(
	[FdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItId] [int] NOT NULL,
	[ICategoryID] [int] NOT NULL,
	[ItName] [nvarchar](50) NULL,
	[ItPrice] [decimal](8, 2) NULL,
	[ItPicture] [nvarchar](250) NULL,
	[ItQuantity] [smallint] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OdId] [int] NOT NULL,
	[OAdminId] [int] NOT NULL,
	[OdUserId] [int] NOT NULL,
	[OdDate] [datetime] NULL,
	[OdGtotal] [int] NOT NULL,
	[OdFwdFoodCheff] [bit] NULL,
	[OdDelivered] [bit] NULL,
	[OdDeliveredTime] [datetime] NULL,
	[OdPaymentRecieved] [bit] NULL,
 CONSTRAINT [PK_Order_1] PRIMARY KEY CLUSTERED 
(
	[OdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OddId] [int] NOT NULL,
	[OddOdid] [int] NOT NULL,
	[Odditid] [int] NOT NULL,
	[OddPrice] [decimal](8, 2) NULL,
	[OddQuantity] [decimal](6, 2) NULL,
	[OddTotal] [int] NULL,
 CONSTRAINT [PK_OrderDetails_1] PRIMARY KEY CLUSTERED 
(
	[OddId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Purchase]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase](
	[PrId] [int] NOT NULL,
	[PrAdminId] [int] NOT NULL,
	[PrDate] [datetime] NULL,
	[PrTotal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Purchase_1] PRIMARY KEY CLUSTERED 
(
	[PrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseDetails]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseDetails](
	[PrdId] [int] NOT NULL,
	[prdPrid] [int] NOT NULL,
	[PrdFid] [int] NOT NULL,
	[prdPrice] [decimal](8, 2) NULL,
	[PrdQuantity] [decimal](6, 2) NULL,
	[PrdTotal] [decimal](8, 2) NULL,
 CONSTRAINT [PK_PurchaseDetails_1] PRIMARY KEY CLUSTERED 
(
	[PrdId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 4/16/2019 8:06:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UId] [int] NOT NULL,
	[UName] [nvarchar](50) NULL,
	[UGender] [nchar](10) NULL,
	[UAddress] [nvarchar](250) NULL,
	[UCellNo] [nchar](13) NULL,
	[UEmail] [nvarchar](50) NULL,
	[Utype] [nchar](10) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OdGtotal]  DEFAULT ((0)) FOR [OdGtotal]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OdFwdFoodCheff]  DEFAULT ((0)) FOR [OdFwdFoodCheff]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OdDelivered]  DEFAULT ((0)) FOR [OdDelivered]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OdDeliveredTime]  DEFAULT (((1)/(1))/(2000)) FOR [OdDeliveredTime]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OdPaymentRecieved]  DEFAULT ((0)) FOR [OdPaymentRecieved]
GO
ALTER TABLE [dbo].[Items]  WITH NOCHECK ADD  CONSTRAINT [FK_Items_Catagory] FOREIGN KEY([ICategoryID])
REFERENCES [dbo].[Catagory] ([CatID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Items] NOCHECK CONSTRAINT [FK_Items_Catagory]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_Admin] FOREIGN KEY([OAdminId])
REFERENCES [dbo].[Admin] ([AdminId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_Admin]
GO
ALTER TABLE [dbo].[Order]  WITH NOCHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([OdUserId])
REFERENCES [dbo].[User] ([UId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Order] NOCHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_OrderDetails_Items] FOREIGN KEY([Odditid])
REFERENCES [dbo].[Items] ([ItId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [FK_OrderDetails_Items]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_OrderDetails_Order] FOREIGN KEY([OddOdid])
REFERENCES [dbo].[Order] ([OdId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[OrderDetails] NOCHECK CONSTRAINT [FK_OrderDetails_Order]
GO
ALTER TABLE [dbo].[Purchase]  WITH NOCHECK ADD  CONSTRAINT [FK_Purchase_Admin] FOREIGN KEY([PrAdminId])
REFERENCES [dbo].[Admin] ([AdminId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Purchase] NOCHECK CONSTRAINT [FK_Purchase_Admin]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_PurchaseDetails_FoodItem] FOREIGN KEY([PrdFid])
REFERENCES [dbo].[FoodItem] ([FdId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PurchaseDetails] NOCHECK CONSTRAINT [FK_PurchaseDetails_FoodItem]
GO
ALTER TABLE [dbo].[PurchaseDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_PurchaseDetails_Purchase] FOREIGN KEY([prdPrid])
REFERENCES [dbo].[Purchase] ([PrId])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[PurchaseDetails] NOCHECK CONSTRAINT [FK_PurchaseDetails_Purchase]
GO
