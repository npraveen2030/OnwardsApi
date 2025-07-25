USE [Projects]
GO
/****** Object:  StoredProcedure [Onwards].[UserLogin]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[UserLogin]
GO
/****** Object:  StoredProcedure [Onwards].[sp_UserLogin]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[sp_UserLogin]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftLog]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserShiftLog]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserEmergencyContact]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserEmergencyContact]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDocuments]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserDocuments]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserCompliance]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserCompliance]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserBankDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserBankDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserAddress]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateUserAddress]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateSkillDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateSkillDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdatePreviousExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdatePreviousExperienceDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateMaritalStatus]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateMaritalStatus]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateExperienceDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateEducationDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateEducationDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateChildrenDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateChildrenDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateCertificationDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateCertificationDetails]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateBasicUserDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[InsertOrUpdateBasicUserDetails]
GO
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[GetUserShiftDetails]
GO
/****** Object:  StoredProcedure [Onwards].[GetAllUserDetails]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[GetAllUserDetails]
GO
/****** Object:  StoredProcedure [Onwards].[DeleteUserDetail]    Script Date: 18-07-2025 19:56:20 ******/
DROP PROCEDURE [Onwards].[DeleteUserDetail]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [FK__UserShift__Shift__35DCF99B]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [FK__UserShift__Shift__34E8D562]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [FK_USERS_USERS]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [FK_Users_Departments]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [FK_Grades_Users]
GO
ALTER TABLE [Onwards].[UserLeaveApplyed] DROP CONSTRAINT [FK__UserLeave__UserI__2077C861]
GO
ALTER TABLE [Onwards].[UserLeaveApplyed] DROP CONSTRAINT [FK__UserLeave__Leave__216BEC9A]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [FK_UserAddresses_Users]
GO
ALTER TABLE [Onwards].[SkillDetails] DROP CONSTRAINT [FK_SkillDetails_Users]
GO
ALTER TABLE [Onwards].[LoginDetails] DROP CONSTRAINT [FK__LoginDeta__UserI__33008CF0]
GO
ALTER TABLE [Onwards].[LeaveBalances] DROP CONSTRAINT [FK__LeaveBala__UserI__18D6A699]
GO
ALTER TABLE [Onwards].[LeaveBalances] DROP CONSTRAINT [FK__LeaveBala__Leave__19CACAD2]
GO
ALTER TABLE [Onwards].[ExperienceDetails] DROP CONSTRAINT [FK_ExperienceDetails_Users]
GO
ALTER TABLE [Onwards].[EmergencyContacts] DROP CONSTRAINT [FK_UserEmergencyContacts_User]
GO
ALTER TABLE [Onwards].[EducationDetails] DROP CONSTRAINT [FK_EducationDetails_Users]
GO
ALTER TABLE [Onwards].[Compliance] DROP CONSTRAINT [FK_UserCompliance_User]
GO
ALTER TABLE [Onwards].[CertificationDetails] DROP CONSTRAINT [FK_CertificationDetails_Users]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_YesNoOptions1]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_YesNoOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_VaccinationStatusOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_Users]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_NationalityOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_GenderOptions]
GO
ALTER TABLE [Onwards].[BasicUserDetails] DROP CONSTRAINT [FK_BasicDetails_BloodGroupOptions]
GO
ALTER TABLE [Onwards].[BankDetails] DROP CONSTRAINT [FK_UserBankDetails_User]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [DF__UserShift__IsAct__278EDA44]
GO
ALTER TABLE [Onwards].[UserShiftLog] DROP CONSTRAINT [DF__UserShift__Creat__269AB60B]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [DF__UserShift__IsAct__25A691D2]
GO
ALTER TABLE [Onwards].[UserShiftAssignment] DROP CONSTRAINT [DF__UserShift__Creat__24B26D99]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__Administr__34B3CB38]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__Reporting__33BFA6FF]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__Departmen__32CB82C6]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__Grade__31D75E8D]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__Role__30E33A54]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__DOR__72B0FDB1]
GO
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [DF__Users__DOJ__2FEF161B]
GO
ALTER TABLE [Onwards].[UserDocuments] DROP CONSTRAINT [DF__UserDocum__IsAct__5DEAEAF5]
GO
ALTER TABLE [Onwards].[UserDocuments] DROP CONSTRAINT [DF__UserDocum__IsVer__5CF6C6BC]
GO
ALTER TABLE [Onwards].[UserDocuments] DROP CONSTRAINT [DF__UserDocum__Creat__5C02A283]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [DF__UserAddre__IsAct__3D7E1B63]
GO
ALTER TABLE [Onwards].[UserAddresses] DROP CONSTRAINT [DF__UserAddre__Creat__3C89F72A]
GO
ALTER TABLE [Onwards].[Titles] DROP CONSTRAINT [DF__Titles__IsActive__4BCC3ABA]
GO
ALTER TABLE [Onwards].[Titles] DROP CONSTRAINT [DF__Titles__CreatedD__4AD81681]
GO
ALTER TABLE [Onwards].[SkillDetails] DROP CONSTRAINT [DF__SkillDeta__IsAct__041093DD]
GO
ALTER TABLE [Onwards].[SkillDetails] DROP CONSTRAINT [DF__SkillDeta__Creat__031C6FA4]
GO
ALTER TABLE [Onwards].[Shift] DROP CONSTRAINT [DF__Shift__IsActive__20E1DCB5]
GO
ALTER TABLE [Onwards].[Shift] DROP CONSTRAINT [DF__Shift__CreatedDa__1FEDB87C]
GO
ALTER TABLE [Onwards].[Roles] DROP CONSTRAINT [DF__Roles__IsActive__6CF8245B]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] DROP CONSTRAINT [DF__PreviousE__IsAct__4707859D]
GO
ALTER TABLE [Onwards].[PreviousExperienceDetails] DROP CONSTRAINT [DF__PreviousE__Creat__46136164]
GO
ALTER TABLE [Onwards].[MaritalStatus] DROP CONSTRAINT [DF__MaritalSt__IsAct__5090EFD7]
GO
ALTER TABLE [Onwards].[MaritalStatus] DROP CONSTRAINT [DF__MaritalSt__Creat__4F9CCB9E]
GO
ALTER TABLE [Onwards].[MaritalStatus] DROP CONSTRAINT [DF__MaritalSt__IsHav__4EA8A765]
GO
ALTER TABLE [Onwards].[LoginDetails] DROP CONSTRAINT [DF__LoginDeta__Modif__1EF99443]
GO
ALTER TABLE [Onwards].[LeaveTypes] DROP CONSTRAINT [DF__LeaveType__IsAct__113584D1]
GO
ALTER TABLE [Onwards].[LeaveTypes] DROP CONSTRAINT [DF__LeaveType__Creat__10416098]
GO
ALTER TABLE [Onwards].[LeaveStatus] DROP CONSTRAINT [DF__LeaveStat__IsAct__1D9B5BB6]
GO
ALTER TABLE [Onwards].[LeaveStatus] DROP CONSTRAINT [DF__LeaveStat__Creat__1CA7377D]
GO
ALTER TABLE [Onwards].[LeavesAdded] DROP CONSTRAINT [DF__LeavesAdd__IsAct__150615B5]
GO
ALTER TABLE [Onwards].[LeavesAdded] DROP CONSTRAINT [DF__LeavesAdd__Creat__1411F17C]
GO
ALTER TABLE [Onwards].[Grades] DROP CONSTRAINT [DF__Grades__IsActive__6C040022]
GO
ALTER TABLE [Onwards].[ExperienceDetails] DROP CONSTRAINT [DF__Experienc__IsAct__07E124C1]
GO
ALTER TABLE [Onwards].[ExperienceDetails] DROP CONSTRAINT [DF__Experienc__Creat__06ED0088]
GO
ALTER TABLE [Onwards].[EmergencyContacts] DROP CONSTRAINT [DF__Emergency__IsAct__1E05700A]
GO
ALTER TABLE [Onwards].[EducationDetails] DROP CONSTRAINT [DF__Education__IsAct__7C6F7215]
GO
ALTER TABLE [Onwards].[EducationDetails] DROP CONSTRAINT [DF__Education__Creat__7B7B4DDC]
GO
ALTER TABLE [Onwards].[DocumentTypes] DROP CONSTRAINT [DF__DocumentT__IsAct__592635D8]
GO
ALTER TABLE [Onwards].[DocumentTypes] DROP CONSTRAINT [DF__DocumentT__Creat__5832119F]
GO
ALTER TABLE [Onwards].[Departments] DROP CONSTRAINT [DF__Departmen__IsAct__6B0FDBE9]
GO
ALTER TABLE [Onwards].[Compliance] DROP CONSTRAINT [DF__Complianc__IsAct__1D114BD1]
GO
ALTER TABLE [Onwards].[ChildrenDetails] DROP CONSTRAINT [DF__ChildrenD__IsAct__546180BB]
GO
ALTER TABLE [Onwards].[ChildrenDetails] DROP CONSTRAINT [DF__ChildrenD__Creat__536D5C82]
GO
ALTER TABLE [Onwards].[CertificationDetails] DROP CONSTRAINT [DF__Certifica__IsAct__004002F9]
GO
ALTER TABLE [Onwards].[CertificationDetails] DROP CONSTRAINT [DF__Certifica__Creat__7F4BDEC0]
GO
ALTER TABLE [Onwards].[BankDetails] DROP CONSTRAINT [DF__BankDetai__IsAct__1C1D2798]
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 18-07-2025 19:56:20 ******/
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [UQ__Users__1F6425482CF50872]
GO
/****** Object:  Index [Unique_Email]    Script Date: 18-07-2025 19:56:20 ******/
ALTER TABLE [Onwards].[Users] DROP CONSTRAINT [Unique_Email]
GO
/****** Object:  Index [UQ__Titles__2CB664DC3C614ACC]    Script Date: 18-07-2025 19:56:20 ******/
ALTER TABLE [Onwards].[Titles] DROP CONSTRAINT [UQ__Titles__2CB664DC3C614ACC]
GO
/****** Object:  Index [UC_LeaveBalance]    Script Date: 18-07-2025 19:56:20 ******/
ALTER TABLE [Onwards].[LeaveBalances] DROP CONSTRAINT [UC_LeaveBalance]
GO
/****** Object:  Index [UQ__Document__737584F6E421877C]    Script Date: 18-07-2025 19:56:20 ******/
ALTER TABLE [Onwards].[DocumentTypes] DROP CONSTRAINT [UQ__Document__737584F6E421877C]
GO
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[YesNoOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[YesNoOptions]
GO
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[VaccinationStatusOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[VaccinationStatusOptions]
GO
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserShiftLog]') AND type in (N'U'))
DROP TABLE [Onwards].[UserShiftLog]
GO
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserShiftAssignment]') AND type in (N'U'))
DROP TABLE [Onwards].[UserShiftAssignment]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Users]') AND type in (N'U'))
DROP TABLE [Onwards].[Users]
GO
/****** Object:  Table [Onwards].[UserLeaveApplyed]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserLeaveApplyed]') AND type in (N'U'))
DROP TABLE [Onwards].[UserLeaveApplyed]
GO
/****** Object:  Table [Onwards].[UserDocuments]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserDocuments]') AND type in (N'U'))
DROP TABLE [Onwards].[UserDocuments]
GO
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[UserAddresses]') AND type in (N'U'))
DROP TABLE [Onwards].[UserAddresses]
GO
/****** Object:  Table [Onwards].[Titles]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Titles]') AND type in (N'U'))
DROP TABLE [Onwards].[Titles]
GO
/****** Object:  Table [Onwards].[SkillDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[SkillDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[SkillDetails]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Shift]') AND type in (N'U'))
DROP TABLE [Onwards].[Shift]
GO
/****** Object:  Table [Onwards].[Roles]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Roles]') AND type in (N'U'))
DROP TABLE [Onwards].[Roles]
GO
/****** Object:  Table [Onwards].[PreviousExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[PreviousExperienceDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[PreviousExperienceDetails]
GO
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[NationalityOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[NationalityOptions]
GO
/****** Object:  Table [Onwards].[MaritalStatus]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[MaritalStatus]') AND type in (N'U'))
DROP TABLE [Onwards].[MaritalStatus]
GO
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LoginDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[LoginDetails]
GO
/****** Object:  Table [Onwards].[LeaveTypes]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LeaveTypes]') AND type in (N'U'))
DROP TABLE [Onwards].[LeaveTypes]
GO
/****** Object:  Table [Onwards].[LeaveStatus]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LeaveStatus]') AND type in (N'U'))
DROP TABLE [Onwards].[LeaveStatus]
GO
/****** Object:  Table [Onwards].[LeavesAdded]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LeavesAdded]') AND type in (N'U'))
DROP TABLE [Onwards].[LeavesAdded]
GO
/****** Object:  Table [Onwards].[LeaveBalances]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[LeaveBalances]') AND type in (N'U'))
DROP TABLE [Onwards].[LeaveBalances]
GO
/****** Object:  Table [Onwards].[Grades]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Grades]') AND type in (N'U'))
DROP TABLE [Onwards].[Grades]
GO
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[GenderOptions]') AND type in (N'U'))
DROP TABLE [Onwards].[GenderOptions]
GO
/****** Object:  Table [Onwards].[ExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[ExperienceDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[ExperienceDetails]
GO
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[EmergencyContacts]') AND type in (N'U'))
DROP TABLE [Onwards].[EmergencyContacts]
GO
/****** Object:  Table [Onwards].[EducationDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[EducationDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[EducationDetails]
GO
/****** Object:  Table [Onwards].[DocumentTypes]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[DocumentTypes]') AND type in (N'U'))
DROP TABLE [Onwards].[DocumentTypes]
GO
/****** Object:  Table [Onwards].[Departments]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Departments]') AND type in (N'U'))
DROP TABLE [Onwards].[Departments]
GO
/****** Object:  Table [Onwards].[Compliance]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Compliance]') AND type in (N'U'))
DROP TABLE [Onwards].[Compliance]
GO
/****** Object:  Table [Onwards].[ChildrenDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[ChildrenDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[ChildrenDetails]
GO
/****** Object:  Table [Onwards].[CertificationDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[CertificationDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[CertificationDetails]
GO
/****** Object:  Table [Onwards].[BloodGroups]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BloodGroups]') AND type in (N'U'))
DROP TABLE [Onwards].[BloodGroups]
GO
/****** Object:  Table [Onwards].[BasicUserDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BasicUserDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[BasicUserDetails]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 18-07-2025 19:56:20 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[BankDetails]') AND type in (N'U'))
DROP TABLE [Onwards].[BankDetails]
GO
/****** Object:  Schema [Onwards]    Script Date: 18-07-2025 19:56:20 ******/
DROP SCHEMA [Onwards]
GO
USE [master]
GO
/****** Object:  Database [Projects]    Script Date: 18-07-2025 19:56:20 ******/
DROP DATABASE [Projects]
GO
/****** Object:  Database [Projects]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Schema [Onwards]    Script Date: 18-07-2025 19:56:20 ******/
CREATE SCHEMA [Onwards]
GO
/****** Object:  Table [Onwards].[BankDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[BasicUserDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[BloodGroups]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[BloodGroups](
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
/****** Object:  Table [Onwards].[CertificationDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[ChildrenDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[Compliance]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[Departments]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Departments](
	[Id] [int] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[DocumentTypes]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[EducationDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[EmergencyContacts]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[ExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[GenderOptions]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[Grades]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Grades](
	[Id] [int] NOT NULL,
	[GradeValue] [nvarchar](10) NOT NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Grades__3214EC073E0BCF2E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[LeaveBalances]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[LeaveBalances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[RemainingDays] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[LeavesAdded]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[LeavesAdded](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[NoOfLeaves] [int] NOT NULL,
	[AddedDate] [int] NOT NULL,
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
/****** Object:  Table [Onwards].[LeaveStatus]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[LeaveStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
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
/****** Object:  Table [Onwards].[LeaveTypes]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[LeaveTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeName] [varchar](50) NOT NULL,
	[MaxDaysPerYear] [int] NOT NULL,
	[Year] [int] NOT NULL,
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
/****** Object:  Table [Onwards].[LoginDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[MaritalStatus]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[NationalityOptions]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[PreviousExperienceDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[Roles]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Roles](
	[Id] [int] NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Shift]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[SkillDetails]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[Titles]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[UserAddresses]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[UserDocuments]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[UserLeaveApplyed]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserLeaveApplyed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Reason] [varchar](300) NULL,
	[LeaveStatusId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[Users]    Script Date: 18-07-2025 19:56:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Mobile] [nvarchar](20) NOT NULL,
	[DOJ] [datetime] NOT NULL,
	[DOR] [datetime] NOT NULL,
	[RoleId] [int] NOT NULL,
	[GradeId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[ReportingManagerId] [int] NOT NULL,
	[AdministrativeManagerId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__Users__3214EC07E75E55FE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Onwards].[UserShiftAssignment]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[UserShiftLog]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[VaccinationStatusOptions]    Script Date: 18-07-2025 19:56:20 ******/
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
/****** Object:  Table [Onwards].[YesNoOptions]    Script Date: 18-07-2025 19:56:20 ******/
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
INSERT [Onwards].[BloodGroups] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'A+                            ', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[BloodGroups] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'A-                            ', NULL, NULL, NULL, NULL, 1)
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
INSERT [Onwards].[Departments] ([Id], [DepartmentName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'IT', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Departments] ([Id], [DepartmentName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Administrative', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Departments] ([Id], [DepartmentName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Technical Services', NULL, NULL, NULL, NULL, 1)
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
INSERT [Onwards].[Grades] ([Id], [GradeValue], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'L1', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Grades] ([Id], [GradeValue], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'L2', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Grades] ([Id], [GradeValue], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'M1', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Grades] ([Id], [GradeValue], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'M2', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[LeaveStatus] ON 

INSERT [Onwards].[LeaveStatus] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Pending', CAST(N'2025-07-17T16:59:03.133' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveStatus] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Approved', CAST(N'2025-07-17T16:59:03.133' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveStatus] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Rejected', CAST(N'2025-07-17T16:59:03.133' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveStatus] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'Cancelled', CAST(N'2025-07-17T16:59:03.133' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveStatus] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'On Hold', CAST(N'2025-07-17T16:59:03.133' AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[LeaveStatus] OFF
GO
SET IDENTITY_INSERT [Onwards].[LeaveTypes] ON 

INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Sick Leave', 12, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Casual Leave', 10, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Earned Leave', 15, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'Maternity Leave', 90, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'Paternity Leave', 10, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (6, N'Bereavement Leave', 5, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[LeaveTypes] ([Id], [LeaveTypeName], [MaxDaysPerYear], [Year], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (7, N'Unpaid Leave', 0, 2025, CAST(N'2025-07-17T16:59:03.110' AS DateTime), 1, NULL, NULL, 1)
SET IDENTITY_INSERT [Onwards].[LeaveTypes] OFF
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
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Developer', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Lead', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Senior Software Engineer', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'Project Manager', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'Program Manager', NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Roles] ([Id], [RoleName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (6, N'Engineering Manager', NULL, NULL, NULL, NULL, 1)
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

INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'EMP001', N'password', N'Arun Sharma', N'arun.sharma@example.com', N'9876543210', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-02-01T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'EMP002', N'password', N'Nidhi Mehra', N'nidhi.mehra@example.com', N'9123456780', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-02-01T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'EMP003', N'password', N'Rohit Kapoor', N'rohit.kapoor@example.com', N'9911223344', CAST(N'1900-01-01T00:00:00.000' AS DateTime), CAST(N'1900-02-01T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, N'007', N'string', N'string', N'string', N'string', CAST(N'2025-07-18T10:55:20.443' AS DateTime), CAST(N'2025-07-18T10:55:20.443' AS DateTime), 2, 1, 2, 1, 2, CAST(N'2025-07-17T16:47:46.630' AS DateTime), 1, CAST(N'2025-07-18T16:28:53.490' AS DateTime), 7, 0)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, N'008', N'string', N'string', N'.com', N'string', CAST(N'2025-07-17T00:00:00.000' AS DateTime), CAST(N'2025-07-17T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, CAST(N'2025-07-17T16:50:02.250' AS DateTime), 2, NULL, NULL, 0)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (8, N'EMP8', N'string', N'string', N'email1', N'string', CAST(N'2025-07-18T10:55:20.443' AS DateTime), CAST(N'2025-07-18T10:55:20.443' AS DateTime), 2, 1, 2, 1, 2, CAST(N'2025-07-18T16:32:56.097' AS DateTime), 7, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (9, N'EMP9', N'password', N'Norma Fisher', N'ysullivan@yahoo.com', N'5938242194', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2023-08-07T00:00:00.000' AS DateTime), 4, 4, 1, 2, 3, CAST(N'2025-07-18T17:16:07.270' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (10, N'EMP10', N'password', N'Stephanie Sutton', N'gomezleslie@hotmail.com', N'8778408016', CAST(N'2023-05-18T00:00:00.000' AS DateTime), CAST(N'2024-05-30T00:00:00.000' AS DateTime), 4, 4, 2, 2, 2, CAST(N'2025-07-18T17:16:07.273' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (11, N'EMP11', N'password', N'Michele Brown', N'lindathomas@west.net', N'1484185839', CAST(N'2024-04-29T00:00:00.000' AS DateTime), CAST(N'2024-09-18T00:00:00.000' AS DateTime), 5, 2, 3, 1, 2, CAST(N'2025-07-18T17:16:07.277' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (12, N'EMP12', N'password', N'Janice Johnston', N'jaimelopez@hotmail.com', N'7112201868', CAST(N'2022-05-16T00:00:00.000' AS DateTime), CAST(N'2026-03-06T00:00:00.000' AS DateTime), 2, 1, 3, 2, 3, CAST(N'2025-07-18T17:16:07.277' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (13, N'EMP13', N'password', N'Samantha Barnes', N'pvasquez@hotmail.com', N'1591795330', CAST(N'2023-09-15T00:00:00.000' AS DateTime), CAST(N'2024-06-05T00:00:00.000' AS DateTime), 6, 2, 2, 1, 3, CAST(N'2025-07-18T17:16:07.280' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (14, N'EMP14', N'password', N'Robert Garcia', N'brandonberry@guzman.com', N'6151090321', CAST(N'2020-09-25T00:00:00.000' AS DateTime), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 1, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.280' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (15, N'EMP15', N'password', N'Brian Green', N'lucasmichael@brown.com', N'6345792302', CAST(N'2022-09-03T00:00:00.000' AS DateTime), CAST(N'2023-03-04T00:00:00.000' AS DateTime), 3, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.280' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (16, N'EMP16', N'password', N'Jessica Thompson', N'gmccullough@yahoo.com', N'6428071508', CAST(N'2024-08-21T00:00:00.000' AS DateTime), CAST(N'2025-05-21T00:00:00.000' AS DateTime), 2, 4, 2, 3, 2, CAST(N'2025-07-18T17:16:07.283' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (17, N'EMP17', N'password', N'Megan Garza', N'paul61@wheeler.com', N'3376960696', CAST(N'2021-01-31T00:00:00.000' AS DateTime), CAST(N'2023-04-16T00:00:00.000' AS DateTime), 1, 1, 1, 3, 2, CAST(N'2025-07-18T17:16:07.283' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (18, N'EMP18', N'password', N'Jill Dyer', N'simpsonlarry@williams-carson.biz', N'8120665030', CAST(N'2021-05-16T00:00:00.000' AS DateTime), CAST(N'2022-12-28T00:00:00.000' AS DateTime), 6, 1, 3, 2, 2, CAST(N'2025-07-18T17:16:07.287' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (19, N'EMP19', N'password', N'Matthew Russo', N'craignash@yahoo.com', N'0471428512', CAST(N'2020-11-20T00:00:00.000' AS DateTime), CAST(N'2022-08-21T00:00:00.000' AS DateTime), 2, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.287' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (20, N'EMP20', N'password', N'Kristin Potts', N'djoseph@graham.biz', N'0224555159', CAST(N'2021-12-08T00:00:00.000' AS DateTime), CAST(N'2023-03-17T00:00:00.000' AS DateTime), 5, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.287' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (21, N'EMP21', N'password', N'Mrs. Jennifer Kelley', N'woodsjohn@gmail.com', N'2814654611', CAST(N'2023-05-30T00:00:00.000' AS DateTime), CAST(N'2024-11-13T00:00:00.000' AS DateTime), 4, 1, 1, 2, 3, CAST(N'2025-07-18T17:16:07.290' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (22, N'EMP22', N'password', N'Brian Jimenez', N'matthew22@cunningham.com', N'1330601688', CAST(N'2025-07-08T00:00:00.000' AS DateTime), CAST(N'2026-04-11T00:00:00.000' AS DateTime), 4, 1, 2, 3, 2, CAST(N'2025-07-18T17:16:07.290' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (23, N'EMP23', N'password', N'Jenny Richardson', N'ryanhoward@gmail.com', N'8731764303', CAST(N'2022-03-24T00:00:00.000' AS DateTime), CAST(N'2026-02-15T00:00:00.000' AS DateTime), 6, 1, 3, 2, 3, CAST(N'2025-07-18T17:16:07.290' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (24, N'EMP24', N'password', N'Joshua Hernandez', N'annelittle@yahoo.com', N'5773893055', CAST(N'2021-10-20T00:00:00.000' AS DateTime), CAST(N'2023-12-27T00:00:00.000' AS DateTime), 2, 3, 2, 1, 3, CAST(N'2025-07-18T17:16:07.293' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (25, N'EMP25', N'password', N'Brittney Gray', N'fjones@hotmail.com', N'1320407522', CAST(N'2023-10-17T00:00:00.000' AS DateTime), CAST(N'2026-01-17T00:00:00.000' AS DateTime), 4, 3, 3, 1, 2, CAST(N'2025-07-18T17:16:07.293' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (26, N'EMP26', N'password', N'Laura Gregory', N'nbullock@nichols-george.info', N'9930024894', CAST(N'2022-10-09T00:00:00.000' AS DateTime), CAST(N'2026-04-12T00:00:00.000' AS DateTime), 2, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.297' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (27, N'EMP27', N'password', N'Jason Patrick', N'danielleanderson@blair-cook.com', N'6279125609', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2021-10-21T00:00:00.000' AS DateTime), 6, 3, 2, 1, 1, CAST(N'2025-07-18T17:16:07.297' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (28, N'EMP28', N'password', N'Christian Johnson', N'daniel85@reyes.com', N'9795194264', CAST(N'2020-11-12T00:00:00.000' AS DateTime), CAST(N'2024-03-13T00:00:00.000' AS DateTime), 6, 2, 1, 1, 1, CAST(N'2025-07-18T17:16:07.300' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (29, N'EMP29', N'password', N'Peter Gibson', N'wintersbill@santana-duffy.org', N'3188684126', CAST(N'2021-06-07T00:00:00.000' AS DateTime), CAST(N'2024-12-19T00:00:00.000' AS DateTime), 6, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.300' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (30, N'EMP30', N'password', N'Jason Moore', N'ajordan@crawford.com', N'5115055203', CAST(N'2021-10-05T00:00:00.000' AS DateTime), CAST(N'2023-07-13T00:00:00.000' AS DateTime), 5, 2, 1, 3, 3, CAST(N'2025-07-18T17:16:07.300' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (31, N'EMP31', N'password', N'Matthew Dennis', N'carterhannah@hall.info', N'4203557448', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2022-02-06T00:00:00.000' AS DateTime), 4, 3, 2, 2, 3, CAST(N'2025-07-18T17:16:07.303' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (32, N'EMP32', N'password', N'Elizabeth Bennett', N'lindastewart@young.com', N'6029061126', CAST(N'2021-10-02T00:00:00.000' AS DateTime), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 6, 3, 1, 2, 3, CAST(N'2025-07-18T17:16:07.303' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (33, N'EMP33', N'password', N'Henry Wright', N'bennettalan@hotmail.com', N'7354712141', CAST(N'2024-05-03T00:00:00.000' AS DateTime), CAST(N'2026-01-12T00:00:00.000' AS DateTime), 1, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.307' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (34, N'EMP34', N'password', N'Javier Thompson', N'sharon25@yahoo.com', N'7340797034', CAST(N'2021-11-14T00:00:00.000' AS DateTime), CAST(N'2025-06-23T00:00:00.000' AS DateTime), 2, 2, 1, 3, 2, CAST(N'2025-07-18T17:16:07.307' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (35, N'EMP35', N'password', N'Kaitlin Gregory', N'bramirez@nelson.com', N'4689671454', CAST(N'2020-11-04T00:00:00.000' AS DateTime), CAST(N'2021-06-10T00:00:00.000' AS DateTime), 1, 2, 2, 1, 2, CAST(N'2025-07-18T17:16:07.310' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (36, N'EMP36', N'password', N'Elizabeth Morgan', N'carloscallahan@meyer-berry.com', N'6864475922', CAST(N'2023-12-15T00:00:00.000' AS DateTime), CAST(N'2026-06-20T00:00:00.000' AS DateTime), 4, 1, 1, 1, 3, CAST(N'2025-07-18T17:16:07.310' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (37, N'EMP37', N'password', N'Justin Evans', N'frobinson@hotmail.com', N'7074270930', CAST(N'2020-08-17T00:00:00.000' AS DateTime), CAST(N'2025-02-08T00:00:00.000' AS DateTime), 2, 1, 3, 3, 3, CAST(N'2025-07-18T17:16:07.310' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (38, N'EMP38', N'password', N'Melissa Miller', N'warddarren@gmail.com', N'4329431675', CAST(N'2024-02-17T00:00:00.000' AS DateTime), CAST(N'2025-12-24T00:00:00.000' AS DateTime), 5, 1, 1, 1, 3, CAST(N'2025-07-18T17:16:07.313' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (39, N'EMP39', N'password', N'Timothy Hernandez', N'jasonlopez@yahoo.com', N'6763373906', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2025-03-22T00:00:00.000' AS DateTime), 2, 1, 2, 1, 2, CAST(N'2025-07-18T17:16:07.313' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (40, N'EMP40', N'password', N'Mark Thompson', N'bushwilliam@yahoo.com', N'6708869774', CAST(N'2022-10-21T00:00:00.000' AS DateTime), CAST(N'2022-12-25T00:00:00.000' AS DateTime), 1, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.317' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (41, N'EMP41', N'password', N'Christopher Smith', N'brycepatterson@arellano.net', N'7359191558', CAST(N'2020-10-14T00:00:00.000' AS DateTime), CAST(N'2025-03-23T00:00:00.000' AS DateTime), 2, 1, 2, 1, 3, CAST(N'2025-07-18T17:16:07.317' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (42, N'EMP42', N'password', N'Jacob Clark', N'maryking@hotmail.com', N'4864753048', CAST(N'2024-10-02T00:00:00.000' AS DateTime), CAST(N'2026-04-17T00:00:00.000' AS DateTime), 1, 1, 3, 2, 3, CAST(N'2025-07-18T17:16:07.317' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (43, N'EMP43', N'password', N'Thomas Jenkins', N'falexander@gmail.com', N'1263791686', CAST(N'2024-09-16T00:00:00.000' AS DateTime), CAST(N'2025-03-05T00:00:00.000' AS DateTime), 1, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.320' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (44, N'EMP44', N'password', N'Seth Michael', N'srodriguez@hotmail.com', N'4789784430', CAST(N'2022-01-04T00:00:00.000' AS DateTime), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 6, 3, 2, 2, 1, CAST(N'2025-07-18T17:16:07.320' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (45, N'EMP45', N'password', N'Dustin Fitzgerald', N'htrevino@brewer-wilson.org', N'3843318453', CAST(N'2025-06-29T00:00:00.000' AS DateTime), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 1, 4, 1, 3, 1, CAST(N'2025-07-18T17:16:07.323' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (46, N'EMP46', N'password', N'Alan Wagner', N'burnettnatalie@gmail.com', N'8123793323', CAST(N'2021-09-01T00:00:00.000' AS DateTime), CAST(N'2025-11-27T00:00:00.000' AS DateTime), 6, 4, 1, 2, 2, CAST(N'2025-07-18T17:16:07.323' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (47, N'EMP47', N'password', N'Ashley Flowers', N'abryant@gmail.com', N'7785142963', CAST(N'2021-01-16T00:00:00.000' AS DateTime), CAST(N'2022-10-26T00:00:00.000' AS DateTime), 6, 4, 3, 1, 3, CAST(N'2025-07-18T17:16:07.327' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (48, N'EMP48', N'password', N'Nicholas Nixon', N'qbarnett@hotmail.com', N'4524059802', CAST(N'2021-01-23T00:00:00.000' AS DateTime), CAST(N'2021-04-09T00:00:00.000' AS DateTime), 6, 2, 1, 3, 1, CAST(N'2025-07-18T17:16:07.327' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (49, N'EMP49', N'password', N'Adam Dougherty', N'nicholsonmichael@hotmail.com', N'2376254256', CAST(N'2022-10-14T00:00:00.000' AS DateTime), CAST(N'2025-01-20T00:00:00.000' AS DateTime), 2, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.327' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (50, N'EMP50', N'password', N'Nancy Parks', N'cunninghamdavid@yahoo.com', N'0829821532', CAST(N'2025-04-26T00:00:00.000' AS DateTime), CAST(N'2025-09-03T00:00:00.000' AS DateTime), 5, 4, 3, 1, 1, CAST(N'2025-07-18T17:16:07.330' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (51, N'EMP51', N'password', N'Jessica Hancock', N'nmckinney@williams.biz', N'0715427385', CAST(N'2022-11-02T00:00:00.000' AS DateTime), CAST(N'2026-04-02T00:00:00.000' AS DateTime), 4, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.330' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (52, N'EMP52', N'password', N'James Collins DVM', N'mejiaashley@yahoo.com', N'7616570040', CAST(N'2022-04-21T00:00:00.000' AS DateTime), CAST(N'2025-07-18T00:00:00.000' AS DateTime), 6, 3, 2, 3, 2, CAST(N'2025-07-18T17:16:07.330' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (53, N'EMP53', N'password', N'Gina Good', N'darrenholden@gmail.com', N'2250909255', CAST(N'2024-10-01T00:00:00.000' AS DateTime), CAST(N'2026-06-01T00:00:00.000' AS DateTime), 2, 1, 2, 3, 1, CAST(N'2025-07-18T17:16:07.333' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (54, N'EMP54', N'password', N'Jeffrey Jackson', N'ramosmatthew@fry.com', N'1864282129', CAST(N'2023-10-25T00:00:00.000' AS DateTime), CAST(N'2025-08-30T00:00:00.000' AS DateTime), 3, 1, 3, 2, 1, CAST(N'2025-07-18T17:16:07.333' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (55, N'EMP55', N'password', N'Dustin Patterson', N'amanda85@yahoo.com', N'6208296570', CAST(N'2022-06-26T00:00:00.000' AS DateTime), CAST(N'2026-04-23T00:00:00.000' AS DateTime), 2, 4, 2, 3, 2, CAST(N'2025-07-18T17:16:07.333' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (56, N'EMP56', N'password', N'Joseph Pugh', N'courtney70@moss.com', N'1973781327', CAST(N'2022-11-08T00:00:00.000' AS DateTime), CAST(N'2023-12-05T00:00:00.000' AS DateTime), 6, 3, 3, 3, 3, CAST(N'2025-07-18T17:16:07.337' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (57, N'EMP57', N'password', N'Peter Kelly', N'parkertravis@yahoo.com', N'6666097592', CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2024-02-18T00:00:00.000' AS DateTime), 2, 3, 2, 3, 2, CAST(N'2025-07-18T17:16:07.337' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (58, N'EMP58', N'password', N'Joseph Williams', N'adam31@hotmail.com', N'0505624629', CAST(N'2024-11-22T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), 6, 1, 1, 3, 1, CAST(N'2025-07-18T17:16:07.340' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (59, N'EMP59', N'password', N'Steven Lozano', N'colonhayley@welch.org', N'1824345448', CAST(N'2025-03-30T00:00:00.000' AS DateTime), CAST(N'2025-07-26T00:00:00.000' AS DateTime), 6, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.340' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (60, N'EMP60', N'password', N'Kevin May', N'lisa13@gibbs.net', N'5278081850', CAST(N'2023-07-16T00:00:00.000' AS DateTime), CAST(N'2025-12-17T00:00:00.000' AS DateTime), 6, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.340' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (61, N'EMP61', N'password', N'Roy Hunt', N'loganjohnson@martinez.com', N'0460925160', CAST(N'2022-09-19T00:00:00.000' AS DateTime), CAST(N'2025-07-29T00:00:00.000' AS DateTime), 5, 4, 1, 2, 3, CAST(N'2025-07-18T17:16:07.343' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (62, N'EMP62', N'password', N'Samuel Chavez', N'chavezjoseph@brown-davis.com', N'0269057877', CAST(N'2023-12-17T00:00:00.000' AS DateTime), CAST(N'2025-01-27T00:00:00.000' AS DateTime), 5, 4, 3, 3, 1, CAST(N'2025-07-18T17:16:07.343' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (63, N'EMP63', N'password', N'Jose Copeland', N'michael17@moore.com', N'0652822223', CAST(N'2024-08-25T00:00:00.000' AS DateTime), CAST(N'2026-07-15T00:00:00.000' AS DateTime), 2, 4, 1, 2, 3, CAST(N'2025-07-18T17:16:07.343' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (64, N'EMP64', N'password', N'Jennifer Perez', N'george35@gmail.com', N'6759269029', CAST(N'2021-10-22T00:00:00.000' AS DateTime), CAST(N'2021-12-21T00:00:00.000' AS DateTime), 2, 4, 3, 2, 3, CAST(N'2025-07-18T17:16:07.347' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (65, N'EMP65', N'password', N'Frank Smith', N'berrydylan@nunez.com', N'6953258386', CAST(N'2025-05-10T00:00:00.000' AS DateTime), CAST(N'2026-02-06T00:00:00.000' AS DateTime), 5, 1, 1, 2, 2, CAST(N'2025-07-18T17:16:07.347' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (66, N'EMP66', N'password', N'Jessica Graham', N'zwalker@gmail.com', N'6914485809', CAST(N'2022-11-22T00:00:00.000' AS DateTime), CAST(N'2023-01-23T00:00:00.000' AS DateTime), 3, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.350' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (67, N'EMP67', N'password', N'Sharon Myers', N'thomasphilip@simon-bray.biz', N'7972257629', CAST(N'2023-09-04T00:00:00.000' AS DateTime), CAST(N'2025-02-21T00:00:00.000' AS DateTime), 5, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.350' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (68, N'EMP68', N'password', N'Hunter Kennedy', N'nataliescott@silva.com', N'0646352219', CAST(N'2024-03-15T00:00:00.000' AS DateTime), CAST(N'2025-11-23T00:00:00.000' AS DateTime), 4, 4, 2, 1, 1, CAST(N'2025-07-18T17:16:07.350' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (69, N'EMP69', N'password', N'Martin Mann', N'jgardner@jackson.com', N'0827594516', CAST(N'2024-10-22T00:00:00.000' AS DateTime), CAST(N'2025-07-06T00:00:00.000' AS DateTime), 1, 1, 3, 3, 3, CAST(N'2025-07-18T17:16:07.350' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (70, N'EMP70', N'password', N'Brianna Bennett', N'nicoleriddle@yahoo.com', N'7846612209', CAST(N'2022-04-14T00:00:00.000' AS DateTime), CAST(N'2023-03-25T00:00:00.000' AS DateTime), 1, 2, 1, 3, 3, CAST(N'2025-07-18T17:16:07.353' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (71, N'EMP71', N'password', N'Nicholas Jackson', N'smithpatricia@castillo.org', N'7328818202', CAST(N'2022-04-24T00:00:00.000' AS DateTime), CAST(N'2024-03-04T00:00:00.000' AS DateTime), 2, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.353' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (72, N'EMP72', N'password', N'Jennifer Smith', N'cjackson@brown.org', N'5387079148', CAST(N'2024-07-24T00:00:00.000' AS DateTime), CAST(N'2025-02-15T00:00:00.000' AS DateTime), 1, 4, 2, 3, 1, CAST(N'2025-07-18T17:16:07.357' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (73, N'EMP73', N'password', N'Joshua Moore', N'ejones@long-benton.net', N'4731425120', CAST(N'2022-03-25T00:00:00.000' AS DateTime), CAST(N'2022-04-15T00:00:00.000' AS DateTime), 1, 3, 2, 1, 2, CAST(N'2025-07-18T17:16:07.357' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (74, N'EMP74', N'password', N'Jared Lyons', N'velazquezanita@yahoo.com', N'0337443075', CAST(N'2021-03-14T00:00:00.000' AS DateTime), CAST(N'2023-10-16T00:00:00.000' AS DateTime), 2, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.357' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (75, N'EMP75', N'password', N'Courtney Richardson', N'jesseboyle@hotmail.com', N'5469216587', CAST(N'2024-03-19T00:00:00.000' AS DateTime), CAST(N'2025-05-23T00:00:00.000' AS DateTime), 1, 1, 1, 1, 3, CAST(N'2025-07-18T17:16:07.360' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (76, N'EMP76', N'password', N'James Miranda', N'castillokelly@yahoo.com', N'5325731667', CAST(N'2022-06-02T00:00:00.000' AS DateTime), CAST(N'2025-04-16T00:00:00.000' AS DateTime), 3, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.360' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (77, N'EMP77', N'password', N'Eric Hall', N'ruizphillip@hoover.com', N'6143521250', CAST(N'2023-10-18T00:00:00.000' AS DateTime), CAST(N'2026-01-25T00:00:00.000' AS DateTime), 6, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.360' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (78, N'EMP78', N'password', N'Bruce Jacobs', N'figueroajames@meyer.biz', N'8233667063', CAST(N'2022-10-31T00:00:00.000' AS DateTime), CAST(N'2022-12-14T00:00:00.000' AS DateTime), 6, 4, 2, 3, 1, CAST(N'2025-07-18T17:16:07.363' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (79, N'EMP79', N'password', N'Michele Wilcox', N'caitlindavis@gmail.com', N'4029263953', CAST(N'2021-07-25T00:00:00.000' AS DateTime), CAST(N'2026-04-28T00:00:00.000' AS DateTime), 2, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.363' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (80, N'EMP80', N'password', N'Thomas Martinez', N'jwhite@yahoo.com', N'6461985373', CAST(N'2020-09-29T00:00:00.000' AS DateTime), CAST(N'2024-07-18T00:00:00.000' AS DateTime), 2, 2, 2, 2, 2, CAST(N'2025-07-18T17:16:07.363' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (81, N'EMP81', N'password', N'Abigail Sullivan', N'rubenking@yahoo.com', N'3745792813', CAST(N'2021-01-16T00:00:00.000' AS DateTime), CAST(N'2022-05-12T00:00:00.000' AS DateTime), 3, 1, 2, 3, 1, CAST(N'2025-07-18T17:16:07.367' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (82, N'EMP82', N'password', N'George Howell', N'mmyers@crawford-jackson.com', N'8352889962', CAST(N'2022-05-10T00:00:00.000' AS DateTime), CAST(N'2024-11-24T00:00:00.000' AS DateTime), 1, 3, 1, 1, 3, CAST(N'2025-07-18T17:16:07.367' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (83, N'EMP83', N'password', N'David Stein', N'aaronbrown@gmail.com', N'9318645732', CAST(N'2024-04-08T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), 3, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.367' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (84, N'EMP84', N'password', N'Matthew Singleton', N'thomaskaren@gmail.com', N'7835006316', CAST(N'2025-02-21T00:00:00.000' AS DateTime), CAST(N'2025-08-03T00:00:00.000' AS DateTime), 3, 1, 2, 3, 1, CAST(N'2025-07-18T17:16:07.370' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (85, N'EMP85', N'password', N'Tonya Barnett', N'omar81@gmail.com', N'0369541039', CAST(N'2023-09-01T00:00:00.000' AS DateTime), CAST(N'2024-04-26T00:00:00.000' AS DateTime), 1, 3, 1, 3, 3, CAST(N'2025-07-18T17:16:07.370' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (86, N'EMP86', N'password', N'Brian West', N'gcruz@perez-lawrence.com', N'2599718765', CAST(N'2024-03-27T00:00:00.000' AS DateTime), CAST(N'2024-10-20T00:00:00.000' AS DateTime), 1, 3, 2, 2, 2, CAST(N'2025-07-18T17:16:07.373' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (87, N'EMP87', N'password', N'Stacey Wilson', N'anthonynelson@yahoo.com', N'5459388058', CAST(N'2024-10-03T00:00:00.000' AS DateTime), CAST(N'2026-07-01T00:00:00.000' AS DateTime), 4, 1, 1, 3, 2, CAST(N'2025-07-18T17:16:07.373' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (88, N'EMP88', N'password', N'Scott Rivera', N'austinrobert@gmail.com', N'9181927083', CAST(N'2022-05-22T00:00:00.000' AS DateTime), CAST(N'2023-02-21T00:00:00.000' AS DateTime), 4, 3, 2, 1, 2, CAST(N'2025-07-18T17:16:07.373' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (89, N'EMP89', N'password', N'Tonya Ross', N'eric58@gmail.com', N'7524801545', CAST(N'2020-08-29T00:00:00.000' AS DateTime), CAST(N'2023-02-23T00:00:00.000' AS DateTime), 1, 4, 2, 1, 2, CAST(N'2025-07-18T17:16:07.377' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (90, N'EMP90', N'password', N'Carol Hill', N'michelle16@patel.info', N'2436400041', CAST(N'2022-12-27T00:00:00.000' AS DateTime), CAST(N'2023-03-12T00:00:00.000' AS DateTime), 3, 2, 1, 3, 3, CAST(N'2025-07-18T17:16:07.377' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (91, N'EMP91', N'password', N'Danielle Beasley', N'carla66@aguilar-king.com', N'7165280376', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-07-31T00:00:00.000' AS DateTime), 4, 1, 1, 1, 1, CAST(N'2025-07-18T17:16:07.380' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (92, N'EMP92', N'password', N'Sue Horne', N'alicia18@porter.biz', N'7028533234', CAST(N'2022-09-02T00:00:00.000' AS DateTime), CAST(N'2024-12-25T00:00:00.000' AS DateTime), 6, 2, 1, 2, 1, CAST(N'2025-07-18T17:16:07.380' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (93, N'EMP93', N'password', N'David Hoover', N'johncastro@hotmail.com', N'3840730626', CAST(N'2023-10-25T00:00:00.000' AS DateTime), CAST(N'2026-01-30T00:00:00.000' AS DateTime), 1, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.380' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (94, N'EMP94', N'password', N'Ashley Foley', N'smithjulie@reese.com', N'5641293300', CAST(N'2022-08-29T00:00:00.000' AS DateTime), CAST(N'2024-07-28T00:00:00.000' AS DateTime), 4, 4, 3, 3, 3, CAST(N'2025-07-18T17:16:07.380' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (95, N'EMP95', N'password', N'Stephanie Stanley', N'georgemichael@yahoo.com', N'4842073965', CAST(N'2021-09-22T00:00:00.000' AS DateTime), CAST(N'2025-10-08T00:00:00.000' AS DateTime), 2, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.383' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (96, N'EMP96', N'password', N'Teresa Haynes', N'melissa96@yahoo.com', N'8493363482', CAST(N'2024-12-10T00:00:00.000' AS DateTime), CAST(N'2026-01-27T00:00:00.000' AS DateTime), 3, 2, 2, 1, 2, CAST(N'2025-07-18T17:16:07.383' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (97, N'EMP97', N'password', N'Katie Mckenzie', N'jonathon47@hotmail.com', N'3471039140', CAST(N'2022-01-07T00:00:00.000' AS DateTime), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 1, 1, 3, 1, 3, CAST(N'2025-07-18T17:16:07.387' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (98, N'EMP98', N'password', N'Debra Craig', N'lawsonsarah@rivers-young.info', N'5196102098', CAST(N'2023-10-22T00:00:00.000' AS DateTime), CAST(N'2024-08-22T00:00:00.000' AS DateTime), 4, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.387' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (99, N'EMP99', N'password', N'Robert Crawford', N'owillis@brown.com', N'8164593052', CAST(N'2024-08-20T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), 3, 2, 3, 1, 1, CAST(N'2025-07-18T17:16:07.387' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (100, N'EMP100', N'password', N'Debra Brewer', N'rachaelhunt@hotmail.com', N'9762962191', CAST(N'2021-05-23T00:00:00.000' AS DateTime), CAST(N'2025-01-04T00:00:00.000' AS DateTime), 5, 2, 1, 1, 2, CAST(N'2025-07-18T17:16:07.390' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (101, N'EMP101', N'password', N'Richard Reid', N'williamsalexis@beasley.biz', N'0521693036', CAST(N'2023-12-09T00:00:00.000' AS DateTime), CAST(N'2024-07-01T00:00:00.000' AS DateTime), 4, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.390' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (102, N'EMP102', N'password', N'Michele Russell', N'jjohns@pugh.com', N'9744436008', CAST(N'2021-11-09T00:00:00.000' AS DateTime), CAST(N'2023-01-20T00:00:00.000' AS DateTime), 5, 4, 1, 3, 2, CAST(N'2025-07-18T17:16:07.390' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (103, N'EMP103', N'password', N'Katie Mays', N'adam52@lane-brown.com', N'4757788115', CAST(N'2025-02-25T00:00:00.000' AS DateTime), CAST(N'2026-03-04T00:00:00.000' AS DateTime), 6, 4, 3, 2, 3, CAST(N'2025-07-18T17:16:07.393' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (104, N'EMP104', N'password', N'Kelly Knox', N'gpoole@hernandez-jones.com', N'6911849457', CAST(N'2024-07-06T00:00:00.000' AS DateTime), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 3, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.393' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (105, N'EMP105', N'password', N'Richard Johnson', N'matthew80@gmail.com', N'7156938088', CAST(N'2023-08-05T00:00:00.000' AS DateTime), CAST(N'2023-10-05T00:00:00.000' AS DateTime), 2, 2, 1, 2, 3, CAST(N'2025-07-18T17:16:07.393' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (106, N'EMP106', N'password', N'Catherine Adams', N'psmith@gmail.com', N'5207826497', CAST(N'2022-01-06T00:00:00.000' AS DateTime), CAST(N'2025-10-09T00:00:00.000' AS DateTime), 6, 3, 2, 1, 3, CAST(N'2025-07-18T17:16:07.397' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (107, N'EMP107', N'password', N'Garrett Jordan', N'xmyers@phillips-lewis.com', N'7395925324', CAST(N'2021-07-08T00:00:00.000' AS DateTime), CAST(N'2025-04-26T00:00:00.000' AS DateTime), 2, 3, 3, 1, 2, CAST(N'2025-07-18T17:16:07.397' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (108, N'EMP108', N'password', N'Michael Burke', N'fernandezrebecca@price-hunt.com', N'5003392871', CAST(N'2024-09-05T00:00:00.000' AS DateTime), CAST(N'2025-07-28T00:00:00.000' AS DateTime), 5, 3, 3, 3, 2, CAST(N'2025-07-18T17:16:07.397' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (109, N'EMP109', N'password', N'Sarah Newton', N'boyerdarin@gmail.com', N'2498748675', CAST(N'2021-04-26T00:00:00.000' AS DateTime), CAST(N'2025-08-15T00:00:00.000' AS DateTime), 1, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.400' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (110, N'EMP110', N'password', N'Sarah Aguilar MD', N'andrewkramer@collins.com', N'4422932234', CAST(N'2022-11-06T00:00:00.000' AS DateTime), CAST(N'2023-09-19T00:00:00.000' AS DateTime), 2, 2, 1, 2, 1, CAST(N'2025-07-18T17:16:07.400' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (111, N'EMP111', N'password', N'Steven Beck', N'monicasmith@barrett.com', N'9493023906', CAST(N'2025-02-14T00:00:00.000' AS DateTime), CAST(N'2025-03-17T00:00:00.000' AS DateTime), 4, 3, 1, 1, 3, CAST(N'2025-07-18T17:16:07.400' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (112, N'EMP112', N'password', N'Tiffany Santiago', N'elizabeth73@hotmail.com', N'3157458943', CAST(N'2021-02-05T00:00:00.000' AS DateTime), CAST(N'2022-08-03T00:00:00.000' AS DateTime), 4, 3, 3, 2, 3, CAST(N'2025-07-18T17:16:07.403' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (113, N'EMP113', N'password', N'Troy Kerr', N'jenniferhardin@thomas-green.net', N'2147568056', CAST(N'2025-02-22T00:00:00.000' AS DateTime), CAST(N'2026-05-10T00:00:00.000' AS DateTime), 5, 1, 3, 1, 3, CAST(N'2025-07-18T17:16:07.403' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (114, N'EMP114', N'password', N'Andrew Jensen', N'taylormyers@gmail.com', N'8618720333', CAST(N'2023-12-31T00:00:00.000' AS DateTime), CAST(N'2024-04-17T00:00:00.000' AS DateTime), 5, 1, 3, 2, 1, CAST(N'2025-07-18T17:16:07.403' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (115, N'EMP115', N'password', N'Kimberly Fox', N'gdavis@anderson.org', N'9647905530', CAST(N'2024-12-12T00:00:00.000' AS DateTime), CAST(N'2026-05-25T00:00:00.000' AS DateTime), 3, 4, 2, 2, 3, CAST(N'2025-07-18T17:16:07.407' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (116, N'EMP116', N'password', N'Adam Young', N'munozmary@yahoo.com', N'5419175991', CAST(N'2022-08-01T00:00:00.000' AS DateTime), CAST(N'2026-03-24T00:00:00.000' AS DateTime), 5, 2, 1, 3, 1, CAST(N'2025-07-18T17:16:07.407' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (117, N'EMP117', N'password', N'Douglas Holmes', N'darrellmorris@hotmail.com', N'5334866602', CAST(N'2021-11-10T00:00:00.000' AS DateTime), CAST(N'2026-05-04T00:00:00.000' AS DateTime), 6, 2, 2, 3, 3, CAST(N'2025-07-18T17:16:07.410' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (118, N'EMP118', N'password', N'Lance Bell', N'nbaker@david.info', N'2047915117', CAST(N'2020-10-18T00:00:00.000' AS DateTime), CAST(N'2025-10-23T00:00:00.000' AS DateTime), 3, 3, 1, 2, 2, CAST(N'2025-07-18T17:16:07.410' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (119, N'EMP119', N'password', N'Roberto Mclaughlin', N'omartin@gmail.com', N'7303292299', CAST(N'2022-12-02T00:00:00.000' AS DateTime), CAST(N'2023-04-29T00:00:00.000' AS DateTime), 3, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.410' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (120, N'EMP120', N'password', N'John Deleon', N'ericksondonald@yahoo.com', N'5546604331', CAST(N'2024-12-27T00:00:00.000' AS DateTime), CAST(N'2025-06-10T00:00:00.000' AS DateTime), 2, 2, 1, 2, 3, CAST(N'2025-07-18T17:16:07.413' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (121, N'EMP121', N'password', N'William Smith', N'jlane@gmail.com', N'9863417434', CAST(N'2021-10-10T00:00:00.000' AS DateTime), CAST(N'2025-08-07T00:00:00.000' AS DateTime), 3, 1, 1, 2, 2, CAST(N'2025-07-18T17:16:07.413' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (122, N'EMP122', N'password', N'Vincent West', N'kmcdonald@hotmail.com', N'2041643774', CAST(N'2024-10-09T00:00:00.000' AS DateTime), CAST(N'2025-05-05T00:00:00.000' AS DateTime), 2, 4, 3, 3, 1, CAST(N'2025-07-18T17:16:07.413' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (123, N'EMP123', N'password', N'Carolyn Smith', N'jeanette10@yahoo.com', N'5935621357', CAST(N'2024-03-06T00:00:00.000' AS DateTime), CAST(N'2026-01-12T00:00:00.000' AS DateTime), 6, 2, 2, 2, 1, CAST(N'2025-07-18T17:16:07.417' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (124, N'EMP124', N'password', N'Kevin Downs', N'codyherring@hotmail.com', N'7361604924', CAST(N'2025-04-15T00:00:00.000' AS DateTime), CAST(N'2026-01-02T00:00:00.000' AS DateTime), 5, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.417' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (125, N'EMP125', N'password', N'Charles Davis', N'pbradford@yahoo.com', N'4827601015', CAST(N'2021-07-09T00:00:00.000' AS DateTime), CAST(N'2025-10-12T00:00:00.000' AS DateTime), 1, 4, 1, 1, 1, CAST(N'2025-07-18T17:16:07.420' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (126, N'EMP126', N'password', N'Stacy Garcia', N'sanchezmary@hotmail.com', N'7227427908', CAST(N'2021-05-25T00:00:00.000' AS DateTime), CAST(N'2024-01-12T00:00:00.000' AS DateTime), 5, 2, 3, 2, 1, CAST(N'2025-07-18T17:16:07.420' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (127, N'EMP127', N'password', N'Randy Clark', N'stevenwheeler@hotmail.com', N'2609693458', CAST(N'2022-09-11T00:00:00.000' AS DateTime), CAST(N'2024-02-28T00:00:00.000' AS DateTime), 6, 3, 1, 2, 2, CAST(N'2025-07-18T17:16:07.420' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (128, N'EMP128', N'password', N'Christopher Koch', N'dawn57@hotmail.com', N'3017823695', CAST(N'2024-09-21T00:00:00.000' AS DateTime), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 1, 1, 3, 3, 2, CAST(N'2025-07-18T17:16:07.420' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (129, N'EMP129', N'password', N'Rebecca Wiley', N'gonzalezjames@yahoo.com', N'1886943160', CAST(N'2020-07-25T00:00:00.000' AS DateTime), CAST(N'2022-03-31T00:00:00.000' AS DateTime), 5, 3, 3, 1, 3, CAST(N'2025-07-18T17:16:07.423' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (130, N'EMP130', N'password', N'Sandra Camacho', N'spadilla@yahoo.com', N'0156663476', CAST(N'2022-12-30T00:00:00.000' AS DateTime), CAST(N'2025-11-10T00:00:00.000' AS DateTime), 6, 3, 1, 2, 2, CAST(N'2025-07-18T17:16:07.423' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (131, N'EMP131', N'password', N'Mr. Roger Hardin', N'terry54@yahoo.com', N'5067741353', CAST(N'2023-06-04T00:00:00.000' AS DateTime), CAST(N'2024-02-01T00:00:00.000' AS DateTime), 6, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.427' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (132, N'EMP132', N'password', N'Steven Wiley', N'sherryjohnson@mayo.biz', N'2467480272', CAST(N'2022-12-12T00:00:00.000' AS DateTime), CAST(N'2026-01-24T00:00:00.000' AS DateTime), 4, 4, 2, 1, 2, CAST(N'2025-07-18T17:16:07.427' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (133, N'EMP133', N'password', N'Elizabeth Johnson', N'kathleen10@hotmail.com', N'3748361600', CAST(N'2023-01-18T00:00:00.000' AS DateTime), CAST(N'2024-05-11T00:00:00.000' AS DateTime), 3, 1, 1, 1, 2, CAST(N'2025-07-18T17:16:07.427' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (134, N'EMP134', N'password', N'Andrew Williams', N'lbanks@smith.net', N'1119131761', CAST(N'2024-10-21T00:00:00.000' AS DateTime), CAST(N'2026-05-08T00:00:00.000' AS DateTime), 3, 1, 3, 3, 3, CAST(N'2025-07-18T17:16:07.430' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (135, N'EMP135', N'password', N'Kimberly Taylor', N'fdixon@hotmail.com', N'8316585898', CAST(N'2025-05-10T00:00:00.000' AS DateTime), CAST(N'2025-07-20T00:00:00.000' AS DateTime), 5, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.430' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (136, N'EMP136', N'password', N'Jared Waters', N'sherri85@gmail.com', N'0243221772', CAST(N'2020-11-20T00:00:00.000' AS DateTime), CAST(N'2022-05-08T00:00:00.000' AS DateTime), 5, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.430' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (137, N'EMP137', N'password', N'Heather Burgess', N'shawtroy@king.com', N'6146850536', CAST(N'2022-11-03T00:00:00.000' AS DateTime), CAST(N'2026-02-24T00:00:00.000' AS DateTime), 2, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.433' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (138, N'EMP138', N'password', N'Tamara Williams', N'forbesdeborah@gmail.com', N'3245812739', CAST(N'2024-01-05T00:00:00.000' AS DateTime), CAST(N'2025-03-22T00:00:00.000' AS DateTime), 1, 4, 1, 1, 2, CAST(N'2025-07-18T17:16:07.433' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (139, N'EMP139', N'password', N'Meghan Scott', N'markwu@aguilar.com', N'7879955510', CAST(N'2024-08-15T00:00:00.000' AS DateTime), CAST(N'2026-06-21T00:00:00.000' AS DateTime), 2, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.437' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (140, N'EMP140', N'password', N'Miranda Gross', N'estradasarah@hotmail.com', N'6622667341', CAST(N'2023-02-06T00:00:00.000' AS DateTime), CAST(N'2026-04-14T00:00:00.000' AS DateTime), 4, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.437' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (141, N'EMP141', N'password', N'Zachary Wright', N'aimee65@hotmail.com', N'7714954446', CAST(N'2024-10-17T00:00:00.000' AS DateTime), CAST(N'2026-03-02T00:00:00.000' AS DateTime), 3, 1, 2, 1, 1, CAST(N'2025-07-18T17:16:07.437' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (142, N'EMP142', N'password', N'Kathryn Henderson', N'sanfordrobert@gmail.com', N'0076858787', CAST(N'2022-02-11T00:00:00.000' AS DateTime), CAST(N'2022-04-29T00:00:00.000' AS DateTime), 3, 1, 2, 2, 1, CAST(N'2025-07-18T17:16:07.440' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (143, N'EMP143', N'password', N'Christine Jordan', N'martincatherine@anderson.info', N'7475830584', CAST(N'2021-05-11T00:00:00.000' AS DateTime), CAST(N'2023-12-19T00:00:00.000' AS DateTime), 1, 2, 2, 1, 3, CAST(N'2025-07-18T17:16:07.440' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (144, N'EMP144', N'password', N'Kathy Thomas', N'bradleyburns@gmail.com', N'2792941452', CAST(N'2023-05-07T00:00:00.000' AS DateTime), CAST(N'2023-10-14T00:00:00.000' AS DateTime), 2, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.440' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (145, N'EMP145', N'password', N'Lori Rodriguez', N'henry07@yahoo.com', N'3164767626', CAST(N'2022-10-26T00:00:00.000' AS DateTime), CAST(N'2023-02-14T00:00:00.000' AS DateTime), 6, 1, 3, 1, 2, CAST(N'2025-07-18T17:16:07.440' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (146, N'EMP146', N'password', N'Julie Cox', N'john72@hotmail.com', N'3721899752', CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2024-05-16T00:00:00.000' AS DateTime), 3, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.443' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (147, N'EMP147', N'password', N'Yvonne Rodriguez', N'kyle03@hotmail.com', N'2282731841', CAST(N'2023-11-14T00:00:00.000' AS DateTime), CAST(N'2025-11-03T00:00:00.000' AS DateTime), 2, 4, 1, 2, 2, CAST(N'2025-07-18T17:16:07.447' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (148, N'EMP148', N'password', N'Mr. Charles Morse', N'conleycathy@campbell.org', N'3462874526', CAST(N'2021-04-09T00:00:00.000' AS DateTime), CAST(N'2023-01-25T00:00:00.000' AS DateTime), 6, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.447' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (149, N'EMP149', N'password', N'Ruth Miranda', N'riveraroger@yahoo.com', N'0252733127', CAST(N'2022-06-15T00:00:00.000' AS DateTime), CAST(N'2022-12-20T00:00:00.000' AS DateTime), 3, 3, 2, 2, 2, CAST(N'2025-07-18T17:16:07.447' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (150, N'EMP150', N'password', N'Curtis Jensen', N'ldalton@hotmail.com', N'8440992438', CAST(N'2024-04-13T00:00:00.000' AS DateTime), CAST(N'2025-01-08T00:00:00.000' AS DateTime), 5, 3, 1, 3, 1, CAST(N'2025-07-18T17:16:07.453' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (151, N'EMP151', N'password', N'Jesse Mcgrath', N'ystewart@yahoo.com', N'5728072018', CAST(N'2021-01-03T00:00:00.000' AS DateTime), CAST(N'2023-09-27T00:00:00.000' AS DateTime), 1, 3, 1, 2, 1, CAST(N'2025-07-18T17:16:07.457' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (152, N'EMP152', N'password', N'Mary Cannon', N'jessicajacobson@moses-downs.net', N'6360939070', CAST(N'2021-01-30T00:00:00.000' AS DateTime), CAST(N'2026-01-02T00:00:00.000' AS DateTime), 2, 2, 2, 3, 1, CAST(N'2025-07-18T17:16:07.457' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (153, N'EMP153', N'password', N'Tara Snow', N'nicole75@hotmail.com', N'7548478565', CAST(N'2022-05-13T00:00:00.000' AS DateTime), CAST(N'2025-12-09T00:00:00.000' AS DateTime), 2, 2, 2, 2, 2, CAST(N'2025-07-18T17:16:07.460' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (154, N'EMP154', N'password', N'Julie Evans', N'samanthawhite@gmail.com', N'9314882927', CAST(N'2024-03-26T00:00:00.000' AS DateTime), CAST(N'2025-01-05T00:00:00.000' AS DateTime), 6, 1, 1, 3, 1, CAST(N'2025-07-18T17:16:07.460' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (155, N'EMP155', N'password', N'Todd Black', N'warebrittany@hart.com', N'1167259839', CAST(N'2024-04-26T00:00:00.000' AS DateTime), CAST(N'2025-07-15T00:00:00.000' AS DateTime), 4, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.460' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (156, N'EMP156', N'password', N'Jason Gay', N'gregorywatts@sparks-nguyen.info', N'8116003563', CAST(N'2021-08-05T00:00:00.000' AS DateTime), CAST(N'2024-05-20T00:00:00.000' AS DateTime), 4, 3, 3, 2, 3, CAST(N'2025-07-18T17:16:07.460' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (157, N'EMP157', N'password', N'Lawrence Phillips', N'coopergary@gmail.com', N'7092289571', CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2023-01-27T00:00:00.000' AS DateTime), 2, 4, 2, 3, 2, CAST(N'2025-07-18T17:16:07.463' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (158, N'EMP158', N'password', N'Alexander Stein', N'lindsayturner@lawson-burns.info', N'9526042921', CAST(N'2025-01-31T00:00:00.000' AS DateTime), CAST(N'2026-06-13T00:00:00.000' AS DateTime), 1, 2, 2, 3, 2, CAST(N'2025-07-18T17:16:07.463' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (159, N'EMP159', N'password', N'Susan Underwood', N'heatherhoffman@hotmail.com', N'1131373065', CAST(N'2022-09-10T00:00:00.000' AS DateTime), CAST(N'2024-07-29T00:00:00.000' AS DateTime), 6, 1, 2, 2, 1, CAST(N'2025-07-18T17:16:07.467' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (160, N'EMP160', N'password', N'Nicole Rush', N'ohamilton@hotmail.com', N'0896539542', CAST(N'2021-07-21T00:00:00.000' AS DateTime), CAST(N'2024-07-20T00:00:00.000' AS DateTime), 4, 3, 2, 1, 2, CAST(N'2025-07-18T17:16:07.467' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (161, N'EMP161', N'password', N'Brittany Cain', N'ejohnson@house.com', N'9381357891', CAST(N'2020-12-14T00:00:00.000' AS DateTime), CAST(N'2024-09-04T00:00:00.000' AS DateTime), 3, 4, 1, 1, 1, CAST(N'2025-07-18T17:16:07.467' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (162, N'EMP162', N'password', N'Cindy Brown', N'banksbrooke@vasquez.com', N'9912580954', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-03-05T00:00:00.000' AS DateTime), 3, 1, 3, 3, 3, CAST(N'2025-07-18T17:16:07.470' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (163, N'EMP163', N'password', N'Heather Murphy', N'lori49@gmail.com', N'0096063697', CAST(N'2025-05-31T00:00:00.000' AS DateTime), CAST(N'2026-05-18T00:00:00.000' AS DateTime), 2, 4, 2, 1, 2, CAST(N'2025-07-18T17:16:07.470' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (164, N'EMP164', N'password', N'Maria Smith', N'andersonpatrick@gross.net', N'0066426056', CAST(N'2023-07-28T00:00:00.000' AS DateTime), CAST(N'2026-02-07T00:00:00.000' AS DateTime), 4, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.470' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (165, N'EMP165', N'password', N'Andrew Vasquez', N'matthewluna@gonzalez.com', N'4229640619', CAST(N'2022-06-06T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), 5, 2, 2, 2, 3, CAST(N'2025-07-18T17:16:07.473' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (166, N'EMP166', N'password', N'Betty Welch', N'schneideralicia@gmail.com', N'7391812240', CAST(N'2025-01-13T00:00:00.000' AS DateTime), CAST(N'2026-05-08T00:00:00.000' AS DateTime), 6, 1, 2, 1, 2, CAST(N'2025-07-18T17:16:07.473' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (167, N'EMP167', N'password', N'Kimberly Scott', N'bradleyrobinson@yahoo.com', N'6039435147', CAST(N'2022-10-17T00:00:00.000' AS DateTime), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 1, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.473' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (168, N'EMP168', N'password', N'Dustin Rangel', N'tiffanygonzalez@gray.com', N'6080861438', CAST(N'2024-10-17T00:00:00.000' AS DateTime), CAST(N'2025-09-09T00:00:00.000' AS DateTime), 2, 3, 1, 3, 2, CAST(N'2025-07-18T17:16:07.477' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (169, N'EMP169', N'password', N'Heather Hernandez', N'jessica42@lam-wright.net', N'1735645127', CAST(N'2021-01-27T00:00:00.000' AS DateTime), CAST(N'2024-12-28T00:00:00.000' AS DateTime), 5, 2, 2, 3, 2, CAST(N'2025-07-18T17:16:07.477' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (170, N'EMP170', N'password', N'John Underwood', N'cthomas@yahoo.com', N'7921163416', CAST(N'2020-10-21T00:00:00.000' AS DateTime), CAST(N'2025-08-14T00:00:00.000' AS DateTime), 1, 4, 1, 3, 2, CAST(N'2025-07-18T17:16:07.477' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (171, N'EMP171', N'password', N'William Gutierrez', N'paigesanchez@hotmail.com', N'1892457836', CAST(N'2022-02-17T00:00:00.000' AS DateTime), CAST(N'2025-01-13T00:00:00.000' AS DateTime), 3, 1, 1, 2, 3, CAST(N'2025-07-18T17:16:07.480' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (172, N'EMP172', N'password', N'Matthew Johnson', N'palmercatherine@garcia.net', N'7897459130', CAST(N'2023-06-08T00:00:00.000' AS DateTime), CAST(N'2024-05-14T00:00:00.000' AS DateTime), 1, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.480' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (173, N'EMP173', N'password', N'Sue Green PhD', N'clloyd@davis.com', N'7055355563', CAST(N'2025-02-13T00:00:00.000' AS DateTime), CAST(N'2025-10-10T00:00:00.000' AS DateTime), 5, 4, 2, 1, 3, CAST(N'2025-07-18T17:16:07.480' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (174, N'EMP174', N'password', N'Larry Gardner', N'andrew21@williams.com', N'5391365401', CAST(N'2022-05-12T00:00:00.000' AS DateTime), CAST(N'2023-01-16T00:00:00.000' AS DateTime), 3, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.483' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (175, N'EMP175', N'password', N'Jodi Moore', N'ashleyfrazier@davis.com', N'7449585798', CAST(N'2022-05-09T00:00:00.000' AS DateTime), CAST(N'2026-06-12T00:00:00.000' AS DateTime), 5, 1, 1, 1, 2, CAST(N'2025-07-18T17:16:07.483' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (176, N'EMP176', N'password', N'Charles Williams', N'cchavez@smith-jensen.net', N'8329484698', CAST(N'2025-05-13T00:00:00.000' AS DateTime), CAST(N'2025-11-21T00:00:00.000' AS DateTime), 3, 3, 1, 3, 1, CAST(N'2025-07-18T17:16:07.483' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (177, N'EMP177', N'password', N'Deborah Bates', N'ashley48@chavez-garcia.org', N'5165015918', CAST(N'2020-09-11T00:00:00.000' AS DateTime), CAST(N'2020-11-06T00:00:00.000' AS DateTime), 2, 1, 2, 2, 2, CAST(N'2025-07-18T17:16:07.487' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (178, N'EMP178', N'password', N'Joel Black', N'ryang@turner.biz', N'7450999415', CAST(N'2024-06-03T00:00:00.000' AS DateTime), CAST(N'2024-12-23T00:00:00.000' AS DateTime), 5, 2, 3, 3, 3, CAST(N'2025-07-18T17:16:07.487' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (179, N'EMP179', N'password', N'Diana Rangel', N'andreagibson@alvarez-miller.com', N'4555065247', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2024-06-21T00:00:00.000' AS DateTime), 2, 1, 2, 3, 3, CAST(N'2025-07-18T17:16:07.487' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (180, N'EMP180', N'password', N'Norma Sims', N'maria79@howard.com', N'7072353106', CAST(N'2020-11-08T00:00:00.000' AS DateTime), CAST(N'2023-08-12T00:00:00.000' AS DateTime), 4, 3, 2, 2, 2, CAST(N'2025-07-18T17:16:07.490' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (181, N'EMP181', N'password', N'Adam Coffey', N'stevendominguez@ross.com', N'4689415795', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2025-05-13T00:00:00.000' AS DateTime), 5, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.490' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (182, N'EMP182', N'password', N'Joseph Smith', N'brad31@hotmail.com', N'0852397876', CAST(N'2022-01-02T00:00:00.000' AS DateTime), CAST(N'2022-05-01T00:00:00.000' AS DateTime), 1, 4, 2, 3, 2, CAST(N'2025-07-18T17:16:07.490' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (183, N'EMP183', N'password', N'Michael Sweeney', N'jeremy00@hotmail.com', N'2959200829', CAST(N'2021-10-29T00:00:00.000' AS DateTime), CAST(N'2026-06-26T00:00:00.000' AS DateTime), 2, 3, 2, 3, 2, CAST(N'2025-07-18T17:16:07.493' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (184, N'EMP184', N'password', N'James Wood', N'youngsamantha@yahoo.com', N'5195516359', CAST(N'2025-01-01T00:00:00.000' AS DateTime), CAST(N'2025-05-25T00:00:00.000' AS DateTime), 6, 4, 1, 2, 2, CAST(N'2025-07-18T17:16:07.493' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (185, N'EMP185', N'password', N'Teresa Wagner', N'bonnie89@jensen.com', N'4726651524', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2024-05-30T00:00:00.000' AS DateTime), 6, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.493' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (186, N'EMP186', N'password', N'Debra Bates', N'mrasmussen@perkins.biz', N'0520769106', CAST(N'2024-03-16T00:00:00.000' AS DateTime), CAST(N'2024-03-20T00:00:00.000' AS DateTime), 4, 3, 1, 3, 2, CAST(N'2025-07-18T17:16:07.497' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (187, N'EMP187', N'password', N'Lisa Powell', N'zgreene@yahoo.com', N'4225189729', CAST(N'2022-09-18T00:00:00.000' AS DateTime), CAST(N'2022-10-15T00:00:00.000' AS DateTime), 1, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.497' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (188, N'EMP188', N'password', N'Judith Townsend', N'william34@hotmail.com', N'7243504963', CAST(N'2023-11-01T00:00:00.000' AS DateTime), CAST(N'2024-05-25T00:00:00.000' AS DateTime), 4, 1, 3, 1, 3, CAST(N'2025-07-18T17:16:07.497' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (189, N'EMP189', N'password', N'Miranda Reid', N'rachelprice@booth.info', N'0966542474', CAST(N'2024-06-21T00:00:00.000' AS DateTime), CAST(N'2026-03-10T00:00:00.000' AS DateTime), 1, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.500' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (190, N'EMP190', N'password', N'Christina White', N'doylemarie@yahoo.com', N'8461442234', CAST(N'2022-04-27T00:00:00.000' AS DateTime), CAST(N'2026-01-12T00:00:00.000' AS DateTime), 1, 1, 2, 3, 3, CAST(N'2025-07-18T17:16:07.500' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (191, N'EMP191', N'password', N'Rebecca Brown', N'bailey42@ramirez.com', N'4598841880', CAST(N'2024-08-28T00:00:00.000' AS DateTime), CAST(N'2026-05-07T00:00:00.000' AS DateTime), 3, 2, 1, 3, 2, CAST(N'2025-07-18T17:16:07.500' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (192, N'EMP192', N'password', N'Michael Solis', N'qhenderson@watkins.net', N'2002650558', CAST(N'2025-02-15T00:00:00.000' AS DateTime), CAST(N'2025-05-12T00:00:00.000' AS DateTime), 2, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.503' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (193, N'EMP193', N'password', N'Juan Clark', N'blakelam@gmail.com', N'3691635112', CAST(N'2022-05-17T00:00:00.000' AS DateTime), CAST(N'2026-04-04T00:00:00.000' AS DateTime), 3, 4, 1, 2, 2, CAST(N'2025-07-18T17:16:07.503' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (194, N'EMP194', N'password', N'Jessica Mathews', N'robert38@burnett.com', N'4837939091', CAST(N'2020-11-10T00:00:00.000' AS DateTime), CAST(N'2021-09-16T00:00:00.000' AS DateTime), 6, 4, 1, 2, 3, CAST(N'2025-07-18T17:16:07.503' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (195, N'EMP195', N'password', N'Brian Campbell', N'nancyturner@brown.com', N'2320907788', CAST(N'2022-05-23T00:00:00.000' AS DateTime), CAST(N'2025-01-15T00:00:00.000' AS DateTime), 2, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.507' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (196, N'EMP196', N'password', N'Evelyn Moran', N'phayes@green-mendoza.info', N'9396564622', CAST(N'2021-06-23T00:00:00.000' AS DateTime), CAST(N'2023-06-21T00:00:00.000' AS DateTime), 4, 3, 2, 2, 2, CAST(N'2025-07-18T17:16:07.507' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (197, N'EMP197', N'password', N'Haley Villarreal', N'torresmolly@gmail.com', N'3495050609', CAST(N'2020-12-29T00:00:00.000' AS DateTime), CAST(N'2024-06-15T00:00:00.000' AS DateTime), 4, 2, 1, 2, 1, CAST(N'2025-07-18T17:16:07.510' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (198, N'EMP198', N'password', N'Elizabeth Rivera', N'rrodriguez@williams.com', N'8198039964', CAST(N'2021-07-29T00:00:00.000' AS DateTime), CAST(N'2022-11-24T00:00:00.000' AS DateTime), 5, 1, 2, 1, 1, CAST(N'2025-07-18T17:16:07.510' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (199, N'EMP199', N'password', N'Crystal Hull', N'hharris@hotmail.com', N'1326713312', CAST(N'2022-09-21T00:00:00.000' AS DateTime), CAST(N'2025-04-23T00:00:00.000' AS DateTime), 6, 1, 1, 2, 1, CAST(N'2025-07-18T17:16:07.510' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (200, N'EMP200', N'password', N'Kirsten Tran', N'jackieharmon@gmail.com', N'4697796583', CAST(N'2024-10-22T00:00:00.000' AS DateTime), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 6, 2, 1, 3, 2, CAST(N'2025-07-18T17:16:07.510' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (201, N'EMP201', N'password', N'Roger Sharp', N'ynelson@morris-flores.com', N'4431368253', CAST(N'2022-11-17T00:00:00.000' AS DateTime), CAST(N'2025-02-06T00:00:00.000' AS DateTime), 5, 1, 3, 3, 2, CAST(N'2025-07-18T17:16:07.513' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (202, N'EMP202', N'password', N'Jenna Jones', N'kfrazier@hotmail.com', N'8440663092', CAST(N'2023-05-18T00:00:00.000' AS DateTime), CAST(N'2025-03-11T00:00:00.000' AS DateTime), 3, 4, 2, 1, 3, CAST(N'2025-07-18T17:16:07.513' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (203, N'EMP203', N'password', N'Jamie Adams', N'solomonaustin@hotmail.com', N'2562847314', CAST(N'2022-08-21T00:00:00.000' AS DateTime), CAST(N'2023-03-17T00:00:00.000' AS DateTime), 6, 4, 3, 2, 2, CAST(N'2025-07-18T17:16:07.517' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (204, N'EMP204', N'password', N'Mitchell Ramos', N'jameslindsey@hotmail.com', N'0208651507', CAST(N'2023-10-01T00:00:00.000' AS DateTime), CAST(N'2023-12-31T00:00:00.000' AS DateTime), 3, 4, 1, 2, 2, CAST(N'2025-07-18T17:16:07.517' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (205, N'EMP205', N'password', N'Jerry Freeman', N'daltonzachary@robinson.net', N'5439054199', CAST(N'2020-09-26T00:00:00.000' AS DateTime), CAST(N'2024-10-20T00:00:00.000' AS DateTime), 1, 1, 1, 1, 2, CAST(N'2025-07-18T17:16:07.517' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (206, N'EMP206', N'password', N'Jeffrey Thompson', N'russellmarquez@schaefer.org', N'0309547944', CAST(N'2021-08-27T00:00:00.000' AS DateTime), CAST(N'2022-03-22T00:00:00.000' AS DateTime), 1, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.520' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (207, N'EMP207', N'password', N'Kimberly Colon', N'frankperry@king.net', N'8161967117', CAST(N'2024-01-06T00:00:00.000' AS DateTime), CAST(N'2026-05-27T00:00:00.000' AS DateTime), 1, 4, 3, 1, 3, CAST(N'2025-07-18T17:16:07.520' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (208, N'EMP208', N'password', N'Hailey Ramirez', N'dicksonashley@ellison.net', N'3786288034', CAST(N'2021-01-04T00:00:00.000' AS DateTime), CAST(N'2025-05-18T00:00:00.000' AS DateTime), 4, 2, 2, 1, 2, CAST(N'2025-07-18T17:16:07.520' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (209, N'EMP209', N'password', N'Nicholas Cruz', N'colleenwall@phillips-williams.biz', N'2156346859', CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2025-03-12T00:00:00.000' AS DateTime), 5, 1, 3, 1, 2, CAST(N'2025-07-18T17:16:07.523' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (210, N'EMP210', N'password', N'James Wolf', N'veronica83@hotmail.com', N'7334227301', CAST(N'2024-02-20T00:00:00.000' AS DateTime), CAST(N'2024-04-02T00:00:00.000' AS DateTime), 3, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.523' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (211, N'EMP211', N'password', N'Dwayne Aguirre', N'bradleykenneth@yahoo.com', N'9517539901', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2024-05-29T00:00:00.000' AS DateTime), 5, 1, 1, 2, 1, CAST(N'2025-07-18T17:16:07.523' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (212, N'EMP212', N'password', N'Patricia Jones', N'tylerburns@hotmail.com', N'8722087165', CAST(N'2023-06-09T00:00:00.000' AS DateTime), CAST(N'2025-05-16T00:00:00.000' AS DateTime), 2, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.527' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (213, N'EMP213', N'password', N'Michelle Byrd', N'mooretiffany@hotmail.com', N'6907174785', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2024-01-22T00:00:00.000' AS DateTime), 6, 3, 2, 3, 2, CAST(N'2025-07-18T17:16:07.527' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (214, N'EMP214', N'password', N'Veronica Ford', N'kimberlyolson@yahoo.com', N'4939284120', CAST(N'2024-06-02T00:00:00.000' AS DateTime), CAST(N'2026-02-18T00:00:00.000' AS DateTime), 3, 4, 2, 3, 1, CAST(N'2025-07-18T17:16:07.530' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (215, N'EMP215', N'password', N'Diana Smith', N'kevin00@gmail.com', N'6106793140', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2021-07-06T00:00:00.000' AS DateTime), 1, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.530' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (216, N'EMP216', N'password', N'Trevor Kim', N'johnrobinson@barrett.com', N'1090036407', CAST(N'2021-10-25T00:00:00.000' AS DateTime), CAST(N'2022-06-30T00:00:00.000' AS DateTime), 4, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.530' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (217, N'EMP217', N'password', N'Fernando Boyd', N'annchoi@wright.com', N'6848215612', CAST(N'2020-10-21T00:00:00.000' AS DateTime), CAST(N'2025-08-12T00:00:00.000' AS DateTime), 4, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.533' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (218, N'EMP218', N'password', N'Matthew Armstrong', N'karenbrown@gmail.com', N'3511447016', CAST(N'2021-06-25T00:00:00.000' AS DateTime), CAST(N'2022-08-18T00:00:00.000' AS DateTime), 1, 1, 1, 1, 1, CAST(N'2025-07-18T17:16:07.533' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (219, N'EMP219', N'password', N'Jacqueline Mccall', N'brian64@yahoo.com', N'0275331658', CAST(N'2022-07-12T00:00:00.000' AS DateTime), CAST(N'2026-02-06T00:00:00.000' AS DateTime), 4, 2, 2, 3, 1, CAST(N'2025-07-18T17:16:07.533' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (220, N'EMP220', N'password', N'Donna Thornton', N'garrettjason@hotmail.com', N'7817359559', CAST(N'2021-06-13T00:00:00.000' AS DateTime), CAST(N'2024-02-18T00:00:00.000' AS DateTime), 4, 4, 1, 1, 1, CAST(N'2025-07-18T17:16:07.537' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (221, N'EMP221', N'password', N'James Anderson', N'tmckay@hotmail.com', N'3316323056', CAST(N'2025-03-17T00:00:00.000' AS DateTime), CAST(N'2026-07-10T00:00:00.000' AS DateTime), 4, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.537' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (222, N'EMP222', N'password', N'Christian Howard', N'kevin45@yahoo.com', N'7272685510', CAST(N'2022-04-10T00:00:00.000' AS DateTime), CAST(N'2023-04-24T00:00:00.000' AS DateTime), 3, 4, 1, 3, 2, CAST(N'2025-07-18T17:16:07.540' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (223, N'EMP223', N'password', N'Donna Gilbert', N'jsalas@carr.com', N'3393550440', CAST(N'2023-06-22T00:00:00.000' AS DateTime), CAST(N'2024-03-03T00:00:00.000' AS DateTime), 5, 2, 3, 2, 2, CAST(N'2025-07-18T17:16:07.540' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (224, N'EMP224', N'password', N'Nicholas Hamilton', N'ialvarez@newman.info', N'0380161627', CAST(N'2025-05-30T00:00:00.000' AS DateTime), CAST(N'2026-03-26T00:00:00.000' AS DateTime), 5, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.540' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (225, N'EMP225', N'password', N'Scott Johnson', N'brookemurray@chavez.net', N'8776475998', CAST(N'2020-11-20T00:00:00.000' AS DateTime), CAST(N'2024-09-10T00:00:00.000' AS DateTime), 3, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.543' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (226, N'EMP226', N'password', N'Mr. Jeff Hines', N'quinnsherri@reyes-young.org', N'8395324882', CAST(N'2022-09-21T00:00:00.000' AS DateTime), CAST(N'2024-05-08T00:00:00.000' AS DateTime), 6, 1, 1, 3, 2, CAST(N'2025-07-18T17:16:07.543' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (227, N'EMP227', N'password', N'Luis Wood', N'kelseylowe@yahoo.com', N'1465565640', CAST(N'2022-05-15T00:00:00.000' AS DateTime), CAST(N'2022-10-05T00:00:00.000' AS DateTime), 2, 2, 2, 3, 3, CAST(N'2025-07-18T17:16:07.543' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (228, N'EMP228', N'password', N'James Nielsen', N'prollins@barry.com', N'0341341323', CAST(N'2023-01-13T00:00:00.000' AS DateTime), CAST(N'2026-07-02T00:00:00.000' AS DateTime), 1, 4, 1, 1, 2, CAST(N'2025-07-18T17:16:07.547' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (229, N'EMP229', N'password', N'Cynthia Meyer', N'toddhowell@parker.com', N'8825422564', CAST(N'2024-01-26T00:00:00.000' AS DateTime), CAST(N'2024-10-27T00:00:00.000' AS DateTime), 6, 3, 1, 3, 3, CAST(N'2025-07-18T17:16:07.547' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (230, N'EMP230', N'password', N'Christine Duran', N'ybrown@yahoo.com', N'0575711844', CAST(N'2024-05-30T00:00:00.000' AS DateTime), CAST(N'2024-11-19T00:00:00.000' AS DateTime), 3, 2, 3, 3, 3, CAST(N'2025-07-18T17:16:07.550' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (231, N'EMP231', N'password', N'Jeremy Lucas', N'oweaver@gomez.org', N'8963048839', CAST(N'2024-11-03T00:00:00.000' AS DateTime), CAST(N'2025-09-13T00:00:00.000' AS DateTime), 5, 3, 1, 3, 1, CAST(N'2025-07-18T17:16:07.550' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (232, N'EMP232', N'password', N'Anthony Flores', N'xjennings@romero.org', N'4749834233', CAST(N'2022-11-05T00:00:00.000' AS DateTime), CAST(N'2026-04-28T00:00:00.000' AS DateTime), 1, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.550' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (233, N'EMP233', N'password', N'Thomas Love', N'kramerjames@poole.com', N'2749114300', CAST(N'2023-01-04T00:00:00.000' AS DateTime), CAST(N'2024-05-02T00:00:00.000' AS DateTime), 3, 4, 2, 3, 1, CAST(N'2025-07-18T17:16:07.550' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (234, N'EMP234', N'password', N'Donald Rhodes MD', N'vanessa51@krause.org', N'8548221214', CAST(N'2023-07-27T00:00:00.000' AS DateTime), CAST(N'2025-03-23T00:00:00.000' AS DateTime), 2, 1, 3, 3, 2, CAST(N'2025-07-18T17:16:07.553' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (235, N'EMP235', N'password', N'Tiffany Yang', N'schroederamy@yahoo.com', N'6698831156', CAST(N'2024-09-26T00:00:00.000' AS DateTime), CAST(N'2025-09-19T00:00:00.000' AS DateTime), 3, 1, 1, 2, 1, CAST(N'2025-07-18T17:16:07.553' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (236, N'EMP236', N'password', N'Mathew Estrada', N'xkramer@gmail.com', N'5572840172', CAST(N'2021-11-02T00:00:00.000' AS DateTime), CAST(N'2023-03-14T00:00:00.000' AS DateTime), 2, 1, 1, 1, 2, CAST(N'2025-07-18T17:16:07.557' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (237, N'EMP237', N'password', N'Megan Hickman', N'zjohnson@gomez.com', N'7998199974', CAST(N'2024-08-13T00:00:00.000' AS DateTime), CAST(N'2024-11-13T00:00:00.000' AS DateTime), 5, 2, 1, 3, 1, CAST(N'2025-07-18T17:16:07.557' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (238, N'EMP238', N'password', N'Megan Solis', N'austinnathan@hotmail.com', N'4257365805', CAST(N'2022-04-12T00:00:00.000' AS DateTime), CAST(N'2026-03-02T00:00:00.000' AS DateTime), 2, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.557' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (239, N'EMP239', N'password', N'Patrick Johnston', N'kwoods@yahoo.com', N'3070212831', CAST(N'2025-01-13T00:00:00.000' AS DateTime), CAST(N'2025-01-29T00:00:00.000' AS DateTime), 2, 4, 1, 3, 1, CAST(N'2025-07-18T17:16:07.560' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (240, N'EMP240', N'password', N'Christopher Fisher', N'emmabrown@gmail.com', N'8118191024', CAST(N'2021-10-14T00:00:00.000' AS DateTime), CAST(N'2024-05-31T00:00:00.000' AS DateTime), 5, 3, 2, 2, 2, CAST(N'2025-07-18T17:16:07.560' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (241, N'EMP241', N'password', N'Mrs. Laura Carr', N'kathryn72@yahoo.com', N'3296760929', CAST(N'2020-12-11T00:00:00.000' AS DateTime), CAST(N'2024-08-02T00:00:00.000' AS DateTime), 1, 2, 3, 3, 1, CAST(N'2025-07-18T17:16:07.560' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (242, N'EMP242', N'password', N'Daniel Lozano', N'andrewcole@wade-clark.com', N'7659001997', CAST(N'2024-10-28T00:00:00.000' AS DateTime), CAST(N'2024-11-02T00:00:00.000' AS DateTime), 6, 4, 3, 2, 3, CAST(N'2025-07-18T17:16:07.563' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (243, N'EMP243', N'password', N'Andrew Perez', N'karen65@hotmail.com', N'3350910135', CAST(N'2023-11-15T00:00:00.000' AS DateTime), CAST(N'2025-01-12T00:00:00.000' AS DateTime), 3, 1, 2, 1, 3, CAST(N'2025-07-18T17:16:07.563' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (244, N'EMP244', N'password', N'Regina Gonzales', N'nancymatthews@hotmail.com', N'1592146432', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime), 4, 2, 2, 2, 2, CAST(N'2025-07-18T17:16:07.563' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (245, N'EMP245', N'password', N'Sharon Cabrera', N'jasmine11@gmail.com', N'3273797156', CAST(N'2024-01-11T00:00:00.000' AS DateTime), CAST(N'2026-06-16T00:00:00.000' AS DateTime), 1, 2, 1, 2, 3, CAST(N'2025-07-18T17:16:07.567' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (246, N'EMP246', N'password', N'Susan Fletcher', N'jennifer83@hotmail.com', N'5397069708', CAST(N'2021-12-05T00:00:00.000' AS DateTime), CAST(N'2022-03-03T00:00:00.000' AS DateTime), 6, 2, 2, 2, 3, CAST(N'2025-07-18T17:16:07.567' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (247, N'EMP247', N'password', N'William Henry', N'tblackburn@medina.com', N'7494409541', CAST(N'2024-07-10T00:00:00.000' AS DateTime), CAST(N'2026-05-27T00:00:00.000' AS DateTime), 6, 2, 2, 2, 3, CAST(N'2025-07-18T17:16:07.567' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (248, N'EMP248', N'password', N'Amber Miller', N'jessica11@gmail.com', N'5599708976', CAST(N'2022-07-28T00:00:00.000' AS DateTime), CAST(N'2024-01-31T00:00:00.000' AS DateTime), 2, 3, 1, 2, 3, CAST(N'2025-07-18T17:16:07.570' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (249, N'EMP249', N'password', N'Frank Barnes', N'shafferjoseph@hotmail.com', N'4290643009', CAST(N'2021-10-23T00:00:00.000' AS DateTime), CAST(N'2023-09-19T00:00:00.000' AS DateTime), 5, 1, 3, 3, 1, CAST(N'2025-07-18T17:16:07.570' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (250, N'EMP250', N'password', N'Monica Murphy', N'huntjeffrey@yahoo.com', N'5949434584', CAST(N'2021-06-30T00:00:00.000' AS DateTime), CAST(N'2022-02-24T00:00:00.000' AS DateTime), 3, 1, 2, 3, 1, CAST(N'2025-07-18T17:16:07.570' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (251, N'EMP251', N'password', N'William Thompson', N'michelle87@alexander.com', N'5139749100', CAST(N'2024-02-20T00:00:00.000' AS DateTime), CAST(N'2025-07-02T00:00:00.000' AS DateTime), 1, 2, 1, 1, 1, CAST(N'2025-07-18T17:16:07.573' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (252, N'EMP252', N'password', N'Anna Phillips', N'dibarra@yahoo.com', N'5972830793', CAST(N'2020-11-01T00:00:00.000' AS DateTime), CAST(N'2023-03-31T00:00:00.000' AS DateTime), 6, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.573' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (253, N'EMP253', N'password', N'George Butler', N'abryant@hall.info', N'1549240384', CAST(N'2024-06-11T00:00:00.000' AS DateTime), CAST(N'2024-09-07T00:00:00.000' AS DateTime), 6, 4, 1, 1, 2, CAST(N'2025-07-18T17:16:07.573' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (254, N'EMP254', N'password', N'Katelyn Morris', N'wesley03@cox.com', N'3438064464', CAST(N'2025-07-10T00:00:00.000' AS DateTime), CAST(N'2026-07-14T00:00:00.000' AS DateTime), 4, 2, 2, 2, 1, CAST(N'2025-07-18T17:16:07.577' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (255, N'EMP255', N'password', N'Crystal Castro', N'sandra22@tucker.org', N'8351332248', CAST(N'2023-01-19T00:00:00.000' AS DateTime), CAST(N'2023-11-14T00:00:00.000' AS DateTime), 6, 3, 3, 3, 2, CAST(N'2025-07-18T17:16:07.577' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (256, N'EMP256', N'password', N'Chad Mendoza', N'kathrynprice@bailey.info', N'6676390498', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2024-06-13T00:00:00.000' AS DateTime), 4, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.580' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (257, N'EMP257', N'password', N'Taylor Johnson', N'caseyjohnson@yahoo.com', N'4616653329', CAST(N'2024-05-21T00:00:00.000' AS DateTime), CAST(N'2025-01-05T00:00:00.000' AS DateTime), 5, 4, 1, 3, 1, CAST(N'2025-07-18T17:16:07.580' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (258, N'EMP258', N'password', N'Anne Strickland', N'taylorkevin@hotmail.com', N'8569515701', CAST(N'2022-11-23T00:00:00.000' AS DateTime), CAST(N'2023-06-08T00:00:00.000' AS DateTime), 4, 4, 1, 1, 3, CAST(N'2025-07-18T17:16:07.580' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (259, N'EMP259', N'password', N'Cynthia Bailey', N'brittanyirwin@contreras.com', N'7737864318', CAST(N'2022-11-10T00:00:00.000' AS DateTime), CAST(N'2024-03-15T00:00:00.000' AS DateTime), 2, 2, 1, 2, 1, CAST(N'2025-07-18T17:16:07.583' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (260, N'EMP260', N'password', N'Ralph Schneider', N'dferguson@lopez-burgess.com', N'3239055745', CAST(N'2021-04-08T00:00:00.000' AS DateTime), CAST(N'2023-11-03T00:00:00.000' AS DateTime), 2, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.583' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (261, N'EMP261', N'password', N'Stacy Norris', N'brianna61@hotmail.com', N'0289530181', CAST(N'2023-01-06T00:00:00.000' AS DateTime), CAST(N'2024-05-20T00:00:00.000' AS DateTime), 6, 2, 3, 1, 2, CAST(N'2025-07-18T17:16:07.583' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (262, N'EMP262', N'password', N'Phillip Young', N'ukramer@gmail.com', N'1059204949', CAST(N'2025-03-30T00:00:00.000' AS DateTime), CAST(N'2025-09-12T00:00:00.000' AS DateTime), 5, 1, 3, 3, 2, CAST(N'2025-07-18T17:16:07.587' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (263, N'EMP263', N'password', N'Brenda West', N'christophermcgee@hotmail.com', N'5546530625', CAST(N'2025-01-15T00:00:00.000' AS DateTime), CAST(N'2025-04-24T00:00:00.000' AS DateTime), 6, 2, 3, 3, 1, CAST(N'2025-07-18T17:16:07.587' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (264, N'EMP264', N'password', N'Mr. Jeremy Baldwin', N'mmiller@wilkins.biz', N'8300496233', CAST(N'2024-10-26T00:00:00.000' AS DateTime), CAST(N'2026-06-08T00:00:00.000' AS DateTime), 3, 3, 3, 3, 2, CAST(N'2025-07-18T17:16:07.590' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (265, N'EMP265', N'password', N'Charles Williams', N'irwinadam@wilson.com', N'3568615915', CAST(N'2023-04-25T00:00:00.000' AS DateTime), CAST(N'2023-07-14T00:00:00.000' AS DateTime), 1, 1, 2, 1, 2, CAST(N'2025-07-18T17:16:07.590' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (266, N'EMP266', N'password', N'Anthony Evans', N'danielbenton@jackson-douglas.com', N'1162798788', CAST(N'2020-09-09T00:00:00.000' AS DateTime), CAST(N'2024-10-12T00:00:00.000' AS DateTime), 3, 2, 2, 1, 3, CAST(N'2025-07-18T17:16:07.590' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (267, N'EMP267', N'password', N'Spencer Duncan', N'linda45@wilson-harrell.com', N'8469574007', CAST(N'2022-04-30T00:00:00.000' AS DateTime), CAST(N'2023-05-23T00:00:00.000' AS DateTime), 3, 2, 3, 2, 2, CAST(N'2025-07-18T17:16:07.593' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (268, N'EMP268', N'password', N'Mark Walker', N'ryan77@levy.com', N'3524308668', CAST(N'2023-01-14T00:00:00.000' AS DateTime), CAST(N'2023-05-29T00:00:00.000' AS DateTime), 3, 4, 2, 1, 2, CAST(N'2025-07-18T17:16:07.593' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (269, N'EMP269', N'password', N'Gary Williams', N'rodriguezbrandon@bennett.com', N'7139988032', CAST(N'2022-10-15T00:00:00.000' AS DateTime), CAST(N'2026-06-29T00:00:00.000' AS DateTime), 5, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.593' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (270, N'EMP270', N'password', N'Kurt Combs', N'gleach@wilson.info', N'0904314477', CAST(N'2025-04-09T00:00:00.000' AS DateTime), CAST(N'2026-03-14T00:00:00.000' AS DateTime), 5, 3, 3, 1, 2, CAST(N'2025-07-18T17:16:07.597' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (271, N'EMP271', N'password', N'Elizabeth Wallace', N'barnesjames@hotmail.com', N'9308106533', CAST(N'2020-12-06T00:00:00.000' AS DateTime), CAST(N'2025-02-09T00:00:00.000' AS DateTime), 4, 1, 2, 2, 2, CAST(N'2025-07-18T17:16:07.597' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (272, N'EMP272', N'password', N'Eric Price', N'oriley@gmail.com', N'1205958763', CAST(N'2024-10-28T00:00:00.000' AS DateTime), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 1, 1, 2, 3, 1, CAST(N'2025-07-18T17:16:07.600' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (273, N'EMP273', N'password', N'Mary Forbes', N'maria99@gmail.com', N'4289864291', CAST(N'2024-03-27T00:00:00.000' AS DateTime), CAST(N'2024-03-31T00:00:00.000' AS DateTime), 3, 3, 3, 1, 3, CAST(N'2025-07-18T17:16:07.600' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (274, N'EMP274', N'password', N'Mr. Duane Harris DDS', N'russellkaren@hotmail.com', N'5963500198', CAST(N'2023-05-27T00:00:00.000' AS DateTime), CAST(N'2026-01-26T00:00:00.000' AS DateTime), 5, 3, 2, 2, 1, CAST(N'2025-07-18T17:16:07.600' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (275, N'EMP275', N'password', N'Geoffrey Erickson', N'larrymiller@yahoo.com', N'4269639134', CAST(N'2021-09-20T00:00:00.000' AS DateTime), CAST(N'2024-01-25T00:00:00.000' AS DateTime), 1, 3, 1, 3, 3, CAST(N'2025-07-18T17:16:07.600' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (276, N'EMP276', N'password', N'David Cook', N'rwalsh@shepard.com', N'1147746598', CAST(N'2021-08-12T00:00:00.000' AS DateTime), CAST(N'2025-01-16T00:00:00.000' AS DateTime), 6, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.603' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (277, N'EMP277', N'password', N'Ryan Vargas', N'janetkennedy@gmail.com', N'4452431466', CAST(N'2021-02-17T00:00:00.000' AS DateTime), CAST(N'2025-11-18T00:00:00.000' AS DateTime), 6, 1, 3, 1, 3, CAST(N'2025-07-18T17:16:07.603' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (278, N'EMP278', N'password', N'Jimmy Perkins', N'tayloradrian@yahoo.com', N'4945209420', CAST(N'2024-04-05T00:00:00.000' AS DateTime), CAST(N'2026-04-09T00:00:00.000' AS DateTime), 2, 3, 2, 2, 3, CAST(N'2025-07-18T17:16:07.607' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (279, N'EMP279', N'password', N'Amanda Chambers', N'joshuavargas@yahoo.com', N'1568477759', CAST(N'2021-06-12T00:00:00.000' AS DateTime), CAST(N'2022-02-02T00:00:00.000' AS DateTime), 3, 3, 2, 2, 3, CAST(N'2025-07-18T17:16:07.607' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (280, N'EMP280', N'password', N'Melissa Alexander', N'schaefergregory@hotmail.com', N'8525237621', CAST(N'2021-05-14T00:00:00.000' AS DateTime), CAST(N'2022-08-30T00:00:00.000' AS DateTime), 4, 2, 1, 1, 3, CAST(N'2025-07-18T17:16:07.607' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (281, N'EMP281', N'password', N'Andrew Vazquez', N'lisa29@hotmail.com', N'6780469145', CAST(N'2022-12-30T00:00:00.000' AS DateTime), CAST(N'2024-04-01T00:00:00.000' AS DateTime), 1, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.610' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (282, N'EMP282', N'password', N'Michael Roberts', N'lindseyrodriguez@henderson-evans.com', N'1474264546', CAST(N'2023-03-12T00:00:00.000' AS DateTime), CAST(N'2025-08-24T00:00:00.000' AS DateTime), 6, 4, 3, 3, 2, CAST(N'2025-07-18T17:16:07.610' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (283, N'EMP283', N'password', N'Jessica Padilla', N'gmitchell@white.com', N'1510319580', CAST(N'2024-03-06T00:00:00.000' AS DateTime), CAST(N'2024-09-08T00:00:00.000' AS DateTime), 6, 2, 1, 3, 2, CAST(N'2025-07-18T17:16:07.610' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (284, N'EMP284', N'password', N'Michael Lee', N'mariarangel@gmail.com', N'1071438562', CAST(N'2025-06-28T00:00:00.000' AS DateTime), CAST(N'2026-06-20T00:00:00.000' AS DateTime), 3, 2, 3, 1, 1, CAST(N'2025-07-18T17:16:07.613' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (285, N'EMP285', N'password', N'James Maynard', N'fcarroll@russell.net', N'2925929659', CAST(N'2022-04-20T00:00:00.000' AS DateTime), CAST(N'2024-01-09T00:00:00.000' AS DateTime), 6, 2, 3, 1, 3, CAST(N'2025-07-18T17:16:07.613' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (286, N'EMP286', N'password', N'Jason Padilla', N'rmiller@vargas.com', N'9498101424', CAST(N'2025-05-26T00:00:00.000' AS DateTime), CAST(N'2025-10-20T00:00:00.000' AS DateTime), 6, 4, 2, 2, 2, CAST(N'2025-07-18T17:16:07.613' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (287, N'EMP287', N'password', N'Jeffrey Miller', N'doyleelizabeth@coleman.org', N'1337918387', CAST(N'2023-09-23T00:00:00.000' AS DateTime), CAST(N'2024-10-15T00:00:00.000' AS DateTime), 3, 1, 2, 3, 2, CAST(N'2025-07-18T17:16:07.617' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (288, N'EMP288', N'password', N'Eric Blackwell', N'drobinson@martinez.net', N'8389502181', CAST(N'2023-09-14T00:00:00.000' AS DateTime), CAST(N'2024-07-31T00:00:00.000' AS DateTime), 3, 3, 2, 1, 3, CAST(N'2025-07-18T17:16:07.617' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (289, N'EMP289', N'password', N'Todd Joseph', N'thomasjenkins@moore-conley.com', N'6533362643', CAST(N'2023-06-09T00:00:00.000' AS DateTime), CAST(N'2026-04-10T00:00:00.000' AS DateTime), 4, 2, 1, 3, 1, CAST(N'2025-07-18T17:16:07.620' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (290, N'EMP290', N'password', N'Taylor Johnson', N'ctaylor@martin.biz', N'8227892090', CAST(N'2022-04-07T00:00:00.000' AS DateTime), CAST(N'2025-07-07T00:00:00.000' AS DateTime), 6, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.620' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (291, N'EMP291', N'password', N'Aaron Powell', N'steven57@washington.com', N'7501390164', CAST(N'2022-07-15T00:00:00.000' AS DateTime), CAST(N'2023-12-16T00:00:00.000' AS DateTime), 5, 4, 3, 3, 1, CAST(N'2025-07-18T17:16:07.620' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (292, N'EMP292', N'password', N'Kristen Kelley', N'fpetersen@davenport-gonzales.com', N'3498217966', CAST(N'2021-03-15T00:00:00.000' AS DateTime), CAST(N'2022-01-15T00:00:00.000' AS DateTime), 1, 3, 3, 1, 3, CAST(N'2025-07-18T17:16:07.620' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (293, N'EMP293', N'password', N'Brandon Harris MD', N'vmills@nguyen.com', N'4006507952', CAST(N'2021-12-11T00:00:00.000' AS DateTime), CAST(N'2024-04-14T00:00:00.000' AS DateTime), 2, 3, 3, 3, 2, CAST(N'2025-07-18T17:16:07.623' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (294, N'EMP294', N'password', N'Sandra Taylor', N'isabelguerrero@gmail.com', N'4775023530', CAST(N'2025-06-05T00:00:00.000' AS DateTime), CAST(N'2025-07-03T00:00:00.000' AS DateTime), 1, 2, 3, 1, 2, CAST(N'2025-07-18T17:16:07.623' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (295, N'EMP295', N'password', N'William Preston', N'znelson@bennett-roberson.com', N'7300452997', CAST(N'2020-09-30T00:00:00.000' AS DateTime), CAST(N'2022-01-09T00:00:00.000' AS DateTime), 2, 4, 1, 3, 2, CAST(N'2025-07-18T17:16:07.627' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (296, N'EMP296', N'password', N'Krista Thompson', N'chloe40@hotmail.com', N'1955859383', CAST(N'2021-12-15T00:00:00.000' AS DateTime), CAST(N'2024-08-19T00:00:00.000' AS DateTime), 2, 4, 3, 3, 1, CAST(N'2025-07-18T17:16:07.627' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (297, N'EMP297', N'password', N'Nicole Dean', N'terricochran@yahoo.com', N'5566438141', CAST(N'2025-02-15T00:00:00.000' AS DateTime), CAST(N'2026-02-28T00:00:00.000' AS DateTime), 2, 2, 2, 1, 2, CAST(N'2025-07-18T17:16:07.627' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (298, N'EMP298', N'password', N'Angela Lewis', N'mark05@david.org', N'6340095894', CAST(N'2020-07-22T00:00:00.000' AS DateTime), CAST(N'2025-06-20T00:00:00.000' AS DateTime), 6, 4, 2, 2, 2, CAST(N'2025-07-18T17:16:07.630' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (299, N'EMP299', N'password', N'Joe Lambert', N'nancy60@gmail.com', N'6114152611', CAST(N'2022-03-09T00:00:00.000' AS DateTime), CAST(N'2023-11-21T00:00:00.000' AS DateTime), 3, 3, 1, 2, 1, CAST(N'2025-07-18T17:16:07.630' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (300, N'EMP300', N'password', N'Isabella Miller', N'kimberly38@hill.com', N'3195094230', CAST(N'2025-01-08T00:00:00.000' AS DateTime), CAST(N'2025-10-03T00:00:00.000' AS DateTime), 4, 1, 2, 1, 2, CAST(N'2025-07-18T17:16:07.630' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (301, N'EMP301', N'password', N'Rachael Morales', N'kathleen88@simpson.info', N'7964207401', CAST(N'2025-04-21T00:00:00.000' AS DateTime), CAST(N'2026-05-01T00:00:00.000' AS DateTime), 4, 4, 3, 3, 3, CAST(N'2025-07-18T17:16:07.633' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (302, N'EMP302', N'password', N'Samantha Duncan', N'harrisdonna@yahoo.com', N'4589525215', CAST(N'2023-12-09T00:00:00.000' AS DateTime), CAST(N'2024-05-18T00:00:00.000' AS DateTime), 4, 1, 3, 2, 2, CAST(N'2025-07-18T17:16:07.633' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (303, N'EMP303', N'password', N'Lauren Larsen', N'michael29@gmail.com', N'3715347263', CAST(N'2024-05-29T00:00:00.000' AS DateTime), CAST(N'2025-03-15T00:00:00.000' AS DateTime), 5, 2, 3, 3, 2, CAST(N'2025-07-18T17:16:07.633' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (304, N'EMP304', N'password', N'Mr. John Navarro', N'clarkcameron@yahoo.com', N'7698609522', CAST(N'2021-12-23T00:00:00.000' AS DateTime), CAST(N'2025-11-26T00:00:00.000' AS DateTime), 3, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.637' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (305, N'EMP305', N'password', N'Ariel Doyle', N'lflores@clarke.biz', N'5795671277', CAST(N'2022-01-04T00:00:00.000' AS DateTime), CAST(N'2022-12-19T00:00:00.000' AS DateTime), 2, 1, 1, 3, 2, CAST(N'2025-07-18T17:16:07.637' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (306, N'EMP306', N'password', N'Sandra Burton', N'brendahawkins@walker.info', N'0984481074', CAST(N'2024-08-10T00:00:00.000' AS DateTime), CAST(N'2024-09-11T00:00:00.000' AS DateTime), 3, 1, 1, 1, 3, CAST(N'2025-07-18T17:16:07.640' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (307, N'EMP307', N'password', N'Sandra Kennedy', N'diana76@hotmail.com', N'9011333458', CAST(N'2022-06-25T00:00:00.000' AS DateTime), CAST(N'2023-07-07T00:00:00.000' AS DateTime), 1, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.640' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (308, N'EMP308', N'password', N'Allison Diaz', N'richard02@kline.com', N'2667759235', CAST(N'2025-06-10T00:00:00.000' AS DateTime), CAST(N'2026-04-21T00:00:00.000' AS DateTime), 3, 4, 1, 3, 2, CAST(N'2025-07-18T17:16:07.640' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (309, N'EMP309', N'password', N'Felicia Murphy', N'scottmiller@hotmail.com', N'6308734004', CAST(N'2022-08-03T00:00:00.000' AS DateTime), CAST(N'2024-10-10T00:00:00.000' AS DateTime), 4, 2, 3, 1, 2, CAST(N'2025-07-18T17:16:07.643' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (310, N'EMP310', N'password', N'Shane Buchanan', N'cherrybrian@gmail.com', N'1942593906', CAST(N'2023-12-03T00:00:00.000' AS DateTime), CAST(N'2025-07-22T00:00:00.000' AS DateTime), 3, 1, 1, 1, 1, CAST(N'2025-07-18T17:16:07.643' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (311, N'EMP311', N'password', N'Bruce Smith', N'howardtracy@yahoo.com', N'6189026650', CAST(N'2023-07-22T00:00:00.000' AS DateTime), CAST(N'2024-04-25T00:00:00.000' AS DateTime), 4, 1, 3, 3, 1, CAST(N'2025-07-18T17:16:07.643' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (312, N'EMP312', N'password', N'Wendy Roberts', N'kimberly15@gmail.com', N'0764530539', CAST(N'2023-10-20T00:00:00.000' AS DateTime), CAST(N'2025-02-09T00:00:00.000' AS DateTime), 5, 4, 1, 2, 3, CAST(N'2025-07-18T17:16:07.647' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (313, N'EMP313', N'password', N'Jason Drake', N'athompson@yahoo.com', N'8459569996', CAST(N'2020-11-05T00:00:00.000' AS DateTime), CAST(N'2022-08-14T00:00:00.000' AS DateTime), 1, 1, 3, 1, 2, CAST(N'2025-07-18T17:16:07.647' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (314, N'EMP314', N'password', N'Steven Waters MD', N'vmolina@rubio-gill.com', N'4520998626', CAST(N'2024-07-09T00:00:00.000' AS DateTime), CAST(N'2025-04-21T00:00:00.000' AS DateTime), 2, 3, 2, 3, 3, CAST(N'2025-07-18T17:16:07.650' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (315, N'EMP315', N'password', N'Sarah Morse', N'rosariotaylor@yahoo.com', N'0649799765', CAST(N'2023-06-23T00:00:00.000' AS DateTime), CAST(N'2024-10-13T00:00:00.000' AS DateTime), 3, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.650' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (316, N'EMP316', N'password', N'Brenda Beard', N'ellisjohn@gmail.com', N'8790892634', CAST(N'2020-07-20T00:00:00.000' AS DateTime), CAST(N'2026-03-04T00:00:00.000' AS DateTime), 4, 2, 1, 3, 3, CAST(N'2025-07-18T17:16:07.650' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (317, N'EMP317', N'password', N'Shannon Garcia', N'stephensbobby@marquez-roberts.com', N'5833862604', CAST(N'2024-05-21T00:00:00.000' AS DateTime), CAST(N'2025-08-22T00:00:00.000' AS DateTime), 2, 1, 2, 1, 1, CAST(N'2025-07-18T17:16:07.650' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (318, N'EMP318', N'password', N'Stephen Williams', N'gonzalezaaron@harris.biz', N'5113512283', CAST(N'2021-05-04T00:00:00.000' AS DateTime), CAST(N'2025-01-05T00:00:00.000' AS DateTime), 6, 4, 3, 1, 2, CAST(N'2025-07-18T17:16:07.653' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (319, N'EMP319', N'password', N'Crystal Moran', N'kwallace@gmail.com', N'1548005213', CAST(N'2023-05-13T00:00:00.000' AS DateTime), CAST(N'2025-09-10T00:00:00.000' AS DateTime), 5, 2, 3, 2, 3, CAST(N'2025-07-18T17:16:07.653' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (320, N'EMP320', N'password', N'Laura Stewart', N'garciasarah@porter-fuller.biz', N'5502718526', CAST(N'2024-01-03T00:00:00.000' AS DateTime), CAST(N'2024-09-26T00:00:00.000' AS DateTime), 2, 4, 3, 1, 3, CAST(N'2025-07-18T17:16:07.657' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (321, N'EMP321', N'password', N'Robert Allen', N'kendrastephens@ibarra.org', N'6734991070', CAST(N'2024-08-12T00:00:00.000' AS DateTime), CAST(N'2024-11-24T00:00:00.000' AS DateTime), 1, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.657' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (322, N'EMP322', N'password', N'Charles Beard', N'fredosborn@clark.com', N'3687907864', CAST(N'2024-09-03T00:00:00.000' AS DateTime), CAST(N'2026-07-04T00:00:00.000' AS DateTime), 4, 3, 3, 2, 2, CAST(N'2025-07-18T17:16:07.660' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (323, N'EMP323', N'password', N'Cory Johnson', N'shortraymond@yahoo.com', N'4268481615', CAST(N'2023-01-24T00:00:00.000' AS DateTime), CAST(N'2026-03-01T00:00:00.000' AS DateTime), 4, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.660' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (324, N'EMP324', N'password', N'Jeremy Crawford', N'anthonycox@gmail.com', N'4664420329', CAST(N'2025-03-30T00:00:00.000' AS DateTime), CAST(N'2026-04-18T00:00:00.000' AS DateTime), 3, 1, 1, 3, 1, CAST(N'2025-07-18T17:16:07.660' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (325, N'EMP325', N'password', N'Kathryn Carr', N'smithjennifer@gmail.com', N'9183269423', CAST(N'2024-06-12T00:00:00.000' AS DateTime), CAST(N'2025-01-25T00:00:00.000' AS DateTime), 1, 3, 3, 1, 1, CAST(N'2025-07-18T17:16:07.660' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (326, N'EMP326', N'password', N'Michael Perez', N'johnbyrd@hotmail.com', N'4953430891', CAST(N'2022-05-21T00:00:00.000' AS DateTime), CAST(N'2022-07-07T00:00:00.000' AS DateTime), 4, 1, 3, 2, 2, CAST(N'2025-07-18T17:16:07.663' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (327, N'EMP327', N'password', N'Jason Peters', N'joshua45@hotmail.com', N'0051659775', CAST(N'2020-09-11T00:00:00.000' AS DateTime), CAST(N'2024-01-20T00:00:00.000' AS DateTime), 1, 2, 2, 1, 2, CAST(N'2025-07-18T17:16:07.663' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (328, N'EMP328', N'password', N'Sara Mcknight', N'kevinmarshall@scott.com', N'5937174366', CAST(N'2023-10-11T00:00:00.000' AS DateTime), CAST(N'2024-01-28T00:00:00.000' AS DateTime), 1, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.663' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (329, N'EMP329', N'password', N'Robert Schneider', N'francoscott@hotmail.com', N'6802237101', CAST(N'2025-03-06T00:00:00.000' AS DateTime), CAST(N'2025-11-13T00:00:00.000' AS DateTime), 3, 3, 3, 2, 2, CAST(N'2025-07-18T17:16:07.667' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (330, N'EMP330', N'password', N'Heidi Robinson', N'kristinetodd@johnson-rubio.info', N'3500758600', CAST(N'2025-03-24T00:00:00.000' AS DateTime), CAST(N'2025-05-18T00:00:00.000' AS DateTime), 2, 1, 2, 2, 1, CAST(N'2025-07-18T17:16:07.667' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (331, N'EMP331', N'password', N'Michael Spencer', N'robinsonalex@santana.com', N'1586979331', CAST(N'2023-11-17T00:00:00.000' AS DateTime), CAST(N'2024-08-23T00:00:00.000' AS DateTime), 4, 1, 2, 1, 1, CAST(N'2025-07-18T17:16:07.670' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (332, N'EMP332', N'password', N'Michael Shields', N'lewismeredith@gmail.com', N'0165170577', CAST(N'2022-11-07T00:00:00.000' AS DateTime), CAST(N'2023-09-17T00:00:00.000' AS DateTime), 1, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.670' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (333, N'EMP333', N'password', N'Kyle Hansen', N'finleymelissa@gmail.com', N'6815944677', CAST(N'2022-09-13T00:00:00.000' AS DateTime), CAST(N'2026-06-20T00:00:00.000' AS DateTime), 5, 1, 2, 2, 3, CAST(N'2025-07-18T17:16:07.670' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (334, N'EMP334', N'password', N'Stephanie Herman', N'stewartricardo@hotmail.com', N'0500035313', CAST(N'2025-07-14T00:00:00.000' AS DateTime), CAST(N'2026-07-07T00:00:00.000' AS DateTime), 6, 4, 2, 1, 1, CAST(N'2025-07-18T17:16:07.673' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (335, N'EMP335', N'password', N'Joshua Ramirez', N'jhutchinson@guzman-howard.com', N'5004389826', CAST(N'2024-09-19T00:00:00.000' AS DateTime), CAST(N'2025-02-23T00:00:00.000' AS DateTime), 5, 4, 2, 1, 3, CAST(N'2025-07-18T17:16:07.673' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (336, N'EMP336', N'password', N'John Lawrence', N'robin44@yahoo.com', N'0046863069', CAST(N'2024-10-07T00:00:00.000' AS DateTime), CAST(N'2026-07-05T00:00:00.000' AS DateTime), 5, 1, 1, 2, 2, CAST(N'2025-07-18T17:16:07.673' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (337, N'EMP337', N'password', N'Joshua Pearson', N'walkersabrina@acosta-campbell.com', N'4113895327', CAST(N'2020-12-10T00:00:00.000' AS DateTime), CAST(N'2021-09-26T00:00:00.000' AS DateTime), 1, 4, 1, 1, 3, CAST(N'2025-07-18T17:16:07.677' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (338, N'EMP338', N'password', N'Samuel Bond', N'lwashington@simpson-johnson.com', N'5932689441', CAST(N'2021-03-25T00:00:00.000' AS DateTime), CAST(N'2023-06-23T00:00:00.000' AS DateTime), 6, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.677' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (339, N'EMP339', N'password', N'Kevin Haas', N'smithsusan@hotmail.com', N'3141946041', CAST(N'2025-02-02T00:00:00.000' AS DateTime), CAST(N'2025-11-19T00:00:00.000' AS DateTime), 3, 2, 3, 3, 1, CAST(N'2025-07-18T17:16:07.677' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (340, N'EMP340', N'password', N'Brittany Ellis', N'gordonapril@gmail.com', N'3252904660', CAST(N'2024-10-04T00:00:00.000' AS DateTime), CAST(N'2025-02-20T00:00:00.000' AS DateTime), 2, 2, 1, 3, 3, CAST(N'2025-07-18T17:16:07.680' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (341, N'EMP341', N'password', N'Nancy Stevens', N'longmolly@gmail.com', N'3111634015', CAST(N'2020-10-16T00:00:00.000' AS DateTime), CAST(N'2024-02-11T00:00:00.000' AS DateTime), 2, 3, 1, 2, 3, CAST(N'2025-07-18T17:16:07.680' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (342, N'EMP342', N'password', N'Brenda Taylor', N'nwoodard@odom.com', N'6545981336', CAST(N'2021-03-13T00:00:00.000' AS DateTime), CAST(N'2023-03-27T00:00:00.000' AS DateTime), 6, 4, 1, 1, 1, CAST(N'2025-07-18T17:16:07.680' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (343, N'EMP343', N'password', N'Timothy Garner', N'owilliams@gmail.com', N'6406101904', CAST(N'2025-03-29T00:00:00.000' AS DateTime), CAST(N'2026-06-08T00:00:00.000' AS DateTime), 6, 3, 2, 1, 1, CAST(N'2025-07-18T17:16:07.683' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (344, N'EMP344', N'password', N'Katherine Hartman', N'donaldsonjamie@li.com', N'3375855906', CAST(N'2024-08-27T00:00:00.000' AS DateTime), CAST(N'2025-07-16T00:00:00.000' AS DateTime), 3, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.683' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (345, N'EMP345', N'password', N'Samantha Smith', N'isanders@sweeney.net', N'6530652135', CAST(N'2022-02-04T00:00:00.000' AS DateTime), CAST(N'2023-10-03T00:00:00.000' AS DateTime), 3, 2, 2, 3, 1, CAST(N'2025-07-18T17:16:07.683' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (346, N'EMP346', N'password', N'Danielle Brooks', N'judyevans@gmail.com', N'5585967251', CAST(N'2022-03-30T00:00:00.000' AS DateTime), CAST(N'2022-07-29T00:00:00.000' AS DateTime), 2, 1, 3, 2, 3, CAST(N'2025-07-18T17:16:07.687' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (347, N'EMP347', N'password', N'Ross Donovan', N'michele90@ewing.com', N'4418192911', CAST(N'2021-01-06T00:00:00.000' AS DateTime), CAST(N'2022-02-13T00:00:00.000' AS DateTime), 2, 2, 1, 1, 2, CAST(N'2025-07-18T17:16:07.687' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (348, N'EMP348', N'password', N'Gabrielle Hensley', N'katelynclayton@anderson-rice.com', N'8043536754', CAST(N'2022-10-18T00:00:00.000' AS DateTime), CAST(N'2023-10-10T00:00:00.000' AS DateTime), 5, 1, 1, 1, 1, CAST(N'2025-07-18T17:16:07.690' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (349, N'EMP349', N'password', N'William Taylor', N'annshields@gmail.com', N'5913420400', CAST(N'2023-03-31T00:00:00.000' AS DateTime), CAST(N'2025-01-21T00:00:00.000' AS DateTime), 5, 2, 1, 3, 2, CAST(N'2025-07-18T17:16:07.690' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (350, N'EMP350', N'password', N'Brandy Ortega', N'tcole@alvarez.biz', N'6147426929', CAST(N'2021-11-30T00:00:00.000' AS DateTime), CAST(N'2026-04-25T00:00:00.000' AS DateTime), 1, 4, 2, 3, 3, CAST(N'2025-07-18T17:16:07.690' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (351, N'EMP351', N'password', N'Anna Oneal', N'latasha77@hotmail.com', N'5446879046', CAST(N'2022-08-02T00:00:00.000' AS DateTime), CAST(N'2023-10-19T00:00:00.000' AS DateTime), 3, 2, 1, 2, 3, CAST(N'2025-07-18T17:16:07.690' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (352, N'EMP352', N'password', N'Vanessa Walker', N'lreilly@walker.org', N'6171042573', CAST(N'2022-03-07T00:00:00.000' AS DateTime), CAST(N'2023-06-18T00:00:00.000' AS DateTime), 2, 4, 1, 1, 2, CAST(N'2025-07-18T17:16:07.693' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (353, N'EMP353', N'password', N'Jonathan Snyder', N'markparks@green.com', N'8836378051', CAST(N'2025-06-18T00:00:00.000' AS DateTime), CAST(N'2025-08-08T00:00:00.000' AS DateTime), 5, 3, 1, 2, 2, CAST(N'2025-07-18T17:16:07.693' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (354, N'EMP354', N'password', N'Kathleen Lopez', N'johnsondavid@morris.com', N'8256220543', CAST(N'2020-08-01T00:00:00.000' AS DateTime), CAST(N'2024-12-30T00:00:00.000' AS DateTime), 2, 4, 2, 1, 2, CAST(N'2025-07-18T17:16:07.697' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (355, N'EMP355', N'password', N'Richard Dean', N'jacksonduncan@johnson-hayes.biz', N'8758771416', CAST(N'2023-07-09T00:00:00.000' AS DateTime), CAST(N'2023-11-17T00:00:00.000' AS DateTime), 2, 4, 2, 3, 1, CAST(N'2025-07-18T17:16:07.697' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (356, N'EMP356', N'password', N'James Reeves', N'theresa70@shaw-torres.org', N'2028456946', CAST(N'2024-08-23T00:00:00.000' AS DateTime), CAST(N'2026-05-09T00:00:00.000' AS DateTime), 3, 3, 3, 2, 3, CAST(N'2025-07-18T17:16:07.700' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (357, N'EMP357', N'password', N'Erica Johnson', N'katherinewalker@hotmail.com', N'1677661034', CAST(N'2021-08-31T00:00:00.000' AS DateTime), CAST(N'2023-03-15T00:00:00.000' AS DateTime), 1, 4, 1, 2, 1, CAST(N'2025-07-18T17:16:07.700' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (358, N'EMP358', N'password', N'Carolyn Coleman', N'andrejohnson@anderson.biz', N'1104388058', CAST(N'2022-06-27T00:00:00.000' AS DateTime), CAST(N'2025-01-30T00:00:00.000' AS DateTime), 5, 3, 2, 3, 1, CAST(N'2025-07-18T17:16:07.700' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (359, N'EMP359', N'password', N'Jill Mendoza', N'xyoung@hotmail.com', N'8809006967', CAST(N'2020-07-30T00:00:00.000' AS DateTime), CAST(N'2024-04-17T00:00:00.000' AS DateTime), 5, 1, 1, 3, 2, CAST(N'2025-07-18T17:16:07.700' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (360, N'EMP360', N'password', N'Christine Bowers', N'ramirezchristine@mann.com', N'6835026761', CAST(N'2022-11-09T00:00:00.000' AS DateTime), CAST(N'2023-10-31T00:00:00.000' AS DateTime), 1, 4, 3, 2, 2, CAST(N'2025-07-18T17:16:07.703' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (361, N'EMP361', N'password', N'Kenneth Bates', N'williamdiaz@yahoo.com', N'3152781817', CAST(N'2020-09-18T00:00:00.000' AS DateTime), CAST(N'2022-01-29T00:00:00.000' AS DateTime), 1, 4, 3, 2, 1, CAST(N'2025-07-18T17:16:07.703' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (362, N'EMP362', N'password', N'Cassandra Kim', N'ronaldvillanueva@gmail.com', N'2371269136', CAST(N'2025-01-11T00:00:00.000' AS DateTime), CAST(N'2025-04-15T00:00:00.000' AS DateTime), 2, 3, 2, 2, 1, CAST(N'2025-07-18T17:16:07.707' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (363, N'EMP363', N'password', N'Jeffrey Steele', N'donaldzhang@gmail.com', N'4351238604', CAST(N'2024-02-29T00:00:00.000' AS DateTime), CAST(N'2024-06-13T00:00:00.000' AS DateTime), 5, 3, 3, 1, 2, CAST(N'2025-07-18T17:16:07.707' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (364, N'EMP364', N'password', N'Justin Williams', N'leeheather@bishop.com', N'5960784570', CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2024-01-02T00:00:00.000' AS DateTime), 3, 2, 3, 2, 2, CAST(N'2025-07-18T17:16:07.710' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (365, N'EMP365', N'password', N'Edwin Avery', N'danielleyoung@summers-huang.net', N'2126883773', CAST(N'2021-09-06T00:00:00.000' AS DateTime), CAST(N'2022-02-27T00:00:00.000' AS DateTime), 6, 1, 1, 2, 1, CAST(N'2025-07-18T17:16:07.710' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (366, N'EMP366', N'password', N'Scott Rose', N'qsanders@hotmail.com', N'6191712551', CAST(N'2022-01-26T00:00:00.000' AS DateTime), CAST(N'2024-09-10T00:00:00.000' AS DateTime), 6, 3, 2, 2, 3, CAST(N'2025-07-18T17:16:07.710' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (367, N'EMP367', N'password', N'Elizabeth Monroe', N'thomashuff@hotmail.com', N'3494197294', CAST(N'2021-12-13T00:00:00.000' AS DateTime), CAST(N'2023-06-13T00:00:00.000' AS DateTime), 1, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.710' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (368, N'EMP368', N'password', N'Timothy Smith', N'jennifer56@cox.org', N'9527198727', CAST(N'2023-03-03T00:00:00.000' AS DateTime), CAST(N'2026-04-15T00:00:00.000' AS DateTime), 6, 4, 2, 2, 3, CAST(N'2025-07-18T17:16:07.713' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (369, N'EMP369', N'password', N'Marissa Mullen', N'andrew62@hotmail.com', N'5313296075', CAST(N'2021-06-11T00:00:00.000' AS DateTime), CAST(N'2021-06-17T00:00:00.000' AS DateTime), 2, 3, 1, 1, 1, CAST(N'2025-07-18T17:16:07.713' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (370, N'EMP370', N'password', N'Amanda Brewer', N'paullane@gmail.com', N'4906456256', CAST(N'2025-04-23T00:00:00.000' AS DateTime), CAST(N'2026-03-19T00:00:00.000' AS DateTime), 5, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.717' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (371, N'EMP371', N'password', N'George Davis', N'mbaxter@west.com', N'5043218579', CAST(N'2023-04-26T00:00:00.000' AS DateTime), CAST(N'2023-06-10T00:00:00.000' AS DateTime), 5, 4, 2, 1, 3, CAST(N'2025-07-18T17:16:07.717' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (372, N'EMP372', N'password', N'Frank Wilson', N'ydurham@hotmail.com', N'4999034380', CAST(N'2024-11-01T00:00:00.000' AS DateTime), CAST(N'2024-11-22T00:00:00.000' AS DateTime), 6, 1, 2, 3, 3, CAST(N'2025-07-18T17:16:07.717' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (373, N'EMP373', N'password', N'Angela Newman', N'gstokes@yahoo.com', N'8725721707', CAST(N'2020-12-23T00:00:00.000' AS DateTime), CAST(N'2024-11-29T00:00:00.000' AS DateTime), 5, 2, 1, 1, 1, CAST(N'2025-07-18T17:16:07.720' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (374, N'EMP374', N'password', N'Lauren Miller', N'kmoore@martinez.com', N'1567910312', CAST(N'2024-02-03T00:00:00.000' AS DateTime), CAST(N'2026-05-22T00:00:00.000' AS DateTime), 2, 2, 1, 3, 1, CAST(N'2025-07-18T17:16:07.720' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (375, N'EMP375', N'password', N'Mark Cross', N'grodriguez@hall.com', N'9535152539', CAST(N'2024-09-16T00:00:00.000' AS DateTime), CAST(N'2024-12-03T00:00:00.000' AS DateTime), 4, 3, 3, 3, 2, CAST(N'2025-07-18T17:16:07.720' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (376, N'EMP376', N'password', N'Tasha Jennings', N'lhernandez@yahoo.com', N'2024553496', CAST(N'2020-09-07T00:00:00.000' AS DateTime), CAST(N'2026-04-10T00:00:00.000' AS DateTime), 6, 3, 3, 1, 2, CAST(N'2025-07-18T17:16:07.723' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (377, N'EMP377', N'password', N'Renee Mcfarland', N'james07@ball-bond.info', N'1539836361', CAST(N'2022-12-13T00:00:00.000' AS DateTime), CAST(N'2023-08-31T00:00:00.000' AS DateTime), 3, 2, 2, 3, 3, CAST(N'2025-07-18T17:16:07.723' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (378, N'EMP378', N'password', N'Brandy Rojas', N'oreyes@hotmail.com', N'1654766567', CAST(N'2021-07-16T00:00:00.000' AS DateTime), CAST(N'2023-12-08T00:00:00.000' AS DateTime), 3, 2, 2, 3, 3, CAST(N'2025-07-18T17:16:07.723' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (379, N'EMP379', N'password', N'Anthony Edwards', N'kjones@gmail.com', N'9163043416', CAST(N'2020-09-01T00:00:00.000' AS DateTime), CAST(N'2022-08-05T00:00:00.000' AS DateTime), 5, 3, 1, 2, 2, CAST(N'2025-07-18T17:16:07.727' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (380, N'EMP380', N'password', N'Justin Jones', N'jeremiahyoung@gmail.com', N'3710725665', CAST(N'2020-08-09T00:00:00.000' AS DateTime), CAST(N'2022-04-10T00:00:00.000' AS DateTime), 4, 4, 3, 2, 2, CAST(N'2025-07-18T17:16:07.727' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (381, N'EMP381', N'password', N'Tara Robinson DVM', N'alexandra19@whitehead-gregory.com', N'3160155422', CAST(N'2021-04-24T00:00:00.000' AS DateTime), CAST(N'2023-10-23T00:00:00.000' AS DateTime), 4, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.727' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (382, N'EMP382', N'password', N'Crystal Graham', N'dawn79@gmail.com', N'7901276436', CAST(N'2021-05-21T00:00:00.000' AS DateTime), CAST(N'2025-04-04T00:00:00.000' AS DateTime), 1, 1, 3, 3, 3, CAST(N'2025-07-18T17:16:07.730' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (383, N'EMP383', N'password', N'Alicia Warner', N'shernandez@price.com', N'5991060644', CAST(N'2025-04-24T00:00:00.000' AS DateTime), CAST(N'2025-07-01T00:00:00.000' AS DateTime), 2, 1, 2, 3, 3, CAST(N'2025-07-18T17:16:07.730' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (384, N'EMP384', N'password', N'Noah Beck', N'langwarren@hotmail.com', N'1918194060', CAST(N'2024-01-15T00:00:00.000' AS DateTime), CAST(N'2024-06-14T00:00:00.000' AS DateTime), 5, 2, 2, 1, 1, CAST(N'2025-07-18T17:16:07.730' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (385, N'EMP385', N'password', N'Tyler Lewis', N'austinlopez@gmail.com', N'9732671446', CAST(N'2023-10-11T00:00:00.000' AS DateTime), CAST(N'2025-05-09T00:00:00.000' AS DateTime), 1, 1, 2, 3, 2, CAST(N'2025-07-18T17:16:07.733' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (386, N'EMP386', N'password', N'Annette Mora', N'scottconner@hotmail.com', N'3739334648', CAST(N'2025-06-02T00:00:00.000' AS DateTime), CAST(N'2026-06-08T00:00:00.000' AS DateTime), 3, 1, 3, 2, 2, CAST(N'2025-07-18T17:16:07.733' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (387, N'EMP387', N'password', N'Rebecca Bates', N'anthonyrivera@hotmail.com', N'6270073398', CAST(N'2022-08-07T00:00:00.000' AS DateTime), CAST(N'2024-08-10T00:00:00.000' AS DateTime), 5, 3, 3, 2, 1, CAST(N'2025-07-18T17:16:07.733' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (388, N'EMP388', N'password', N'Renee Hicks', N'alicia10@yahoo.com', N'1387241988', CAST(N'2022-12-06T00:00:00.000' AS DateTime), CAST(N'2023-07-07T00:00:00.000' AS DateTime), 2, 1, 3, 1, 1, CAST(N'2025-07-18T17:16:07.737' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (389, N'EMP389', N'password', N'Leah Jones', N'kwarren@hotmail.com', N'1175301868', CAST(N'2023-05-16T00:00:00.000' AS DateTime), CAST(N'2025-03-10T00:00:00.000' AS DateTime), 6, 2, 3, 2, 3, CAST(N'2025-07-18T17:16:07.737' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (390, N'EMP390', N'password', N'Sylvia Adams', N'hamiltonangela@yahoo.com', N'3225757440', CAST(N'2022-08-14T00:00:00.000' AS DateTime), CAST(N'2024-02-21T00:00:00.000' AS DateTime), 6, 2, 2, 3, 3, CAST(N'2025-07-18T17:16:07.740' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (391, N'EMP391', N'password', N'Casey Jones', N'jessicamiller@hotmail.com', N'4952609210', CAST(N'2024-10-17T00:00:00.000' AS DateTime), CAST(N'2026-06-26T00:00:00.000' AS DateTime), 4, 3, 1, 3, 1, CAST(N'2025-07-18T17:16:07.740' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (392, N'EMP392', N'password', N'Joel Yang', N'wtran@yahoo.com', N'1442035472', CAST(N'2025-06-06T00:00:00.000' AS DateTime), CAST(N'2026-07-03T00:00:00.000' AS DateTime), 4, 2, 2, 3, 1, CAST(N'2025-07-18T17:16:07.740' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (393, N'EMP393', N'password', N'Brittany Russell', N'lbates@james-thompson.net', N'6928459686', CAST(N'2020-09-07T00:00:00.000' AS DateTime), CAST(N'2024-02-27T00:00:00.000' AS DateTime), 4, 1, 3, 3, 2, CAST(N'2025-07-18T17:16:07.740' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (394, N'EMP394', N'password', N'Kevin Norris', N'soniabrady@anderson-green.net', N'3443385309', CAST(N'2024-09-21T00:00:00.000' AS DateTime), CAST(N'2025-11-12T00:00:00.000' AS DateTime), 3, 2, 3, 2, 1, CAST(N'2025-07-18T17:16:07.743' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (395, N'EMP395', N'password', N'James Barnes', N'harmonmelvin@ortega.com', N'6970605174', CAST(N'2023-12-06T00:00:00.000' AS DateTime), CAST(N'2026-01-13T00:00:00.000' AS DateTime), 4, 1, 2, 3, 2, CAST(N'2025-07-18T17:16:07.743' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (396, N'EMP396', N'password', N'Jacob Reilly', N'catherine93@hotmail.com', N'9135403766', CAST(N'2024-09-30T00:00:00.000' AS DateTime), CAST(N'2026-05-14T00:00:00.000' AS DateTime), 5, 4, 2, 2, 1, CAST(N'2025-07-18T17:16:07.747' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (397, N'EMP397', N'password', N'Bernard Stone', N'jillnguyen@gmail.com', N'8186342232', CAST(N'2022-09-25T00:00:00.000' AS DateTime), CAST(N'2022-11-23T00:00:00.000' AS DateTime), 2, 3, 1, 2, 3, CAST(N'2025-07-18T17:16:07.747' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (398, N'EMP398', N'password', N'Rachel Campbell', N'jonesjenny@hotmail.com', N'0793266496', CAST(N'2021-09-15T00:00:00.000' AS DateTime), CAST(N'2024-02-12T00:00:00.000' AS DateTime), 2, 4, 1, 1, 2, CAST(N'2025-07-18T17:16:07.747' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (399, N'EMP399', N'password', N'Brian Gonzales', N'oshaffer@hotmail.com', N'8342706123', CAST(N'2025-02-09T00:00:00.000' AS DateTime), CAST(N'2026-07-03T00:00:00.000' AS DateTime), 4, 4, 3, 1, 2, CAST(N'2025-07-18T17:16:07.750' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (400, N'EMP400', N'password', N'Jacqueline Gordon', N'deanna30@hotmail.com', N'1275298671', CAST(N'2021-02-15T00:00:00.000' AS DateTime), CAST(N'2024-10-09T00:00:00.000' AS DateTime), 4, 2, 1, 2, 1, CAST(N'2025-07-18T17:16:07.750' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (401, N'EMP401', N'password', N'Anthony Stephens', N'levinejuan@hotmail.com', N'9092424779', CAST(N'2024-09-27T00:00:00.000' AS DateTime), CAST(N'2024-12-30T00:00:00.000' AS DateTime), 3, 1, 1, 3, 1, CAST(N'2025-07-18T17:16:07.750' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (402, N'EMP402', N'password', N'Brian Trujillo', N'gonzalezjennifer@gmail.com', N'4889839621', CAST(N'2025-06-28T00:00:00.000' AS DateTime), CAST(N'2025-09-28T00:00:00.000' AS DateTime), 6, 2, 3, 3, 1, CAST(N'2025-07-18T17:16:07.753' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (403, N'EMP403', N'password', N'Krystal Garcia', N'abell@gmail.com', N'3818025530', CAST(N'2021-05-30T00:00:00.000' AS DateTime), CAST(N'2022-09-08T00:00:00.000' AS DateTime), 1, 1, 2, 3, 3, CAST(N'2025-07-18T17:16:07.753' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (404, N'EMP404', N'password', N'Steven Mcbride', N'hilllydia@duncan-woods.com', N'1983382294', CAST(N'2021-01-17T00:00:00.000' AS DateTime), CAST(N'2022-08-31T00:00:00.000' AS DateTime), 5, 4, 3, 3, 1, CAST(N'2025-07-18T17:16:07.753' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (405, N'EMP405', N'password', N'Michelle James', N'angela02@gmail.com', N'6097161805', CAST(N'2021-05-10T00:00:00.000' AS DateTime), CAST(N'2026-02-06T00:00:00.000' AS DateTime), 4, 3, 2, 1, 3, CAST(N'2025-07-18T17:16:07.757' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (406, N'EMP406', N'password', N'Chase Jordan', N'wilkinsonmark@hotmail.com', N'3558673759', CAST(N'2021-10-13T00:00:00.000' AS DateTime), CAST(N'2025-02-24T00:00:00.000' AS DateTime), 1, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.757' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (407, N'EMP407', N'password', N'Craig Gibbs', N'dtyler@simon.com', N'3314801024', CAST(N'2022-07-08T00:00:00.000' AS DateTime), CAST(N'2024-07-04T00:00:00.000' AS DateTime), 3, 2, 1, 2, 2, CAST(N'2025-07-18T17:16:07.760' AS DateTime), 1, NULL, NULL, 1)
INSERT [Onwards].[Users] ([Id], [EmployeeCode], [Password], [FullName], [Email], [Mobile], [DOJ], [DOR], [RoleId], [GradeId], [DepartmentId], [ReportingManagerId], [AdministrativeManagerId], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (408, N'EMP408', N'password', N'Amber Thompson', N'jonathanjohnson@hotmail.com', N'7010951857', CAST(N'2022-11-09T00:00:00.000' AS DateTime), CAST(N'2026-05-21T00:00:00.000' AS DateTime), 5, 3, 1, 1, 2, CAST(N'2025-07-18T17:16:07.760' AS DateTime), 1, NULL, NULL, 1)
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
/****** Object:  Index [UQ__Document__737584F6E421877C]    Script Date: 18-07-2025 19:56:21 ******/
ALTER TABLE [Onwards].[DocumentTypes] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UC_LeaveBalance]    Script Date: 18-07-2025 19:56:21 ******/
ALTER TABLE [Onwards].[LeaveBalances] ADD  CONSTRAINT [UC_LeaveBalance] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[LeaveTypeId] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Titles__2CB664DC3C614ACC]    Script Date: 18-07-2025 19:56:21 ******/
ALTER TABLE [Onwards].[Titles] ADD  CONSTRAINT [UQ__Titles__2CB664DC3C614ACC] UNIQUE NONCLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Unique_Email]    Script Date: 18-07-2025 19:56:21 ******/
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [Unique_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__1F6425482CF50872]    Script Date: 18-07-2025 19:56:21 ******/
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [UQ__Users__1F6425482CF50872] UNIQUE NONCLUSTERED 
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
ALTER TABLE [Onwards].[Departments] ADD  DEFAULT ((1)) FOR [IsActive]
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
ALTER TABLE [Onwards].[Grades] ADD  CONSTRAINT [DF__Grades__IsActive__6C040022]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LeavesAdded] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[LeavesAdded] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LeaveStatus] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[LeaveStatus] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[LeaveTypes] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[LeaveTypes] ADD  DEFAULT ((1)) FOR [IsActive]
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
ALTER TABLE [Onwards].[Roles] ADD  DEFAULT ((1)) FOR [IsActive]
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
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__DOJ__2FEF161B]  DEFAULT ('1900-01-01') FOR [DOJ]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__DOR__72B0FDB1]  DEFAULT ('1900-02-01') FOR [DOR]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__Role__30E33A54]  DEFAULT ((0)) FOR [RoleId]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__Grade__31D75E8D]  DEFAULT ((0.0)) FOR [GradeId]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__Departmen__32CB82C6]  DEFAULT ((0)) FOR [DepartmentId]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__Reporting__33BFA6FF]  DEFAULT ((0)) FOR [ReportingManagerId]
GO
ALTER TABLE [Onwards].[Users] ADD  CONSTRAINT [DF__Users__Administr__34B3CB38]  DEFAULT ((0)) FOR [AdministrativeManagerId]
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
REFERENCES [Onwards].[BloodGroups] ([Id])
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
ALTER TABLE [Onwards].[LeaveBalances]  WITH CHECK ADD FOREIGN KEY([LeaveTypeId])
REFERENCES [Onwards].[LeaveTypes] ([Id])
GO
ALTER TABLE [Onwards].[LeaveBalances]  WITH CHECK ADD  CONSTRAINT [FK__LeaveBala__UserI__18D6A699] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[LeaveBalances] CHECK CONSTRAINT [FK__LeaveBala__UserI__18D6A699]
GO
ALTER TABLE [Onwards].[LoginDetails]  WITH CHECK ADD  CONSTRAINT [FK__LoginDeta__UserI__33008CF0] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Onwards].[LoginDetails] CHECK CONSTRAINT [FK__LoginDeta__UserI__33008CF0]
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
ALTER TABLE [Onwards].[UserLeaveApplyed]  WITH CHECK ADD FOREIGN KEY([LeaveTypeId])
REFERENCES [Onwards].[LeaveTypes] ([Id])
GO
ALTER TABLE [Onwards].[UserLeaveApplyed]  WITH CHECK ADD  CONSTRAINT [FK__UserLeave__UserI__2077C861] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[UserLeaveApplyed] CHECK CONSTRAINT [FK__UserLeave__UserI__2077C861]
GO
ALTER TABLE [Onwards].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Grades_Users] FOREIGN KEY([GradeId])
REFERENCES [Onwards].[Grades] ([Id])
GO
ALTER TABLE [Onwards].[Users] CHECK CONSTRAINT [FK_Grades_Users]
GO
ALTER TABLE [Onwards].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Departments] FOREIGN KEY([DepartmentId])
REFERENCES [Onwards].[Departments] ([Id])
GO
ALTER TABLE [Onwards].[Users] CHECK CONSTRAINT [FK_Users_Departments]
GO
ALTER TABLE [Onwards].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleId])
REFERENCES [Onwards].[Roles] ([Id])
GO
ALTER TABLE [Onwards].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
ALTER TABLE [Onwards].[Users]  WITH CHECK ADD  CONSTRAINT [FK_USERS_USERS] FOREIGN KEY([ReportingManagerId])
REFERENCES [Onwards].[Users] ([Id])
GO
ALTER TABLE [Onwards].[Users] CHECK CONSTRAINT [FK_USERS_USERS]
GO
ALTER TABLE [Onwards].[UserShiftAssignment]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
ALTER TABLE [Onwards].[UserShiftLog]  WITH CHECK ADD FOREIGN KEY([ShiftId])
REFERENCES [Onwards].[Shift] ([ShiftId])
GO
/****** Object:  StoredProcedure [Onwards].[DeleteUserDetail]    Script Date: 18-07-2025 19:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[DeleteUserDetail]
	@Id INT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @IsExist INT
	SELECT @IsExist = Id
	FROM Onwards.Users
	WHERE Id = @Id

	IF (@IsExist IS NOT NULL)
	BEGIN
		UPDATE Onwards.Users
		SET IsActive = 0
		WHERE Id = @Id
	END
END
GO
/****** Object:  StoredProcedure [Onwards].[GetAllUserDetails]    Script Date: 18-07-2025 19:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[GetAllUserDetails]
	@skip INT,
	@take INT,
	@EmployeeCode NVARCHAR(50) = NULL,
    @FullName NVARCHAR(100) = NULL,
    @Email NVARCHAR(100) = NULL,
    @Mobile NVARCHAR(20) = NULL
AS
BEGIN
	SET NOCOUNT ON;

     SELECT 
        u.EmployeeCode,
        u.FullName,
        u.Email,
        u.Mobile,
        u.DOJ,
        u.DOR,
        r.RoleName,
        g.GradeValue,
        d.DepartmentName,
        rm.FullName AS ReportingManagerName,
		am.FullName AS AdministrativeManagerName
    FROM
				(SELECT [Id]
				  ,[EmployeeCode]
				  ,[Password]
				  ,[FullName]
				  ,[Email]
				  ,[Mobile]
				  ,[DOJ]
				  ,[DOR]
				  ,[RoleId]
				  ,[GradeId]
				  ,[DepartmentId]
				  ,[ReportingManagerId]
				  ,[AdministrativeManagerId]
				FROM Onwards.Users u
				WHERE IsActive = 1 AND
						(@EmployeeCode IS NULL OR EmployeeCode LIKE '%' + @EmployeeCode + '%') AND
						(@FullName IS NULL OR FullName LIKE '%' + @FullName + '%') AND
						(@Email IS NULL OR Email LIKE '%' + @Email + '%') AND
						(@Mobile IS NULL OR Mobile LIKE '%' + @Mobile + '%')
				ORDER BY Id DESC 
				OFFSET @Skip ROWS
				FETCH NEXT @Take ROWS ONLY
				) u
	--INNER JOIN (SELECT Id,RoleName FROM Onwards.Roles WHERE IsActive = 1) r ON u.RoleId = r.Id
	--INNER JOIN (SELECT [Id],[GradeValue] FROM Onwards.Grades WHERE IsActive = 1) g ON u.GradeId = g.Id
	--INNER JOIN (SELECT [Id],[DepartmentName] FROM Onwards.Departments  WHERE IsActive = 1) d ON u.DepartmentId = d.Id
	--INNER JOIN (SELECT Id,FullName FROM Onwards.Users WHERE IsActive = 1) rm ON u.ReportingManagerId = rm.Id
	--INNER JOIN (SELECT Id,FullName FROM Onwards.Users WHERE IsActive = 1) am ON u.AdministrativeManagerId = am.Id

	INNER JOIN Onwards.Roles AS R ON u.RoleId = r.Id AND R.IsActive = 1 --and R.RoleName like '%%'
	INNER JOIN (SELECT [Id],[GradeValue] FROM Onwards.Grades WHERE IsActive = 1) g ON u.GradeId = g.Id
	INNER JOIN (SELECT [Id],[DepartmentName] FROM Onwards.Departments  WHERE IsActive = 1) d ON u.DepartmentId = d.Id
	INNER JOIN (SELECT Id,FullName FROM Onwards.Users WHERE IsActive = 1) rm ON u.ReportingManagerId = rm.Id
	INNER JOIN (SELECT Id,FullName FROM Onwards.Users WHERE IsActive = 1) am ON u.AdministrativeManagerId = am.Id
END

--SELECT * FROM Onwards.Roles
GO
/****** Object:  StoredProcedure [Onwards].[GetUserShiftDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
        S.StartTime as ShiftStartTime,
        S.EndTime,
        USL.LoginTime,
        USL.LogOutTime,
        GETDATE() AS TodayDate,
        CONVERT(VARCHAR(8), GETDATE(), 108) AS CurrentTime,
		0 AS TotalLoggedInHours
    FROM Onwards.Users AS U
    INNER JOIN Onwards.UserShiftAssignment AS USA ON U.Id = USA.UserId
    INNER JOIN Onwards.Shift AS S ON USA.ShiftId = S.ShiftId
    LEFT JOIN Onwards.UserShiftLog AS USL ON U.Id = USL.UserId
    WHERE U.Id = @UserId AND DAY(Date) = DAY(GETDATE()) AND MONTH(Date) = Month(GETDATE()) and MONTH(Date) = Month(GETDATE());
END;


GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateBasicUserDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateCertificationDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateChildrenDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateEducationDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateExperienceDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateMaritalStatus]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdatePreviousExperienceDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateSkillDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserAddress]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserBankDetails]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserCompliance]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDetails]    Script Date: 18-07-2025 19:56:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserDetails]
    @LoginId INT,
	@Password NVARCHAR(100),
	@FullName NVARCHAR(100),
	@Email NVARCHAR(100),
	@Mobile NVARCHAR(20),
	@DOJ DATETIME,
    @DOR DATETIME = NULL,
    @RoleId INT,
    @GradeId INT,
    @DepartmentId INT,
    @ReportingManagerId INT,
    @AdministrativeManagerId INT,
	@Return NVARCHAR(100) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

    DECLARE @IsExist INT;
	DECLARE @NewId INT;

	SELECT @IsExist = Id
	FROM Onwards.Users
	WHERE Email = @Email

	IF (@IsExist IS NULL)
	BEGIN
		INSERT INTO Onwards.Users (
		EmployeeCode,
		Password,
		FullName,
		Email,
		Mobile,
		DOJ,
		DOR,
		RoleId,
		GradeId,
		DepartmentId,
		ReportingManagerId,
		AdministrativeManagerId,
		CreatedDate,
		CreatedBy,
		ModifiedDate,
		ModifiedBy,
		IsActive
		)
		VALUES
		(
				'EMP',
				@Password,
				@FullName,
				@Email,
				@Mobile,
				@DOJ,
				@DOR,
				@RoleId,
				@GradeId,
				@DepartmentId,
				@ReportingManagerId,
				@AdministrativeManagerId,
				GETDATE(),     
				@LoginId,      
				NULL,         
				NULL,          
				1           
			);

		SET @NewId = SCOPE_IDENTITY(); -- Store the identity value

        SET @Return = 'EMP' + CAST(@NewId AS NVARCHAR(100));

        UPDATE Onwards.Users 
        SET EmployeeCode = @Return
        WHERE Id = @NewId;

	END
	ELSE
	BEGIN
		UPDATE Onwards.Users
		SET 
			Password = @Password,
			FullName = @FullName,
			Email = @Email,
			Mobile = @Mobile,
			DOJ = @DOJ,
			DOR = @DOR,
			RoleId = @RoleId,
			GradeId = @GradeId,
			DepartmentId = @DepartmentId,
			ReportingManagerId = @ReportingManagerId,
			AdministrativeManagerId = @AdministrativeManagerId,
			ModifiedDate = GETDATE(),
			ModifiedBy = @LoginId
		WHERE Id = @IsExist;

		SELECT @Return=EmployeeCode 
		FROM Onwards.Users
		WHERE Id = @IsExist
	END
END
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDocuments]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserEmergencyContact]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserShiftLog]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[sp_UserLogin]    Script Date: 18-07-2025 19:56:21 ******/
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
/****** Object:  StoredProcedure [Onwards].[UserLogin]    Script Date: 18-07-2025 19:56:21 ******/
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
