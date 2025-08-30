CREATE PROCEDURE [Onwards].[GetExitInterviewQuestions]

AS
BEGIN

	SET NOCOUNT ON;

    SELECT * 
	FROM Onwards.ExitInterviewQuestions
	WHERE IsActive = 1

END
GO

CREATE PROCEDURE [Onwards].[GetExitInterviewOptions]

AS
BEGIN

	SET NOCOUNT ON;

    SELECT * 
	FROM Onwards.ExitInterviewOptions
	WHERE IsActive = 1

END
GO

CREATE PROCEDURE [Onwards].[InsertOrUpdateExitInterviewQuestions]
    @Questions Onwards.ExitInterviewQuestionsType READONLY
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @CreatedIds TABLE (Id INT, RowIndex INT);

    BEGIN TRY
        BEGIN TRANSACTION;

        -- MERGE for INSERT only (Id IS NULL)
        MERGE INTO Onwards.ExitInterviewQuestions AS target
        USING (
            SELECT *
            FROM @Questions
            WHERE Id IS NULL
        ) AS source
        ON 1 = 0 -- Always false to force INSERT

        WHEN NOT MATCHED THEN
        INSERT (ExitInterviewId, Question, HasOptions, CreatedDate, CreatedBy, IsActive)
        VALUES (source.ExitInterviewId, source.Question, source.HasOptions, GETDATE(), source.LoginId, 1)

        OUTPUT inserted.Id, source.RowIndex INTO @CreatedIds(Id, RowIndex);

        -- UPDATE: Only rows with Id NOT NULL
        UPDATE q
        SET
            q.ExitInterviewId = src.ExitInterviewId,
            q.Question = src.Question,
            q.HasOptions = src.HasOptions,
            q.ModifiedDate = GETDATE(),
            q.ModifiedBy = src.LoginId,
            q.IsActive = src.IsActive
        FROM Onwards.ExitInterviewQuestions q
        JOIN @Questions src ON q.Id = src.Id
        WHERE src.Id IS NOT NULL;

        COMMIT TRANSACTION;

        -- Return the mapping of inserted Ids and RowIndex
        SELECT * FROM @CreatedIds;

    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END

GO


CREATE PROCEDURE [Onwards].[InsertOrUpdateExitInterviewOptions]
    @Options Onwards.ExitInterviewOptionsType READONLY
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- INSERT: Where Id IS NULL
        INSERT INTO Onwards.ExitInterviewOptions (
            QuestionId, Description, CreatedDate, CreatedBy, IsActive
        )
        SELECT
            o.QuestionId,
            o.Description,
            GETDATE(),
            o.LoginId,
            o.IsActive
        FROM @Options o
        WHERE o.Id IS NULL;

        -- UPDATE: Where Id IS NOT NULL
        UPDATE opt
        SET
            opt.QuestionId = o.QuestionId,
            opt.Description = o.Description,
            opt.ModifiedDate = GETDATE(),
            opt.ModifiedBy = o.LoginId,
            opt.IsActive = o.IsActive
        FROM Onwards.ExitInterviewOptions opt
        JOIN @Options o ON opt.Id = o.Id
        WHERE o.Id IS NOT NULL;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END;
GO



---------------------------- 22 Aug 2024 -------------------
ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName, U.Mobile , RM.EmployeeCode AS ReportingManagerEmpCode
	, RM.FullName AS ReportingManagerFullName, U.Id , U.LocationId
	FROM Onwards.Users as U
	LEFT JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid AND BD.Isactive = 1 
	LEFT JOIN Onwards.Roles as R on U.RoleId = R.Id  and R.isActive =1
	LEFT JOIN Onwards.Users as RM ON RM.Id = U.ReportingManagerId AND RM.Isactive = 1 
	AND U.Isactive = 1 
	
	WHERE 
      U.EmployeeCode = @EmployeeCode AND U.Password = @Password;
END;

ALTER TABLE Onwards.UserLeaveApplied
DROP COLUMN ContentType

  ALTER TABLE Onwards.UserLeaveApplied
  ADD PhoneNo NVARCHAR(20) NOT NULL DEFAULT ''

  ALTER TABLE Onwards.UserLeaveApplied
ADD NotifiedUserId INT NOT NULL DEFAULT 1;

ALTER TABLE Onwards.UserLeaveApplied
ADD CONSTRAINT FK_UserLeaveApplied_Users_NotifiedUser
    FOREIGN KEY (NotifiedUserId) REFERENCES Onwards.Users(Id);



ALTER PROCEDURE [Onwards].[InsertOrUpdateUserLeaveApplied]
	@Id INT = NULL,
	@LoginId INT,
	@UserId INT,
	@LeaveTypeId INT,
	@Year INT= NULL,
	@PhoneNo NVARCHAR(20) = NULL,
	@StartDate DATETIME,
	@EndDate DATETIME,
	@NoOfDays DECIMAL(9,2) = NULL,
	@LocationId INT = NULL,
	@Reason VARCHAR(300)= NULL,
	@Action NVARCHAR(300) = NULL,
	@FileName NVARCHAR(255) = NULL,
	@Data VARBINARY(MAX) = NULL,
	@LeaveStatusId INT
	
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
	BEGIN TRANSACTION;

		IF (@Id IS NOT NULL)
		BEGIN

			DECLARE @WorkingDays INT;
			;WITH DateSeries AS
			(
				SELECT @StartDate AS TheDate
				UNION ALL
				SELECT DATEADD(DAY, 1, TheDate)
				FROM DateSeries
				WHERE TheDate < @EndDate
			)
			SELECT 
				@WorkingDays = COUNT(*)
			FROM DateSeries d
			WHERE 
				-- Exclude weekends
				DATENAME(WEEKDAY, d.TheDate) NOT IN ('Saturday', 'Sunday')
				-- Exclude holidays
				AND NOT EXISTS (
					SELECT 1 
					FROM Onwards.HolidayList h
					WHERE h.LocationId = @LocationId 
					  AND h.HolidayDate = d.TheDate
				)
			OPTION (MAXRECURSION 0);

			Insert Onwards.UserLeaveApplied ([UserId]
					  ,[LeaveTypeId]
					  ,[Year]
					  ,[NoOfDays]
					  ,[StartDate]
					  ,[EndDate]
					  ,[Reason]
					  ,[Action]
					  ,[FileName]
					  ,[Data]
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
						@WorkingDays,
						@StartDate,
						@EndDate,
						@Reason,
						@Action,
						@FileName,
						@Data,
						@LeaveStatusId,
						GETDATE(),
						@LoginId,
						NULL,
						NULL,
						1);

				UPDATE Onwards.LeaveBalances
				SET RemainingDays = RemainingDays - @WorkingDays
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
				SET RemainingDays = RemainingDays + @NoOfDays
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




---------------------------- 21 Aug 2024 -------------------
  ALTER TABLE Onwards.Users
ADD LocationId INT NOT NULL DEFAULT 0;

CREATE PROCEDURE Onwards.GetLeaveTypes 
	
AS
BEGIN

	SET NOCOUNT ON;

    SELECT [Id]
      ,[LeaveTypeName]
      ,[MaxDaysPerYear]
	  FROM Onwards.LeaveTypes
	  WHERE IsActive = 1
END
GO
---------------------------- 20 Aug 2024 -------------------

UPDATE Onwards.ResignationReason
SET IsActive = 1

--Exec [Onwards].[GetResignationReason]
CREATE PROCEDURE [Onwards].[GetResignationReason] 
AS
BEGIN
    SET NOCOUNT ON;

	SELECT Id,Reason FROM Onwards.ResignationReason
	WHERE IsActive = 1 ORDER by Reason ASC
END
  
  

UPDATE Onwards.ResignationType
SET IsActive = 1

--EXEC [Onwards].[GetResignationType] 
CREATE PROCEDURE [Onwards].[GetResignationType] 
AS
BEGIN
    SET NOCOUNT ON;

	SELECT Id,TypeName FROM Onwards.ResignationType
	WHERE IsActive = 1 ORDER by TypeName ASC
END
  
  
  


ALTER PROCEDURE [Onwards].[InsertOrUpdateUserLeaveApplied]
	@Id INT = NULL,
	@LoginId INT= NULL,
	@UserId INT= NULL,
	@LeaveTypeId INT= NULL,
	@Year INT= NULL,
	@StartDate DATETIME= NULL,
	@EndDate DATETIME= NULL,
	@Reason VARCHAR(300)= NULL,
	@Action NVARCHAR(300) = NULL,
	@FileName NVARCHAR(255) = NULL,
	@ContentType NVARCHAR(100) = NULL,
	@Data VARBINARY(MAX) = NULL,
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
					  ,[FileName]
					  ,[ContentType]
					  ,[Data]
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
						@FileName,
						@ContentType,
						@Data,
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



CREATE PROCEDURE [Onwards].[GetUserLeaveApplied]
	@UserId INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		   u.Id,
		   t.LeaveTypeName,
		   u.NoOfDays,
		   u.StartDate,
		   u.EndDate,
		   s.Name
	FROM Onwards.UserLeaveApplied AS u
	INNER JOIN Onwards.LeaveTypes AS t ON u.LeaveTypeId = t.Id
	INNER JOIN Onwards.LeaveStatus AS s ON u.LeaveStatusId = s.Id
	WHERE u.UserId = @UserId
	ORDER BY u.CreatedDate DESC
	OFFSET 0 ROWS FETCH NEXT 15 ROWS ONLY;
     
END

CREATE PROCEDURE [Onwards].[GetUsersByName]
	@First NVARCHAR(100) = NULL,
    @Second NVARCHAR(100) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
        BEGIN TRANSACTION;
			SELECT DISTINCT FullName
			FROM Users
			WHERE
				(@First IS NOT NULL AND FullName LIKE '%' + @First + '%')
				OR (@Second IS NOT NULL AND FullName LIKE '%' + @Second + '%')
			ORDER BY FullName;
		
		COMMIT TRANSACTION;
	END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END
GO
------------------------------------------------------------------------------------------------------------------


CREATE TABLE [Onwards].[Locations](
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
SET IDENTITY_INSERT [Onwards].[Locations] ON 
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) 
VALUES (1, N'Bangalore', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive])
VALUES (2, N'Mumbai', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[Locations] ([Id], [Name], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) 
VALUES (3, N'New York', CAST(N'2025-07-16T16:56:12.643' AS DateTime), 1, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Locations] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Location__737584F64DDCA250]    Script Date: 19-08-2025 12:11:30 ******/
ALTER TABLE [Onwards].[Locations] ADD UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Onwards].[Locations] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[Locations] ADD  DEFAULT ((1)) FOR [IsActive]
GO
