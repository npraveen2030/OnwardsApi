USE [Projects]
GO
/****** Object:  Schema [ShareMarket]    Script Date: 02-10-2025 23:36:08 ******/
CREATE SCHEMA [ShareMarket]
GO
/****** Object:  Table [ShareMarket].[CompanyHoldings]    Script Date: 02-10-2025 23:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ShareMarket].[CompanyHoldings](
	[CompanyHoldingID] [int] IDENTITY(1,1) NOT NULL,
	[MutualFundID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Sector] [nvarchar](100) NOT NULL,
	[Instrument] [nvarchar](50) NOT NULL,
	[Assets] [decimal](10, 2) NOT NULL,
	[CreatedDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CompanyHoldingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ShareMarket].[MutualFund]    Script Date: 02-10-2025 23:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ShareMarket].[MutualFund](
	[MutualFundID] [int] IDENTITY(1,1) NOT NULL,
	[FundName] [nvarchar](255) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MutualFundID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ShareMarket].[Stock]    Script Date: 02-10-2025 23:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ShareMarket].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Isactive] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ShareMarket].[StockPrice]    Script Date: 02-10-2025 23:36:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ShareMarket].[StockPrice](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StockId] [int] NULL,
	[Price] [decimal](18, 5) NULL,
	[stockDate] [datetime] NULL,
	[Isactive] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[StockTypeId] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [ShareMarket].[CompanyHoldings] ON 
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (1, 1, N'HDFC Bank Ltd.', N'Financial', N'Equity', CAST(8.06 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (2, 1, N'Bajaj Holdings & Investment Ltd.', N'Financial', N'Equity', CAST(6.39 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (3, 1, N'Power Grid Corporation Of India Ltd.', N'Energy', N'Equity', CAST(6.09 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (4, 1, N'Coal India Ltd.', N'Energy', N'Equity', CAST(5.75 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (5, 1, N'ICICI Bank Ltd.', N'Financial', N'Equity', CAST(4.78 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (6, 1, N'ITC Ltd.', N'Consumer Staples', N'Equity', CAST(4.43 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (7, 1, N'Kotak Mahindra Bank Ltd.', N'Financial', N'Equity', CAST(4.01 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (8, 1, N'Bharti Airtel Ltd.', N'Communication', N'Equity', CAST(3.81 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (9, 1, N'Mahindra & Mahindra Ltd.', N'Automobile', N'Equity', CAST(3.56 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (10, 1, N'Maruti Suzuki India Ltd.', N'Automobile', N'Equity', CAST(3.39 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (11, 1, N'Meta Platforms Inc', N'Services', N'Forgen. Eq', CAST(3.39 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (12, 1, N'Axis Bank Ltd.', N'Financial', N'Equity', CAST(2.96 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (13, 1, N'HCL Technologies Ltd.', N'Technology', N'Equity', CAST(2.91 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (14, 1, N'Microsoft Corporation (US)', N'Technology', N'Forgen. Eq', CAST(2.83 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (15, 1, N'Alphabet Inc Class A', N'Services', N'Forgen. Eq', CAST(2.56 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (16, 1, N'Amazon.com Inc. (USA)', N'Services', N'Forgen. Eq', CAST(2.34 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (17, 1, N'Infosys Ltd.', N'Technology', N'Equity', CAST(1.95 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (18, 1, N'Zydus Lifesciences Ltd.', N'Healthcare', N'Equity', CAST(1.28 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (19, 1, N'Cipla Ltd.', N'Healthcare', N'Equity', CAST(1.25 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (20, 1, N'Dr. ReddyLaboratories Ltd.', N'Healthcare', N'Equity', CAST(1.20 AS Decimal(10, 2)), CAST(N'2025-08-14' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (21, 1, N'HDFC Bank Ltd.', N'Financial', N'Equity', CAST(7.93 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (22, 1, N'Bajaj Holdings & Investment Ltd.', N'Financial', N'Equity', CAST(5.50 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (23, 1, N'Power Grid Corporation Of India Ltd.', N'Energy', N'Equity', CAST(5.38 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (24, 1, N'Coal India Ltd.', N'Energy', N'Equity', CAST(5.28 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (25, 1, N'ICICI Bank Ltd.', N'Financial', N'Equity', CAST(4.95 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (26, 1, N'ITC Ltd.', N'Consumer Staples', N'Equity', CAST(4.61 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (27, 1, N'Kotak Mahindra Bank Ltd.', N'Financial', N'Equity', CAST(3.99 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (28, 1, N'Maruti Suzuki India Ltd.', N'Automobile', N'Equity', CAST(3.53 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (29, 1, N'Bharti Airtel Ltd.', N'Communication', N'Equity', CAST(3.46 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (30, 1, N'Mahindra & Mahindra Ltd.', N'Automobile', N'Equity', CAST(3.43 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (31, 1, N'Meta Platforms Inc', N'Services', N'Foren. Eq', CAST(3.35 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (32, 1, N'Alphabet Inc Class A', N'Services', N'Foren. Eq', CAST(3.08 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (33, 1, N'Axis Bank Ltd.', N'Financial', N'Equity', CAST(2.97 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (34, 1, N'Microsoft Corporation (US)', N'Technology', N'Foren. Eq', CAST(2.85 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (35, 1, N'Amazon.com Inc. (USA)', N'Services', N'Foren. Eq', CAST(2.42 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (36, 1, N'HCL Technologies Ltd.', N'Technology', N'Equity', CAST(2.27 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (37, 1, N'Dr. Reddy''s Laboratories Ltd.', N'Healthcare', N'Equity', CAST(1.27 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (38, 1, N'Zydus Lifesciences Ltd.', N'Healthcare', N'Equity', CAST(1.26 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (39, 1, N'Cipla Ltd.', N'Healthcare', N'Equity', CAST(1.24 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
INSERT [ShareMarket].[CompanyHoldings] ([CompanyHoldingID], [MutualFundID], [Name], [Sector], [Instrument], [Assets], [CreatedDate]) VALUES (40, 1, N'Infosys Ltd.', N'Technology', N'Equity', CAST(1.19 AS Decimal(10, 2)), CAST(N'2025-09-26' AS Date))
GO
SET IDENTITY_INSERT [ShareMarket].[CompanyHoldings] OFF
GO
SET IDENTITY_INSERT [ShareMarket].[MutualFund] ON 
GO
INSERT [ShareMarket].[MutualFund] ([MutualFundID], [FundName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Parag Parikh Flexi Cap Fund Direct Growth', CAST(N'2025-08-14' AS Date), 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [ShareMarket].[MutualFund] OFF
GO
SET IDENTITY_INSERT [ShareMarket].[Stock] ON 
GO
INSERT [ShareMarket].[Stock] ([Id], [Name], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (1, N'Tata Motors', 1, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 1, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 1)
GO
INSERT [ShareMarket].[Stock] ([Id], [Name], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (2, N'Reliance Industries', 1, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 2, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 2)
GO
INSERT [ShareMarket].[Stock] ([Id], [Name], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (3, N'Infosys Ltd', 1, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 3, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 3)
GO
INSERT [ShareMarket].[Stock] ([Id], [Name], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (4, N'HDFC Bank', 1, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 4, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 4)
GO
INSERT [ShareMarket].[Stock] ([Id], [Name], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy]) VALUES (5, N'ICICI Bank', 0, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 5, CAST(N'2025-06-24T21:49:12.343' AS DateTime), 5)
GO
SET IDENTITY_INSERT [ShareMarket].[Stock] OFF
GO
SET IDENTITY_INSERT [ShareMarket].[StockPrice] ON 
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1, 1, CAST(435.29088 AS Decimal(18, 5)), CAST(N'2025-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.390' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (2, 1, CAST(330.42083 AS Decimal(18, 5)), CAST(N'2025-01-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.393' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (3, 1, CAST(497.09497 AS Decimal(18, 5)), CAST(N'2025-01-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.397' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (4, 1, CAST(432.36170 AS Decimal(18, 5)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.397' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (5, 1, CAST(282.19497 AS Decimal(18, 5)), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.397' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (6, 1, CAST(283.13534 AS Decimal(18, 5)), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.400' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (7, 1, CAST(216.62455 AS Decimal(18, 5)), CAST(N'2025-01-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.400' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (8, 1, CAST(236.77507 AS Decimal(18, 5)), CAST(N'2025-01-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.400' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (9, 1, CAST(389.51444 AS Decimal(18, 5)), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.400' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (10, 1, CAST(536.10697 AS Decimal(18, 5)), CAST(N'2025-01-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.400' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (11, 1, CAST(176.14012 AS Decimal(18, 5)), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.403' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (12, 1, CAST(258.39252 AS Decimal(18, 5)), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.403' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (13, 1, CAST(498.86749 AS Decimal(18, 5)), CAST(N'2025-01-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.403' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (14, 1, CAST(452.24487 AS Decimal(18, 5)), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.403' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (15, 1, CAST(115.27824 AS Decimal(18, 5)), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.403' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (16, 1, CAST(580.58149 AS Decimal(18, 5)), CAST(N'2025-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.407' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (17, 1, CAST(420.32330 AS Decimal(18, 5)), CAST(N'2025-01-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.407' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (18, 1, CAST(534.31962 AS Decimal(18, 5)), CAST(N'2025-01-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.407' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (19, 1, CAST(430.07115 AS Decimal(18, 5)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (20, 1, CAST(428.52870 AS Decimal(18, 5)), CAST(N'2025-01-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (21, 1, CAST(240.68272 AS Decimal(18, 5)), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (22, 1, CAST(493.05266 AS Decimal(18, 5)), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (23, 1, CAST(222.08856 AS Decimal(18, 5)), CAST(N'2025-01-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (24, 1, CAST(200.17355 AS Decimal(18, 5)), CAST(N'2025-02-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (25, 1, CAST(315.39027 AS Decimal(18, 5)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (26, 1, CAST(423.44754 AS Decimal(18, 5)), CAST(N'2025-02-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (27, 1, CAST(393.46264 AS Decimal(18, 5)), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (28, 1, CAST(525.61740 AS Decimal(18, 5)), CAST(N'2025-02-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.410' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (29, 1, CAST(595.02506 AS Decimal(18, 5)), CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.413' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (30, 1, CAST(162.62090 AS Decimal(18, 5)), CAST(N'2025-02-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.413' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (31, 1, CAST(366.37710 AS Decimal(18, 5)), CAST(N'2025-02-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.417' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (32, 1, CAST(290.36567 AS Decimal(18, 5)), CAST(N'2025-02-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (33, 1, CAST(106.65049 AS Decimal(18, 5)), CAST(N'2025-02-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (34, 1, CAST(526.07110 AS Decimal(18, 5)), CAST(N'2025-02-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (35, 1, CAST(346.73597 AS Decimal(18, 5)), CAST(N'2025-02-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (36, 1, CAST(194.11722 AS Decimal(18, 5)), CAST(N'2025-02-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (37, 1, CAST(529.46253 AS Decimal(18, 5)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (38, 1, CAST(226.05688 AS Decimal(18, 5)), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (39, 1, CAST(339.73461 AS Decimal(18, 5)), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (40, 1, CAST(500.77654 AS Decimal(18, 5)), CAST(N'2025-02-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (41, 1, CAST(421.04418 AS Decimal(18, 5)), CAST(N'2025-02-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (42, 1, CAST(300.61416 AS Decimal(18, 5)), CAST(N'2025-02-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (43, 1, CAST(511.18468 AS Decimal(18, 5)), CAST(N'2025-02-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (44, 1, CAST(494.53176 AS Decimal(18, 5)), CAST(N'2025-03-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (45, 1, CAST(135.01611 AS Decimal(18, 5)), CAST(N'2025-03-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (46, 1, CAST(388.71868 AS Decimal(18, 5)), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (47, 1, CAST(176.99277 AS Decimal(18, 5)), CAST(N'2025-03-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (48, 1, CAST(544.27918 AS Decimal(18, 5)), CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (49, 1, CAST(552.49080 AS Decimal(18, 5)), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.420' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (50, 1, CAST(539.16824 AS Decimal(18, 5)), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (51, 1, CAST(470.97469 AS Decimal(18, 5)), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (52, 1, CAST(437.83226 AS Decimal(18, 5)), CAST(N'2025-03-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (53, 1, CAST(498.11244 AS Decimal(18, 5)), CAST(N'2025-03-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (54, 1, CAST(489.51112 AS Decimal(18, 5)), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (55, 1, CAST(397.44668 AS Decimal(18, 5)), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (56, 1, CAST(522.63551 AS Decimal(18, 5)), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (57, 1, CAST(533.37267 AS Decimal(18, 5)), CAST(N'2025-03-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (58, 1, CAST(426.76422 AS Decimal(18, 5)), CAST(N'2025-03-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (59, 1, CAST(159.62107 AS Decimal(18, 5)), CAST(N'2025-03-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (60, 1, CAST(302.21803 AS Decimal(18, 5)), CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (61, 1, CAST(299.91637 AS Decimal(18, 5)), CAST(N'2025-03-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (62, 1, CAST(308.98745 AS Decimal(18, 5)), CAST(N'2025-03-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (63, 1, CAST(538.70756 AS Decimal(18, 5)), CAST(N'2025-03-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.423' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (64, 1, CAST(246.38324 AS Decimal(18, 5)), CAST(N'2025-03-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (65, 1, CAST(353.82157 AS Decimal(18, 5)), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (66, 1, CAST(491.70463 AS Decimal(18, 5)), CAST(N'2025-04-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (67, 1, CAST(579.39810 AS Decimal(18, 5)), CAST(N'2025-04-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (68, 1, CAST(243.36570 AS Decimal(18, 5)), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (69, 1, CAST(397.58324 AS Decimal(18, 5)), CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (70, 1, CAST(494.09847 AS Decimal(18, 5)), CAST(N'2025-04-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (71, 1, CAST(169.77698 AS Decimal(18, 5)), CAST(N'2025-04-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (72, 1, CAST(578.09907 AS Decimal(18, 5)), CAST(N'2025-04-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (73, 1, CAST(516.61176 AS Decimal(18, 5)), CAST(N'2025-04-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (74, 1, CAST(532.87442 AS Decimal(18, 5)), CAST(N'2025-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (75, 1, CAST(458.02662 AS Decimal(18, 5)), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (76, 1, CAST(210.00773 AS Decimal(18, 5)), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (77, 1, CAST(248.19506 AS Decimal(18, 5)), CAST(N'2025-04-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (78, 1, CAST(245.49699 AS Decimal(18, 5)), CAST(N'2025-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (79, 1, CAST(310.62638 AS Decimal(18, 5)), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (80, 1, CAST(569.85007 AS Decimal(18, 5)), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (81, 1, CAST(456.80037 AS Decimal(18, 5)), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (82, 1, CAST(365.54520 AS Decimal(18, 5)), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (83, 1, CAST(194.26227 AS Decimal(18, 5)), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (84, 1, CAST(150.22865 AS Decimal(18, 5)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.427' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (85, 1, CAST(287.35820 AS Decimal(18, 5)), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (86, 1, CAST(373.34167 AS Decimal(18, 5)), CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (87, 1, CAST(281.03877 AS Decimal(18, 5)), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (88, 1, CAST(159.70727 AS Decimal(18, 5)), CAST(N'2025-05-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (89, 1, CAST(235.44880 AS Decimal(18, 5)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (90, 1, CAST(350.45651 AS Decimal(18, 5)), CAST(N'2025-05-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (91, 1, CAST(531.13310 AS Decimal(18, 5)), CAST(N'2025-05-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (92, 1, CAST(375.66040 AS Decimal(18, 5)), CAST(N'2025-05-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (93, 1, CAST(145.90442 AS Decimal(18, 5)), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (94, 1, CAST(191.06044 AS Decimal(18, 5)), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (95, 1, CAST(586.94987 AS Decimal(18, 5)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (96, 1, CAST(297.13566 AS Decimal(18, 5)), CAST(N'2025-05-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (97, 1, CAST(544.23724 AS Decimal(18, 5)), CAST(N'2025-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (98, 1, CAST(107.13137 AS Decimal(18, 5)), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (99, 1, CAST(329.83381 AS Decimal(18, 5)), CAST(N'2025-05-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (100, 1, CAST(111.36568 AS Decimal(18, 5)), CAST(N'2025-05-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (101, 1, CAST(174.13373 AS Decimal(18, 5)), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (102, 1, CAST(238.01029 AS Decimal(18, 5)), CAST(N'2025-05-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (103, 1, CAST(146.38174 AS Decimal(18, 5)), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (104, 1, CAST(314.47700 AS Decimal(18, 5)), CAST(N'2025-05-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (105, 1, CAST(548.50687 AS Decimal(18, 5)), CAST(N'2025-05-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (106, 1, CAST(107.40652 AS Decimal(18, 5)), CAST(N'2025-05-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (107, 1, CAST(327.27317 AS Decimal(18, 5)), CAST(N'2025-05-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (108, 1, CAST(174.83313 AS Decimal(18, 5)), CAST(N'2025-05-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (109, 1, CAST(535.98218 AS Decimal(18, 5)), CAST(N'2025-06-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (110, 1, CAST(416.25979 AS Decimal(18, 5)), CAST(N'2025-06-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.430' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (111, 1, CAST(212.72021 AS Decimal(18, 5)), CAST(N'2025-06-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (112, 1, CAST(578.79401 AS Decimal(18, 5)), CAST(N'2025-06-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (113, 1, CAST(214.60621 AS Decimal(18, 5)), CAST(N'2025-06-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (114, 1, CAST(434.45327 AS Decimal(18, 5)), CAST(N'2025-06-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (115, 1, CAST(131.83811 AS Decimal(18, 5)), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (116, 1, CAST(159.96224 AS Decimal(18, 5)), CAST(N'2025-06-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (117, 1, CAST(394.27075 AS Decimal(18, 5)), CAST(N'2025-06-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (118, 1, CAST(347.12970 AS Decimal(18, 5)), CAST(N'2025-06-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (119, 1, CAST(532.60607 AS Decimal(18, 5)), CAST(N'2025-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (120, 1, CAST(528.57361 AS Decimal(18, 5)), CAST(N'2025-06-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (121, 1, CAST(185.99624 AS Decimal(18, 5)), CAST(N'2025-06-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.433' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (122, 1, CAST(138.89691 AS Decimal(18, 5)), CAST(N'2025-06-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.477' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (123, 1, CAST(221.66278 AS Decimal(18, 5)), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.477' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (124, 1, CAST(545.88887 AS Decimal(18, 5)), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (125, 1, CAST(462.89613 AS Decimal(18, 5)), CAST(N'2025-06-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (126, 1, CAST(106.92257 AS Decimal(18, 5)), CAST(N'2025-06-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (127, 1, CAST(429.99009 AS Decimal(18, 5)), CAST(N'2025-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (128, 1, CAST(454.01385 AS Decimal(18, 5)), CAST(N'2025-06-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (129, 1, CAST(317.58986 AS Decimal(18, 5)), CAST(N'2025-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (130, 1, CAST(333.21532 AS Decimal(18, 5)), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (131, 1, CAST(165.90821 AS Decimal(18, 5)), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (132, 1, CAST(536.15448 AS Decimal(18, 5)), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (133, 1, CAST(428.59243 AS Decimal(18, 5)), CAST(N'2025-07-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (134, 1, CAST(214.39833 AS Decimal(18, 5)), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (135, 1, CAST(504.77378 AS Decimal(18, 5)), CAST(N'2025-07-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (136, 1, CAST(576.16253 AS Decimal(18, 5)), CAST(N'2025-07-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (137, 1, CAST(201.17814 AS Decimal(18, 5)), CAST(N'2025-07-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (138, 1, CAST(159.88616 AS Decimal(18, 5)), CAST(N'2025-07-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (139, 1, CAST(240.48529 AS Decimal(18, 5)), CAST(N'2025-07-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (140, 1, CAST(155.39569 AS Decimal(18, 5)), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (141, 1, CAST(412.05221 AS Decimal(18, 5)), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (142, 1, CAST(508.34087 AS Decimal(18, 5)), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (143, 1, CAST(313.51704 AS Decimal(18, 5)), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (144, 1, CAST(433.82413 AS Decimal(18, 5)), CAST(N'2025-07-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (145, 1, CAST(391.13762 AS Decimal(18, 5)), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (146, 1, CAST(389.39081 AS Decimal(18, 5)), CAST(N'2025-07-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (147, 1, CAST(570.13694 AS Decimal(18, 5)), CAST(N'2025-07-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (148, 1, CAST(231.01648 AS Decimal(18, 5)), CAST(N'2025-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (149, 1, CAST(230.58562 AS Decimal(18, 5)), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (150, 1, CAST(147.45040 AS Decimal(18, 5)), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (151, 1, CAST(184.35194 AS Decimal(18, 5)), CAST(N'2025-07-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (152, 1, CAST(589.97103 AS Decimal(18, 5)), CAST(N'2025-07-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (153, 1, CAST(349.81947 AS Decimal(18, 5)), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (154, 1, CAST(221.99236 AS Decimal(18, 5)), CAST(N'2025-08-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (155, 1, CAST(269.30060 AS Decimal(18, 5)), CAST(N'2025-08-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (156, 1, CAST(130.17728 AS Decimal(18, 5)), CAST(N'2025-08-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (157, 1, CAST(563.33716 AS Decimal(18, 5)), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (158, 1, CAST(472.22485 AS Decimal(18, 5)), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (159, 1, CAST(177.77927 AS Decimal(18, 5)), CAST(N'2025-08-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (160, 1, CAST(579.65141 AS Decimal(18, 5)), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (161, 1, CAST(478.76688 AS Decimal(18, 5)), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (162, 1, CAST(483.53913 AS Decimal(18, 5)), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (163, 1, CAST(503.43334 AS Decimal(18, 5)), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (164, 1, CAST(399.41554 AS Decimal(18, 5)), CAST(N'2025-08-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (165, 1, CAST(161.99338 AS Decimal(18, 5)), CAST(N'2025-08-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (166, 1, CAST(161.63299 AS Decimal(18, 5)), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (167, 1, CAST(430.53531 AS Decimal(18, 5)), CAST(N'2025-08-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (168, 1, CAST(369.39290 AS Decimal(18, 5)), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (169, 1, CAST(243.60627 AS Decimal(18, 5)), CAST(N'2025-08-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (170, 1, CAST(133.38140 AS Decimal(18, 5)), CAST(N'2025-08-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (171, 1, CAST(411.56220 AS Decimal(18, 5)), CAST(N'2025-08-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (172, 1, CAST(227.41028 AS Decimal(18, 5)), CAST(N'2025-08-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (173, 1, CAST(428.08527 AS Decimal(18, 5)), CAST(N'2025-08-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (174, 1, CAST(576.67223 AS Decimal(18, 5)), CAST(N'2025-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (175, 1, CAST(301.52348 AS Decimal(18, 5)), CAST(N'2025-09-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (176, 1, CAST(212.83439 AS Decimal(18, 5)), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (177, 1, CAST(107.30549 AS Decimal(18, 5)), CAST(N'2025-09-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (178, 1, CAST(466.31080 AS Decimal(18, 5)), CAST(N'2025-09-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (179, 1, CAST(458.26504 AS Decimal(18, 5)), CAST(N'2025-09-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (180, 1, CAST(592.26805 AS Decimal(18, 5)), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (181, 1, CAST(461.04871 AS Decimal(18, 5)), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (182, 1, CAST(564.45121 AS Decimal(18, 5)), CAST(N'2025-09-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (183, 1, CAST(550.14609 AS Decimal(18, 5)), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (184, 1, CAST(275.88336 AS Decimal(18, 5)), CAST(N'2025-09-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (185, 1, CAST(226.42850 AS Decimal(18, 5)), CAST(N'2025-09-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (186, 1, CAST(367.78173 AS Decimal(18, 5)), CAST(N'2025-09-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (187, 1, CAST(506.44855 AS Decimal(18, 5)), CAST(N'2025-09-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (188, 1, CAST(548.22932 AS Decimal(18, 5)), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (189, 1, CAST(147.20195 AS Decimal(18, 5)), CAST(N'2025-09-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (190, 1, CAST(454.20153 AS Decimal(18, 5)), CAST(N'2025-09-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (191, 1, CAST(493.19181 AS Decimal(18, 5)), CAST(N'2025-09-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (192, 1, CAST(309.46029 AS Decimal(18, 5)), CAST(N'2025-09-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (193, 1, CAST(218.26319 AS Decimal(18, 5)), CAST(N'2025-09-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (194, 1, CAST(278.17307 AS Decimal(18, 5)), CAST(N'2025-09-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (195, 1, CAST(452.68663 AS Decimal(18, 5)), CAST(N'2025-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (196, 1, CAST(423.04251 AS Decimal(18, 5)), CAST(N'2025-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (197, 1, CAST(567.10007 AS Decimal(18, 5)), CAST(N'2025-10-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (198, 1, CAST(254.55460 AS Decimal(18, 5)), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (199, 1, CAST(133.38002 AS Decimal(18, 5)), CAST(N'2025-10-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (200, 1, CAST(190.40694 AS Decimal(18, 5)), CAST(N'2025-10-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (201, 1, CAST(410.35980 AS Decimal(18, 5)), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (202, 1, CAST(457.18154 AS Decimal(18, 5)), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (203, 1, CAST(220.57047 AS Decimal(18, 5)), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (204, 1, CAST(522.36983 AS Decimal(18, 5)), CAST(N'2025-10-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (205, 1, CAST(285.88443 AS Decimal(18, 5)), CAST(N'2025-10-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (206, 1, CAST(104.06096 AS Decimal(18, 5)), CAST(N'2025-10-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (207, 1, CAST(526.02974 AS Decimal(18, 5)), CAST(N'2025-10-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (208, 1, CAST(125.22561 AS Decimal(18, 5)), CAST(N'2025-10-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (209, 1, CAST(376.79481 AS Decimal(18, 5)), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (210, 1, CAST(121.41116 AS Decimal(18, 5)), CAST(N'2025-10-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (211, 1, CAST(115.29451 AS Decimal(18, 5)), CAST(N'2025-10-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (212, 1, CAST(473.39976 AS Decimal(18, 5)), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (213, 1, CAST(242.64982 AS Decimal(18, 5)), CAST(N'2025-10-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (214, 1, CAST(409.51208 AS Decimal(18, 5)), CAST(N'2025-10-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (215, 1, CAST(220.05378 AS Decimal(18, 5)), CAST(N'2025-10-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (216, 1, CAST(499.20070 AS Decimal(18, 5)), CAST(N'2025-10-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (217, 1, CAST(446.41021 AS Decimal(18, 5)), CAST(N'2025-10-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.537' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (218, 1, CAST(263.85349 AS Decimal(18, 5)), CAST(N'2025-10-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (219, 1, CAST(115.52083 AS Decimal(18, 5)), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (220, 1, CAST(284.54242 AS Decimal(18, 5)), CAST(N'2025-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (221, 1, CAST(465.60800 AS Decimal(18, 5)), CAST(N'2025-11-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (222, 1, CAST(474.04937 AS Decimal(18, 5)), CAST(N'2025-11-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (223, 1, CAST(229.11052 AS Decimal(18, 5)), CAST(N'2025-11-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (224, 1, CAST(509.94704 AS Decimal(18, 5)), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (225, 1, CAST(155.36988 AS Decimal(18, 5)), CAST(N'2025-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (226, 1, CAST(543.50789 AS Decimal(18, 5)), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (227, 1, CAST(404.96436 AS Decimal(18, 5)), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (228, 1, CAST(104.35403 AS Decimal(18, 5)), CAST(N'2025-11-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (229, 1, CAST(429.57394 AS Decimal(18, 5)), CAST(N'2025-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (230, 1, CAST(136.75932 AS Decimal(18, 5)), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (231, 1, CAST(223.92684 AS Decimal(18, 5)), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (232, 1, CAST(279.31534 AS Decimal(18, 5)), CAST(N'2025-11-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (233, 1, CAST(198.28845 AS Decimal(18, 5)), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (234, 1, CAST(272.22931 AS Decimal(18, 5)), CAST(N'2025-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (235, 1, CAST(210.12927 AS Decimal(18, 5)), CAST(N'2025-11-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (236, 1, CAST(289.90853 AS Decimal(18, 5)), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (237, 1, CAST(220.25514 AS Decimal(18, 5)), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (238, 1, CAST(440.10103 AS Decimal(18, 5)), CAST(N'2025-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (239, 1, CAST(362.88389 AS Decimal(18, 5)), CAST(N'2025-12-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (240, 1, CAST(403.42492 AS Decimal(18, 5)), CAST(N'2025-12-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (241, 1, CAST(511.68570 AS Decimal(18, 5)), CAST(N'2025-12-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (242, 1, CAST(152.63097 AS Decimal(18, 5)), CAST(N'2025-12-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.540' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (243, 1, CAST(192.47489 AS Decimal(18, 5)), CAST(N'2025-12-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (244, 1, CAST(174.68059 AS Decimal(18, 5)), CAST(N'2025-12-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (245, 1, CAST(341.41003 AS Decimal(18, 5)), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (246, 1, CAST(341.79628 AS Decimal(18, 5)), CAST(N'2025-12-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (247, 1, CAST(550.76903 AS Decimal(18, 5)), CAST(N'2025-12-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (248, 1, CAST(308.72863 AS Decimal(18, 5)), CAST(N'2025-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (249, 1, CAST(239.63039 AS Decimal(18, 5)), CAST(N'2025-12-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (250, 1, CAST(216.67856 AS Decimal(18, 5)), CAST(N'2025-12-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (251, 1, CAST(598.52587 AS Decimal(18, 5)), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (252, 1, CAST(545.83209 AS Decimal(18, 5)), CAST(N'2025-12-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (253, 1, CAST(504.74121 AS Decimal(18, 5)), CAST(N'2025-12-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (254, 1, CAST(131.40124 AS Decimal(18, 5)), CAST(N'2025-12-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (255, 1, CAST(586.10430 AS Decimal(18, 5)), CAST(N'2025-12-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (256, 1, CAST(211.68944 AS Decimal(18, 5)), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (257, 1, CAST(388.85175 AS Decimal(18, 5)), CAST(N'2025-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (258, 1, CAST(160.68449 AS Decimal(18, 5)), CAST(N'2025-12-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (259, 1, CAST(517.93195 AS Decimal(18, 5)), CAST(N'2025-12-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (260, 1, CAST(371.97041 AS Decimal(18, 5)), CAST(N'2025-12-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (261, 1, CAST(259.34592 AS Decimal(18, 5)), CAST(N'2025-12-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:00.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (262, 2, CAST(460.50738 AS Decimal(18, 5)), CAST(N'2025-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.480' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (263, 2, CAST(591.94136 AS Decimal(18, 5)), CAST(N'2025-01-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (264, 2, CAST(123.90203 AS Decimal(18, 5)), CAST(N'2025-01-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.483' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (265, 2, CAST(472.87235 AS Decimal(18, 5)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (266, 2, CAST(522.34328 AS Decimal(18, 5)), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (267, 2, CAST(251.12812 AS Decimal(18, 5)), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (268, 2, CAST(291.34593 AS Decimal(18, 5)), CAST(N'2025-01-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (269, 2, CAST(430.75834 AS Decimal(18, 5)), CAST(N'2025-01-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (270, 2, CAST(282.79514 AS Decimal(18, 5)), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (271, 2, CAST(317.91137 AS Decimal(18, 5)), CAST(N'2025-01-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (272, 2, CAST(222.07384 AS Decimal(18, 5)), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (273, 2, CAST(269.47074 AS Decimal(18, 5)), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (274, 2, CAST(166.49740 AS Decimal(18, 5)), CAST(N'2025-01-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (275, 2, CAST(561.55410 AS Decimal(18, 5)), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.487' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (276, 2, CAST(154.92422 AS Decimal(18, 5)), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.490' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (277, 2, CAST(309.59627 AS Decimal(18, 5)), CAST(N'2025-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.490' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (278, 2, CAST(336.37847 AS Decimal(18, 5)), CAST(N'2025-01-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.503' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (279, 2, CAST(290.30260 AS Decimal(18, 5)), CAST(N'2025-01-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.510' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (280, 2, CAST(302.53084 AS Decimal(18, 5)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.510' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (281, 2, CAST(118.37128 AS Decimal(18, 5)), CAST(N'2025-01-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.510' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (282, 2, CAST(496.85642 AS Decimal(18, 5)), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (283, 2, CAST(117.05760 AS Decimal(18, 5)), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (284, 2, CAST(269.65397 AS Decimal(18, 5)), CAST(N'2025-01-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (285, 2, CAST(466.10801 AS Decimal(18, 5)), CAST(N'2025-02-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (286, 2, CAST(442.63998 AS Decimal(18, 5)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (287, 2, CAST(485.31946 AS Decimal(18, 5)), CAST(N'2025-02-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (288, 2, CAST(235.65426 AS Decimal(18, 5)), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (289, 2, CAST(191.23600 AS Decimal(18, 5)), CAST(N'2025-02-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (290, 2, CAST(541.77059 AS Decimal(18, 5)), CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (291, 2, CAST(194.90514 AS Decimal(18, 5)), CAST(N'2025-02-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (292, 2, CAST(421.91681 AS Decimal(18, 5)), CAST(N'2025-02-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.517' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (293, 2, CAST(223.16573 AS Decimal(18, 5)), CAST(N'2025-02-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.517' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (294, 2, CAST(544.55906 AS Decimal(18, 5)), CAST(N'2025-02-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.517' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (295, 2, CAST(140.32974 AS Decimal(18, 5)), CAST(N'2025-02-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (296, 2, CAST(176.09942 AS Decimal(18, 5)), CAST(N'2025-02-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (297, 2, CAST(317.40362 AS Decimal(18, 5)), CAST(N'2025-02-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (298, 2, CAST(373.06598 AS Decimal(18, 5)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (299, 2, CAST(412.72942 AS Decimal(18, 5)), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (300, 2, CAST(565.17622 AS Decimal(18, 5)), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (301, 2, CAST(337.37522 AS Decimal(18, 5)), CAST(N'2025-02-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (302, 2, CAST(464.84582 AS Decimal(18, 5)), CAST(N'2025-02-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (303, 2, CAST(490.92808 AS Decimal(18, 5)), CAST(N'2025-02-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (304, 2, CAST(228.11894 AS Decimal(18, 5)), CAST(N'2025-02-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (305, 2, CAST(471.81222 AS Decimal(18, 5)), CAST(N'2025-03-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (306, 2, CAST(481.96341 AS Decimal(18, 5)), CAST(N'2025-03-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (307, 2, CAST(540.15740 AS Decimal(18, 5)), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (308, 2, CAST(566.31126 AS Decimal(18, 5)), CAST(N'2025-03-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (309, 2, CAST(573.39003 AS Decimal(18, 5)), CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (310, 2, CAST(393.60863 AS Decimal(18, 5)), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (311, 2, CAST(299.98725 AS Decimal(18, 5)), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (312, 2, CAST(232.56290 AS Decimal(18, 5)), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (313, 2, CAST(309.50529 AS Decimal(18, 5)), CAST(N'2025-03-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (314, 2, CAST(387.87255 AS Decimal(18, 5)), CAST(N'2025-03-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (315, 2, CAST(399.16994 AS Decimal(18, 5)), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (316, 2, CAST(264.81421 AS Decimal(18, 5)), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (317, 2, CAST(593.68862 AS Decimal(18, 5)), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (318, 2, CAST(509.19048 AS Decimal(18, 5)), CAST(N'2025-03-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.520' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (319, 2, CAST(372.08223 AS Decimal(18, 5)), CAST(N'2025-03-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (320, 2, CAST(166.37531 AS Decimal(18, 5)), CAST(N'2025-03-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (321, 2, CAST(450.55795 AS Decimal(18, 5)), CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (322, 2, CAST(522.36423 AS Decimal(18, 5)), CAST(N'2025-03-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (323, 2, CAST(296.33357 AS Decimal(18, 5)), CAST(N'2025-03-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (324, 2, CAST(510.80611 AS Decimal(18, 5)), CAST(N'2025-03-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (325, 2, CAST(426.04375 AS Decimal(18, 5)), CAST(N'2025-03-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (326, 2, CAST(442.27300 AS Decimal(18, 5)), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (327, 2, CAST(525.32267 AS Decimal(18, 5)), CAST(N'2025-04-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (328, 2, CAST(397.85435 AS Decimal(18, 5)), CAST(N'2025-04-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (329, 2, CAST(180.20983 AS Decimal(18, 5)), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (330, 2, CAST(523.28635 AS Decimal(18, 5)), CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.523' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (331, 2, CAST(578.85594 AS Decimal(18, 5)), CAST(N'2025-04-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (332, 2, CAST(319.83319 AS Decimal(18, 5)), CAST(N'2025-04-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (333, 2, CAST(388.02371 AS Decimal(18, 5)), CAST(N'2025-04-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (334, 2, CAST(590.05030 AS Decimal(18, 5)), CAST(N'2025-04-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (335, 2, CAST(519.36924 AS Decimal(18, 5)), CAST(N'2025-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (336, 2, CAST(260.84135 AS Decimal(18, 5)), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (337, 2, CAST(144.49531 AS Decimal(18, 5)), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (338, 2, CAST(330.69257 AS Decimal(18, 5)), CAST(N'2025-04-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (339, 2, CAST(545.77600 AS Decimal(18, 5)), CAST(N'2025-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (340, 2, CAST(539.29846 AS Decimal(18, 5)), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (341, 2, CAST(422.18056 AS Decimal(18, 5)), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (342, 2, CAST(111.35136 AS Decimal(18, 5)), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (343, 2, CAST(575.05330 AS Decimal(18, 5)), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (344, 2, CAST(365.10692 AS Decimal(18, 5)), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (345, 2, CAST(551.50223 AS Decimal(18, 5)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (346, 2, CAST(590.30627 AS Decimal(18, 5)), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (347, 2, CAST(127.99110 AS Decimal(18, 5)), CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (348, 2, CAST(185.26967 AS Decimal(18, 5)), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (349, 2, CAST(129.27800 AS Decimal(18, 5)), CAST(N'2025-05-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (350, 2, CAST(587.66438 AS Decimal(18, 5)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.527' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (351, 2, CAST(549.03198 AS Decimal(18, 5)), CAST(N'2025-05-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (352, 2, CAST(230.24463 AS Decimal(18, 5)), CAST(N'2025-05-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (353, 2, CAST(204.18712 AS Decimal(18, 5)), CAST(N'2025-05-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (354, 2, CAST(431.68157 AS Decimal(18, 5)), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (355, 2, CAST(387.87509 AS Decimal(18, 5)), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (356, 2, CAST(456.54342 AS Decimal(18, 5)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (357, 2, CAST(432.72549 AS Decimal(18, 5)), CAST(N'2025-05-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (358, 2, CAST(546.63322 AS Decimal(18, 5)), CAST(N'2025-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (359, 2, CAST(575.48555 AS Decimal(18, 5)), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (360, 2, CAST(182.56167 AS Decimal(18, 5)), CAST(N'2025-05-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (361, 2, CAST(214.13647 AS Decimal(18, 5)), CAST(N'2025-05-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (362, 2, CAST(292.78305 AS Decimal(18, 5)), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (363, 2, CAST(412.82425 AS Decimal(18, 5)), CAST(N'2025-05-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (364, 2, CAST(183.15938 AS Decimal(18, 5)), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (365, 2, CAST(138.64862 AS Decimal(18, 5)), CAST(N'2025-05-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (366, 2, CAST(508.63425 AS Decimal(18, 5)), CAST(N'2025-05-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (367, 2, CAST(187.88386 AS Decimal(18, 5)), CAST(N'2025-05-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (368, 2, CAST(520.40835 AS Decimal(18, 5)), CAST(N'2025-05-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (369, 2, CAST(221.57883 AS Decimal(18, 5)), CAST(N'2025-05-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (370, 2, CAST(542.13561 AS Decimal(18, 5)), CAST(N'2025-06-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (371, 2, CAST(311.69880 AS Decimal(18, 5)), CAST(N'2025-06-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (372, 2, CAST(223.77570 AS Decimal(18, 5)), CAST(N'2025-06-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (373, 2, CAST(295.65896 AS Decimal(18, 5)), CAST(N'2025-06-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (374, 2, CAST(237.09496 AS Decimal(18, 5)), CAST(N'2025-06-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (375, 2, CAST(487.00596 AS Decimal(18, 5)), CAST(N'2025-06-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (376, 2, CAST(391.11628 AS Decimal(18, 5)), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (377, 2, CAST(509.17069 AS Decimal(18, 5)), CAST(N'2025-06-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (378, 2, CAST(335.05746 AS Decimal(18, 5)), CAST(N'2025-06-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (379, 2, CAST(357.06930 AS Decimal(18, 5)), CAST(N'2025-06-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (380, 2, CAST(161.12681 AS Decimal(18, 5)), CAST(N'2025-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (381, 2, CAST(246.10570 AS Decimal(18, 5)), CAST(N'2025-06-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.530' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (382, 2, CAST(294.67412 AS Decimal(18, 5)), CAST(N'2025-06-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.533' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (383, 2, CAST(174.99353 AS Decimal(18, 5)), CAST(N'2025-06-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (384, 2, CAST(302.22507 AS Decimal(18, 5)), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (385, 2, CAST(104.41420 AS Decimal(18, 5)), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (386, 2, CAST(173.36903 AS Decimal(18, 5)), CAST(N'2025-06-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (387, 2, CAST(554.34088 AS Decimal(18, 5)), CAST(N'2025-06-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (388, 2, CAST(106.46838 AS Decimal(18, 5)), CAST(N'2025-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (389, 2, CAST(300.29603 AS Decimal(18, 5)), CAST(N'2025-06-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (390, 2, CAST(573.06512 AS Decimal(18, 5)), CAST(N'2025-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (391, 2, CAST(262.42965 AS Decimal(18, 5)), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (392, 2, CAST(100.32640 AS Decimal(18, 5)), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.587' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (393, 2, CAST(506.36958 AS Decimal(18, 5)), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (394, 2, CAST(229.02522 AS Decimal(18, 5)), CAST(N'2025-07-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (395, 2, CAST(271.33580 AS Decimal(18, 5)), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (396, 2, CAST(527.10267 AS Decimal(18, 5)), CAST(N'2025-07-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (397, 2, CAST(448.29866 AS Decimal(18, 5)), CAST(N'2025-07-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (398, 2, CAST(105.91374 AS Decimal(18, 5)), CAST(N'2025-07-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (399, 2, CAST(512.94815 AS Decimal(18, 5)), CAST(N'2025-07-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (400, 2, CAST(215.64803 AS Decimal(18, 5)), CAST(N'2025-07-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (401, 2, CAST(463.73984 AS Decimal(18, 5)), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (402, 2, CAST(127.16385 AS Decimal(18, 5)), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (403, 2, CAST(105.38537 AS Decimal(18, 5)), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (404, 2, CAST(224.91487 AS Decimal(18, 5)), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (405, 2, CAST(107.54046 AS Decimal(18, 5)), CAST(N'2025-07-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (406, 2, CAST(144.85977 AS Decimal(18, 5)), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (407, 2, CAST(133.71758 AS Decimal(18, 5)), CAST(N'2025-07-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (408, 2, CAST(523.49620 AS Decimal(18, 5)), CAST(N'2025-07-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (409, 2, CAST(227.69764 AS Decimal(18, 5)), CAST(N'2025-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (410, 2, CAST(194.45927 AS Decimal(18, 5)), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (411, 2, CAST(527.15480 AS Decimal(18, 5)), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (412, 2, CAST(581.53814 AS Decimal(18, 5)), CAST(N'2025-07-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (413, 2, CAST(240.86847 AS Decimal(18, 5)), CAST(N'2025-07-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (414, 2, CAST(401.46241 AS Decimal(18, 5)), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (415, 2, CAST(426.41322 AS Decimal(18, 5)), CAST(N'2025-08-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (416, 2, CAST(394.89611 AS Decimal(18, 5)), CAST(N'2025-08-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (417, 2, CAST(236.52567 AS Decimal(18, 5)), CAST(N'2025-08-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.590' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (418, 2, CAST(237.80234 AS Decimal(18, 5)), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (419, 2, CAST(257.14702 AS Decimal(18, 5)), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (420, 2, CAST(446.77587 AS Decimal(18, 5)), CAST(N'2025-08-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (421, 2, CAST(103.78303 AS Decimal(18, 5)), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (422, 2, CAST(500.31246 AS Decimal(18, 5)), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (423, 2, CAST(212.59818 AS Decimal(18, 5)), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (424, 2, CAST(587.52718 AS Decimal(18, 5)), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (425, 2, CAST(206.58733 AS Decimal(18, 5)), CAST(N'2025-08-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (426, 2, CAST(163.79964 AS Decimal(18, 5)), CAST(N'2025-08-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (427, 2, CAST(376.76144 AS Decimal(18, 5)), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (428, 2, CAST(550.86733 AS Decimal(18, 5)), CAST(N'2025-08-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (429, 2, CAST(260.81884 AS Decimal(18, 5)), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (430, 2, CAST(567.90129 AS Decimal(18, 5)), CAST(N'2025-08-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (431, 2, CAST(578.66336 AS Decimal(18, 5)), CAST(N'2025-08-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (432, 2, CAST(252.65306 AS Decimal(18, 5)), CAST(N'2025-08-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (433, 2, CAST(459.30870 AS Decimal(18, 5)), CAST(N'2025-08-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (434, 2, CAST(105.79229 AS Decimal(18, 5)), CAST(N'2025-08-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (435, 2, CAST(373.02395 AS Decimal(18, 5)), CAST(N'2025-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (436, 2, CAST(447.89264 AS Decimal(18, 5)), CAST(N'2025-09-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (437, 2, CAST(488.86418 AS Decimal(18, 5)), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.593' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (438, 2, CAST(310.63371 AS Decimal(18, 5)), CAST(N'2025-09-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (439, 2, CAST(592.33716 AS Decimal(18, 5)), CAST(N'2025-09-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (440, 2, CAST(287.42593 AS Decimal(18, 5)), CAST(N'2025-09-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (441, 2, CAST(139.89508 AS Decimal(18, 5)), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (442, 2, CAST(279.82458 AS Decimal(18, 5)), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (443, 2, CAST(104.85457 AS Decimal(18, 5)), CAST(N'2025-09-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.597' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (444, 2, CAST(466.38067 AS Decimal(18, 5)), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (445, 2, CAST(237.24466 AS Decimal(18, 5)), CAST(N'2025-09-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (446, 2, CAST(436.80643 AS Decimal(18, 5)), CAST(N'2025-09-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (447, 2, CAST(472.99428 AS Decimal(18, 5)), CAST(N'2025-09-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (448, 2, CAST(483.79856 AS Decimal(18, 5)), CAST(N'2025-09-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (449, 2, CAST(268.92209 AS Decimal(18, 5)), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (450, 2, CAST(368.00498 AS Decimal(18, 5)), CAST(N'2025-09-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (451, 2, CAST(513.42924 AS Decimal(18, 5)), CAST(N'2025-09-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (452, 2, CAST(565.28826 AS Decimal(18, 5)), CAST(N'2025-09-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (453, 2, CAST(431.09320 AS Decimal(18, 5)), CAST(N'2025-09-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (454, 2, CAST(426.51677 AS Decimal(18, 5)), CAST(N'2025-09-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (455, 2, CAST(502.69331 AS Decimal(18, 5)), CAST(N'2025-09-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (456, 2, CAST(162.66666 AS Decimal(18, 5)), CAST(N'2025-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (457, 2, CAST(432.61519 AS Decimal(18, 5)), CAST(N'2025-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (458, 2, CAST(549.72398 AS Decimal(18, 5)), CAST(N'2025-10-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (459, 2, CAST(280.53815 AS Decimal(18, 5)), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (460, 2, CAST(228.98402 AS Decimal(18, 5)), CAST(N'2025-10-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (461, 2, CAST(201.76693 AS Decimal(18, 5)), CAST(N'2025-10-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (462, 2, CAST(594.37731 AS Decimal(18, 5)), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (463, 2, CAST(296.15476 AS Decimal(18, 5)), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (464, 2, CAST(452.03870 AS Decimal(18, 5)), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (465, 2, CAST(582.74817 AS Decimal(18, 5)), CAST(N'2025-10-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (466, 2, CAST(325.76490 AS Decimal(18, 5)), CAST(N'2025-10-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (467, 2, CAST(463.18148 AS Decimal(18, 5)), CAST(N'2025-10-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.647' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (468, 2, CAST(275.04083 AS Decimal(18, 5)), CAST(N'2025-10-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (469, 2, CAST(500.77352 AS Decimal(18, 5)), CAST(N'2025-10-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (470, 2, CAST(329.57033 AS Decimal(18, 5)), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (471, 2, CAST(413.11641 AS Decimal(18, 5)), CAST(N'2025-10-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (472, 2, CAST(263.56477 AS Decimal(18, 5)), CAST(N'2025-10-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (473, 2, CAST(364.69858 AS Decimal(18, 5)), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (474, 2, CAST(522.66956 AS Decimal(18, 5)), CAST(N'2025-10-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (475, 2, CAST(213.68505 AS Decimal(18, 5)), CAST(N'2025-10-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (476, 2, CAST(175.43932 AS Decimal(18, 5)), CAST(N'2025-10-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (477, 2, CAST(273.94210 AS Decimal(18, 5)), CAST(N'2025-10-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (478, 2, CAST(193.22849 AS Decimal(18, 5)), CAST(N'2025-10-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (479, 2, CAST(157.86361 AS Decimal(18, 5)), CAST(N'2025-10-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (480, 2, CAST(513.15877 AS Decimal(18, 5)), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (481, 2, CAST(377.31745 AS Decimal(18, 5)), CAST(N'2025-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (482, 2, CAST(598.73021 AS Decimal(18, 5)), CAST(N'2025-11-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (483, 2, CAST(190.43339 AS Decimal(18, 5)), CAST(N'2025-11-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (484, 2, CAST(496.10906 AS Decimal(18, 5)), CAST(N'2025-11-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (485, 2, CAST(538.97399 AS Decimal(18, 5)), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (486, 2, CAST(207.79843 AS Decimal(18, 5)), CAST(N'2025-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (487, 2, CAST(459.81436 AS Decimal(18, 5)), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (488, 2, CAST(314.83916 AS Decimal(18, 5)), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (489, 2, CAST(322.90664 AS Decimal(18, 5)), CAST(N'2025-11-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (490, 2, CAST(537.29412 AS Decimal(18, 5)), CAST(N'2025-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (491, 2, CAST(292.84732 AS Decimal(18, 5)), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (492, 2, CAST(534.71244 AS Decimal(18, 5)), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (493, 2, CAST(542.40890 AS Decimal(18, 5)), CAST(N'2025-11-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (494, 2, CAST(245.59892 AS Decimal(18, 5)), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (495, 2, CAST(592.14450 AS Decimal(18, 5)), CAST(N'2025-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (496, 2, CAST(295.76436 AS Decimal(18, 5)), CAST(N'2025-11-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (497, 2, CAST(289.53072 AS Decimal(18, 5)), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.650' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (498, 2, CAST(488.14747 AS Decimal(18, 5)), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (499, 2, CAST(301.97416 AS Decimal(18, 5)), CAST(N'2025-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (500, 2, CAST(392.20778 AS Decimal(18, 5)), CAST(N'2025-12-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (501, 2, CAST(168.76640 AS Decimal(18, 5)), CAST(N'2025-12-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (502, 2, CAST(592.75776 AS Decimal(18, 5)), CAST(N'2025-12-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (503, 2, CAST(254.55132 AS Decimal(18, 5)), CAST(N'2025-12-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.653' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (504, 2, CAST(184.37083 AS Decimal(18, 5)), CAST(N'2025-12-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (505, 2, CAST(521.68661 AS Decimal(18, 5)), CAST(N'2025-12-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (506, 2, CAST(219.82366 AS Decimal(18, 5)), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (507, 2, CAST(164.35479 AS Decimal(18, 5)), CAST(N'2025-12-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (508, 2, CAST(107.53911 AS Decimal(18, 5)), CAST(N'2025-12-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (509, 2, CAST(128.06719 AS Decimal(18, 5)), CAST(N'2025-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (510, 2, CAST(217.35602 AS Decimal(18, 5)), CAST(N'2025-12-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (511, 2, CAST(544.40954 AS Decimal(18, 5)), CAST(N'2025-12-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (512, 2, CAST(531.19760 AS Decimal(18, 5)), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (513, 2, CAST(329.22756 AS Decimal(18, 5)), CAST(N'2025-12-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (514, 2, CAST(526.08193 AS Decimal(18, 5)), CAST(N'2025-12-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (515, 2, CAST(100.90947 AS Decimal(18, 5)), CAST(N'2025-12-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.703' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (516, 2, CAST(208.63684 AS Decimal(18, 5)), CAST(N'2025-12-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (517, 2, CAST(373.89484 AS Decimal(18, 5)), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (518, 2, CAST(447.07051 AS Decimal(18, 5)), CAST(N'2025-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (519, 2, CAST(364.97497 AS Decimal(18, 5)), CAST(N'2025-12-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (520, 2, CAST(279.86096 AS Decimal(18, 5)), CAST(N'2025-12-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (521, 2, CAST(256.86354 AS Decimal(18, 5)), CAST(N'2025-12-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (522, 2, CAST(289.29931 AS Decimal(18, 5)), CAST(N'2025-12-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:11.707' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (523, 3, CAST(202.92842 AS Decimal(18, 5)), CAST(N'2025-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.857' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (524, 3, CAST(266.13735 AS Decimal(18, 5)), CAST(N'2025-01-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (525, 3, CAST(416.63251 AS Decimal(18, 5)), CAST(N'2025-01-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (526, 3, CAST(466.66125 AS Decimal(18, 5)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (527, 3, CAST(518.29530 AS Decimal(18, 5)), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (528, 3, CAST(522.31859 AS Decimal(18, 5)), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (529, 3, CAST(161.30543 AS Decimal(18, 5)), CAST(N'2025-01-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (530, 3, CAST(221.57970 AS Decimal(18, 5)), CAST(N'2025-01-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (531, 3, CAST(198.31167 AS Decimal(18, 5)), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (532, 3, CAST(422.53613 AS Decimal(18, 5)), CAST(N'2025-01-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (533, 3, CAST(552.07368 AS Decimal(18, 5)), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (534, 3, CAST(399.73697 AS Decimal(18, 5)), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (535, 3, CAST(194.62889 AS Decimal(18, 5)), CAST(N'2025-01-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (536, 3, CAST(475.48664 AS Decimal(18, 5)), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (537, 3, CAST(141.81219 AS Decimal(18, 5)), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (538, 3, CAST(374.22477 AS Decimal(18, 5)), CAST(N'2025-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (539, 3, CAST(371.27655 AS Decimal(18, 5)), CAST(N'2025-01-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (540, 3, CAST(272.55931 AS Decimal(18, 5)), CAST(N'2025-01-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (541, 3, CAST(501.66703 AS Decimal(18, 5)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.863' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (542, 3, CAST(128.69813 AS Decimal(18, 5)), CAST(N'2025-01-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (543, 3, CAST(526.45796 AS Decimal(18, 5)), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (544, 3, CAST(509.07998 AS Decimal(18, 5)), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (545, 3, CAST(331.89569 AS Decimal(18, 5)), CAST(N'2025-01-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (546, 3, CAST(132.89672 AS Decimal(18, 5)), CAST(N'2025-02-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (547, 3, CAST(561.80161 AS Decimal(18, 5)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (548, 3, CAST(500.83344 AS Decimal(18, 5)), CAST(N'2025-02-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (549, 3, CAST(109.30195 AS Decimal(18, 5)), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (550, 3, CAST(334.08822 AS Decimal(18, 5)), CAST(N'2025-02-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (551, 3, CAST(172.51822 AS Decimal(18, 5)), CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (552, 3, CAST(116.51554 AS Decimal(18, 5)), CAST(N'2025-02-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (553, 3, CAST(184.67710 AS Decimal(18, 5)), CAST(N'2025-02-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.890' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (554, 3, CAST(350.44481 AS Decimal(18, 5)), CAST(N'2025-02-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.897' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (555, 3, CAST(275.66850 AS Decimal(18, 5)), CAST(N'2025-02-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.897' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (556, 3, CAST(386.79191 AS Decimal(18, 5)), CAST(N'2025-02-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (557, 3, CAST(558.14993 AS Decimal(18, 5)), CAST(N'2025-02-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (558, 3, CAST(186.18899 AS Decimal(18, 5)), CAST(N'2025-02-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (559, 3, CAST(328.18839 AS Decimal(18, 5)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (560, 3, CAST(345.90180 AS Decimal(18, 5)), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (561, 3, CAST(412.60013 AS Decimal(18, 5)), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (562, 3, CAST(437.77459 AS Decimal(18, 5)), CAST(N'2025-02-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (563, 3, CAST(429.96476 AS Decimal(18, 5)), CAST(N'2025-02-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (564, 3, CAST(588.42502 AS Decimal(18, 5)), CAST(N'2025-02-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (565, 3, CAST(151.38978 AS Decimal(18, 5)), CAST(N'2025-02-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (566, 3, CAST(547.16484 AS Decimal(18, 5)), CAST(N'2025-03-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (567, 3, CAST(232.58758 AS Decimal(18, 5)), CAST(N'2025-03-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (568, 3, CAST(433.09485 AS Decimal(18, 5)), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (569, 3, CAST(294.38502 AS Decimal(18, 5)), CAST(N'2025-03-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (570, 3, CAST(458.52998 AS Decimal(18, 5)), CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (571, 3, CAST(552.28203 AS Decimal(18, 5)), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (572, 3, CAST(266.30128 AS Decimal(18, 5)), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (573, 3, CAST(492.78543 AS Decimal(18, 5)), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (574, 3, CAST(311.96612 AS Decimal(18, 5)), CAST(N'2025-03-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (575, 3, CAST(330.64189 AS Decimal(18, 5)), CAST(N'2025-03-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (576, 3, CAST(538.44395 AS Decimal(18, 5)), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (577, 3, CAST(134.43319 AS Decimal(18, 5)), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (578, 3, CAST(207.49840 AS Decimal(18, 5)), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (579, 3, CAST(432.22094 AS Decimal(18, 5)), CAST(N'2025-03-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (580, 3, CAST(480.39355 AS Decimal(18, 5)), CAST(N'2025-03-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (581, 3, CAST(395.03292 AS Decimal(18, 5)), CAST(N'2025-03-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.900' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (582, 3, CAST(561.48664 AS Decimal(18, 5)), CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (583, 3, CAST(286.27701 AS Decimal(18, 5)), CAST(N'2025-03-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (584, 3, CAST(373.41002 AS Decimal(18, 5)), CAST(N'2025-03-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (585, 3, CAST(212.69286 AS Decimal(18, 5)), CAST(N'2025-03-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (586, 3, CAST(543.29152 AS Decimal(18, 5)), CAST(N'2025-03-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (587, 3, CAST(364.31357 AS Decimal(18, 5)), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (588, 3, CAST(227.32740 AS Decimal(18, 5)), CAST(N'2025-04-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (589, 3, CAST(102.67653 AS Decimal(18, 5)), CAST(N'2025-04-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (590, 3, CAST(537.87800 AS Decimal(18, 5)), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (591, 3, CAST(584.15775 AS Decimal(18, 5)), CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (592, 3, CAST(272.35318 AS Decimal(18, 5)), CAST(N'2025-04-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (593, 3, CAST(301.58407 AS Decimal(18, 5)), CAST(N'2025-04-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (594, 3, CAST(203.95898 AS Decimal(18, 5)), CAST(N'2025-04-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (595, 3, CAST(538.85842 AS Decimal(18, 5)), CAST(N'2025-04-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (596, 3, CAST(207.82041 AS Decimal(18, 5)), CAST(N'2025-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (597, 3, CAST(524.57224 AS Decimal(18, 5)), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (598, 3, CAST(392.48832 AS Decimal(18, 5)), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (599, 3, CAST(335.72693 AS Decimal(18, 5)), CAST(N'2025-04-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (600, 3, CAST(500.02934 AS Decimal(18, 5)), CAST(N'2025-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (601, 3, CAST(354.65337 AS Decimal(18, 5)), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (602, 3, CAST(303.64307 AS Decimal(18, 5)), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (603, 3, CAST(442.03267 AS Decimal(18, 5)), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.903' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (604, 3, CAST(422.67757 AS Decimal(18, 5)), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (605, 3, CAST(595.74243 AS Decimal(18, 5)), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (606, 3, CAST(183.50641 AS Decimal(18, 5)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (607, 3, CAST(222.72855 AS Decimal(18, 5)), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (608, 3, CAST(501.44801 AS Decimal(18, 5)), CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (609, 3, CAST(318.22094 AS Decimal(18, 5)), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (610, 3, CAST(429.89121 AS Decimal(18, 5)), CAST(N'2025-05-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (611, 3, CAST(488.85695 AS Decimal(18, 5)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (612, 3, CAST(515.57059 AS Decimal(18, 5)), CAST(N'2025-05-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (613, 3, CAST(242.22876 AS Decimal(18, 5)), CAST(N'2025-05-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (614, 3, CAST(208.42654 AS Decimal(18, 5)), CAST(N'2025-05-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (615, 3, CAST(334.41266 AS Decimal(18, 5)), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (616, 3, CAST(445.38244 AS Decimal(18, 5)), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (617, 3, CAST(140.00847 AS Decimal(18, 5)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (618, 3, CAST(305.55428 AS Decimal(18, 5)), CAST(N'2025-05-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (619, 3, CAST(495.19218 AS Decimal(18, 5)), CAST(N'2025-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (620, 3, CAST(397.90565 AS Decimal(18, 5)), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (621, 3, CAST(500.04069 AS Decimal(18, 5)), CAST(N'2025-05-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (622, 3, CAST(269.92383 AS Decimal(18, 5)), CAST(N'2025-05-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (623, 3, CAST(185.05581 AS Decimal(18, 5)), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (624, 3, CAST(467.01120 AS Decimal(18, 5)), CAST(N'2025-05-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (625, 3, CAST(526.75682 AS Decimal(18, 5)), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (626, 3, CAST(402.69638 AS Decimal(18, 5)), CAST(N'2025-05-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (627, 3, CAST(159.67258 AS Decimal(18, 5)), CAST(N'2025-05-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (628, 3, CAST(173.91950 AS Decimal(18, 5)), CAST(N'2025-05-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (629, 3, CAST(564.23846 AS Decimal(18, 5)), CAST(N'2025-05-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (630, 3, CAST(375.79988 AS Decimal(18, 5)), CAST(N'2025-05-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (631, 3, CAST(582.68354 AS Decimal(18, 5)), CAST(N'2025-06-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (632, 3, CAST(486.41253 AS Decimal(18, 5)), CAST(N'2025-06-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (633, 3, CAST(247.40517 AS Decimal(18, 5)), CAST(N'2025-06-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (634, 3, CAST(104.63339 AS Decimal(18, 5)), CAST(N'2025-06-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (635, 3, CAST(334.32753 AS Decimal(18, 5)), CAST(N'2025-06-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (636, 3, CAST(326.88390 AS Decimal(18, 5)), CAST(N'2025-06-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (637, 3, CAST(563.42781 AS Decimal(18, 5)), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (638, 3, CAST(323.53481 AS Decimal(18, 5)), CAST(N'2025-06-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (639, 3, CAST(116.87800 AS Decimal(18, 5)), CAST(N'2025-06-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (640, 3, CAST(519.96773 AS Decimal(18, 5)), CAST(N'2025-06-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (641, 3, CAST(218.52027 AS Decimal(18, 5)), CAST(N'2025-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (642, 3, CAST(489.49054 AS Decimal(18, 5)), CAST(N'2025-06-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (643, 3, CAST(205.08883 AS Decimal(18, 5)), CAST(N'2025-06-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.910' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (644, 3, CAST(373.51790 AS Decimal(18, 5)), CAST(N'2025-06-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.937' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (645, 3, CAST(280.39877 AS Decimal(18, 5)), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.937' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (646, 3, CAST(184.56693 AS Decimal(18, 5)), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.937' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (647, 3, CAST(237.95717 AS Decimal(18, 5)), CAST(N'2025-06-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.937' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (648, 3, CAST(466.30128 AS Decimal(18, 5)), CAST(N'2025-06-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.937' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (649, 3, CAST(565.66892 AS Decimal(18, 5)), CAST(N'2025-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (650, 3, CAST(572.31337 AS Decimal(18, 5)), CAST(N'2025-06-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (651, 3, CAST(115.46900 AS Decimal(18, 5)), CAST(N'2025-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (652, 3, CAST(210.45051 AS Decimal(18, 5)), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (653, 3, CAST(174.73612 AS Decimal(18, 5)), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (654, 3, CAST(579.83033 AS Decimal(18, 5)), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (655, 3, CAST(421.97786 AS Decimal(18, 5)), CAST(N'2025-07-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (656, 3, CAST(336.67457 AS Decimal(18, 5)), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (657, 3, CAST(155.62640 AS Decimal(18, 5)), CAST(N'2025-07-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (658, 3, CAST(589.86895 AS Decimal(18, 5)), CAST(N'2025-07-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (659, 3, CAST(241.47526 AS Decimal(18, 5)), CAST(N'2025-07-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (660, 3, CAST(352.02075 AS Decimal(18, 5)), CAST(N'2025-07-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (661, 3, CAST(480.20946 AS Decimal(18, 5)), CAST(N'2025-07-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (662, 3, CAST(111.99188 AS Decimal(18, 5)), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (663, 3, CAST(479.69130 AS Decimal(18, 5)), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (664, 3, CAST(382.65743 AS Decimal(18, 5)), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (665, 3, CAST(235.69203 AS Decimal(18, 5)), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (666, 3, CAST(387.21984 AS Decimal(18, 5)), CAST(N'2025-07-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (667, 3, CAST(447.14922 AS Decimal(18, 5)), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (668, 3, CAST(419.04341 AS Decimal(18, 5)), CAST(N'2025-07-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (669, 3, CAST(160.47691 AS Decimal(18, 5)), CAST(N'2025-07-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (670, 3, CAST(230.27762 AS Decimal(18, 5)), CAST(N'2025-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (671, 3, CAST(366.00834 AS Decimal(18, 5)), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (672, 3, CAST(486.27589 AS Decimal(18, 5)), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (673, 3, CAST(591.55252 AS Decimal(18, 5)), CAST(N'2025-07-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (674, 3, CAST(198.12555 AS Decimal(18, 5)), CAST(N'2025-07-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (675, 3, CAST(580.45507 AS Decimal(18, 5)), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (676, 3, CAST(387.23339 AS Decimal(18, 5)), CAST(N'2025-08-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (677, 3, CAST(276.97296 AS Decimal(18, 5)), CAST(N'2025-08-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (678, 3, CAST(114.95195 AS Decimal(18, 5)), CAST(N'2025-08-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (679, 3, CAST(116.05734 AS Decimal(18, 5)), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (680, 3, CAST(518.53102 AS Decimal(18, 5)), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (681, 3, CAST(569.73446 AS Decimal(18, 5)), CAST(N'2025-08-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (682, 3, CAST(235.15795 AS Decimal(18, 5)), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (683, 3, CAST(158.82220 AS Decimal(18, 5)), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (684, 3, CAST(593.28630 AS Decimal(18, 5)), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (685, 3, CAST(197.36100 AS Decimal(18, 5)), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (686, 3, CAST(371.37196 AS Decimal(18, 5)), CAST(N'2025-08-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (687, 3, CAST(414.57480 AS Decimal(18, 5)), CAST(N'2025-08-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.943' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (688, 3, CAST(510.57044 AS Decimal(18, 5)), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (689, 3, CAST(322.79096 AS Decimal(18, 5)), CAST(N'2025-08-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (690, 3, CAST(406.12204 AS Decimal(18, 5)), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (691, 3, CAST(347.29142 AS Decimal(18, 5)), CAST(N'2025-08-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (692, 3, CAST(229.41675 AS Decimal(18, 5)), CAST(N'2025-08-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (693, 3, CAST(123.26507 AS Decimal(18, 5)), CAST(N'2025-08-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (694, 3, CAST(525.45525 AS Decimal(18, 5)), CAST(N'2025-08-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (695, 3, CAST(271.88083 AS Decimal(18, 5)), CAST(N'2025-08-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (696, 3, CAST(387.81741 AS Decimal(18, 5)), CAST(N'2025-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (697, 3, CAST(224.46408 AS Decimal(18, 5)), CAST(N'2025-09-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (698, 3, CAST(178.89332 AS Decimal(18, 5)), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (699, 3, CAST(554.09052 AS Decimal(18, 5)), CAST(N'2025-09-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (700, 3, CAST(300.16375 AS Decimal(18, 5)), CAST(N'2025-09-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (701, 3, CAST(237.81725 AS Decimal(18, 5)), CAST(N'2025-09-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (702, 3, CAST(340.35437 AS Decimal(18, 5)), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (703, 3, CAST(516.83231 AS Decimal(18, 5)), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (704, 3, CAST(333.69941 AS Decimal(18, 5)), CAST(N'2025-09-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.947' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (705, 3, CAST(291.14957 AS Decimal(18, 5)), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (706, 3, CAST(291.16915 AS Decimal(18, 5)), CAST(N'2025-09-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (707, 3, CAST(167.17368 AS Decimal(18, 5)), CAST(N'2025-09-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (708, 3, CAST(224.99436 AS Decimal(18, 5)), CAST(N'2025-09-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (709, 3, CAST(310.68061 AS Decimal(18, 5)), CAST(N'2025-09-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (710, 3, CAST(101.20696 AS Decimal(18, 5)), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (711, 3, CAST(472.62037 AS Decimal(18, 5)), CAST(N'2025-09-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (712, 3, CAST(410.83711 AS Decimal(18, 5)), CAST(N'2025-09-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (713, 3, CAST(402.24092 AS Decimal(18, 5)), CAST(N'2025-09-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (714, 3, CAST(288.91807 AS Decimal(18, 5)), CAST(N'2025-09-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (715, 3, CAST(318.88648 AS Decimal(18, 5)), CAST(N'2025-09-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (716, 3, CAST(163.18716 AS Decimal(18, 5)), CAST(N'2025-09-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (717, 3, CAST(471.83072 AS Decimal(18, 5)), CAST(N'2025-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (718, 3, CAST(218.17987 AS Decimal(18, 5)), CAST(N'2025-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (719, 3, CAST(599.26327 AS Decimal(18, 5)), CAST(N'2025-10-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (720, 3, CAST(540.58910 AS Decimal(18, 5)), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (721, 3, CAST(136.10234 AS Decimal(18, 5)), CAST(N'2025-10-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (722, 3, CAST(526.17158 AS Decimal(18, 5)), CAST(N'2025-10-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (723, 3, CAST(378.89413 AS Decimal(18, 5)), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (724, 3, CAST(557.64732 AS Decimal(18, 5)), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (725, 3, CAST(292.05794 AS Decimal(18, 5)), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (726, 3, CAST(445.16397 AS Decimal(18, 5)), CAST(N'2025-10-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (727, 3, CAST(574.43013 AS Decimal(18, 5)), CAST(N'2025-10-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (728, 3, CAST(352.59752 AS Decimal(18, 5)), CAST(N'2025-10-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (729, 3, CAST(301.86912 AS Decimal(18, 5)), CAST(N'2025-10-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (730, 3, CAST(355.86080 AS Decimal(18, 5)), CAST(N'2025-10-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (731, 3, CAST(307.75792 AS Decimal(18, 5)), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (732, 3, CAST(385.85012 AS Decimal(18, 5)), CAST(N'2025-10-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (733, 3, CAST(216.61356 AS Decimal(18, 5)), CAST(N'2025-10-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (734, 3, CAST(426.27155 AS Decimal(18, 5)), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (735, 3, CAST(341.17749 AS Decimal(18, 5)), CAST(N'2025-10-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (736, 3, CAST(253.28350 AS Decimal(18, 5)), CAST(N'2025-10-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (737, 3, CAST(517.35369 AS Decimal(18, 5)), CAST(N'2025-10-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (738, 3, CAST(135.56952 AS Decimal(18, 5)), CAST(N'2025-10-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (739, 3, CAST(317.82747 AS Decimal(18, 5)), CAST(N'2025-10-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (740, 3, CAST(474.43567 AS Decimal(18, 5)), CAST(N'2025-10-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (741, 3, CAST(158.54841 AS Decimal(18, 5)), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (742, 3, CAST(197.89552 AS Decimal(18, 5)), CAST(N'2025-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (743, 3, CAST(136.93943 AS Decimal(18, 5)), CAST(N'2025-11-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (744, 3, CAST(480.88805 AS Decimal(18, 5)), CAST(N'2025-11-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (745, 3, CAST(350.55275 AS Decimal(18, 5)), CAST(N'2025-11-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (746, 3, CAST(559.43041 AS Decimal(18, 5)), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (747, 3, CAST(296.53771 AS Decimal(18, 5)), CAST(N'2025-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (748, 3, CAST(229.32612 AS Decimal(18, 5)), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (749, 3, CAST(362.97044 AS Decimal(18, 5)), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (750, 3, CAST(419.37545 AS Decimal(18, 5)), CAST(N'2025-11-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (751, 3, CAST(428.31457 AS Decimal(18, 5)), CAST(N'2025-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (752, 3, CAST(400.82440 AS Decimal(18, 5)), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (753, 3, CAST(294.11082 AS Decimal(18, 5)), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (754, 3, CAST(424.65538 AS Decimal(18, 5)), CAST(N'2025-11-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (755, 3, CAST(358.39254 AS Decimal(18, 5)), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (756, 3, CAST(234.59568 AS Decimal(18, 5)), CAST(N'2025-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (757, 3, CAST(301.01880 AS Decimal(18, 5)), CAST(N'2025-11-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (758, 3, CAST(156.86934 AS Decimal(18, 5)), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (759, 3, CAST(514.76519 AS Decimal(18, 5)), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (760, 3, CAST(504.21702 AS Decimal(18, 5)), CAST(N'2025-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (761, 3, CAST(381.50416 AS Decimal(18, 5)), CAST(N'2025-12-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (762, 3, CAST(317.29633 AS Decimal(18, 5)), CAST(N'2025-12-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (763, 3, CAST(294.19974 AS Decimal(18, 5)), CAST(N'2025-12-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (764, 3, CAST(260.57437 AS Decimal(18, 5)), CAST(N'2025-12-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:19.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (765, 3, CAST(135.99728 AS Decimal(18, 5)), CAST(N'2025-12-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (766, 3, CAST(131.99195 AS Decimal(18, 5)), CAST(N'2025-12-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (767, 3, CAST(519.25106 AS Decimal(18, 5)), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (768, 3, CAST(325.97037 AS Decimal(18, 5)), CAST(N'2025-12-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (769, 3, CAST(177.49535 AS Decimal(18, 5)), CAST(N'2025-12-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (770, 3, CAST(371.64003 AS Decimal(18, 5)), CAST(N'2025-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (771, 3, CAST(392.69996 AS Decimal(18, 5)), CAST(N'2025-12-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (772, 3, CAST(121.05369 AS Decimal(18, 5)), CAST(N'2025-12-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.027' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (773, 3, CAST(284.48899 AS Decimal(18, 5)), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (774, 3, CAST(198.58731 AS Decimal(18, 5)), CAST(N'2025-12-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (775, 3, CAST(378.27061 AS Decimal(18, 5)), CAST(N'2025-12-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (776, 3, CAST(423.29641 AS Decimal(18, 5)), CAST(N'2025-12-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (777, 3, CAST(311.85125 AS Decimal(18, 5)), CAST(N'2025-12-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (778, 3, CAST(470.82684 AS Decimal(18, 5)), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (779, 3, CAST(471.66849 AS Decimal(18, 5)), CAST(N'2025-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (780, 3, CAST(215.55740 AS Decimal(18, 5)), CAST(N'2025-12-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (781, 3, CAST(220.11989 AS Decimal(18, 5)), CAST(N'2025-12-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (782, 3, CAST(177.47660 AS Decimal(18, 5)), CAST(N'2025-12-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (783, 3, CAST(596.19790 AS Decimal(18, 5)), CAST(N'2025-12-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:20.030' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (784, 4, CAST(434.37820 AS Decimal(18, 5)), CAST(N'2025-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.207' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (785, 4, CAST(540.66440 AS Decimal(18, 5)), CAST(N'2025-01-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.217' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (786, 4, CAST(388.81405 AS Decimal(18, 5)), CAST(N'2025-01-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.223' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (787, 4, CAST(316.70833 AS Decimal(18, 5)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.223' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (788, 4, CAST(385.76591 AS Decimal(18, 5)), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (789, 4, CAST(386.28861 AS Decimal(18, 5)), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (790, 4, CAST(152.17979 AS Decimal(18, 5)), CAST(N'2025-01-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (791, 4, CAST(559.09724 AS Decimal(18, 5)), CAST(N'2025-01-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (792, 4, CAST(572.03478 AS Decimal(18, 5)), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (793, 4, CAST(338.84006 AS Decimal(18, 5)), CAST(N'2025-01-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (794, 4, CAST(304.91130 AS Decimal(18, 5)), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (795, 4, CAST(587.72233 AS Decimal(18, 5)), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (796, 4, CAST(441.61530 AS Decimal(18, 5)), CAST(N'2025-01-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.227' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (797, 4, CAST(419.12116 AS Decimal(18, 5)), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (798, 4, CAST(515.21717 AS Decimal(18, 5)), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (799, 4, CAST(256.66399 AS Decimal(18, 5)), CAST(N'2025-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (800, 4, CAST(332.49497 AS Decimal(18, 5)), CAST(N'2025-01-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (801, 4, CAST(447.76209 AS Decimal(18, 5)), CAST(N'2025-01-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (802, 4, CAST(388.40528 AS Decimal(18, 5)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (803, 4, CAST(475.35793 AS Decimal(18, 5)), CAST(N'2025-01-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (804, 4, CAST(436.71922 AS Decimal(18, 5)), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.230' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (805, 4, CAST(281.71933 AS Decimal(18, 5)), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.233' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (806, 4, CAST(549.40603 AS Decimal(18, 5)), CAST(N'2025-01-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.233' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (807, 4, CAST(231.27843 AS Decimal(18, 5)), CAST(N'2025-02-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.233' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (808, 4, CAST(424.10997 AS Decimal(18, 5)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.233' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (809, 4, CAST(234.06848 AS Decimal(18, 5)), CAST(N'2025-02-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.233' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (810, 4, CAST(430.55868 AS Decimal(18, 5)), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.237' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (811, 4, CAST(325.07437 AS Decimal(18, 5)), CAST(N'2025-02-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.237' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (812, 4, CAST(263.33611 AS Decimal(18, 5)), CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.237' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (813, 4, CAST(240.36242 AS Decimal(18, 5)), CAST(N'2025-02-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.237' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (814, 4, CAST(487.42221 AS Decimal(18, 5)), CAST(N'2025-02-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.243' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (815, 4, CAST(201.89082 AS Decimal(18, 5)), CAST(N'2025-02-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.243' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (816, 4, CAST(362.68167 AS Decimal(18, 5)), CAST(N'2025-02-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.243' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (817, 4, CAST(539.91954 AS Decimal(18, 5)), CAST(N'2025-02-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.243' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (818, 4, CAST(165.39019 AS Decimal(18, 5)), CAST(N'2025-02-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (819, 4, CAST(584.86722 AS Decimal(18, 5)), CAST(N'2025-02-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (820, 4, CAST(264.14525 AS Decimal(18, 5)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (821, 4, CAST(198.18264 AS Decimal(18, 5)), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (822, 4, CAST(453.73245 AS Decimal(18, 5)), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (823, 4, CAST(223.79647 AS Decimal(18, 5)), CAST(N'2025-02-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (824, 4, CAST(205.14206 AS Decimal(18, 5)), CAST(N'2025-02-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (825, 4, CAST(279.91631 AS Decimal(18, 5)), CAST(N'2025-02-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (826, 4, CAST(413.00970 AS Decimal(18, 5)), CAST(N'2025-02-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (827, 4, CAST(238.18675 AS Decimal(18, 5)), CAST(N'2025-03-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (828, 4, CAST(164.68896 AS Decimal(18, 5)), CAST(N'2025-03-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (829, 4, CAST(346.67221 AS Decimal(18, 5)), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (830, 4, CAST(381.11798 AS Decimal(18, 5)), CAST(N'2025-03-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (831, 4, CAST(203.07246 AS Decimal(18, 5)), CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (832, 4, CAST(390.91983 AS Decimal(18, 5)), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (833, 4, CAST(290.57978 AS Decimal(18, 5)), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (834, 4, CAST(444.35827 AS Decimal(18, 5)), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (835, 4, CAST(181.28409 AS Decimal(18, 5)), CAST(N'2025-03-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (836, 4, CAST(279.20935 AS Decimal(18, 5)), CAST(N'2025-03-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.247' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (837, 4, CAST(331.64144 AS Decimal(18, 5)), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (838, 4, CAST(565.11527 AS Decimal(18, 5)), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (839, 4, CAST(265.34388 AS Decimal(18, 5)), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (840, 4, CAST(529.30470 AS Decimal(18, 5)), CAST(N'2025-03-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (841, 4, CAST(228.50341 AS Decimal(18, 5)), CAST(N'2025-03-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (842, 4, CAST(170.14912 AS Decimal(18, 5)), CAST(N'2025-03-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (843, 4, CAST(480.83669 AS Decimal(18, 5)), CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (844, 4, CAST(418.48019 AS Decimal(18, 5)), CAST(N'2025-03-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (845, 4, CAST(236.13942 AS Decimal(18, 5)), CAST(N'2025-03-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (846, 4, CAST(359.69800 AS Decimal(18, 5)), CAST(N'2025-03-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (847, 4, CAST(380.30021 AS Decimal(18, 5)), CAST(N'2025-03-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (848, 4, CAST(265.97398 AS Decimal(18, 5)), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (849, 4, CAST(582.28130 AS Decimal(18, 5)), CAST(N'2025-04-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (850, 4, CAST(203.43505 AS Decimal(18, 5)), CAST(N'2025-04-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (851, 4, CAST(322.05940 AS Decimal(18, 5)), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (852, 4, CAST(321.46034 AS Decimal(18, 5)), CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (853, 4, CAST(599.97685 AS Decimal(18, 5)), CAST(N'2025-04-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (854, 4, CAST(208.39087 AS Decimal(18, 5)), CAST(N'2025-04-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (855, 4, CAST(323.27157 AS Decimal(18, 5)), CAST(N'2025-04-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (856, 4, CAST(412.58988 AS Decimal(18, 5)), CAST(N'2025-04-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (857, 4, CAST(472.40117 AS Decimal(18, 5)), CAST(N'2025-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (858, 4, CAST(402.12285 AS Decimal(18, 5)), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (859, 4, CAST(401.36984 AS Decimal(18, 5)), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (860, 4, CAST(481.70731 AS Decimal(18, 5)), CAST(N'2025-04-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (861, 4, CAST(435.90845 AS Decimal(18, 5)), CAST(N'2025-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (862, 4, CAST(542.11614 AS Decimal(18, 5)), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (863, 4, CAST(106.26421 AS Decimal(18, 5)), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.250' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (864, 4, CAST(535.87212 AS Decimal(18, 5)), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (865, 4, CAST(388.64881 AS Decimal(18, 5)), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (866, 4, CAST(561.29237 AS Decimal(18, 5)), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (867, 4, CAST(466.82008 AS Decimal(18, 5)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (868, 4, CAST(590.61684 AS Decimal(18, 5)), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (869, 4, CAST(345.23401 AS Decimal(18, 5)), CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (870, 4, CAST(597.21645 AS Decimal(18, 5)), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (871, 4, CAST(287.70040 AS Decimal(18, 5)), CAST(N'2025-05-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (872, 4, CAST(166.57433 AS Decimal(18, 5)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (873, 4, CAST(480.01788 AS Decimal(18, 5)), CAST(N'2025-05-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (874, 4, CAST(495.66697 AS Decimal(18, 5)), CAST(N'2025-05-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (875, 4, CAST(583.06619 AS Decimal(18, 5)), CAST(N'2025-05-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (876, 4, CAST(398.18191 AS Decimal(18, 5)), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (877, 4, CAST(142.37168 AS Decimal(18, 5)), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (878, 4, CAST(119.23592 AS Decimal(18, 5)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (879, 4, CAST(120.41093 AS Decimal(18, 5)), CAST(N'2025-05-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (880, 4, CAST(597.75986 AS Decimal(18, 5)), CAST(N'2025-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (881, 4, CAST(409.69657 AS Decimal(18, 5)), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (882, 4, CAST(599.38120 AS Decimal(18, 5)), CAST(N'2025-05-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (883, 4, CAST(468.38140 AS Decimal(18, 5)), CAST(N'2025-05-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.253' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (884, 4, CAST(160.39006 AS Decimal(18, 5)), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (885, 4, CAST(578.74907 AS Decimal(18, 5)), CAST(N'2025-05-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (886, 4, CAST(112.42135 AS Decimal(18, 5)), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (887, 4, CAST(531.91259 AS Decimal(18, 5)), CAST(N'2025-05-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (888, 4, CAST(205.64051 AS Decimal(18, 5)), CAST(N'2025-05-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (889, 4, CAST(129.12213 AS Decimal(18, 5)), CAST(N'2025-05-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (890, 4, CAST(509.21033 AS Decimal(18, 5)), CAST(N'2025-05-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (891, 4, CAST(541.26640 AS Decimal(18, 5)), CAST(N'2025-05-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (892, 4, CAST(163.64831 AS Decimal(18, 5)), CAST(N'2025-06-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (893, 4, CAST(292.21039 AS Decimal(18, 5)), CAST(N'2025-06-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (894, 4, CAST(596.08142 AS Decimal(18, 5)), CAST(N'2025-06-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (895, 4, CAST(517.11426 AS Decimal(18, 5)), CAST(N'2025-06-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (896, 4, CAST(410.14956 AS Decimal(18, 5)), CAST(N'2025-06-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (897, 4, CAST(500.33986 AS Decimal(18, 5)), CAST(N'2025-06-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (898, 4, CAST(215.55482 AS Decimal(18, 5)), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (899, 4, CAST(480.89086 AS Decimal(18, 5)), CAST(N'2025-06-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (900, 4, CAST(386.02754 AS Decimal(18, 5)), CAST(N'2025-06-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.257' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (901, 4, CAST(421.64996 AS Decimal(18, 5)), CAST(N'2025-06-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.260' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (902, 4, CAST(159.43840 AS Decimal(18, 5)), CAST(N'2025-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.260' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (903, 4, CAST(589.13947 AS Decimal(18, 5)), CAST(N'2025-06-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.260' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (904, 4, CAST(208.99241 AS Decimal(18, 5)), CAST(N'2025-06-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.260' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (905, 4, CAST(412.65474 AS Decimal(18, 5)), CAST(N'2025-06-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (906, 4, CAST(180.04862 AS Decimal(18, 5)), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (907, 4, CAST(439.92184 AS Decimal(18, 5)), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (908, 4, CAST(506.34420 AS Decimal(18, 5)), CAST(N'2025-06-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (909, 4, CAST(366.17138 AS Decimal(18, 5)), CAST(N'2025-06-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (910, 4, CAST(322.31954 AS Decimal(18, 5)), CAST(N'2025-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (911, 4, CAST(530.49292 AS Decimal(18, 5)), CAST(N'2025-06-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (912, 4, CAST(187.18500 AS Decimal(18, 5)), CAST(N'2025-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (913, 4, CAST(255.35732 AS Decimal(18, 5)), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (914, 4, CAST(522.41295 AS Decimal(18, 5)), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (915, 4, CAST(341.80515 AS Decimal(18, 5)), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (916, 4, CAST(221.50126 AS Decimal(18, 5)), CAST(N'2025-07-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (917, 4, CAST(578.31949 AS Decimal(18, 5)), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (918, 4, CAST(313.64794 AS Decimal(18, 5)), CAST(N'2025-07-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (919, 4, CAST(438.19883 AS Decimal(18, 5)), CAST(N'2025-07-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (920, 4, CAST(332.66530 AS Decimal(18, 5)), CAST(N'2025-07-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (921, 4, CAST(267.80285 AS Decimal(18, 5)), CAST(N'2025-07-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (922, 4, CAST(329.91811 AS Decimal(18, 5)), CAST(N'2025-07-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (923, 4, CAST(284.93890 AS Decimal(18, 5)), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (924, 4, CAST(237.68256 AS Decimal(18, 5)), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (925, 4, CAST(517.71700 AS Decimal(18, 5)), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (926, 4, CAST(181.74928 AS Decimal(18, 5)), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.290' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (927, 4, CAST(333.75513 AS Decimal(18, 5)), CAST(N'2025-07-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (928, 4, CAST(353.21217 AS Decimal(18, 5)), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (929, 4, CAST(236.56658 AS Decimal(18, 5)), CAST(N'2025-07-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (930, 4, CAST(374.46926 AS Decimal(18, 5)), CAST(N'2025-07-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (931, 4, CAST(282.28437 AS Decimal(18, 5)), CAST(N'2025-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (932, 4, CAST(398.13455 AS Decimal(18, 5)), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (933, 4, CAST(361.45810 AS Decimal(18, 5)), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (934, 4, CAST(239.23628 AS Decimal(18, 5)), CAST(N'2025-07-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (935, 4, CAST(121.23939 AS Decimal(18, 5)), CAST(N'2025-07-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (936, 4, CAST(567.97196 AS Decimal(18, 5)), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (937, 4, CAST(598.55555 AS Decimal(18, 5)), CAST(N'2025-08-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (938, 4, CAST(406.19718 AS Decimal(18, 5)), CAST(N'2025-08-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (939, 4, CAST(583.83671 AS Decimal(18, 5)), CAST(N'2025-08-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (940, 4, CAST(343.41887 AS Decimal(18, 5)), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (941, 4, CAST(465.50545 AS Decimal(18, 5)), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (942, 4, CAST(345.30097 AS Decimal(18, 5)), CAST(N'2025-08-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (943, 4, CAST(193.39094 AS Decimal(18, 5)), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (944, 4, CAST(369.41319 AS Decimal(18, 5)), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (945, 4, CAST(204.55760 AS Decimal(18, 5)), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (946, 4, CAST(113.66439 AS Decimal(18, 5)), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (947, 4, CAST(295.83646 AS Decimal(18, 5)), CAST(N'2025-08-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (948, 4, CAST(215.19864 AS Decimal(18, 5)), CAST(N'2025-08-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (949, 4, CAST(574.21149 AS Decimal(18, 5)), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.293' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (950, 4, CAST(178.00831 AS Decimal(18, 5)), CAST(N'2025-08-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (951, 4, CAST(272.08185 AS Decimal(18, 5)), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (952, 4, CAST(299.49547 AS Decimal(18, 5)), CAST(N'2025-08-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (953, 4, CAST(215.30766 AS Decimal(18, 5)), CAST(N'2025-08-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (954, 4, CAST(298.24134 AS Decimal(18, 5)), CAST(N'2025-08-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (955, 4, CAST(217.52619 AS Decimal(18, 5)), CAST(N'2025-08-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (956, 4, CAST(343.20348 AS Decimal(18, 5)), CAST(N'2025-08-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (957, 4, CAST(194.71459 AS Decimal(18, 5)), CAST(N'2025-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (958, 4, CAST(361.16357 AS Decimal(18, 5)), CAST(N'2025-09-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (959, 4, CAST(541.67548 AS Decimal(18, 5)), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (960, 4, CAST(512.59114 AS Decimal(18, 5)), CAST(N'2025-09-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (961, 4, CAST(431.01248 AS Decimal(18, 5)), CAST(N'2025-09-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (962, 4, CAST(202.73862 AS Decimal(18, 5)), CAST(N'2025-09-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (963, 4, CAST(526.06715 AS Decimal(18, 5)), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (964, 4, CAST(480.59540 AS Decimal(18, 5)), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (965, 4, CAST(481.68157 AS Decimal(18, 5)), CAST(N'2025-09-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.297' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (966, 4, CAST(473.12298 AS Decimal(18, 5)), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (967, 4, CAST(566.71117 AS Decimal(18, 5)), CAST(N'2025-09-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (968, 4, CAST(106.04618 AS Decimal(18, 5)), CAST(N'2025-09-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (969, 4, CAST(325.70423 AS Decimal(18, 5)), CAST(N'2025-09-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (970, 4, CAST(284.47169 AS Decimal(18, 5)), CAST(N'2025-09-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (971, 4, CAST(538.90732 AS Decimal(18, 5)), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (972, 4, CAST(466.78383 AS Decimal(18, 5)), CAST(N'2025-09-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (973, 4, CAST(300.49976 AS Decimal(18, 5)), CAST(N'2025-09-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (974, 4, CAST(596.91109 AS Decimal(18, 5)), CAST(N'2025-09-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (975, 4, CAST(306.43252 AS Decimal(18, 5)), CAST(N'2025-09-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (976, 4, CAST(352.96854 AS Decimal(18, 5)), CAST(N'2025-09-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (977, 4, CAST(421.18989 AS Decimal(18, 5)), CAST(N'2025-09-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (978, 4, CAST(311.87326 AS Decimal(18, 5)), CAST(N'2025-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (979, 4, CAST(485.59566 AS Decimal(18, 5)), CAST(N'2025-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.323' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (980, 4, CAST(213.37592 AS Decimal(18, 5)), CAST(N'2025-10-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (981, 4, CAST(486.72033 AS Decimal(18, 5)), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (982, 4, CAST(491.44690 AS Decimal(18, 5)), CAST(N'2025-10-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (983, 4, CAST(551.80954 AS Decimal(18, 5)), CAST(N'2025-10-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (984, 4, CAST(275.04643 AS Decimal(18, 5)), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (985, 4, CAST(472.77647 AS Decimal(18, 5)), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (986, 4, CAST(550.07669 AS Decimal(18, 5)), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (987, 4, CAST(168.19681 AS Decimal(18, 5)), CAST(N'2025-10-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (988, 4, CAST(204.07947 AS Decimal(18, 5)), CAST(N'2025-10-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (989, 4, CAST(283.76357 AS Decimal(18, 5)), CAST(N'2025-10-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (990, 4, CAST(328.54470 AS Decimal(18, 5)), CAST(N'2025-10-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (991, 4, CAST(253.92667 AS Decimal(18, 5)), CAST(N'2025-10-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (992, 4, CAST(333.85148 AS Decimal(18, 5)), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (993, 4, CAST(528.37505 AS Decimal(18, 5)), CAST(N'2025-10-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (994, 4, CAST(273.14127 AS Decimal(18, 5)), CAST(N'2025-10-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (995, 4, CAST(547.42196 AS Decimal(18, 5)), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (996, 4, CAST(486.05639 AS Decimal(18, 5)), CAST(N'2025-10-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (997, 4, CAST(361.35783 AS Decimal(18, 5)), CAST(N'2025-10-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (998, 4, CAST(103.66670 AS Decimal(18, 5)), CAST(N'2025-10-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (999, 4, CAST(549.77693 AS Decimal(18, 5)), CAST(N'2025-10-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.327' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1000, 4, CAST(244.06201 AS Decimal(18, 5)), CAST(N'2025-10-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1001, 4, CAST(379.31332 AS Decimal(18, 5)), CAST(N'2025-10-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1002, 4, CAST(147.53525 AS Decimal(18, 5)), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1003, 4, CAST(398.99756 AS Decimal(18, 5)), CAST(N'2025-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1004, 4, CAST(167.06879 AS Decimal(18, 5)), CAST(N'2025-11-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1005, 4, CAST(428.35265 AS Decimal(18, 5)), CAST(N'2025-11-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1006, 4, CAST(168.51747 AS Decimal(18, 5)), CAST(N'2025-11-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1007, 4, CAST(497.29816 AS Decimal(18, 5)), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1008, 4, CAST(302.94326 AS Decimal(18, 5)), CAST(N'2025-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1009, 4, CAST(271.08867 AS Decimal(18, 5)), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1010, 4, CAST(568.75951 AS Decimal(18, 5)), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1011, 4, CAST(113.39512 AS Decimal(18, 5)), CAST(N'2025-11-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1012, 4, CAST(543.76769 AS Decimal(18, 5)), CAST(N'2025-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1013, 4, CAST(387.85114 AS Decimal(18, 5)), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1014, 4, CAST(257.65066 AS Decimal(18, 5)), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1015, 4, CAST(406.69920 AS Decimal(18, 5)), CAST(N'2025-11-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1016, 4, CAST(206.16439 AS Decimal(18, 5)), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1017, 4, CAST(192.71100 AS Decimal(18, 5)), CAST(N'2025-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1018, 4, CAST(333.61188 AS Decimal(18, 5)), CAST(N'2025-11-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1019, 4, CAST(543.46496 AS Decimal(18, 5)), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1020, 4, CAST(383.80879 AS Decimal(18, 5)), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1021, 4, CAST(213.59114 AS Decimal(18, 5)), CAST(N'2025-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1022, 4, CAST(363.88739 AS Decimal(18, 5)), CAST(N'2025-12-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1023, 4, CAST(423.13340 AS Decimal(18, 5)), CAST(N'2025-12-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1024, 4, CAST(211.52677 AS Decimal(18, 5)), CAST(N'2025-12-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1025, 4, CAST(213.99702 AS Decimal(18, 5)), CAST(N'2025-12-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.330' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1026, 4, CAST(554.17170 AS Decimal(18, 5)), CAST(N'2025-12-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.373' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1027, 4, CAST(406.91460 AS Decimal(18, 5)), CAST(N'2025-12-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1028, 4, CAST(322.44893 AS Decimal(18, 5)), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1029, 4, CAST(189.70087 AS Decimal(18, 5)), CAST(N'2025-12-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1030, 4, CAST(317.60959 AS Decimal(18, 5)), CAST(N'2025-12-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1031, 4, CAST(168.98286 AS Decimal(18, 5)), CAST(N'2025-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1032, 4, CAST(398.41300 AS Decimal(18, 5)), CAST(N'2025-12-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1033, 4, CAST(303.15961 AS Decimal(18, 5)), CAST(N'2025-12-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1034, 4, CAST(297.10935 AS Decimal(18, 5)), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1035, 4, CAST(178.37861 AS Decimal(18, 5)), CAST(N'2025-12-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1036, 4, CAST(334.34803 AS Decimal(18, 5)), CAST(N'2025-12-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1037, 4, CAST(539.70348 AS Decimal(18, 5)), CAST(N'2025-12-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1038, 4, CAST(299.28792 AS Decimal(18, 5)), CAST(N'2025-12-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1039, 4, CAST(219.32717 AS Decimal(18, 5)), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.377' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1040, 4, CAST(472.06518 AS Decimal(18, 5)), CAST(N'2025-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.380' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1041, 4, CAST(474.00731 AS Decimal(18, 5)), CAST(N'2025-12-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.380' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1042, 4, CAST(333.35636 AS Decimal(18, 5)), CAST(N'2025-12-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.380' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1043, 4, CAST(197.71642 AS Decimal(18, 5)), CAST(N'2025-12-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.380' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1044, 4, CAST(476.07581 AS Decimal(18, 5)), CAST(N'2025-12-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:29.380' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1045, 4, CAST(295.31715 AS Decimal(18, 5)), CAST(N'2025-01-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.837' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1046, 4, CAST(442.81895 AS Decimal(18, 5)), CAST(N'2025-01-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.837' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1047, 4, CAST(307.10015 AS Decimal(18, 5)), CAST(N'2025-01-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.837' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1048, 4, CAST(365.75710 AS Decimal(18, 5)), CAST(N'2025-01-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.847' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1049, 4, CAST(167.19154 AS Decimal(18, 5)), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.847' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1050, 4, CAST(210.12813 AS Decimal(18, 5)), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.847' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1051, 4, CAST(572.30980 AS Decimal(18, 5)), CAST(N'2025-01-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.847' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1052, 4, CAST(216.01688 AS Decimal(18, 5)), CAST(N'2025-01-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.847' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1053, 4, CAST(216.49164 AS Decimal(18, 5)), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1054, 4, CAST(218.65785 AS Decimal(18, 5)), CAST(N'2025-01-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1055, 4, CAST(370.31302 AS Decimal(18, 5)), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1056, 4, CAST(561.74719 AS Decimal(18, 5)), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1057, 4, CAST(113.72767 AS Decimal(18, 5)), CAST(N'2025-01-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1058, 4, CAST(364.91804 AS Decimal(18, 5)), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1059, 4, CAST(273.51741 AS Decimal(18, 5)), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.850' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1060, 4, CAST(163.35268 AS Decimal(18, 5)), CAST(N'2025-01-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.853' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1061, 4, CAST(413.08206 AS Decimal(18, 5)), CAST(N'2025-01-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.853' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1062, 4, CAST(445.26138 AS Decimal(18, 5)), CAST(N'2025-01-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.853' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1063, 4, CAST(465.56878 AS Decimal(18, 5)), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.853' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1064, 4, CAST(400.79437 AS Decimal(18, 5)), CAST(N'2025-01-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.853' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1065, 4, CAST(171.94072 AS Decimal(18, 5)), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.857' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1066, 4, CAST(330.73343 AS Decimal(18, 5)), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.857' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1067, 4, CAST(218.60231 AS Decimal(18, 5)), CAST(N'2025-01-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.857' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1068, 4, CAST(594.78619 AS Decimal(18, 5)), CAST(N'2025-02-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.857' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1069, 4, CAST(118.47105 AS Decimal(18, 5)), CAST(N'2025-02-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1070, 4, CAST(495.88172 AS Decimal(18, 5)), CAST(N'2025-02-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1071, 4, CAST(329.33259 AS Decimal(18, 5)), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.860' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1072, 4, CAST(174.88833 AS Decimal(18, 5)), CAST(N'2025-02-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.863' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1073, 4, CAST(424.24879 AS Decimal(18, 5)), CAST(N'2025-02-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.863' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1074, 4, CAST(535.82950 AS Decimal(18, 5)), CAST(N'2025-02-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.863' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1075, 4, CAST(130.05430 AS Decimal(18, 5)), CAST(N'2025-02-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.863' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1076, 4, CAST(358.81776 AS Decimal(18, 5)), CAST(N'2025-02-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1077, 4, CAST(375.64588 AS Decimal(18, 5)), CAST(N'2025-02-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1078, 4, CAST(125.78304 AS Decimal(18, 5)), CAST(N'2025-02-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1079, 4, CAST(307.20382 AS Decimal(18, 5)), CAST(N'2025-02-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1080, 4, CAST(315.50113 AS Decimal(18, 5)), CAST(N'2025-02-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1081, 4, CAST(547.64854 AS Decimal(18, 5)), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1082, 4, CAST(507.33922 AS Decimal(18, 5)), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1083, 4, CAST(211.92182 AS Decimal(18, 5)), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.867' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1084, 4, CAST(247.42193 AS Decimal(18, 5)), CAST(N'2025-02-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1085, 4, CAST(419.87505 AS Decimal(18, 5)), CAST(N'2025-02-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1086, 4, CAST(294.58376 AS Decimal(18, 5)), CAST(N'2025-02-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1087, 4, CAST(391.09405 AS Decimal(18, 5)), CAST(N'2025-02-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1088, 4, CAST(103.36768 AS Decimal(18, 5)), CAST(N'2025-03-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1089, 4, CAST(212.29292 AS Decimal(18, 5)), CAST(N'2025-03-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1090, 4, CAST(384.12560 AS Decimal(18, 5)), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1091, 4, CAST(461.80230 AS Decimal(18, 5)), CAST(N'2025-03-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1092, 4, CAST(362.22806 AS Decimal(18, 5)), CAST(N'2025-03-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1093, 4, CAST(140.21863 AS Decimal(18, 5)), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1094, 4, CAST(455.85353 AS Decimal(18, 5)), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1095, 4, CAST(313.62183 AS Decimal(18, 5)), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1096, 4, CAST(156.05358 AS Decimal(18, 5)), CAST(N'2025-03-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1097, 4, CAST(544.06553 AS Decimal(18, 5)), CAST(N'2025-03-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1098, 4, CAST(578.31658 AS Decimal(18, 5)), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1099, 4, CAST(584.23321 AS Decimal(18, 5)), CAST(N'2025-03-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1100, 4, CAST(101.79434 AS Decimal(18, 5)), CAST(N'2025-03-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1101, 4, CAST(553.09325 AS Decimal(18, 5)), CAST(N'2025-03-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1102, 4, CAST(511.72753 AS Decimal(18, 5)), CAST(N'2025-03-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1103, 4, CAST(577.63349 AS Decimal(18, 5)), CAST(N'2025-03-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1104, 4, CAST(290.92013 AS Decimal(18, 5)), CAST(N'2025-03-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.870' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1105, 4, CAST(188.09654 AS Decimal(18, 5)), CAST(N'2025-03-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1106, 4, CAST(193.65569 AS Decimal(18, 5)), CAST(N'2025-03-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1107, 4, CAST(375.03442 AS Decimal(18, 5)), CAST(N'2025-03-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1108, 4, CAST(413.23374 AS Decimal(18, 5)), CAST(N'2025-03-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1109, 4, CAST(463.70729 AS Decimal(18, 5)), CAST(N'2025-04-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1110, 4, CAST(474.96717 AS Decimal(18, 5)), CAST(N'2025-04-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1111, 4, CAST(384.12178 AS Decimal(18, 5)), CAST(N'2025-04-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1112, 4, CAST(308.44579 AS Decimal(18, 5)), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.873' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1113, 4, CAST(331.07696 AS Decimal(18, 5)), CAST(N'2025-04-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1114, 4, CAST(571.63295 AS Decimal(18, 5)), CAST(N'2025-04-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1115, 4, CAST(241.46506 AS Decimal(18, 5)), CAST(N'2025-04-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1116, 4, CAST(294.32569 AS Decimal(18, 5)), CAST(N'2025-04-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1117, 4, CAST(205.79470 AS Decimal(18, 5)), CAST(N'2025-04-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1118, 4, CAST(222.64124 AS Decimal(18, 5)), CAST(N'2025-04-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1119, 4, CAST(531.42969 AS Decimal(18, 5)), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1120, 4, CAST(591.79690 AS Decimal(18, 5)), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1121, 4, CAST(162.63641 AS Decimal(18, 5)), CAST(N'2025-04-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1122, 4, CAST(324.95190 AS Decimal(18, 5)), CAST(N'2025-04-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1123, 4, CAST(286.48144 AS Decimal(18, 5)), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1124, 4, CAST(238.70273 AS Decimal(18, 5)), CAST(N'2025-04-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1125, 4, CAST(182.10822 AS Decimal(18, 5)), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1126, 4, CAST(377.70914 AS Decimal(18, 5)), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1127, 4, CAST(320.70915 AS Decimal(18, 5)), CAST(N'2025-04-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1128, 4, CAST(371.38292 AS Decimal(18, 5)), CAST(N'2025-04-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1129, 4, CAST(411.64734 AS Decimal(18, 5)), CAST(N'2025-04-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1130, 4, CAST(497.72419 AS Decimal(18, 5)), CAST(N'2025-04-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1131, 4, CAST(275.79837 AS Decimal(18, 5)), CAST(N'2025-05-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1132, 4, CAST(133.46019 AS Decimal(18, 5)), CAST(N'2025-05-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1133, 4, CAST(185.87773 AS Decimal(18, 5)), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1134, 4, CAST(192.21351 AS Decimal(18, 5)), CAST(N'2025-05-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1135, 4, CAST(589.07823 AS Decimal(18, 5)), CAST(N'2025-05-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1136, 4, CAST(569.80642 AS Decimal(18, 5)), CAST(N'2025-05-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1137, 4, CAST(183.47278 AS Decimal(18, 5)), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1138, 4, CAST(387.63938 AS Decimal(18, 5)), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1139, 4, CAST(555.10116 AS Decimal(18, 5)), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1140, 4, CAST(181.85819 AS Decimal(18, 5)), CAST(N'2025-05-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1141, 4, CAST(440.39253 AS Decimal(18, 5)), CAST(N'2025-05-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.880' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1142, 4, CAST(505.38720 AS Decimal(18, 5)), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1143, 4, CAST(458.70727 AS Decimal(18, 5)), CAST(N'2025-05-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1144, 4, CAST(584.47716 AS Decimal(18, 5)), CAST(N'2025-05-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1145, 4, CAST(508.69352 AS Decimal(18, 5)), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1146, 4, CAST(411.70056 AS Decimal(18, 5)), CAST(N'2025-05-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1147, 4, CAST(599.63803 AS Decimal(18, 5)), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1148, 4, CAST(423.94966 AS Decimal(18, 5)), CAST(N'2025-05-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1149, 4, CAST(517.97648 AS Decimal(18, 5)), CAST(N'2025-05-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1150, 4, CAST(477.56610 AS Decimal(18, 5)), CAST(N'2025-05-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1151, 4, CAST(549.17406 AS Decimal(18, 5)), CAST(N'2025-05-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1152, 4, CAST(458.72873 AS Decimal(18, 5)), CAST(N'2025-05-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.887' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1153, 4, CAST(290.89122 AS Decimal(18, 5)), CAST(N'2025-06-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.923' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1154, 4, CAST(144.83499 AS Decimal(18, 5)), CAST(N'2025-06-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1155, 4, CAST(263.98085 AS Decimal(18, 5)), CAST(N'2025-06-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1156, 4, CAST(228.61010 AS Decimal(18, 5)), CAST(N'2025-06-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1157, 4, CAST(500.26316 AS Decimal(18, 5)), CAST(N'2025-06-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1158, 4, CAST(174.90949 AS Decimal(18, 5)), CAST(N'2025-06-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1159, 4, CAST(493.69561 AS Decimal(18, 5)), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1160, 4, CAST(181.15221 AS Decimal(18, 5)), CAST(N'2025-06-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.927' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1161, 4, CAST(123.54988 AS Decimal(18, 5)), CAST(N'2025-06-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.930' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1162, 4, CAST(220.10654 AS Decimal(18, 5)), CAST(N'2025-06-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.930' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1163, 4, CAST(102.82309 AS Decimal(18, 5)), CAST(N'2025-06-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.930' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1164, 4, CAST(275.63635 AS Decimal(18, 5)), CAST(N'2025-06-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.930' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1165, 4, CAST(257.23927 AS Decimal(18, 5)), CAST(N'2025-06-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.930' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1166, 4, CAST(380.26978 AS Decimal(18, 5)), CAST(N'2025-06-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.940' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1167, 4, CAST(218.25428 AS Decimal(18, 5)), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.950' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1168, 4, CAST(164.39353 AS Decimal(18, 5)), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1169, 4, CAST(150.70682 AS Decimal(18, 5)), CAST(N'2025-06-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1170, 4, CAST(447.68438 AS Decimal(18, 5)), CAST(N'2025-06-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1171, 4, CAST(169.90151 AS Decimal(18, 5)), CAST(N'2025-06-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1172, 4, CAST(209.13458 AS Decimal(18, 5)), CAST(N'2025-06-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1173, 4, CAST(489.03733 AS Decimal(18, 5)), CAST(N'2025-06-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1174, 4, CAST(374.93372 AS Decimal(18, 5)), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.953' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1175, 4, CAST(306.15648 AS Decimal(18, 5)), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1176, 4, CAST(247.09431 AS Decimal(18, 5)), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1177, 4, CAST(241.49175 AS Decimal(18, 5)), CAST(N'2025-07-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1178, 4, CAST(493.07217 AS Decimal(18, 5)), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1179, 4, CAST(100.16869 AS Decimal(18, 5)), CAST(N'2025-07-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1180, 4, CAST(122.66334 AS Decimal(18, 5)), CAST(N'2025-07-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1181, 4, CAST(149.91850 AS Decimal(18, 5)), CAST(N'2025-07-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1182, 4, CAST(516.41415 AS Decimal(18, 5)), CAST(N'2025-07-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1183, 4, CAST(206.36429 AS Decimal(18, 5)), CAST(N'2025-07-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1184, 4, CAST(531.12372 AS Decimal(18, 5)), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1185, 4, CAST(280.35210 AS Decimal(18, 5)), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1186, 4, CAST(161.64359 AS Decimal(18, 5)), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1187, 4, CAST(234.75120 AS Decimal(18, 5)), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.957' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1188, 4, CAST(532.35315 AS Decimal(18, 5)), CAST(N'2025-07-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1189, 4, CAST(156.61153 AS Decimal(18, 5)), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1190, 4, CAST(480.83540 AS Decimal(18, 5)), CAST(N'2025-07-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1191, 4, CAST(401.77601 AS Decimal(18, 5)), CAST(N'2025-07-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1192, 4, CAST(163.90505 AS Decimal(18, 5)), CAST(N'2025-07-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1193, 4, CAST(366.31246 AS Decimal(18, 5)), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1194, 4, CAST(150.63958 AS Decimal(18, 5)), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1195, 4, CAST(330.74503 AS Decimal(18, 5)), CAST(N'2025-07-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.960' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1196, 4, CAST(275.95948 AS Decimal(18, 5)), CAST(N'2025-07-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.970' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1197, 4, CAST(375.18865 AS Decimal(18, 5)), CAST(N'2025-08-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.970' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1198, 4, CAST(222.02514 AS Decimal(18, 5)), CAST(N'2025-08-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.970' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1199, 4, CAST(312.21687 AS Decimal(18, 5)), CAST(N'2025-08-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1200, 4, CAST(576.60154 AS Decimal(18, 5)), CAST(N'2025-08-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1201, 4, CAST(269.28290 AS Decimal(18, 5)), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1202, 4, CAST(581.75005 AS Decimal(18, 5)), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1203, 4, CAST(190.97227 AS Decimal(18, 5)), CAST(N'2025-08-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1204, 4, CAST(332.57789 AS Decimal(18, 5)), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.973' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1205, 4, CAST(390.75141 AS Decimal(18, 5)), CAST(N'2025-08-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1206, 4, CAST(284.82372 AS Decimal(18, 5)), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1207, 4, CAST(362.65711 AS Decimal(18, 5)), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1208, 4, CAST(285.15643 AS Decimal(18, 5)), CAST(N'2025-08-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1209, 4, CAST(507.52297 AS Decimal(18, 5)), CAST(N'2025-08-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1210, 4, CAST(176.75139 AS Decimal(18, 5)), CAST(N'2025-08-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1211, 4, CAST(286.01686 AS Decimal(18, 5)), CAST(N'2025-08-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1212, 4, CAST(591.41223 AS Decimal(18, 5)), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.977' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1213, 4, CAST(139.56584 AS Decimal(18, 5)), CAST(N'2025-08-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1214, 4, CAST(167.27442 AS Decimal(18, 5)), CAST(N'2025-08-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1215, 4, CAST(542.23677 AS Decimal(18, 5)), CAST(N'2025-08-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1216, 4, CAST(221.49833 AS Decimal(18, 5)), CAST(N'2025-08-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1217, 4, CAST(159.12996 AS Decimal(18, 5)), CAST(N'2025-08-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1218, 4, CAST(139.25228 AS Decimal(18, 5)), CAST(N'2025-09-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1219, 4, CAST(534.66058 AS Decimal(18, 5)), CAST(N'2025-09-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1220, 4, CAST(201.00400 AS Decimal(18, 5)), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1221, 4, CAST(550.02610 AS Decimal(18, 5)), CAST(N'2025-09-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.980' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1222, 4, CAST(344.10088 AS Decimal(18, 5)), CAST(N'2025-09-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1223, 4, CAST(374.30388 AS Decimal(18, 5)), CAST(N'2025-09-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1224, 4, CAST(332.06267 AS Decimal(18, 5)), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1225, 4, CAST(270.62611 AS Decimal(18, 5)), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1226, 4, CAST(396.11150 AS Decimal(18, 5)), CAST(N'2025-09-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.983' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1227, 4, CAST(377.92747 AS Decimal(18, 5)), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1228, 4, CAST(271.80579 AS Decimal(18, 5)), CAST(N'2025-09-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1229, 4, CAST(578.54701 AS Decimal(18, 5)), CAST(N'2025-09-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1230, 4, CAST(351.30289 AS Decimal(18, 5)), CAST(N'2025-09-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1231, 4, CAST(256.26098 AS Decimal(18, 5)), CAST(N'2025-09-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1232, 4, CAST(437.33803 AS Decimal(18, 5)), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.987' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1233, 4, CAST(565.36527 AS Decimal(18, 5)), CAST(N'2025-09-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1234, 4, CAST(201.49571 AS Decimal(18, 5)), CAST(N'2025-09-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1235, 4, CAST(328.02104 AS Decimal(18, 5)), CAST(N'2025-09-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1236, 4, CAST(521.48935 AS Decimal(18, 5)), CAST(N'2025-09-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1237, 4, CAST(363.76616 AS Decimal(18, 5)), CAST(N'2025-09-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1238, 4, CAST(429.11251 AS Decimal(18, 5)), CAST(N'2025-09-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1239, 4, CAST(174.50041 AS Decimal(18, 5)), CAST(N'2025-09-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1240, 4, CAST(539.15034 AS Decimal(18, 5)), CAST(N'2025-10-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1241, 4, CAST(337.10878 AS Decimal(18, 5)), CAST(N'2025-10-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1242, 4, CAST(155.47269 AS Decimal(18, 5)), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1243, 4, CAST(564.14414 AS Decimal(18, 5)), CAST(N'2025-10-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1244, 4, CAST(571.95838 AS Decimal(18, 5)), CAST(N'2025-10-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1245, 4, CAST(290.12297 AS Decimal(18, 5)), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1246, 4, CAST(319.24781 AS Decimal(18, 5)), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1247, 4, CAST(338.16343 AS Decimal(18, 5)), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1248, 4, CAST(377.76056 AS Decimal(18, 5)), CAST(N'2025-10-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.990' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1249, 4, CAST(482.72982 AS Decimal(18, 5)), CAST(N'2025-10-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.993' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1250, 4, CAST(253.58821 AS Decimal(18, 5)), CAST(N'2025-10-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.993' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1251, 4, CAST(441.56681 AS Decimal(18, 5)), CAST(N'2025-10-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.993' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1252, 4, CAST(525.18588 AS Decimal(18, 5)), CAST(N'2025-10-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:36.993' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1253, 4, CAST(217.34196 AS Decimal(18, 5)), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.000' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1254, 4, CAST(233.76274 AS Decimal(18, 5)), CAST(N'2025-10-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.000' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1255, 4, CAST(543.16641 AS Decimal(18, 5)), CAST(N'2025-10-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.000' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1256, 4, CAST(557.35366 AS Decimal(18, 5)), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.000' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1257, 4, CAST(154.52089 AS Decimal(18, 5)), CAST(N'2025-10-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.000' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1258, 4, CAST(592.27519 AS Decimal(18, 5)), CAST(N'2025-10-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1259, 4, CAST(490.31131 AS Decimal(18, 5)), CAST(N'2025-10-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1260, 4, CAST(317.77369 AS Decimal(18, 5)), CAST(N'2025-10-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1261, 4, CAST(273.67397 AS Decimal(18, 5)), CAST(N'2025-10-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1262, 4, CAST(237.18786 AS Decimal(18, 5)), CAST(N'2025-10-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1263, 4, CAST(464.85701 AS Decimal(18, 5)), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1264, 4, CAST(387.70457 AS Decimal(18, 5)), CAST(N'2025-11-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1265, 4, CAST(113.21761 AS Decimal(18, 5)), CAST(N'2025-11-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1266, 4, CAST(205.62240 AS Decimal(18, 5)), CAST(N'2025-11-06T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1267, 4, CAST(580.66637 AS Decimal(18, 5)), CAST(N'2025-11-07T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1268, 4, CAST(432.99104 AS Decimal(18, 5)), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1269, 4, CAST(251.37697 AS Decimal(18, 5)), CAST(N'2025-11-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.003' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1270, 4, CAST(539.44761 AS Decimal(18, 5)), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1271, 4, CAST(438.41578 AS Decimal(18, 5)), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1272, 4, CAST(164.96286 AS Decimal(18, 5)), CAST(N'2025-11-14T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1273, 4, CAST(375.07404 AS Decimal(18, 5)), CAST(N'2025-11-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1274, 4, CAST(211.22741 AS Decimal(18, 5)), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1275, 4, CAST(490.77082 AS Decimal(18, 5)), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1276, 4, CAST(460.57182 AS Decimal(18, 5)), CAST(N'2025-11-20T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1277, 4, CAST(116.12279 AS Decimal(18, 5)), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1278, 4, CAST(512.95766 AS Decimal(18, 5)), CAST(N'2025-11-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1279, 4, CAST(383.04272 AS Decimal(18, 5)), CAST(N'2025-11-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1280, 4, CAST(161.03371 AS Decimal(18, 5)), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1281, 4, CAST(134.88619 AS Decimal(18, 5)), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1282, 4, CAST(365.09241 AS Decimal(18, 5)), CAST(N'2025-11-28T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.010' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1283, 4, CAST(119.48151 AS Decimal(18, 5)), CAST(N'2025-12-01T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.010' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1284, 4, CAST(465.01774 AS Decimal(18, 5)), CAST(N'2025-12-02T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.010' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1285, 4, CAST(200.14575 AS Decimal(18, 5)), CAST(N'2025-12-03T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.010' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1286, 4, CAST(297.93708 AS Decimal(18, 5)), CAST(N'2025-12-04T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.010' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1287, 4, CAST(191.75585 AS Decimal(18, 5)), CAST(N'2025-12-05T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1288, 4, CAST(512.69898 AS Decimal(18, 5)), CAST(N'2025-12-08T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1289, 4, CAST(158.91087 AS Decimal(18, 5)), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1290, 4, CAST(280.94985 AS Decimal(18, 5)), CAST(N'2025-12-10T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1291, 4, CAST(456.31200 AS Decimal(18, 5)), CAST(N'2025-12-11T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1292, 4, CAST(219.08187 AS Decimal(18, 5)), CAST(N'2025-12-12T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1293, 4, CAST(314.94671 AS Decimal(18, 5)), CAST(N'2025-12-15T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1294, 4, CAST(511.87502 AS Decimal(18, 5)), CAST(N'2025-12-16T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1295, 4, CAST(179.97293 AS Decimal(18, 5)), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1296, 4, CAST(460.87007 AS Decimal(18, 5)), CAST(N'2025-12-18T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.043' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1297, 4, CAST(366.71739 AS Decimal(18, 5)), CAST(N'2025-12-19T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1298, 4, CAST(212.11389 AS Decimal(18, 5)), CAST(N'2025-12-22T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1299, 4, CAST(590.67116 AS Decimal(18, 5)), CAST(N'2025-12-23T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1300, 4, CAST(196.53966 AS Decimal(18, 5)), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1301, 4, CAST(589.31755 AS Decimal(18, 5)), CAST(N'2025-12-25T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1302, 4, CAST(541.39602 AS Decimal(18, 5)), CAST(N'2025-12-26T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1303, 4, CAST(509.19025 AS Decimal(18, 5)), CAST(N'2025-12-29T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1304, 4, CAST(330.03016 AS Decimal(18, 5)), CAST(N'2025-12-30T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [ShareMarket].[StockPrice] ([Id], [StockId], [Price], [stockDate], [Isactive], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [StockTypeId]) VALUES (1305, 4, CAST(322.29370 AS Decimal(18, 5)), CAST(N'2025-12-31T00:00:00.000' AS DateTime), 1, CAST(N'2025-06-24T21:50:37.047' AS DateTime), 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [ShareMarket].[StockPrice] OFF
GO
ALTER TABLE [ShareMarket].[StockPrice] ADD  DEFAULT ((1)) FOR [StockTypeId]
GO
ALTER TABLE [ShareMarket].[CompanyHoldings]  WITH CHECK ADD FOREIGN KEY([MutualFundID])
REFERENCES [ShareMarket].[MutualFund] ([MutualFundID])
GO
