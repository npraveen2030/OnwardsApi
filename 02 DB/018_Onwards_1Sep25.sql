
Update Onwards.users
SET LocationId= 1
where  LocationId= 0


CREATE TYPE [Onwards].[ExitInterviewOptionsType] AS TABLE(
	[LoginId] [int] NOT NULL,
	[Id] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL
)
GO


CREATE TYPE [Onwards].[ExitInterviewQuestionsType] AS TABLE(
	[RowIndex] [int] NOT NULL,
	[LoginId] [int] NOT NULL,
	[Id] [int] NULL,
	[ExitInterviewId] [int] NOT NULL,
	[Question] [nvarchar](500) NOT NULL,
	[HasOptions] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL
)
GO

/****** Object:  StoredProcedure [Onwards].[sp_ValidateUserLogin]    Script Date: 01-09-2025 12:16:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [Onwards].[sp_ValidateUserLogin] 'EMP001','password'
ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName, U.Mobile , RM.EmployeeCode AS ReportingManagerEmpCode
	, RM.FullName AS ReportingManagerFullName, U.Id, U.LocationId  
	FROM Onwards.Users as U
	LEFT JOIN Onwards.BasicUserDetails as BD ON U.id= BD.Userid AND BD.Isactive = 1 
	LEFT JOIN Onwards.Roles as R on U.RoleId = R.Id  and R.isActive =1
	LEFT JOIN Onwards.Users as RM ON RM.Id = U.ReportingManagerId AND RM.Isactive = 1 
	INNER JOIN Onwards.Locations as L on U.LocationId = L.Id AND L.IsActive =1
	AND U.Isactive = 1 
	
	WHERE 
      U.EmployeeCode = @EmployeeCode AND U.Password = @Password;
END;

CREATE TABLE [Onwards].[ExitInterviewQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExitInterviewId] [int] NOT NULL,
	[Question] [nvarchar](500) NOT NULL,
	[HasOptions] [bit] NOT NULL,
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

ALTER TABLE [Onwards].[ExitInterviewQuestions] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [Onwards].[ExitInterviewQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExitInterview_ExitInterviewQuestions] FOREIGN KEY([ExitInterviewId])
REFERENCES [Onwards].[ExitInterview] ([Id])
GO

ALTER TABLE [Onwards].[ExitInterviewQuestions] CHECK CONSTRAINT [FK_ExitInterview_ExitInterviewQuestions]
GO


CREATE TABLE [Onwards].[ExitInterviewOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
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

ALTER TABLE [Onwards].[ExitInterviewOptions] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [Onwards].[ExitInterviewOptions]  WITH CHECK ADD  CONSTRAINT [FK_QUES_OPT] FOREIGN KEY([QuestionId])
REFERENCES [Onwards].[ExitInterviewQuestions] ([Id])
GO

ALTER TABLE [Onwards].[ExitInterviewOptions] CHECK CONSTRAINT [FK_QUES_OPT]
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
CREATE TABLE [Onwards].[ExitInterview](
	[Id] [int] NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK__ExitInte__3214EC075A5AB277] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Onwards].[ExitInterview] ADD  DEFAULT ((1)) FOR [IsActive]
GO
