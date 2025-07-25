USE [master]
GO
/****** Object:  Database [Projects]    Script Date: 17-07-2025 11:49:42 ******/
CREATE DATABASE [Projects]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Projects', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Projects.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
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
/****** Object:  Schema [Onwards]    Script Date: 17-07-2025 11:49:42 ******/
CREATE SCHEMA [Onwards]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[BasicUserDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BasicUserDetails](
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
/****** Object:  Table [Onwards].[BloodGroupOptions]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[CertificationDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[CertificationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Course] [nvarchar](255) NOT NULL,
	[Institute] [nvarchar](255) NOT NULL,
	[Year] [int] NOT NULL,
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
/****** Object:  Table [Onwards].[ChildrenDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[ChildrenDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ChildName] [nvarchar](100) NOT NULL,
	[GenderId] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Children__3214EC07AFBB27BD] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Compliance]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[DocumentTypes]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[DocumentTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
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
/****** Object:  Table [Onwards].[EducationDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[EducationDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Qualification] [nvarchar](100) NOT NULL,
	[Specialization] [nvarchar](100) NOT NULL,
	[CollegeName] [nvarchar](255) NOT NULL,
	[Year] [int] NOT NULL,
	[BoardOrUniversity] [nvarchar](100) NOT NULL,
	[Percentage] [decimal](3, 2) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Educatio__3214EC07F3AD2EA9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[ExperienceDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[ExperienceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PreviousExperience] [decimal](4, 2) NOT NULL,
	[TotalExperience] [decimal](4, 2) NOT NULL,
	[RelevantExperience] [decimal](4, 2) NOT NULL,
	[CurrentDesignation] [nvarchar](100) NOT NULL,
	[CurrentEmployer] [nvarchar](255) NOT NULL,
	[PreviousOnwardExperience] [decimal](4, 2) NOT NULL,
	[PreviousOnwardEmployeeCode] [nvarchar](50) NULL,
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
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[MaritalStatus]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[MaritalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[MaritalStatus] [bit] NOT NULL,
	[titleId] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[IsHavingChildrens] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
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
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[PreviousExperienceDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[PreviousExperienceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CompanyName] [nvarchar](255) NOT NULL,
	[Designation] [nvarchar](255) NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Previous__3214EC071445FC0D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[SkillDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[SkillDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PrimarySkills] [nvarchar](2000) NOT NULL,
	[SecondarySkills] [nvarchar](2000) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__SkillDet__3214EC07FED43590] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Titles]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Titles](
	[Id] [int] NOT NULL,
	[Title] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Titles__3214EC07880E8EE7] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[UserDocuments]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserDocuments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[DocumentTypeId] [nvarchar](50) NOT NULL,
	[FileName] [nvarchar](255) NOT NULL,
	[FilePath] [nvarchar](500) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[Modifiedby] [int] NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedDate] [datetime] NULL,
	[VerifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__UserDocu__3214EC07C6876869] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 17-07-2025 11:49:42 ******/
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
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 17-07-2025 11:49:42 ******/
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
SET IDENTITY_INSERT [Onwards].[BasicUserDetails] ON 

INSERT [Onwards].[BasicUserDetails] ([Id], [UserId], [FirstName], [MiddleName], [LastName], [PersonalEmailID], [PrimaryContactNumber], [Gender], [FatherOrHusbandName], [DOB], [Nationality], [DifferentlyAbled], [VaccinationStatus], [BloodGroup], [BloodDonor], [PanNumber], [AadhaarCardno], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, 1, N'Praveen                                           ', N'Verma                                             ', N'Kumar                                             ', N'PVK@gmail.com                                     ', 1223, 1, N'DontKnow                                          ', CAST(N'2025-07-16' AS Date), 1, 0, 1, 1, 0, N'12323     ', 123, CAST(N'2025-07-16T13:31:10.290' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.400' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[BasicUserDetails] OFF
GO
INSERT [Onwards].[BloodGroupOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'A+                            ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[BloodGroupOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'A-                            ', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[CertificationDetails] ON 

INSERT [Onwards].[CertificationDetails] ([Id], [UserId], [Course], [Institute], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', 0, CAST(N'2025-07-17T11:12:44.140' AS DateTime), 1, CAST(N'2025-07-17T11:16:24.177' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[CertificationDetails] OFF
GO
SET IDENTITY_INSERT [Onwards].[ChildrenDetails] ON 

INSERT [Onwards].[ChildrenDetails] ([Id], [UserId], [ChildName], [GenderId], [DateOfBirth], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, N'string', 0, CAST(N'2025-07-17' AS Date), CAST(N'2025-07-16T16:04:27.437' AS DateTime), 1, CAST(N'2025-07-17T11:16:24.250' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[ChildrenDetails] OFF
GO
SET IDENTITY_INSERT [Onwards].[Compliance] ON 

INSERT [Onwards].[Compliance] ([Id], [UserId], [PFNo], [UANNo], [ESICNo], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', N'string', CAST(N'2025-07-16T13:31:10.350' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.423' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[Compliance] OFF
GO
SET IDENTITY_INSERT [Onwards].[DocumentTypes] ON 

INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'10th', CAST(N'2025-07-16T13:37:31.067' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'12th', CAST(N'2025-07-16T13:37:31.067' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Graduation', CAST(N'2025-07-16T13:37:31.067' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'PostGraduation', CAST(N'2025-07-16T13:37:31.067' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[DocumentTypes] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'ExperienceLetter', CAST(N'2025-07-16T13:37:31.067' AS DateTime), NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[DocumentTypes] OFF
GO
SET IDENTITY_INSERT [Onwards].[EducationDetails] ON 

INSERT [Onwards].[EducationDetails] ([Id], [UserId], [Qualification], [Specialization], [CollegeName], [Year], [BoardOrUniversity], [Percentage], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, 1, N'string', N'string', N'string', 0, N'string', CAST(0.00 AS Decimal(3, 2)), CAST(N'2025-07-17T10:55:52.583' AS DateTime), 1, CAST(N'2025-07-17T11:16:24.147' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[EducationDetails] OFF
GO
SET IDENTITY_INSERT [Onwards].[EmergencyContacts] ON 

INSERT [Onwards].[EmergencyContacts] ([Id], [UserId], [ContactName], [ContactRelationship], [PrimaryContactNumber], [SecondaryContactNumber], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'string', N'string', N'string', N'string', CAST(N'2025-07-16T13:31:10.470' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.440' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[EmergencyContacts] OFF
GO
SET IDENTITY_INSERT [Onwards].[ExperienceDetails] ON 

INSERT [Onwards].[ExperienceDetails] ([Id], [UserId], [PreviousExperience], [TotalExperience], [RelevantExperience], [CurrentDesignation], [CurrentEmployer], [PreviousOnwardExperience], [PreviousOnwardEmployeeCode], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, CAST(0.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), CAST(0.00 AS Decimal(4, 2)), N'string', N'string', CAST(0.00 AS Decimal(4, 2)), N'string', CAST(N'2025-07-17T11:16:24.210' AS DateTime), 0, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[ExperienceDetails] OFF
GO
INSERT [Onwards].[GenderOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (0, N'Female    ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[GenderOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Male      ', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[MaritalStatus] ON 

INSERT [Onwards].[MaritalStatus] ([Id], [UserId], [MaritalStatus], [titleId], [Name], [IsHavingChildrens], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, 1, 0, N'string', 1, CAST(N'2025-07-16T16:04:27.423' AS DateTime), 1, CAST(N'2025-07-17T11:16:24.240' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[MaritalStatus] OFF
GO
INSERT [Onwards].[NationalityOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Indian                        ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[NationalityOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'American                      ', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[PreviousExperienceDetails] ON 

INSERT [Onwards].[PreviousExperienceDetails] ([Id], [UserId], [CompanyName], [Designation], [StartDate], [EndDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, N'string', N'string', CAST(N'2025-07-17' AS Date), CAST(N'2025-07-17' AS Date), CAST(N'2025-07-17T11:16:24.227' AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[PreviousExperienceDetails] OFF
GO
SET IDENTITY_INSERT [Onwards].[SkillDetails] ON 

INSERT [Onwards].[SkillDetails] ([Id], [UserId], [PrimarySkills], [SecondarySkills], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, N'string', N'string', CAST(N'2025-07-17T11:15:29.940' AS DateTime), 0, CAST(N'2025-07-17T11:16:24.190' AS DateTime), 0, 1)
SET IDENTITY_INSERT [Onwards].[SkillDetails] OFF
GO
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Mr.', N'Male', CAST(N'2025-07-16T13:37:31.050' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Mrs.', N'Married Female', CAST(N'2025-07-16T13:37:31.050' AS DateTime), NULL, NULL, NULL, 1)
INSERT [Onwards].[Titles] ([Id], [Title], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Miss', N'Unmarried Female', CAST(N'2025-07-16T13:37:31.050' AS DateTime), NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserAddresses] ON 

INSERT [Onwards].[UserAddresses] ([Id], [UserId], [DoorNo], [AddressLine], [State], [Pincode], [IsPresentAddress], [SameAsPresent], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 1, N'1', N'1', N'1', N'1', 1, 0, CAST(N'2025-07-16T13:31:10.333' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.413' AS DateTime), 1, 1)
INSERT [Onwards].[UserAddresses] ([Id], [UserId], [DoorNo], [AddressLine], [State], [Pincode], [IsPresentAddress], [SameAsPresent], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 1, N'3', N'2', N'2', N'2', 0, 0, CAST(N'2025-07-16T13:31:10.337' AS DateTime), 1, CAST(N'2025-07-16T13:32:21.417' AS DateTime), 1, 1)
SET IDENTITY_INSERT [Onwards].[UserAddresses] OFF
GO
SET IDENTITY_INSERT [Onwards].[UserDocuments] ON 

INSERT [Onwards].[UserDocuments] ([Id], [UserId], [DocumentTypeId], [FileName], [FilePath], [CreatedDate], [CreatedBy], [ModifiedDate], [Modifiedby], [IsVerified], [VerifiedDate], [VerifiedBy], [IsActive]) VALUES (1, 1, N'string', N'string', N'string', CAST(N'2025-07-16T16:04:27.450' AS DateTime), 1, CAST(N'2025-07-17T11:16:24.267' AS DateTime), 1, 0, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[UserDocuments] OFF
GO
SET IDENTITY_INSERT [Onwards].[Users] ON 

INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'EMP001', N'password', N'Arun Sharma', N'arun.sharma@example.com', N'9876543210', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'EMP002', N'password', N'Nidhi Mehra', N'nidhi.mehra@example.com', N'9123456780', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [CreatedOn], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'EMP003', N'password', N'Rohit Kapoor', N'rohit.kapoor@example.com', N'9911223344', CAST(N'2025-07-07T14:21:09.660' AS DateTime), NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[Users] OFF
GO
INSERT [Onwards].[VaccinationStatusOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Vaccine-1                     ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[VaccinationStatusOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Vaccine-2                     ', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[YesNoOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (0, N'No        ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[YesNoOptions] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Yes       ', NULL, NULL, NULL, NULL, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Document__737584F6E421877C]    Script Date: 17-07-2025 11:49:42 ******/
ALTER TABLE [Onwards].[DocumentTypes] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Titles__2CB664DC3C614ACC]    Script Date: 17-07-2025 11:49:42 ******/
ALTER TABLE [Onwards].[Titles] ADD  CONSTRAINT [UQ__Titles__2CB664DC3C614ACC] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 17-07-2025 11:49:42 ******/
ALTER TABLE [Onwards].[Users] ADD UNIQUE NONCLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Onwards].[BankDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[CertificationDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[CertificationDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ChildrenDetails] ADD  CONSTRAINT [DF__ChildrenD__Creat__536D5C82]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[ChildrenDetails] ADD  CONSTRAINT [DF__ChildrenD__IsAct__546180BB]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Compliance] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[DocumentTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[DocumentTypes] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[EducationDetails] ADD  CONSTRAINT [DF__Education__Creat__7B7B4DDC]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[EducationDetails] ADD  CONSTRAINT [DF__Education__IsAct__7C6F7215]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[EmergencyContacts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ExperienceDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[ExperienceDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LoginDetails] ADD  DEFAULT (getdate()) FOR [ModifiedBy]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT ((0)) FOR [IsHavingChildrens]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[MaritalStatus] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] ADD  CONSTRAINT [DF__PreviousE__Creat__46136164]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] ADD  CONSTRAINT [DF__PreviousE__IsAct__4707859D]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Shift] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[SkillDetails] ADD  CONSTRAINT [DF__SkillDeta__Creat__031C6FA4]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[SkillDetails] ADD  CONSTRAINT [DF__SkillDeta__IsAct__041093DD]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[Titles] ADD  CONSTRAINT [DF__Titles__CreatedD__4AD81681]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Titles] ADD  CONSTRAINT [DF__Titles__IsActive__4BCC3ABA]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF__UserAddre__Creat__3C89F72A]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserAddresses] ADD  CONSTRAINT [DF__UserAddre__IsAct__3D7E1B63]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  CONSTRAINT [DF__UserDocum__Creat__5C02A283]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  CONSTRAINT [DF__UserDocum__IsVer__5CF6C6BC]  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [Onwards].[UserDocuments] ADD  CONSTRAINT [DF__UserDocum__IsAct__5DEAEAF5]  DEFAULT ((1)) FOR [IsActive]
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
ALTER TABLE [Onwards].[BankDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserBankDetails_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[BankDetails] CHECK CONSTRAINT [FK_UserBankDetails_User]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_BloodGroupOptions] FOREIGN KEY([BloodGroup])
REFERENCES [Onwards].[BloodGroupOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_BloodGroupOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_GenderOptions] FOREIGN KEY([Gender])
REFERENCES [Onwards].[GenderOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_GenderOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_NationalityOptions] FOREIGN KEY([Nationality])
REFERENCES [Onwards].[NationalityOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_NationalityOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_Users]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions] FOREIGN KEY([VaccinationStatus])
REFERENCES [Onwards].[VaccinationStatusOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_YesNoOptions] FOREIGN KEY([DifferentlyAbled])
REFERENCES [Onwards].[YesNoOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_YesNoOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails]  WITH CHECK ADD  CONSTRAINT [FK_BasicDetails_YesNoOptions1] FOREIGN KEY([BloodDonor])
REFERENCES [Onwards].[YesNoOptions] ([Id])
GO
ALTER TABLE [Onwards].[BasicUserDetails] CHECK CONSTRAINT [FK_BasicDetails_YesNoOptions1]
GO
ALTER TABLE [Onwards].[CertificationDetails]  WITH CHECK ADD  CONSTRAINT [FK_CertificationDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[CertificationDetails] CHECK CONSTRAINT [FK_CertificationDetails_Users]
GO
ALTER TABLE [Onwards].[Compliance]  WITH CHECK ADD  CONSTRAINT [FK_UserCompliance_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[Compliance] CHECK CONSTRAINT [FK_UserCompliance_User]
GO
ALTER TABLE [Onwards].[EducationDetails]  WITH CHECK ADD  CONSTRAINT [FK_EducationDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[EducationDetails] CHECK CONSTRAINT [FK_EducationDetails_Users]
GO
ALTER TABLE [Onwards].[EmergencyContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserEmergencyContacts_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[EmergencyContacts] CHECK CONSTRAINT [FK_UserEmergencyContacts_User]
GO
ALTER TABLE [Onwards].[ExperienceDetails]  WITH CHECK ADD  CONSTRAINT [FK_ExperienceDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[ExperienceDetails] CHECK CONSTRAINT [FK_ExperienceDetails_Users]
GO
ALTER TABLE [Onwards].[LoginDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Onwards].[SkillDetails]  WITH CHECK ADD  CONSTRAINT [FK_SkillDetails_Users] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[SkillDetails] CHECK CONSTRAINT [FK_SkillDetails_Users]
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
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 17-07-2025 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateBasicUserDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[InsertOrUpdateBasicUserDetails]
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
    FROM Onwards.BasicUserDetails 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.BasicUserDetails (
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
        UPDATE Onwards.BasicUserDetails
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateCertificationDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateCertificationDetails]
    @UserId INT,
    @Course NVARCHAR(255),
    @Institute NVARCHAR(255),
    @Year INT,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.CertificationDetails
    WHERE UserId = @UserId AND Course = @Course;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.CertificationDetails (
            UserId, Course, Institute, [Year], CreatedBy, CreatedDate, IsActive
        )
        VALUES (
            @UserId, @Course, @Institute, @Year, @LoginId, GETDATE(), 1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.CertificationDetails
        SET
            Institute = @Institute,
            [Year] = @Year,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE Id = @ExistingId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateChildrenDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateChildrenDetails]
    @UserId INT,
    @ChildName NVARCHAR(100),
    @GenderId INT,
    @DateOfBirth DATE = NULL,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id 
    FROM Onwards.ChildrenDetails 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.ChildrenDetails (
            UserId,
            ChildName,
            GenderId,
            DateOfBirth,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @ChildName,
            @GenderId,
            @DateOfBirth,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.ChildrenDetails
        SET
            ChildName = @ChildName,
            GenderId = @GenderId,
            DateOfBirth = @DateOfBirth,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateEducationDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateEducationDetails]
    @UserId INT,
    @Qualification NVARCHAR(100),
    @Specialization NVARCHAR(100),
    @CollegeName NVARCHAR(255),
    @Year INT,
    @BoardOrUniversity NVARCHAR(100),
    @Percentage DECIMAL(5,2),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id FROM Onwards.EducationDetails WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.EducationDetails (
            UserId, Qualification, Specialization, CollegeName, [Year],
            BoardOrUniversity, Percentage, CreatedBy, CreatedDate, IsActive
        )
        VALUES (
            @UserId, @Qualification, @Specialization, @CollegeName, @Year,
            @BoardOrUniversity, @Percentage, @LoginId, GETDATE(), 1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.EducationDetails
        SET Qualification = @Qualification,
            Specialization = @Specialization,
            CollegeName = @CollegeName,
            [Year] = @Year,
            BoardOrUniversity = @BoardOrUniversity,
            Percentage = @Percentage,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateExperienceDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateExperienceDetails]
    @UserId INT,
    @PreviousExperience DECIMAL(4,2),
    @TotalExperience DECIMAL(4,2),
    @RelevantExperience DECIMAL(4,2),
    @CurrentDesignation NVARCHAR(100),
    @CurrentEmployer NVARCHAR(255),
    @PreviousOnwardExperience DECIMAL(4,2),
    @PreviousOnwardEmployeeCode NVARCHAR(100),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id FROM Onwards.ExperienceDetails WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.ExperienceDetails (
            UserId, PreviousExperience, TotalExperience, RelevantExperience,
            CurrentDesignation, CurrentEmployer, PreviousOnwardExperience,
            PreviousOnwardEmployeeCode, CreatedBy, CreatedDate, IsActive
        )
        VALUES (
            @UserId, @PreviousExperience, @TotalExperience, @RelevantExperience,
            @CurrentDesignation, @CurrentEmployer, @PreviousOnwardExperience,
            @PreviousOnwardEmployeeCode, @LoginId, GETDATE(), 1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.ExperienceDetails
        SET PreviousExperience = @PreviousExperience,
            TotalExperience = @TotalExperience,
            RelevantExperience = @RelevantExperience,
            CurrentDesignation = @CurrentDesignation,
            CurrentEmployer = @CurrentEmployer,
            PreviousOnwardExperience = @PreviousOnwardExperience,
            PreviousOnwardEmployeeCode = @PreviousOnwardEmployeeCode,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateMaritalStatus]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateMaritalStatus]
    @UserId INT,
    @MaritalStatus BIT,
    @TitleId INT,
    @Name NVARCHAR(255),
    @IsHavingChildrens BIT,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id 
    FROM Onwards.MaritalStatus 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.MaritalStatus (
            UserId,
            MaritalStatus,
            TitleId,
            Name,
            IsHavingChildrens,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @MaritalStatus,
            @TitleId,
            @Name,
            @IsHavingChildrens,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.MaritalStatus
        SET
            MaritalStatus = @MaritalStatus,
            TitleId = @TitleId,
            Name = @Name,
            IsHavingChildrens = @IsHavingChildrens,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdatePreviousExperienceDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdatePreviousExperienceDetails]
    @UserId INT,
    @CompanyName NVARCHAR(255),
	@Designation NVARCHAR(255),
    @StartDate DATE,
    @EndDate DATE = NULL,
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id 
    FROM Onwards.PreviousExperienceDetails 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.PreviousExperienceDetails (
            UserId,
            CompanyName,
			Designation,
            StartDate,
            EndDate,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @CompanyName,
			@Designation,
            @StartDate,
            @EndDate,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.PreviousExperienceDetails
        SET
            CompanyName = @CompanyName,
			Designation = @Designation,
            StartDate = @StartDate,
            EndDate = @EndDate,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateSkillDetails]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateSkillDetails]
    @UserId INT,
    @PrimarySkills NVARCHAR(2000),
    @SecondarySkills NVARCHAR(2000),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id
    FROM Onwards.SkillDetails
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.SkillDetails (
            UserId,
            PrimarySkills,
            SecondarySkills,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @PrimarySkills,
            @SecondarySkills,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.SkillDetails
        SET
            PrimarySkills = @PrimarySkills,
            SecondarySkills = @SecondarySkills,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE Id = @ExistingId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserAddress]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserBankDetails]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserCompliance]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDocuments]    Script Date: 17-07-2025 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserDocuments]
    @UserId INT,
    @DocumentTypeId NVARCHAR(50),
    @FileName NVARCHAR(255),
    @FilePath NVARCHAR(500),
    @LoginId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ExistingId INT;

    SELECT @ExistingId = Id 
    FROM Onwards.UserDocuments 
    WHERE UserId = @UserId;

    IF @ExistingId IS NULL
    BEGIN
        INSERT INTO Onwards.UserDocuments (
            UserId,
            DocumentTypeId,
            FileName,
            FilePath,
            CreatedBy,
            CreatedDate,
            IsActive
        )
        VALUES (
            @UserId,
            @DocumentTypeId,
            @FileName,
            @FilePath,
            @LoginId,
            GETDATE(),
            1
        );
    END
    ELSE
    BEGIN
        UPDATE Onwards.UserDocuments
        SET
            DocumentTypeId = @DocumentTypeId,
            FileName = @FileName,
            FilePath = @FilePath,
            ModifiedBy = @LoginId,
            ModifiedDate = GETDATE()
        WHERE UserId = @UserId;
    END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserEmergencyContact]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftLog]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[sp_UserLogin]    Script Date: 17-07-2025 11:49:43 ******/
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
/****** Object:  StoredProcedure [Onwards].[UserLogin]    Script Date: 17-07-2025 11:49:43 ******/
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
USE [master]
GO
ALTER DATABASE [Projects] SET  READ_WRITE 
GO
