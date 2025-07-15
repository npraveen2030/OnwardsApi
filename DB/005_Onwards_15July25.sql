USE [Projects]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [FK__UserShift__Shift__35DCF99B]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [FK__UserShift__Shift__34E8D562]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [FK_UserAddresses_UserDetails]
GO
ALTER TABLE [Onwards].[LoginDetails] DROP CONSTRAINT [FK__LoginDeta__UserI__33008CF0]
GO
ALTER TABLE [Onwards].[EmergencyContacts] DROP CONSTRAINT [FK_UserEmergencyContacts_User]
GO
ALTER TABLE [Onwards].[Compliance] DROP CONSTRAINT [FK_UserCompliance_User]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_YesNoOptions1]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_YesNoOptions]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_Users]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_NationalityOptions]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_GenderOptions]
GO
ALTER TABLE [Onwards].[BasicDetails] DROP CONSTRAINT [FK_BasicDetails_BloodGroupOptions]
GO
ALTER TABLE [Onwards].[BankDetails] DROP CONSTRAINT [FK_UserBankDetails_User]
GO
ALTER TABLE [Onwards].[Addresses] DROP CONSTRAINT [FK__Addresses__UserI__2882FE7D]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [DF__UserShift__IsAct__278EDA44]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [DF__UserShift__Creat__269AB60B]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [DF__UserShift__IsAct__25A691D2]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [DF__UserShift__Creat__24B26D99]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__CreatedOn__23BE4960]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [DF_UserAddresses_IsActive]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [DF__UserAddre__IsSam__21D600EE]
GO
ALTER TABLE [Onwards].[Shift] DROP CONSTRAINT [DF__Shift__IsActive__20E1DCB5]
GO
ALTER TABLE [Onwards].[Shift] DROP CONSTRAINT [DF__Shift__CreatedDa__1FEDB87C]
GO
ALTER TABLE [Onwards].[LoginDetails] DROP CONSTRAINT [DF__LoginDeta__Modif__1EF99443]
GO
ALTER TABLE [Onwards].[EmergencyContacts] DROP CONSTRAINT [DF__Emergency__IsAct__1E05700A]
GO
ALTER TABLE [Onwards].[Compliance] DROP CONSTRAINT [DF__Complianc__IsAct__1D114BD1]
GO
ALTER TABLE [Onwards].[BankDetails] DROP CONSTRAINT [DF__BankDetai__IsAct__1C1D2798]
GO
ALTER TABLE [Onwards].[Addresses] DROP CONSTRAINT [DF__Addresses__Creat__1B29035F]
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 15-07-2025 16:07:56 ******/
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [UQ__Users__1F6425482CF50872]
GO
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[YesNoOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[YesNoOptions]
GO
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[VaccinationStatusOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[VaccinationStatusOptions]
GO
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserShiftLog]') AND type in (N'U'))
DROP TABLE [Onwards].[UserShiftLog]
GO
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserShiftAssignment]') AND type in (N'U'))
DROP TABLE [Onwards].[UserShiftAssignment]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Users]') AND type in (N'U'))
DROP TABLE [Onwards].[Users]
GO
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserAddresses]') AND type in (N'U'))
DROP TABLE [Onwards].[UserAddresses]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Shift]') AND type in (N'U'))
DROP TABLE [Onwards].[Shift]
GO
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[NationalityOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[NationalityOptions]
GO
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LoginDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[LoginDetails]
GO
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[GenderOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[GenderOptions]
GO
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[EmergencyContacts]') AND type in (N'U'))
DROP TABLE [Onwards].[EmergencyContacts]
GO
/****** Object:  Table [Onwards].[Compliance]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Compliance]') AND type in (N'U'))
DROP TABLE [Onwards].[Compliance]
GO
/****** Object:  Table [Onwards].[BloodGroupOptions]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BloodGroupOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[BloodGroupOptions]
GO
/****** Object:  Table [Onwards].[BasicDetails]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BasicDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[BasicDetails]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BankDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[BankDetails]
GO
/****** Object:  Table [Onwards].[Addresses]    Script Date: 15-07-2025 16:07:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Addresses]') AND type in (N'U'))
DROP TABLE [Onwards].[Addresses]
GO
/****** Object:  Table [Onwards].[Addresses]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Addresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[AddressLine1] [nvarchar](200) NOT NULL,
	[AddressLine2] [nvarchar](200) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[Country] [nvarchar](100) NULL,
	[PostalCode] [nvarchar](20) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BankDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BankAccountNumber] [nvarchar](30) NOT NULL,
	[AccountHolderName] [nvarchar](150) NOT NULL,
	[IFSCCode] [nvarchar](15) NOT NULL,
	[BankName] [nvarchar](100) NOT NULL,
	[BranchName] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BasicDetails]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BasicDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[FirstName] [nchar](50) NOT NULL,
	[MiddleName] [nchar](50) NOT NULL,
	[LastName] [nchar](50) NOT NULL,
	[PersonalEmailID] [nchar](50) NOT NULL,
	[PrimaryContactNumber] [int] NOT NULL,
	[Gender] [int] NOT NULL,
	[FatherOrHusbandName] [nchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Nationality] [int] NOT NULL,
	[DifferentlyAbled] [int] NOT NULL,
	[VaccinationStatus] [int] NOT NULL,
	[BloodGroup] [int] NOT NULL,
	[BloodDonor] [int] NOT NULL,
	[PanNumber] [nchar](10) NOT NULL,
	[AadhaarCardno] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Basic Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BloodGroupOptions]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BloodGroupOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Compliance]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Compliance](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PFNo] [nvarchar](30) NOT NULL,
	[UANNo] [nvarchar](30) NOT NULL,
	[ESICNo] [nvarchar](30) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[EmergencyContacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ContactName] [nvarchar](150) NOT NULL,
	[ContactRelationship] [nvarchar](50) NOT NULL,
	[PrimaryContactNumber] [nvarchar](15) NOT NULL,
	[SecondaryContactNumber] [nvarchar](15) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[GenderOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[LoginDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LoginDate] [datetime] NOT NULL,
	[LoginOutDate] [datetime] NULL,
	[Isactive] [bit] NULL,
	[createdDate] [nvarchar](100) NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [nvarchar](20) NULL,
	[ModifiedBy] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[NationalityOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Shift](
	[ShiftId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [varchar](50) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PresentDoorNo] [nvarchar](255) NOT NULL,
	[PresentAddressLine] [nvarchar](255) NOT NULL,
	[PresentState] [nvarchar](100) NOT NULL,
	[PresentPincode] [nvarchar](10) NOT NULL,
	[IsSameAsPermanent] [bit] NOT NULL,
	[PermanentDoorNo] [nvarchar](255) NULL,
	[PermanentAddressLine] [nvarchar](255) NULL,
	[PermanentState] [nvarchar](100) NULL,
	[PermanentPincode] [nvarchar](10) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Mobile] [nvarchar](20) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserShiftAssignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserShiftLog](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[LoginTime] [time](7) NOT NULL,
	[Date] [date] NOT NULL,
	[LogOutTime] [time](7) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[VaccinationStatusOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 15-07-2025 16:07:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[YesNoOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](10) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Onwards].[Users] ON 
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'EMP001', N'password', N'Arun Sharma', N'arun.sharma@example.com', N'9876543210', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'EMP002', N'password', N'Nidhi Mehra', N'nidhi.mehra@example.com', N'9123456780', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'EMP003', N'password', N'Rohit Kapoor', N'rohit.kapoor@example.com', N'9911223344', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 15-07-2025 16:07:57 ******/
ALTER TABLE [Onwards].[Users] ADD UNIQUE NONCLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Onwards].[Addresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Onwards].[BankDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Compliance] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[EmergencyContacts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LoginDetails] ADD  DEFAULT (getdate()) FOR [ModifiedBy]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  DEFAULT ((0)) FOR [IsSameAsPermanent]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF_UserAddresses_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Users] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserShiftLog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserShiftLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Addresses]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Onwards].[BankDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserBankDetails_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[BankDetails] CHECK CONSTRAINT [FK_UserBankDetails_User]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_BloodGroupOptions] FOREIGN KEY([BloodGroup])
REFERENCES [Onwards].[BloodGroupOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_BloodGroupOptions]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_GenderOptions] FOREIGN KEY([Gender])
REFERENCES [Onwards].[GenderOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_GenderOptions]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_NationalityOptions] FOREIGN KEY([Nationality])
REFERENCES [Onwards].[NationalityOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_NationalityOptions]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_Users]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions] FOREIGN KEY([VaccinationStatus])
REFERENCES [Onwards].[VaccinationStatusOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_YesNoOptions] FOREIGN KEY([DifferentlyAbled])
REFERENCES [Onwards].[YesNoOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_YesNoOptions]
GO
ALTER TABLE [Onwards].[BasicDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_YesNoOptions1] FOREIGN KEY([BloodDonor])
REFERENCES [Onwards].[YesNoOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicDetails] CHECK CONSTRAINT [FK_BasicDetails_YesNoOptions1]
GO
ALTER TABLE [Onwards].[Compliance]  WITH CHECK ADD  CONSTRAINT [FK_UserCompliance_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[Compliance] CHECK CONSTRAINT [FK_UserCompliance_User]
GO
ALTER TABLE [Onwards].[EmergencyContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserEmergencyContacts_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[EmergencyContacts] CHECK CONSTRAINT [FK_UserEmergencyContacts_User]
GO
ALTER TABLE [Onwards].[LoginDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Onwards].[UserAddresses]  WITH CHECK ADD  CONSTRAINT [FK_UserAddresses_UserDetails] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[UserAddresses] CHECK CONSTRAINT [FK_UserAddresses_UserDetails]
GO
ALTER TABLE [Onwards].[UserShiftAssignment]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
ALTER TABLE [Onwards].[UserShiftLog]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
