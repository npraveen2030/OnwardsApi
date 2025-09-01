USE [master]
GO
/****** Object:  Database [Projects]    Script Date: 14-07-2025 22:54:18 ******/
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
/****** Object:  Schema [Onwards]    Script Date: 14-07-2025 22:54:19 ******/
CREATE SCHEMA [Onwards]
GO
/****** Object:  Table [Onwards].[Addresses]    Script Date: 14-07-2025 22:54:19 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 14-07-2025 22:54:19 ******/
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
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BasicDetails]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BasicDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
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
	[CreatedBy] [nchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nchar](50) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Basic Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[BloodGroupOptions]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BloodGroupOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Compliance]    Script Date: 14-07-2025 22:54:19 ******/
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
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 14-07-2025 22:54:19 ******/
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
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[GenderOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 14-07-2025 22:54:19 ******/
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
	[createdBy] [nvarchar](100) NULL,
	[ModifiedDate] [nvarchar](20) NULL,
	[ModifiedBy] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[NationalityOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Shift](
	[ShiftId] [int] IDENTITY(1,1) NOT NULL,
	[ShiftName] [varchar](50) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ShiftId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 14-07-2025 22:54:19 ******/
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
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 14-07-2025 22:54:19 ******/
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
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[EmployeeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserShiftAssignment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ShiftId] [int] NOT NULL,
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 14-07-2025 22:54:19 ******/
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
	[CreatedBy] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[VaccinationStatusOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 14-07-2025 22:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[YesNoOptions](
	[Id] [int] NOT NULL,
	[Value] [nchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
REFERENCES [Onwards].[BasicDetails] ([Id])
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
REFERENCES [Onwards].[BasicDetails] ([Id])
GO
ALTER TABLE [Onwards].[Compliance] CHECK CONSTRAINT [FK_UserCompliance_User]
GO
ALTER TABLE [Onwards].[EmergencyContacts]  WITH CHECK ADD  CONSTRAINT [FK_UserEmergencyContacts_User] FOREIGN KEY([UserId])
REFERENCES [Onwards].[BasicDetails] ([Id])
GO
ALTER TABLE [Onwards].[EmergencyContacts] CHECK CONSTRAINT [FK_UserEmergencyContacts_User]
GO
ALTER TABLE [Onwards].[LoginDetails]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Onwards].[UserAddresses]  WITH CHECK ADD  CONSTRAINT [FK_UserAddresses_UserDetails] FOREIGN KEY([UserId])
REFERENCES [Onwards].[BasicDetails] ([Id])
GO
ALTER TABLE [Onwards].[UserAddresses] CHECK CONSTRAINT [FK_UserAddresses_UserDetails]
GO
ALTER TABLE [Onwards].[UserShiftAssignment]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
ALTER TABLE [Onwards].[UserShiftLog]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 14-07-2025 22:54:19 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftLog]    Script Date: 14-07-2025 22:54:19 ******/
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
/****** Object:  StoredProcedure [Onwards].[sp_UserLogin]    Script Date: 14-07-2025 22:54:19 ******/
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
/****** Object:  StoredProcedure [Onwards].[UserLogin]    Script Date: 14-07-2025 22:54:19 ******/
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
