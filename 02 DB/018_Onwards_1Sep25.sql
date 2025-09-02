CREATE TYPE [Onwards].[ExitInterviewOptionsType] AS TABLE(
	[LoginId] [int] NOT NULL,
	[Id] [int] NULL,
	[QuestionId] [int] NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
	[IsActive] [bit] NOT NULL
)
GO
/****** Object:  UserDefinedTableType [Onwards].[ExitInterviewQuestionsType]    Script Date: 02-09-2025 21:33:26 ******/
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
/****** Object:  Table [Onwards].[ExitInterview]    Script Date: 02-09-2025 21:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [Onwards].[ExitInterviewOptions]    Script Date: 02-09-2025 21:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [Onwards].[ExitInterviewQuestions]    Script Date: 02-09-2025 21:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  Table [Onwards].[UserExitInterview]    Script Date: 02-09-2025 21:33:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Onwards].[UserExitInterview](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExitInterviewId] [int] NOT NULL,
	[QuestionId] [int] NOT NULL,
	[OptionId] [int] NULL,
	[Answer] [nvarchar](500) NULL,
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
INSERT [Onwards].[ExitInterview] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, N'Reason for leaving', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterview] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, N'Job Satisfaction', NULL, NULL, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterview] ([Id], [Value], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, N'Feedback about your manager', NULL, NULL, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[ExitInterviewOptions] ON 
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, 7, N'Yes', CAST(N'2025-07-25T18:32:57.473' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, 7, N'No', CAST(N'2025-07-25T18:32:57.473' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, 9, N'Ramesh Child 1', CAST(N'2025-07-25T18:35:46.020' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, 9, N'Ramesh Child 2', CAST(N'2025-07-25T18:35:46.020' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, 11, N'Ramesh Child 1', CAST(N'2025-07-25T18:36:33.657' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (6, 11, N'Ramesh Child 2', CAST(N'2025-07-25T18:36:33.657' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (7, 12, N'Rahman Child 11', CAST(N'2025-07-25T18:36:33.657' AS DateTime), 1, CAST(N'2025-07-25T18:43:32.150' AS DateTime), 1, 1)
GO
INSERT [Onwards].[ExitInterviewOptions] ([Id], [QuestionId], [Description], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (8, 12, N'Rahman Child 12', CAST(N'2025-07-25T18:36:33.657' AS DateTime), 1, CAST(N'2025-07-25T18:43:32.150' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [Onwards].[ExitInterviewOptions] OFF
GO
SET IDENTITY_INSERT [Onwards].[ExitInterviewQuestions] ON 
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (7, 1, N'Do u Like your Job?', 1, CAST(N'2025-07-25T18:32:51.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (8, 1, N'Why do you want to Leave?', 0, CAST(N'2025-07-25T18:32:51.907' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (9, 1, N'Ramesh ', 1, CAST(N'2025-07-25T18:35:46.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (10, 1, N'Rahman', 0, CAST(N'2025-07-25T18:35:46.007' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (11, 1, N'Ramesh ', 1, CAST(N'2025-07-25T18:36:33.640' AS DateTime), 1, CAST(N'2025-07-25T18:43:32.120' AS DateTime), 1, 1)
GO
INSERT [Onwards].[ExitInterviewQuestions] ([Id], [ExitInterviewId], [Question], [HasOptions], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (12, 1, N'Rahman', 1, CAST(N'2025-07-25T18:36:33.640' AS DateTime), 1, CAST(N'2025-07-25T18:43:32.120' AS DateTime), 1, 1)
GO
SET IDENTITY_INSERT [Onwards].[ExitInterviewQuestions] OFF
GO
ALTER TABLE [Onwards].[ExitInterview] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ExitInterviewOptions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ExitInterviewQuestions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[UserExitInterview] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[ExitInterviewOptions]  WITH CHECK ADD  CONSTRAINT [FK_QUES_OPT] FOREIGN KEY([QuestionId])
REFERENCES [Onwards].[ExitInterviewQuestions] ([Id])
GO
ALTER TABLE [Onwards].[ExitInterviewOptions] CHECK CONSTRAINT [FK_QUES_OPT]
GO
ALTER TABLE [Onwards].[ExitInterviewQuestions]  WITH CHECK ADD  CONSTRAINT [FK_ExitInterview_ExitInterviewQuestions] FOREIGN KEY([ExitInterviewId])
REFERENCES [Onwards].[ExitInterview] ([Id])
GO
ALTER TABLE [Onwards].[ExitInterviewQuestions] CHECK CONSTRAINT [FK_ExitInterview_ExitInterviewQuestions]
GO
ALTER TABLE [Onwards].[UserExitInterview]  WITH CHECK ADD  CONSTRAINT [FK_EI_User] FOREIGN KEY([ExitInterviewId])
REFERENCES [Onwards].[ExitInterview] ([Id])
GO
ALTER TABLE [Onwards].[UserExitInterview] CHECK CONSTRAINT [FK_EI_User]
GO
ALTER TABLE [Onwards].[UserExitInterview]  WITH CHECK ADD  CONSTRAINT [FK_Opt_User] FOREIGN KEY([OptionId])
REFERENCES [Onwards].[ExitInterviewOptions] ([Id])
GO
ALTER TABLE [Onwards].[UserExitInterview] CHECK CONSTRAINT [FK_Opt_User]
GO
ALTER TABLE [Onwards].[UserExitInterview]  WITH CHECK ADD  CONSTRAINT [FK_QUES_User] FOREIGN KEY([QuestionId])
REFERENCES [Onwards].[ExitInterviewQuestions] ([Id])
GO
ALTER TABLE [Onwards].[UserExitInterview] CHECK CONSTRAINT [FK_QUES_User]
GO
/****** Object:  StoredProcedure [Onwards].[GetExitInterviewOptions]    Script Date: 02-09-2025 21:33:26 ******/
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
/****** Object:  StoredProcedure [Onwards].[GetExitInterviewQuestions]    Script Date: 02-09-2025 21:33:26 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateExitInterviewOptions]    Script Date: 02-09-2025 21:33:26 ******/
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
/****** Object:  StoredProcedure [Onwards].[InsertOrUpdateExitInterviewQuestions]    Script Date: 02-09-2025 21:33:26 ******/
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

------------------------3 sep 25------------------------

ALTER TABLE Onwards.Resignation
ADD NextEmployer VARCHAR(300) NULL

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
      U.EmployeeCode = @EmployeeCode AND U.Password = @Password AND U.IsActive = 1;
END;


ALTER PROCEDURE [Onwards].[InsertOrUpdateResignation]
    @Id INT = NULL,
	@LoginId INT,
	@UserId INT,
	@ResignationTypeId INT,
	@ResignationReasonId INT,
	@ResignationLetterDate DATE,
	@RequestedRelievingDate DATE,
	@ActualRelievingDate DATE,
	@NoticePeriod INT,
	@EndOfNoticePeriod INT,
	@MailingAddress VARCHAR(500) = NULL,
	@Address VARCHAR(500) = NULL,
	@PersonalEmailid VARCHAR(500) = NULL,
	@Comments VARCHAR(500) = NULL,
	@AttachmentFileName VARCHAR(300) = NULL,
	@AttachmentFile VARBINARY(MAX) = NULL,
	@PullbackComment VARCHAR(500) = NULL,
	@StatusId INT = NULL,
	@ApprovedBy INT = NULL,
	@ApprovalDate DATE = NULL,
	@ApproverRemarks VARCHAR(1000) = NULL,
	@NextEmployer VARCHAR(300) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF (@Id IS NULL)
	BEGIN
		INSERT INTO Onwards.Resignation (
			UserId, ResignationTypeId, ResignationReasonId,
			ResignationLetterDate, RequestedRelievingDate, ActualRelievingDate,
			NoticePeriod, EndOfNoticePeriod, MailingAddress, Address,
			PersonalEmailid, Comments,AttachmentFileName, AttachmentFile, PullbackComment,
			StatusId, ApprovedBy, ApprovalDate, ApproverRemarks,NextEmployer,
			createdDate, createdBy, IsActive
		)
		VALUES (
			@UserId, @ResignationTypeId, @ResignationReasonId,
			@ResignationLetterDate, @RequestedRelievingDate, @ActualRelievingDate,
			@NoticePeriod, @EndOfNoticePeriod, @MailingAddress, @Address,
			@PersonalEmailid, @Comments,@AttachmentFileName, @AttachmentFile, @PullbackComment,
			@StatusId, @ApprovedBy, @ApprovalDate, @ApproverRemarks, @NextEmployer,
			GETDATE(), @LoginId, 1
		)
	END
	ELSE
	BEGIN
		UPDATE Onwards.Resignation
		SET
			UserId = @UserId,
			ResignationTypeId = @ResignationTypeId,
			ResignationReasonId = @ResignationReasonId,
			ResignationLetterDate = @ResignationLetterDate,
			RequestedRelievingDate = @RequestedRelievingDate,
			ActualRelievingDate = @ActualRelievingDate,
			NoticePeriod = @NoticePeriod,
			EndOfNoticePeriod = @EndOfNoticePeriod,
			MailingAddress = @MailingAddress,
			Address = @Address,
			PersonalEmailid = @PersonalEmailid,
			Comments = @Comments,
			AttachmentFileName = @AttachmentFileName,
			AttachmentFile = @AttachmentFile,
			PullbackComment = @PullbackComment,
			StatusId = @StatusId,
			ApprovedBy = @ApprovedBy,
			ApprovalDate = @ApprovalDate,
			ApproverRemarks = @ApproverRemarks,
			NextEmployer = @NextEmployer,
			ModifiedDate = GETDATE(),
			ModifiedBy = @LoginId
		WHERE Id = @Id
	END
END


DROP PROCEDURE Onwards.DeleteResignation

CREATE TYPE [dbo].[IntList] AS TABLE
(
    Id INT NOT NULL
);

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [Onwards].[AcceptResignation]
	@Ids dbo.IntList READONLY,
	@LoginId INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE Onwards.Resignation
	SET
		StatusId = 2,
		IsActive = 0,
		ModifiedDate = GETDATE(),
		ModifiedBy = @LoginId
	WHERE UserId IN (SELECT Id FROM @Ids)

	UPDATE Onwards.Users
	SET 
		IsActive = 0,
		ModifiedDate = GETDATE(),
		ModifiedBy = @LoginId
	WHERE Id IN (SELECT Id FROM @Ids)
END



--------------------------2 Sep 25-----------------------------------------
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER   PROCEDURE [Onwards].[GetAllResignations]
    @UserId INT  -- The manager's user ID
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ReportingManagerId INT;

    -- Get the ReportingManagerId for the logged-in user
    SELECT @ReportingManagerId = ReportingManagerId
    FROM Onwards.Users
    WHERE Id = @UserId; 

    -- Get resignations of employees reporting to this manager
    SELECT 
        r.UserId,
        u.FullName AS EmployeeName,
        r.CreatedDate,
        r.CreatedBy,
        r.ModifiedDate,
        r.ModifiedBy,
        r.IsActive ,
		rs.Status 
    FROM Onwards.Resignation r
    INNER JOIN Onwards.Users u ON r.UserId = u.Id
	INNER JOIN Onwards.ResignationStatus rs  ON R.StatusId = rs.id
    WHERE u.ReportingManagerId = @ReportingManagerId AND r.StatusId = 1
    ORDER BY r.CreatedDate DESC;
END;

ALTER TABLE Onwards.Resignation
ADD AttachmentFileName NVARCHAR(300) NULL;

ALTER TABLE Onwards.Resignation
DROP COLUMN AttachmentFile;

ALTER TABLE Onwards.Resignation
ADD AttachmentFile VARBINARY(MAX) NULL;

ALTER TABLE Onwards.Resignation
DROP COLUMN ResignationRelivingDate

ALTER TABLE Onwards.Resignation
ADD RequestedRelievingDate DATE DEFAULT GETDATE()


DROP PROCEDURE Onwards.InsertResignation
DROP PROCEDURE Onwards.UpdateResignation

ALTER TABLE [Onwards].[Resignation] DROP CONSTRAINT [FK__Resignati__Resig__670A40DB]
GO

ALTER TABLE [Onwards].[Resignation] DROP CONSTRAINT [FK__Resignati__IsAct__66161CA2]
GO

ALTER TABLE [Onwards].[Resignation] DROP CONSTRAINT [DF__Resignati__Resig__027D5126]
GO

/****** Object:  Table [Onwards].[Resignation]    Script Date: 01-09-2025 18:52:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[Onwards].[Resignation]') AND type in (N'U'))
DROP TABLE [Onwards].[Resignation]
GO

/****** Object:  Table [Onwards].[Resignation]    Script Date: 01-09-2025 18:52:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Onwards].[Resignation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ResignationTypeId] [int] NOT NULL,
	[ResignationReasonId] [int] NOT NULL,
	[ResignationLetterDate] [date] NOT NULL,
	[ActualRelievingDate] [date] NOT NULL,
	[NoticePeriod] [int] NOT NULL,
	[EndOfNoticePeriod] [int] NOT NULL,
	[MailingAddress] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[PersonalEmailid] [varchar](500) NULL,
	[Comments] [varchar](500) NULL,
	[PullbackComment] [varchar](500) NULL,
	[StatusId] [int] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovalDate] [date] NULL,
	[ApproverRemarks] [varchar](1000) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[AttachmentFileName] [nvarchar](300) NULL,
	[AttachmentFile] [varbinary](max) NULL,
	[RequestedRelievingDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [Onwards].[Resignation] ADD  DEFAULT (getdate()) FOR [RequestedRelievingDate]
GO

ALTER TABLE [Onwards].[Resignation]  WITH CHECK ADD FOREIGN KEY([ResignationTypeId])
REFERENCES [Onwards].[ResignationType] ([Id])
GO

ALTER TABLE [Onwards].[Resignation]  WITH CHECK ADD FOREIGN KEY([ResignationReasonId])
REFERENCES [Onwards].[ResignationType] ([Id])
GO





CREATE PROCEDURE [Onwards].[InsertOrUpdateResignation]
    @Id INT = NULL,
	@LoginId INT,
	@UserId INT,
	@ResignationTypeId INT,
	@ResignationReasonId INT,
	@ResignationLetterDate DATE,
	@RequestedRelievingDate DATE,
	@ActualRelievingDate DATE,
	@NoticePeriod INT,
	@EndOfNoticePeriod INT,
	@MailingAddress VARCHAR(500) = NULL,
	@Address VARCHAR(500) = NULL,
	@PersonalEmailid VARCHAR(500) = NULL,
	@Comments VARCHAR(500) = NULL,
	@AttachmentFileName VARCHAR(300) = NULL,
	@AttachmentFile VARBINARY(MAX) = NULL,
	@PullbackComment VARCHAR(500) = NULL,
	@StatusId INT = NULL,
	@ApprovedBy INT = NULL,
	@ApprovalDate DATE = NULL,
	@ApproverRemarks VARCHAR(1000) = NULL
AS
BEGIN
	SET NOCOUNT ON;

	IF (@Id IS NULL)
	BEGIN
		INSERT INTO Onwards.Resignation (
			UserId, ResignationTypeId, ResignationReasonId,
			ResignationLetterDate, RequestedRelievingDate, ActualRelievingDate,
			NoticePeriod, EndOfNoticePeriod, MailingAddress, Address,
			PersonalEmailid, Comments,AttachmentFileName, AttachmentFile, PullbackComment,
			StatusId, ApprovedBy, ApprovalDate, ApproverRemarks,
			createdDate, createdBy, IsActive
		)
		VALUES (
			@UserId, @ResignationTypeId, @ResignationReasonId,
			@ResignationLetterDate, @RequestedRelievingDate, @ActualRelievingDate,
			@NoticePeriod, @EndOfNoticePeriod, @MailingAddress, @Address,
			@PersonalEmailid, @Comments,@AttachmentFileName, @AttachmentFile, @PullbackComment,
			@StatusId, @ApprovedBy, @ApprovalDate, @ApproverRemarks,
			GETDATE(), @LoginId, 1
		)
	END
	ELSE
	BEGIN
		UPDATE Onwards.Resignation
		SET
			UserId = @UserId,
			ResignationTypeId = @ResignationTypeId,
			ResignationReasonId = @ResignationReasonId,
			ResignationLetterDate = @ResignationLetterDate,
			RequestedRelievingDate = @RequestedRelievingDate,
			ActualRelievingDate = @ActualRelievingDate,
			NoticePeriod = @NoticePeriod,
			EndOfNoticePeriod = @EndOfNoticePeriod,
			MailingAddress = @MailingAddress,
			Address = @Address,
			PersonalEmailid = @PersonalEmailid,
			Comments = @Comments,
			AttachmentFileName = @AttachmentFileName,
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

	
END


/****** Object:  StoredProcedure [Onwards].[GetAllResignations]    Script Date: 01-09-2025 19:02:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [Onwards].[GetAllResignations]
    @UserId INT  -- The manager's user ID
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ReportingManagerId INT;

    -- Get the ReportingManagerId for the logged-in user
    SELECT @ReportingManagerId = ReportingManagerId
    FROM Onwards.Users
    WHERE Id = @UserId; 

    -- Get resignations of employees reporting to this manager
    SELECT 
        r.UserId,
        u.FullName AS EmployeeName,
        r.CreatedDate,
        r.CreatedBy,
        r.ModifiedDate,
        r.ModifiedBy,
        r.IsActive ,
		rs.Status 
    FROM Onwards.Resignation r
    INNER JOIN Onwards.Users u ON r.UserId = u.Id
	INNER JOIN Onwards.ResignationStatus rs  ON R.StatusId = rs.id
    WHERE u.ReportingManagerId = @ReportingManagerId
    ORDER BY r.CreatedDate DESC;
END;


CREATE PROCEDURE [Onwards].[GetResignationDetailsByUserId]
    @UserId INT
AS
BEGIN
    SELECT *
    FROM Onwards.Resignation
    WHERE UserId = @UserId AND IsActive = 1;
END




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
