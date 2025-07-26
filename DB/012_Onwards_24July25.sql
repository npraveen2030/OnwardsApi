USE [Projects]
GO
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateUserDetails]    Script Date: 24-07-2025 15:57:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Onwards].[InsertOrUpdateUserDetails]
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

/****** Object:  StoredProcedure [Onwards].[InsertUserLeaveApplied]    Script Date: 24-07-2025 15:58:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Onwards].[InsertUserLeaveApplied]
	@LoginId INT,
	@UserId INT,
	@LeaveTypeId INT,
	@Year INT,
	@StartDate DATETIME,
	@EndDate DATETIME,
	@Reason VARCHAR(300),
	@LeaveStatusId INT
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
	BEGIN TRANSACTION;

		Insert Onwards.UserLeaveApplied ([UserId]
			  ,[LeaveTypeId]
			  ,[Year]
			  ,[StartDate]
			  ,[EndDate]
			  ,[Reason]
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
				@LeaveStatusId,
				GETDATE(),
				@LoginId,
				NULL,
				NULL,
				1);

		UPDATE Onwards.LeaveBalances
		SET RemainingDays = RemainingDays - DATEDIFF(DAY, @StartDate, @EndDate)
		WHERE (UserId = @UserId) AND (LeaveTypeId = @LeaveTypeId)

	COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END


/****** Object:  StoredProcedure [Onwards].[UpdateUserLeaveApplied]    Script Date: 24-07-2025 15:59:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Onwards].[UpdateUserLeaveApplied]
	@Id INT,
	@LoginId INT,
	@LeaveStatusId INT
AS
BEGIN
	SET NOCOUNT ON;
	SET XACT_ABORT ON;

	BEGIN TRY
	BEGIN TRANSACTION;

		UPDATE Onwards.UserLeaveApplied
			SET ModifiedBy = @LoginId,ModefiedDate = GETDATE(),LeaveStatusId = @LeaveStatusId
			WHERE Id = @Id
		--3=> Rejected  FROM Onwards.LeaveStatus
		--4=> Cancelled FROM Onwards.LeaveStatus
		IF (@LeaveStatusId IN (3,4))
		BEGIN
			DECLARE @UserId INT;
			DECLARE @LeaveTypeId INT;
			DECLARE @StartDate DATETIME;
			DECLARE @EndDate DATETIME;

			SELECT @UserId = UserId, @LeaveStatusId = LeaveStatusId,@StartDate = StartDate,@EndDate = EndDate
			FROM Onwards.UserLeaveApplied
			WHERE Id = @Id

			UPDATE Onwards.LeaveBalances
			SET RemainingDays = RemainingDays + DATEDIFF(DAY, @StartDate, @EndDate)
			WHERE (UserId = @UserId) AND (LeaveTypeId = @LeaveStatusId)
		END

	COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.InsertResignationReason
	@LoginId INT,
	@Reason NVARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO Onwards.ResignationReason (Reason,createdDate,createdBy)
	VALUES (@Reason,GETDATE(),@LoginId)
END
GO
-----------------------------------------------------------------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.UpdateResignationReason
	@Id INT,
	@LoginId INT,
	@Reason NVARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE Onwards.ResignationReason 
	SET Reason = @Reason , ModifiedDate = GETDATE() , ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO

-----------------------------------------------------------------------------------------------


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.DeleteResignationReason
	@Id INT,
	@LoginId INT
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE Onwards.ResignationReason 
	SET IsActive = 0 , ModifiedDate = GETDATE() , ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO
--------------------------------------------------------------------------------------



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.InsertResignationType
	@LoginId INT,
	@TypeName NVARCHAR(100),
	@Description NVARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO Onwards.ResignationType (TypeName,Description,createdDate,createdBy)
	VALUES (@TypeName,@Description,GETDATE(),@LoginId)
END
GO
-----------------------------------------------------------------------------------------------



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.UpdateResignationType
	@Id INT,
	@LoginId INT,
	@TypeName NVARCHAR(100),
	@Description NVARCHAR(255)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE Onwards.ResignationType
	SET TypeName = @TypeName ,Description=@Description, ModifiedDate = GETDATE() , ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.DeleteResignationType
	@Id INT,
	@LoginId INT
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE Onwards.ResignationType 
	SET IsActive = 0 , ModifiedDate = GETDATE() , ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO
-----------------------------------------------------------------------------------------------------

ALTER TABLE Onwards.Resignation
ALTER COLUMN IsActive BIT NOT NULL
GO



SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.InsertResignation
	@LoginId INT,
	@UserId INT,
	@ResignationTypeId INT,
	@ResignationReasonId INT,
	@ResignationLetterDate DATE,
	@ResignationRelivingDate DATE,
	@ResignationActualDate DATE,
	@NoticePeriod INT,
	@EndOfNoticePeriod INT,
	@MailingAddress VARCHAR(500) = NULL,
	@Address VARCHAR(500) = NULL,
	@PersonalEmailid VARCHAR(500) = NULL,
	@Comments VARCHAR(500) = NULL,
	@AttachmentFile VARCHAR(500) = NULL,
	@PullbackComment VARCHAR(500) = NULL,
	@StatusId INT = NULL,
	@ApprovedBy INT = NULL,
	@ApprovalDate DATE = NULL,
	@ApproverRemarks VARCHAR(1000) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO Onwards.Resignation (
		UserId, ResignationTypeId, ResignationReasonId,
		ResignationLetterDate, ResignationRelivingDate, ResignationActualDate,
		NoticePeriod, EndOfNoticePeriod, MailingAddress, Address,
		PersonalEmailid, Comments, AttachmentFile, PullbackComment,
		StatusId, ApprovedBy, ApprovalDate, ApproverRemarks,
		createdDate, createdBy, IsActive
	)
	VALUES (
		@UserId, @ResignationTypeId, @ResignationReasonId,
		@ResignationLetterDate, @ResignationRelivingDate, @ResignationActualDate,
		@NoticePeriod, @EndOfNoticePeriod, @MailingAddress, @Address,
		@PersonalEmailid, @Comments, @AttachmentFile, @PullbackComment,
		@StatusId, @ApprovedBy, @ApprovalDate, @ApproverRemarks,
		GETDATE(), @LoginId, 1
	)
END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.UpdateResignation
	@Id INT,
	@LoginId INT,
	@UserId INT,
	@ResignationTypeId INT,
	@ResignationReasonId INT,
	@ResignationLetterDate DATE,
	@ResignationRelivingDate DATE,
	@ResignationActualDate DATE,
	@NoticePeriod INT,
	@EndOfNoticePeriod INT,
	@MailingAddress VARCHAR(500) = NULL,
	@Address VARCHAR(500) = NULL,
	@PersonalEmailid VARCHAR(500) = NULL,
	@Comments VARCHAR(500) = NULL,
	@AttachmentFile VARCHAR(500) = NULL,
	@PullbackComment VARCHAR(500) = NULL,
	@StatusId INT = NULL,
	@ApprovedBy INT = NULL,
	@ApprovalDate DATE = NULL,
	@ApproverRemarks VARCHAR(1000) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Onwards.Resignation
	SET
		UserId = @UserId,
		ResignationTypeId = @ResignationTypeId,
		ResignationReasonId = @ResignationReasonId,
		ResignationLetterDate = @ResignationLetterDate,
		ResignationRelivingDate = @ResignationRelivingDate,
		ResignationActualDate = @ResignationActualDate,
		NoticePeriod = @NoticePeriod,
		EndOfNoticePeriod = @EndOfNoticePeriod,
		MailingAddress = @MailingAddress,
		Address = @Address,
		PersonalEmailid = @PersonalEmailid,
		Comments = @Comments,
		AttachmentFile = @AttachmentFile,
		PullbackComment = @PullbackComment,
		StatusId = @StatusId,
		ApprovedBy = @ApprovedBy,
		ApprovalDate = @ApprovalDate,
		ApproverRemarks = @ApproverRemarks,
		ModifiedDate = GETDATE(),
		ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO




SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE Onwards.DeleteResignation
	@Id INT,
	@LoginId INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Onwards.Resignation
	SET
		IsActive = 0,
		ModifiedDate = GETDATE(),
		ModifiedBy = @LoginId
	WHERE Id = @Id
END
GO


CREATE TABLE Onwards.ExitInterview(
	Id INT PRIMARY KEY,
	Value NVARCHAR(100) NOT NULL,
	CreatedDate DATETIME NULL,
	CreatedBy INT NULL,
	ModifiedDate DATETIME NULL,
	ModifiedBy INT NULL,
	IsActive BIT NOT NULL DEFAULT 1
)

INSERT INTO Onwards.ExitInterview (Id, Value)
VALUES
(1,'Reason for leaving'),
(2,'Job Satisfaction'),
(3,'Feedback about your manager')

CREATE TABLE Onwards.ExitInterviewQuestions(
	Id INT PRIMARY KEY IDENTITY,
	ExitInterviewId INT NOT NULL,
	Question NVARCHAR(500) NOT NULL,
	HasOptions BIT NOT NULL,
	CreatedDate DATETIME NULL,
	CreatedBy INT NULL,
	ModifiedDate DATETIME NULL,
	ModifiedBy INT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	CONSTRAINT FK_ExitInterview_ExitInterviewQuestions FOREIGN KEY (ExitInterviewId) REFERENCES Onwards.ExitInterview(Id)
)

CREATE TABLE Onwards.ExitInterviewOptions(
	Id INT PRIMARY KEY IDENTITY, 
	QuestionId INT NOT NULL,
	Description NVARCHAR(100) NOT NULL,
	CreatedDate DATETIME NULL,
	CreatedBy INT NULL,
	ModifiedDate DATETIME NULL,
	ModifiedBy INT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	CONSTRAINT FK_QUES_OPT FOREIGN KEY (QuestionId) REFERENCES Onwards.ExitInterviewQuestions(Id)
)

CREATE TABLE Onwards.UserExitInterview(
	Id INT PRIMARY KEY IDENTITY, 
	ExitInterviewId INT NOT NULL,
	QuestionId INT NOT NULL,
	OptionId INT NULL,
	Answer NVARCHAR(500) NULL,
	CreatedDate DATETIME NULL,
	CreatedBy INT NULL,
	ModifiedDate DATETIME NULL,
	ModifiedBy INT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	CONSTRAINT FK_EI_User FOREIGN KEY (ExitInterviewId) REFERENCES Onwards.ExitInterview(Id),
	CONSTRAINT FK_QUES_User FOREIGN KEY (QuestionId) REFERENCES Onwards.ExitInterviewQuestions(Id),
	CONSTRAINT FK_Opt_User FOREIGN KEY (OptionId) REFERENCES Onwards.ExitInterviewOptions(Id)
)

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [Onwards].[GetExitInterviewQuestions]

AS
BEGIN

	SET NOCOUNT ON;

    SELECT * 
	FROM Onwards.ExitInterviewQuestions
	WHERE IsActive = 1

END
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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



CREATE TYPE Onwards.ExitInterviewQuestionsType AS TABLE
(
	LoginId INT NOT NULL,
	Id INT NULL,
    ExitInterviewId INT NOT NULL,
    Question NVARCHAR(500) NOT NULL,
	HasOptions BIT NOT NULL,
	IsActive BIT NOT NULL
)

CREATE TYPE Onwards.ExitInterviewOptionsType AS TABLE
(
	LoginId INT NOT NULL,
	Id INT NULL,
    QuestionId INT NOT NULL,
    Description NVARCHAR(100) NOT NULL,
	IsActive BIT NOT NULL
)

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
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