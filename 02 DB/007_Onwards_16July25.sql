USE [master]
GO
/****** Object:  Database [Projects]    Script Date: 16-07-2025 13:34:21 ******/
CREATE DATABASE [Projects]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projects', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projects.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Projects_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projects_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Projects] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Projects].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Projects] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Projects] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Projects] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Projects] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Projects] SET ARITHABORT OFF 
GO
ALTER DATABASE [Projects] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Projects] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Projects] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Projects] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Projects] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Projects] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Projects] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Projects] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Projects] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Projects] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Projects] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Projects] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Projects] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Projects] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Projects] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Projects] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Projects] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Projects] SET RECOVERY FULL 
GO
ALTER DATABASE [Projects] SET  MULTI_USER 
GO
ALTER DATABASE [Projects] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Projects] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Projects] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Projects] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Projects] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Projects] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Projects', N'ON'
GO
ALTER DATABASE [Projects] SET QUERY_STORE = ON
GO
ALTER DATABASE [Projects] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Projects]
GO
/****** Object:  Schema [Onwards]    Script Date: 16-07-2025 13:34:21 ******/
CREATE SCHEMA [Onwards]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[BasicDetails]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[BloodGroupOptions]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[Compliance]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[Shift]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserAddresses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DoorNo] [nvarchar](50) NOT NULL,
	[AddressLine] [nvarchar](255) NOT NULL,
	[State] [nvarchar](100) NOT NULL,
	[Pincode] [nvarchar](20) NOT NULL,
	[IsPresentAddress] [bit] NOT NULL,
	[SameAsPresent] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__UserAddr__3214EC0731D0D639] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 16-07-2025 13:34:21 ******/
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
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 16-07-2025 13:34:21 ******/
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
SET IDENTITY_INSERT [Onwards].[BankDetails] ON 

INSERT [Onwards].[BankDetails] ([Id], [UserId], [BankAccountNumber], [AccountHolderName], [IFSCCode], [BankName], [BranchName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', N'string', N'string', N'string', CAST(N'2025-07-16T13:31:10.457' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.430' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[BankDetails] OFF
GO
SET IDENTITY_INSERT [Onwards].[BasicDetails] ON 

INSERT [Onwards].[BasicDetails] ([Id], [UserId], [FirstName], [MiddleName], [LastName], [PersonalEmailID], [PrimaryContactNumber], [Gender], [FatherOrHusbandName], [DOB], [Nationality], [DifferentlyAbled], [VaccinationStatus], [BloodGroup], [BloodDonor], [PanNumber], [AadhaarCardno], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, 1, N'Praveen                                           ', N'Verma                                             ', N'Kumar                                             ', N'PVK@gmail.com                                     ', 1223, 1, N'DontKnow                                          ', CAST(N'2025-07-16' AS Date), 1, 0, 1, 1, 0, N'12323     ', 123, CAST(N'2025-07-16T13:31:10.290' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.400' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[BasicDetails] OFF
GO
INSERT [Onwards].[BloodGroupOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'A+                            ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[BloodGroupOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'A-                            ', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Compliance] ON 

INSERT [Onwards].[Compliance] ([Id], [UserId], [PFNo], [UANNo], [ESICNo], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', N'string', CAST(N'2025-07-16T13:31:10.350' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.423' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[Compliance] OFF
GO
SET IDENTITY_INSERT [Onwards].[DocumentTypes] ON 
GO
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'10th', CAST(N'2025-07-16T13:28:54.883' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'12th', CAST(N'2025-07-16T13:28:54.883' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Graduation', CAST(N'2025-07-16T13:28:54.883' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'PostGraduation', CAST(N'2025-07-16T13:28:54.883' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'ExperienceLetter', CAST(N'2025-07-16T13:28:54.883' AS DateTime), NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[DocumentTypes] OFF
GO
SET IDENTITY_INSERT [Onwards].[EmergencyContacts] ON 

INSERT [Onwards].[EmergencyContacts] ([Id], [UserId], [ContactName], [ContactRelationship], [PrimaryContactNumber], [SecondaryContactNumber], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', N'string', N'string', CAST(N'2025-07-16T13:31:10.470' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.440' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[EmergencyContacts] OFF
GO
INSERT [Onwards].[GenderOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (0, N'Female    ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[GenderOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Male      ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[NationalityOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Indian                        ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[NationalityOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'American                      ', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Shift] ON 
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, N'Morning Shift', CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, N'Afternoon Shift', CAST(N'14:00:00' AS Time), CAST(N'21:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, N'Evening Shift', CAST(N'18:00:00' AS Time), CAST(N'03:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Shift] OFF
GO
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Mr.', N'Male', CAST(N'2025-07-16T13:28:54.860' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Mrs.', N'Married Female', CAST(N'2025-07-16T13:28:54.860' AS DateTime), NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Miss', N'Unmarried Female', CAST(N'2025-07-16T13:28:54.860' AS DateTime), NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserAddresses] ON 

INSERT [Onwards].[UserAddresses] ([Id], [UserId], [DoorNo], [AddressLine], [State], [Pincode], [IsPresentAddress], [SameAsPresent], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, N'1', N'1', N'1', N'1', 1, 0, CAST(N'2025-07-16T13:31:10.333' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.413' AS DateTime), 1, 1)
INSERT [Onwards].[UserAddresses] ([Id], [UserId], [DoorNo], [AddressLine], [State], [Pincode], [IsPresentAddress], [SameAsPresent], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'3', N'2', N'2', N'2', 0, 0, CAST(N'2025-07-16T13:31:10.337' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.417' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[UserAddresses] OFF
GO
SET IDENTITY_INSERT [Onwards].[Users] ON 

INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'EMP001', N'password', N'Arun Sharma', N'arun.sharma@example.com', N'9876543210', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'EMP002', N'password', N'Nidhi Mehra', N'nidhi.mehra@example.com', N'9123456780', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'EMP003', N'password', N'Rohit Kapoor', N'rohit.kapoor@example.com', N'9911223344', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Users] OFF
GO
SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] ON 
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, 1, 1, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, 2, 2, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, 3, 3, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] OFF
GO
INSERT [Onwards].[VaccinationStatusOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Vaccine-1                     ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[VaccinationStatusOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Vaccine-2                     ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[YesNoOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (0, N'No        ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[YesNoOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Yes       ', NULL, NULL, NULL, NULL, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 16-07-2025 13:34:21 ******/
ALTER TABLE [Onwards].[Users] ADD UNIQUE NONCLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Onwards].[Addresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [Onwards].[BankDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ChildrenDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[ChildrenDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Compliance] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[DocumentTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[DocumentTypes] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[EmergencyContacts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LoginDetails] ADD  DEFAULT (getdate()) FOR [ModifiedBy]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT ((0)) FOR [IsHavingChildrens]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF__UserAddre__Creat__3C89F72A]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF__UserAddre__IsAct__3D7E1B63]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  DEFAULT ((0)) FOR [IsSameAsPermanent]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF_UserAddresses_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  DEFAULT ((1)) FOR [IsActive]
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
ALTER TABLE [Onwards].[UserAddresses]  WITH CHECK ADD  CONSTRAINT [FK_UserAddresses_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[UserAddresses] CHECK CONSTRAINT [FK_UserAddresses_Users]
GO
ALTER TABLE [Onwards].[UserShiftAssignment]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
ALTER TABLE [Onwards].[UserShiftLog]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [Onwards].[DeleteTraining]
    @Id INT
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM Onwards.Training WHERE Id = @Id;
END

GO
/****** Object:  StoredProcedure [Onwards].[GetTrainingByLocation]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Onwards].[GetTrainingByLocation]
    @LocationId INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT * FROM Onwards.Training WHERE LocationId = @LocationId AND IsActive = 1;
END

GO
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Exec  [Onwards].[GetUserShiftDetails] 1
CREATE PROCEDURE [Onwards].[GetUserShiftDetails]
    @UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        U.FullName,
        S.ShiftName,
        S.StartTime,
        S.EndTime,
        USL.LoginTime,
        GETDATE() AS TodayDate,
        CONVERT(VARCHAR(8), GETDATE(), 108) AS CurrentTime
    FROM Onwards.Users AS U
    INNER JOIN Onwards.UserShiftAssignment AS USA ON U.Id = USA.UserId
    INNER JOIN Onwards.Shift AS S ON USA.ShiftId = S.ShiftId
    LEFT JOIN Onwards.UserShiftLog AS USL ON U.Id = USL.UserId
    WHERE U.Id = @UserId;
END;


GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateBasicDetails]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateBasicDetails]
    @UserId INT,
    @FirstName NCHAR(50),
    @MiddleName NCHAR(50),
    @LastName NCHAR(50),
    @PersonalEmailID NCHAR(50),
    @PrimaryContactNumber INT,
    @Gender INT,
    @FatherOrHusbandName NCHAR(50),
    @DOB DATE,
    @Nationality INT,
    @DifferentlyAbled INT,
    @VaccinationStatus INT,
    @BloodGroup INT,
    @BloodDonor INT,
    @PanNumber NCHAR(10),
    @AadhaarCardno INT,
	@LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id 
    FROM Onwards.BasicDetails 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.BasicDetails (
            UserId,
            FirstName,
            MiddleName,
            LastName,
            PersonalEmailID,
            PrimaryContactNumber,
            Gender,
            FatherOrHusbandName,
            DOB,
            Nationality,
            DifferentlyAbled,
            VaccinationStatus,
            BloodGroup,
            BloodDonor,
            PanNumber,
            AadhaarCardno,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @FirstName,
            @MiddleName,
            @LastName,
            @PersonalEmailID,
            @PrimaryContactNumber,
            @Gender,
            @FatherOrHusbandName,
            @DOB,
            @Nationality,
            @DifferentlyAbled,
            @VaccinationStatus,
            @BloodGroup,
            @BloodDonor,
            @PanNumber,
            @AadhaarCardno,
            @LoginId,
            GETDATE(),
            1
        );

    END
    ELSE
    BEGIN
        UPDATE Onwards.BasicDetails
        SET
            FirstName = @FirstName,
            MiddleName = @MiddleName,
            LastName = @LastName,
            PersonalEmailID = @PersonalEmailID,
            PrimaryContactNumber = @PrimaryContactNumber,
            Gender = @Gender,
            FatherOrHusbandName = @FatherOrHusbandName,
            DOB = @DOB,
            Nationality = @Nationality,
            DifferentlyAbled = @DifferentlyAbled,
            VaccinationStatus = @VaccinationStatus,
            BloodGroup = @BloodGroup,
            BloodDonor = @BloodDonor,
            PanNumber = @PanNumber,
            AadhaarCardno = @AadhaarCardno,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserAddress]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Onwards].[InsertOrUpdateUserAddress]
    @UserId INT,
    @DoorNo NVARCHAR(50),
    @AddressLine NVARCHAR(255),
    @State NVARCHAR(100),
    @Pincode NVARCHAR(20),
    @IsPresentAddress BIT,
    @SameAsPresent BIT,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.UserAddresses
    WHERE UserId = @UserId AND IsPresentAddress = @IsPresentAddress;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.UserAddresses (
            UserId,
            DoorNo,
            AddressLine,
            State,
            Pincode,
            IsPresentAddress,
            SameAsPresent,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @DoorNo,
            @AddressLine,
            @State,
            @Pincode,
            @IsPresentAddress,
            @SameAsPresent,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.UserAddresses
        SET
            DoorNo = @DoorNo,
            AddressLine = @AddressLine,
            State = @State,
            Pincode = @Pincode,
            SameAsPresent = @SameAsPresent,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE Id = @ExistingId;
    END
END

GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserBankDetails]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserBankDetails]
    @UserId INT,
    @BankAccountNumber NVARCHAR(30),
    @AccountHolderName NVARCHAR(150),
    @IFSCCode NVARCHAR(15),
    @BankName NVARCHAR(100),
    @BranchName NVARCHAR(100),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.BankDetails
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.BankDetails (
            UserId,
            BankAccountNumber,
            AccountHolderName,
            IFSCCode,
            BankName,
            BranchName,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @BankAccountNumber,
            @AccountHolderName,
            @IFSCCode,
            @BankName,
            @BranchName,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.BankDetails
        SET
            BankAccountNumber = @BankAccountNumber,
            AccountHolderName = @AccountHolderName,
            IFSCCode = @IFSCCode,
            BankName = @BankName,
            BranchName = @BranchName,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserCompliance]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserCompliance]
    @UserId INT,
    @PFNo NVARCHAR(30),
    @UANNo NVARCHAR(30),
    @ESICNo NVARCHAR(30),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.Compliance
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.Compliance (
            UserId,
            PFNo,
            UANNo,
            ESICNo,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @PFNo,
            @UANNo,
            @ESICNo,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.Compliance
        SET
            PFNo = @PFNo,
            UANNo = @UANNo,
            ESICNo = @ESICNo,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserEmergencyContact]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserEmergencyContact]
    @UserId INT,
    @ContactName NVARCHAR(150),
    @ContactRelationship NVARCHAR(50),
    @PrimaryContactNumber NVARCHAR(15),
    @SecondaryContactNumber NVARCHAR(15) = NULL,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.EmergencyContacts
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.EmergencyContacts (
            UserId,
            ContactName,
            ContactRelationship,
            PrimaryContactNumber,
            SecondaryContactNumber,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @ContactName,
            @ContactRelationship,
            @PrimaryContactNumber,
            @SecondaryContactNumber,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.EmergencyContacts
        SET
            ContactName = @ContactName,
            ContactRelationship = @ContactRelationship,
            PrimaryContactNumber = @PrimaryContactNumber,
            SecondaryContactNumber = @SecondaryContactNumber,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftDetails]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Onwards].[InsertOrUpdateUserShiftDetails] 11,NULL
Create PROCEDURE [Onwards].[InsertOrUpdateUserShiftDetails]
    @UserId INT, 
    @ResultLogId INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @ShiftId INT= 0, @LogId INT = 0

	-- Try to get the latest assigned ShiftId for the user (if exists)
    SELECT TOP 1 @ShiftId = ShiftId
    FROM Onwards.UserShiftAssignment
    WHERE UserId = @UserId
    ORDER BY CreatedDate DESC;
	 
	-- If no shift found, raise an error or skip insert
    IF (@ShiftId IS NULL OR @ShiftId = 0)
    BEGIN
        RAISERROR('No ShiftId found for the given UserId.', 16, 1);
        RETURN;
    END


	SELECT TOP 1 @LogId= Logid from [Onwards].[UserShiftLog]
	WHERE UserId = @UserId 
    AND CAST(CreatedDate AS DATE) = CAST(GETDATE() AS DATE)

    IF (@LogId = 0 OR @LogId IS NULL)
    BEGIN
        INSERT INTO [Onwards].[UserShiftLog]
        (
            UserId,
            ShiftId,
            LoginTime,
            [Date]
        )
        VALUES
        (
            @UserId,
            @ShiftId,
            CAST(GETDATE() AS TIME),
            GETDATE()
        );

        SET @ResultLogId = SCOPE_IDENTITY();  -- Return new LogId
    END
    ELSE
    BEGIN
        UPDATE [Onwards].[UserShiftLog]
        SET
            UserId = @UserId,
            ShiftId = @ShiftId,  
            LogOutTime = CAST(GETDATE() AS TIME)
        WHERE LogId = @LogId;

        SET @ResultLogId = @LogId; -- Return updated LogId
END
END

GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftLog]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Onwards].[InsertOrUpdateUserShiftLog] 11,NULL
CREATE PROCEDURE [Onwards].[InsertOrUpdateUserShiftLog]
    @UserId INT, 
    @ResultLogId INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @ShiftId INT= 0, @LogId INT = 0

	-- Try to get the latest assigned ShiftId for the user (if exists)
    SELECT TOP 1 @ShiftId = ShiftId
    FROM Onwards.UserShiftAssignment
    WHERE UserId = @UserId
    ORDER BY CreatedDate DESC;
	 
	-- If no shift found, raise an error or skip insert
    IF (@ShiftId IS NULL OR @ShiftId = 0)
    BEGIN
        RAISERROR('No ShiftId found for the given UserId.', 16, 1);
        RETURN;
    END


	SELECT TOP 1 @LogId= Logid from [Onwards].[UserShiftLog]
	WHERE UserId = @UserId 
    AND CAST(CreatedDate AS DATE) = CAST(GETDATE() AS DATE)

    IF (@LogId = 0 OR @LogId IS NULL)
    BEGIN
        INSERT INTO [Onwards].[UserShiftLog]
        (
            UserId,
            ShiftId,
            LoginTime,
            [Date],CreatedBy,
			CreatedDate
        )
        VALUES
        (
            @UserId,
            @ShiftId,
            CAST(GETDATE() AS TIME),
            GETDATE(),
			@UserId,
			GETDATE()
        );

        SET @ResultLogId = SCOPE_IDENTITY();  -- Return new LogId
    END
    ELSE
    BEGIN
        UPDATE [Onwards].[UserShiftLog]
        SET
            UserId = @UserId,
            ShiftId = @ShiftId,  
            LogOutTime = CAST(GETDATE() AS TIME),
			ModifiedDate = GETDATE(),
			ModifiedBy = @UserId
        WHERE LogId = @LogId;

        SET @ResultLogId = @LogId; -- Return updated LogId
    END
END

GO
/****** Object:  StoredProcedure [Onwards].[InsertTraining]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Onwards].[InsertTraining]
    @Name VARCHAR(100),
    @TrainingDate DATE,
    @LocationId INT,
    @CreatedBy VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO Onwards.Training (Name, TrainingDate, LocationId, CreatedBy)
    VALUES (@Name, @TrainingDate, @LocationId, @CreatedBy);
END
GO
/****** Object:  StoredProcedure [Onwards].[sp_DeleteHoliday]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[sp_DeleteHoliday]
    @HolidayId INT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Onwards.HolidayList
    SET IsActive = 0,
        ModifiedDate = GETDATE()
    WHERE HolidayId = @HolidayId;
END
GO
/****** Object:  StoredProcedure [Onwards].[sp_GetAllHolidays]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[sp_GetAllHolidays]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * FROM Onwards.HolidayList
    WHERE IsActive = 1
    ORDER BY HolidayDate;
END
GO
/****** Object:  StoredProcedure [Onwards].[sp_GetHolidayById]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[sp_GetHolidayById]
    @HolidayId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * FROM Onwards.HolidayList
    WHERE HolidayId = @HolidayId AND IsActive = 1;
END
GO
/****** Object:  StoredProcedure [Onwards].[sp_GetHolidaysByLocation]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[sp_GetHolidaysByLocation]
    @LocationId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * FROM Onwards.HolidayList
    WHERE LocationId = @LocationId AND IsActive = 1
    ORDER BY HolidayDate;
END

GO
/****** Object:  StoredProcedure [Onwards].[sp_InsertHoliday]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Onwards].[sp_InsertHoliday]
    @HolidayName VARCHAR(100),
    @HolidayDate DATE,
    @LocationId INT,
    @Year INT,
    @CreatedBy VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO Onwards.HolidayList (
        HolidayName,
        HolidayDate,
        LocationId,
        [Year],
        CreatedBy,
        CreatedDate,
        IsActive
    )
    VALUES (
        @HolidayName,
        @HolidayDate,
        @LocationId,
        @Year,
        @CreatedBy,
        GETDATE(),
        1
    );
END
GO
/****** Object:  StoredProcedure [Onwards].[sp_UpdateHoliday]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[sp_UpdateHoliday]
    @HolidayId INT,
    @HolidayName VARCHAR(100),
    @HolidayDate DATE,
    @LocationId INT,
    @Year INT,
    @ModifiedBy VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Onwards.HolidayList
    SET HolidayName = @HolidayName,
        HolidayDate = @HolidayDate,
        LocationId = @LocationId,
        [Year] = @Year,
        ModifiedBy = @ModifiedBy,
        ModifiedDate = GETDATE()
    WHERE HolidayId = @HolidayId;
END

GO
/****** Object:  StoredProcedure [Onwards].[sp_UserLogin]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Onwards].[sp_UserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT COUNT(*) 
    FROM Onwards.Users
    WHERE EmployeeCode = @EmployeeCode AND Password = @Password;
END;
GO
/****** Object:  StoredProcedure [Onwards].[UpdateTraining]    Script Date: 16-07-2025 13:41:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [Onwards].[UpdateTraining]
    @Id INT,
    @Name VARCHAR(100),
    @TrainingDate DATE,
    @LocationId INT,
    @ModifiedBy VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;
    UPDATE Onwards.Training
    SET Name = @Name, TrainingDate = @TrainingDate, LocationId = @LocationId,
        ModifiedBy = @ModifiedBy, ModifiedDate = GETDATE()
    WHERE Id = @Id;
END

GO
/****** Object:  StoredProcedure [Onwards].[UserLogin]    Script Date: 16-07-2025 13:34:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Onwards].[UserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT COUNT(*) 
    FROM Onwards.Users
    WHERE EmployeeCode = @EmployeeCode AND Password = @Password;
END;
GO

GO
USE [master]
GO
ALTER DATABASE [Projects] SET  READ_WRITE 
GO
