
------------------------------------------ 29 July 2025 ------------------------------------------------ 

-- exec [Onwards].[sp_ValidateUserLogin] 'EMP403','password'
ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName FROM Onwards.Users as U
	LEFT JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid
	LEFT JOIN Onwards.Roles as R on U.RoleId = R.Id 
			  AND BD.Isactive = 1 and R.isActive =1
	WHERE U.Isactive = 1 
    AND EmployeeCode = @EmployeeCode AND Password = @Password;
END;

-- exec [Onwards].[GetUserShiftDetails] 1
-- exec [Onwards].[GetUserShiftDetails] 2
ALTER PROCEDURE [Onwards].[GetUserShiftDetails]
    @UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        U.FullName,
        S.ShiftName,
        S.StartTime,
		CASE 
			WHEN StartTime IS NULL 
				THEN FORMAT(GETDATE(), 'hh:mm tt')   
			 ELSE FORMAT(CAST(CAST(S.StartTime AS datetime) AS datetime), 'hh:mm tt') 
		END AS ShiftStartTime,
		CASE 
			WHEN S.EndTime IS NULL 
				THEN FORMAT(GETDATE(), 'hh:mm tt')   
			 ELSE FORMAT(CAST(CAST(S.EndTime AS datetime) AS datetime), 'hh:mm tt') 
		END AS EndTime,  
		CASE 
			WHEN USL.LoginTime IS NULL 
				THEN FORMAT(GETDATE(), 'hh:mm tt')   
			 ELSE FORMAT(CAST(CAST(USL.LoginTime AS datetime) AS datetime), 'hh:mm tt') 
		END AS LoginTime,
		CASE 
			WHEN USL.LogOutTime IS NULL 
				THEN NULL  
			 ELSE FORMAT(CAST(CAST(USL.LogOutTime AS datetime) AS datetime), 'hh:mm tt') 
		END AS LogOutTime,
        GETDATE() AS TodayDate,
        CONVERT(VARCHAR(8), GETDATE(), 108) AS CurrentTime,
		0 AS TotalLoggedInHours
    FROM Onwards.Users AS U
    LEFT JOIN Onwards.UserShiftAssignment AS USA ON U.Id = USA.UserId
    LEFT JOIN Onwards.Shift AS S ON USA.ShiftId = S.ShiftId
    LEFT JOIN Onwards.UserShiftLog AS USL ON U.Id = USL.UserId
			  AND DAY(Date) = DAY(GETDATE()) AND MONTH(Date) = Month(GETDATE()) AND MONTH(Date) = Month(GETDATE())
    WHERE U.Id = @UserId
	
END;


-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------

ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName FROM Onwards.Users as U
	INNER JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid
	INNER JOIN Onwards.Roles as R on U.RoleId = R.Id 
	WHERE U.Isactive = 1 AND BD.Isactive = 1 and R.isActive =1
    AND EmployeeCode = @EmployeeCode AND Password = @Password;
END;


USE [Projects]
GO

/****** Object:  Table [Onwards].[BasicUserDetails]    Script Date: 29-07-2025 11:42:24 ******/
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


