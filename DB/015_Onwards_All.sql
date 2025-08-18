

------------------------------------------ 18 August 2025 ------------------------------------------------ 

ALTER PROCEDURE [Onwards].[GetHolidaByLocationId]
    @LocationId INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT H.id, H.HolidayDate, H.Day, H.HolidayName, L.Name AS Location FROM Onwards.HolidayList AS H 
	INNER JOIN Onwards.Locations AS L ON H.LocationId = L.ID AND L.IsActive = 1 AND H.IsActive = 1
	WHERE H.LocationId = @LocationId AND Year(HolidayDate) = YEAR(GETDATE()) Order BY Id ASC ;
END
 
DROP TABLE [Onwards].[Training]
CREATE TABLE [Onwards].[Training](
	[id] [int] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Name] [nvarchar](255) NULL,
	[locationid] [int] NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


-- Insert 30 dummy records for LocationId = 1
DECLARE @i INT = 1;
WHILE @i <= 30
BEGIN
    INSERT INTO [Onwards].[Training] 
    (
        [id], 
        [StartDate], 
        [EndDate], 
        [Name], 
        [locationid], 
        [createdDate], 
        [createdBy], 
        [ModifiedDate], 
        [ModifiedBy], 
        [IsActive]
    )
    VALUES 
    (
        @i, 
        DATEADD(DAY, @i, '2025-01-01'), 
        DATEADD(DAY, @i + 5, '2025-01-01'), 
        CONCAT('Training Session ', @i), 
        1, 
        GETDATE(), 
        3, 
        GETDATE(), 
        2, 
        1
    );

    SET @i = @i + 1;
END;


-- Insert 30 dummy records for LocationId = 2
SET @i = 1;
WHILE @i <= 30
BEGIN
    INSERT INTO [Onwards].[Training] 
    (
        [id], 
        [StartDate], 
        [EndDate], 
        [Name], 
        [locationid], 
        [createdDate], 
        [createdBy], 
        [ModifiedDate], 
        [ModifiedBy], 
        [IsActive]
    )
    VALUES 
    (
        100 + @i,   -- avoid duplicate primary keys
        DATEADD(DAY, @i, '2025-02-01'), 
        DATEADD(DAY, @i + 5, '2025-02-01'), 
        CONCAT('Training Session ', @i), 
        2, 
        GETDATE(), 
        2, 
        GETDATE(), 
        3, 
        1
    );

    SET @i = @i + 1;
END;
GO

/****** Object:  StoredProcedure [Onwards].[GetTrainingByLocation]    Script Date: 18-08-2025 19:23:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--EXEC  [Onwards].[GetTrainingByLocation] 1
ALTER PROCEDURE [Onwards].[GetTrainingByLocation]
    @LocationId INT
AS
BEGIN
    SET NOCOUNT ON;
    SELECT T.Name + ' - From Date (' + CAST(T.StartDate AS VARCHAR(15))  + ' ) - To Date (' + CAST(T.EndDate AS VARCHAR(15))  + ' ) - Contact (' + U.FullName + ')'  Name
	FROM Onwards.Training AS T
	INNER JOIN Onwards.Users AS U On T.createdBy = U.Id  
	WHERE LocationId = @LocationId AND T.IsActive = 1  AND U.IsActive = 1;
END
  
------------------------------------------ 7 August 2025 ------------------------------------------------ 
--ALTER TABLE Onwards.UserLeaveApplied
--ADD Action NVARCHAR(300) NULL
ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName, U.Mobile , RM.EmployeeCode AS ReportingManagerEmpCode
	, RM.FullName AS ReportingManagerFullName, U.Id
	FROM Onwards.Users as U
	LEFT JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid AND BD.Isactive = 1 
	LEFT JOIN Onwards.Roles as R on U.RoleId = R.Id  and R.isActive =1
	INNER JOIN Onwards.Users as RM ON RM.Id = U.ReportingManagerId AND RM.Isactive = 1 
	AND U.Isactive = 1 
	
	WHERE 
      U.EmployeeCode = @EmployeeCode AND U.Password = @Password;
END;
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserLeaveApplied]
	@Id INT = NULL,
	@LoginId INT= NULL,
	@UserId INT= NULL,
	@LeaveTypeId INT= NULL,
	@Year INT= NULL,
	@StartDate DATETIME= NULL,
	@EndDate DATETIME= NULL,
	@Reason VARCHAR(300)= NULL,
	@Action NVARCHAR(300) = NULL,
	@LeaveStatusId INT= NULL
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
	BEGIN TRANSACTION;
		
		IF (@Id IS NOT NULL)
		BEGIN
			Insert Onwards.UserLeaveApplied ([UserId]
					  ,[LeaveTypeId]
					  ,[Year]
					  ,[StartDate]
					  ,[EndDate]
					  ,[Reason]
					  ,[Action]
					  ,[LeaveStatusId]
					  ,[CreatedDate]
					  ,[CreatedBy]
					  ,[ModefiedDate]
					  ,[ModifiedBy]
					  ,[IsActive])
				VALUES
						(@UserId,
						@LeaveTypeId,
						@Year,
						@StartDate,
						@EndDate,
						@Reason,
						@Action,
						@LeaveStatusId,
						GETDATE(),
						@LoginId,
						NULL,
						NULL,
						1);

				UPDATE Onwards.LeaveBalances
				SET RemainingDays = RemainingDays - (DATEDIFF(DAY, @StartDate, @EndDate) + 1)
				WHERE UserId = @UserId AND LeaveTypeId = @LeaveTypeId
		END
		ELSE 
		BEGIN 
			UPDATE Onwards.UserLeaveApplied
			SET ModifiedBy = @LoginId,ModefiedDate = GETDATE(),LeaveStatusId = @LeaveStatusId, Action = @Action
			WHERE Id = @Id
			-- 3: Rejected , 4: Cancelled
			IF (@LeaveStatusId IN (3,4))
			BEGIN
				UPDATE Onwards.LeaveBalances
				SET RemainingDays = RemainingDays + (DATEDIFF(DAY, @StartDate, @EndDate) + 1)
				WHERE UserId = @UserId AND LeaveTypeId = @LeaveStatusId
			END
		END
	COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END



------------------------------------------ 6 August 2025 ------------------------------------------------ 
--ALTER TABLE [Onwards].[UserLeaveApplied]
--ADD NoOfDays DECIMAL(9, 2) NOT NULL DEFAULT 0;

CREATE TABLE [Onwards].[UserLeaveApplied](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[LeaveTypeId] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[NoOfDays] [decimal](9, 2) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[Reason] [varchar](300) NULL,
	[Action] [nvarchar](300) NULL,
	[LeaveStatusId] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModefiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[FileName] [nvarchar](255) NULL,
	[ContentType] [nvarchar](100) NULL,
	[Data] [varbinary](max) NULL,
 CONSTRAINT [PK_UserLeav_3214EC0755827368] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Onwards].[UserLeaveApplied] ADD  CONSTRAINT [DF_UserLeaveNoOfD_2E90DD8E]  DEFAULT ((0)) FOR [NoOfDays]
GO

ALTER TABLE [Onwards].[UserLeaveApplied]  WITH CHECK ADD  CONSTRAINT [FK_UserLeaveLeave_216BEC9A] FOREIGN KEY([LeaveTypeId])
REFERENCES [Onwards].[LeaveTypes] ([Id])
GO

ALTER TABLE [Onwards].[UserLeaveApplied] CHECK CONSTRAINT [FK_UserLeaveLeave_216BEC9A]
GO

ALTER TABLE [Onwards].[UserLeaveApplied]  WITH CHECK ADD  CONSTRAINT [FK_UserLeaveUserI_2077C861] FOREIGN KEY([UserId])
REFERENCES [Onwards].[Users] ([Id])
GO

ALTER TABLE [Onwards].[UserLeaveApplied] CHECK CONSTRAINT [FK_UserLeaveUserI_2077C861]

UPDATE Onwards.LeaveStatus
SET Name = 'Requested'
WHERE Id = 1


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [Onwards].[InsertOrUpdateUserShiftDetails]
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
            LogOutTime = CAST(GETDATE() AS TIME),
			ModifiedBy = @LogId,
			ModifiedDate = GETDATE()
        WHERE LogId = @LogId;

        SET @ResultLogId = @LogId; -- Return updated LogId
    END
END

--ALTER TABLE [Onwards].[UserLeaveApplied]
--ADD NoOfDays DECIMAL(9, 2) NOT NULL DEFAULT 0;


ALTER TABLE [Onwards].[LeaveBalances]
ADD CreatedDate DATETIME NOT NULL DEFAULT NULL;

ALTER TABLE [Onwards].[LeaveBalances]
ADD CreatedBy INT NOT NULL DEFAULT NULL;

/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDetails]    Script Date: 06-08-2025 19:10:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateUserDetails]
	@Id INT = NULL,
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
	@ShiftId INT,
	@Return NVARCHAR(100) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
        BEGIN TRANSACTION;

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

				SET @NewId = SCOPE_IDENTITY(); 

				SET @Return = 'EMP' + CAST(@NewId AS NVARCHAR(100));

				UPDATE Onwards.Users 
				SET EmployeeCode = @Return
				WHERE Id = @NewId;

				INSERT INTO Onwards.UserShiftAssignment ([UserId],[ShiftId],[CreatedBy],[CreatedDate],[IsActive])
				VALUES (@NewId,@ShiftId,@LoginId,GETDATE(),1);

				INSERT INTO Onwards.LeaveBalances(UserId,LeaveTypeId,Year,RemainingDays,CreatedDate,CreatedBy)
				SELECT @NewId,Id,0,0,GETDATE(),@LoginId
				FROM Onwards.LeaveTypes 

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
	COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END


------------------------------------------ 5 August 2025 ------------------------------------------------ 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Onwards].[InsertOrUpdateUserDetails]
	@Id INT = NULL,
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
	@ShiftId INT,
	@Return NVARCHAR(100) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
        BEGIN TRANSACTION;

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

				SET @NewId = SCOPE_IDENTITY(); 

				SET @Return = 'EMP' + CAST(@NewId AS NVARCHAR(100));

				UPDATE Onwards.Users 
				SET EmployeeCode = @Return
				WHERE Id = @NewId;

				INSERT INTO Onwards.UserShiftAssignment ([UserId],[ShiftId],[CreatedBy],[CreatedDate],[IsActive])
				VALUES (@NewId,@ShiftId,@LoginId,GETDATE(),1);

				INSERT INTO Onwards.LeaveBalances(UserId,LeaveTypeId,Year,RemainingDays,CreatedDate,CreatedBy)
				SELECT @NewId,Id,0,0,GETDATE(),@LoginId
				FROM Onwards.LeaveTypes 

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
	COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END

------------------------------------------ 31 July 2025 ------------------------------------------------ 

ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName, U.Mobile , RM.EmployeeCode AS ReportingManagerEmpCode
	, RM.FullName AS ReportingManagerFullName, U.Id
	FROM Onwards.Users as U
	LEFT JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid AND BD.Isactive = 1 
	LEFT JOIN Onwards.Roles as R on U.RoleId = R.Id  and R.isActive =1
	INNER JOIN Onwards.Users as RM ON RM.Id = U.ReportingManagerId AND RM.Isactive = 1 
	AND U.Isactive = 1 
	
	WHERE 
      U.EmployeeCode = @EmployeeCode AND U.Password = @Password;
END;



------------------------------------------ 29 July 2025 ------------------------------------------------ 
 
--exec [Onwards].[InsertOrUpdateUserShiftDetails] 11,NULL
ALTER PROCEDURE [Onwards].[InsertOrUpdateUserShiftDetails]
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


