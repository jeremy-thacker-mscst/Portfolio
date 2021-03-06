
/****** Object:  Table [dbo].[CsBillableEntity]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CsBillableEntity](
	[entityID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[empID] [int] NULL,
 CONSTRAINT [PK_BillableEntity] PRIMARY KEY CLUSTERED 
(
	[entityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CsCustomer]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CsCustomer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[personID] [int] NOT NULL,
	[projectID] [int] NULL,
 CONSTRAINT [PK_Customer_1] PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CsEmployeeForHire]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CsEmployeeForHire](
	[empID] [int] IDENTITY(1,1) NOT NULL,
	[personID] [int] NOT NULL,
	[roleID] [int] NULL,
	[startDate] [datetime] NULL,
	[endDate] [datetime] NULL,
	[hirePrice] [money] NULL,
 CONSTRAINT [PK_EmployeeForHire_1] PRIMARY KEY CLUSTERED 
(
	[empID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CsEmployeeRole]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsEmployeeRole](
	[roleID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_EmployeeRole] PRIMARY KEY CLUSTERED 
(
	[roleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsItem]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsItem](
	[itemID] [int] NOT NULL,
	[itemSubcategoryID] [int] NOT NULL,
	[imageID] [varbinary](max) NULL,
	[description] [varchar](50) NULL,
	[rentDate] [datetime] NULL,
	[returnDate] [datetime] NULL,
	[rentalPrice] [money] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsItemCategory]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsItemCategory](
	[itemCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_ItemCategory] PRIMARY KEY CLUSTERED 
(
	[itemCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsItemImage]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsItemImage](
	[imageID] [int] IDENTITY(1,1) NOT NULL,
	[imageLocation] [varbinary](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsItemSubcategory]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsItemSubcategory](
	[itemSubcategoryID] [int] IDENTITY(1,1) NOT NULL,
	[itemCategoryID] [int] NOT NULL,
	[description] [varchar](50) NULL,
 CONSTRAINT [PK_ItemSubcategory] PRIMARY KEY CLUSTERED 
(
	[itemSubcategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsPerson]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CsPerson](
	[UserID] [int] NULL,
	[personID] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [nchar](10) NULL,
	[zip] [nchar](10) NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CsProject]    Script Date: 3/14/2016 3:24:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CsProject](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[entityID] [int] NULL,
	[customerID] [int] NULL,
	[projectName] [nchar](10) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CsCustomer] ON 

GO
INSERT [dbo].[CsCustomer] ([customerID], [personID], [projectID]) VALUES (1, 2, 1)
GO
INSERT [dbo].[CsCustomer] ([customerID], [personID], [projectID]) VALUES (2, 3, 2)
GO
SET IDENTITY_INSERT [dbo].[CsCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[CsEmployeeForHire] ON 

GO
INSERT [dbo].[CsEmployeeForHire] ([empID], [personID], [roleID], [startDate], [endDate], [hirePrice]) VALUES (1, 4, 1, NULL, NULL, 50.0000)
GO
INSERT [dbo].[CsEmployeeForHire] ([empID], [personID], [roleID], [startDate], [endDate], [hirePrice]) VALUES (2, 5, 2, NULL, NULL, 45.0000)
GO
SET IDENTITY_INSERT [dbo].[CsEmployeeForHire] OFF
GO
SET IDENTITY_INSERT [dbo].[CsEmployeeRole] ON 

GO
INSERT [dbo].[CsEmployeeRole] ([roleID], [description]) VALUES (1, N'Production Engineer')
GO
INSERT [dbo].[CsEmployeeRole] ([roleID], [description]) VALUES (2, N'Pianist')
GO
INSERT [dbo].[CsEmployeeRole] ([roleID], [description]) VALUES (3, N'Vocalist')
GO
SET IDENTITY_INSERT [dbo].[CsEmployeeRole] OFF
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (1, 6, NULL, N'Casio Privia PX-350', NULL, NULL, 45.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (2, 7, NULL, N'Martin OM-45 De Luxe', NULL, NULL, 75.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (3, 8, NULL, N'Blue Spark Condensor Mic', NULL, NULL, 30.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (4, 9, NULL, N'Behringer-Virtualizer 3D Fx2000', NULL, NULL, 40.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (5, 10, NULL, N'Basic Room #101', NULL, NULL, 150.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (6, 10, NULL, N'Basic Room #102', NULL, NULL, 150.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (7, 6, NULL, N'Casio CDP 130', NULL, NULL, 70.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (8, 6, NULL, N'Casio SA 46 Mini', NULL, NULL, 23.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (9, 13, NULL, N'Yamaha PSRE 253 61-key', NULL, NULL, 35.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (10, 13, NULL, N'Yamaha YPG-235 76-key', NULL, NULL, 15.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (11, 7, NULL, N'Martin Road Series DRS1', NULL, NULL, 20.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (12, 7, NULL, N'Martin D45', NULL, NULL, 25.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (13, 14, NULL, N'Cordoba Classical Mini M ', NULL, NULL, 33.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (14, 14, NULL, N'Cordoba Classical GK Pro Negra', NULL, NULL, 64.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (15, 15, NULL, N'Schecter Omen Extreme-FR', NULL, NULL, 24.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (16, 8, NULL, N'Blue Yeti USB Mic', NULL, NULL, 20.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (17, 8, NULL, N'Blue Bluebird Cardiod', NULL, NULL, 43.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (18, 16, NULL, N'Excelvan BM-800', NULL, NULL, 40.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (19, 17, NULL, N'Excelvan BM-700', NULL, NULL, 25.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (20, 9, NULL, N'Behringer-Composer Pro XL MDX2600', NULL, NULL, 45.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (21, 9, NULL, N'Behringer- MiniFEX FEX800', NULL, NULL, 50.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (22, 17, NULL, N'TC Electronic M-350', NULL, NULL, 20.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (23, 17, NULL, N'TC Helicom 99655005 ', NULL, NULL, 25.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (24, 18, NULL, N'Basic Room Plus #201', NULL, NULL, 200.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (25, 18, NULL, N'Basic Room Plus #202', NULL, NULL, 200.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (26, 19, NULL, N'Luxury Room #301', NULL, NULL, 350.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (27, 19, NULL, N'Luxury Room #302', NULL, NULL, 350.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (28, 20, NULL, N'Master Suite #401', NULL, NULL, 500.0000)
GO
INSERT [dbo].[CsItem] ([itemID], [itemSubcategoryID], [imageID], [description], [rentDate], [returnDate], [rentalPrice]) VALUES (29, 20, NULL, N'MasterSuite #402', NULL, NULL, 500.0000)
GO
SET IDENTITY_INSERT [dbo].[CsItemCategory] ON 

GO
INSERT [dbo].[CsItemCategory] ([itemCategoryID], [description]) VALUES (15, N'Keyboards')
GO
INSERT [dbo].[CsItemCategory] ([itemCategoryID], [description]) VALUES (16, N'Guitars')
GO
INSERT [dbo].[CsItemCategory] ([itemCategoryID], [description]) VALUES (17, N'Microphones')
GO
INSERT [dbo].[CsItemCategory] ([itemCategoryID], [description]) VALUES (18, N'Effects Processors')
GO
INSERT [dbo].[CsItemCategory] ([itemCategoryID], [description]) VALUES (19, N'Studio Rooms')
GO
SET IDENTITY_INSERT [dbo].[CsItemCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[CsItemSubcategory] ON 

GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (6, 15, N'Casio')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (7, 16, N'Martin')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (8, 17, N'Blue')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (9, 18, N'Behringer')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (10, 19, N'Basic Room')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (13, 15, N'Yamaha')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (14, 16, N'Cordoba')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (15, 16, N'Schecter ')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (16, 17, N'Excelvan')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (17, 18, N'TC')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (18, 19, N'Basic Room Plus')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (19, 19, N'Luxury Room')
GO
INSERT [dbo].[CsItemSubcategory] ([itemSubcategoryID], [itemCategoryID], [description]) VALUES (20, 19, N'Master Suite')
GO
SET IDENTITY_INSERT [dbo].[CsItemSubcategory] OFF
GO
SET IDENTITY_INSERT [dbo].[CsPerson] ON 

GO
INSERT [dbo].[CsPerson] ([UserID], [personID], [firstName], [lastName], [address], [city], [state], [zip]) VALUES (NULL, 2, N'Jeremy    ', N'Thacker   ', N'N4657     ', N'Hager     ', N'WI        ', N'54014     ')
GO
INSERT [dbo].[CsPerson] ([UserID], [personID], [firstName], [lastName], [address], [city], [state], [zip]) VALUES (NULL, 3, N'Josh', N'Thacker', N'W4852', N'St. Paul', N'MN        ', N'55017     ')
GO
INSERT [dbo].[CsPerson] ([UserID], [personID], [firstName], [lastName], [address], [city], [state], [zip]) VALUES (NULL, 4, N'Steve', N'Jobs', N'H3@v3n', N'Pearly Gates', N'WI        ', N'54016     ')
GO
INSERT [dbo].[CsPerson] ([UserID], [personID], [firstName], [lastName], [address], [city], [state], [zip]) VALUES (NULL, 5, N'Bill ', N'Gates', N'5 Alive St.', N'Stillwater', N'MN        ', N'55057     ')
GO
SET IDENTITY_INSERT [dbo].[CsPerson] OFF
GO
ALTER TABLE [dbo].[CsBillableEntity]  WITH CHECK ADD  CONSTRAINT [FK_BillableEntity_EmployeeForHire] FOREIGN KEY([empID])
REFERENCES [dbo].[CsEmployeeForHire] ([empID])
GO
ALTER TABLE [dbo].[CsBillableEntity] CHECK CONSTRAINT [FK_BillableEntity_EmployeeForHire]
GO
ALTER TABLE [dbo].[CsBillableEntity]  WITH CHECK ADD  CONSTRAINT [FK_BillableEntity_Item] FOREIGN KEY([itemID])
REFERENCES [dbo].[CsItem] ([itemID])
GO
ALTER TABLE [dbo].[CsBillableEntity] CHECK CONSTRAINT [FK_BillableEntity_Item]
GO
ALTER TABLE [dbo].[CsCustomer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Person] FOREIGN KEY([personID])
REFERENCES [dbo].[CsPerson] ([personID])
GO
ALTER TABLE [dbo].[CsCustomer] CHECK CONSTRAINT [FK_Customer_Person]
GO
ALTER TABLE [dbo].[CsEmployeeForHire]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeForHire_EmployeeRole] FOREIGN KEY([roleID])
REFERENCES [dbo].[CsEmployeeRole] ([roleID])
GO
ALTER TABLE [dbo].[CsEmployeeForHire] CHECK CONSTRAINT [FK_EmployeeForHire_EmployeeRole]
GO
ALTER TABLE [dbo].[CsEmployeeForHire]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeForHire_Person] FOREIGN KEY([personID])
REFERENCES [dbo].[CsPerson] ([personID])
GO
ALTER TABLE [dbo].[CsEmployeeForHire] CHECK CONSTRAINT [FK_EmployeeForHire_Person]
GO
ALTER TABLE [dbo].[CsItem]  WITH CHECK ADD  CONSTRAINT [FK_Item_ItemSubcategory] FOREIGN KEY([itemSubcategoryID])
REFERENCES [dbo].[CsItemSubcategory] ([itemSubcategoryID])
GO
ALTER TABLE [dbo].[CsItem] CHECK CONSTRAINT [FK_Item_ItemSubcategory]
GO
ALTER TABLE [dbo].[CsItemSubcategory]  WITH CHECK ADD  CONSTRAINT [FK_ItemSubcategory_ItemCategory] FOREIGN KEY([itemCategoryID])
REFERENCES [dbo].[CsItemCategory] ([itemCategoryID])
GO
ALTER TABLE [dbo].[CsItemSubcategory] CHECK CONSTRAINT [FK_ItemSubcategory_ItemCategory]
GO
ALTER TABLE [dbo].[CsProject]  WITH CHECK ADD  CONSTRAINT [FK_Project_BillableEntity] FOREIGN KEY([entityID])
REFERENCES [dbo].[CsBillableEntity] ([entityID])
GO
ALTER TABLE [dbo].[CsProject] CHECK CONSTRAINT [FK_Project_BillableEntity]
GO
ALTER TABLE [dbo].[CsProject]  WITH CHECK ADD  CONSTRAINT [FK_Project_Customer] FOREIGN KEY([customerID])
REFERENCES [dbo].[CsCustomer] ([customerID])
GO
ALTER TABLE [dbo].[CsProject] CHECK CONSTRAINT [FK_Project_Customer]
GO
