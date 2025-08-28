

---------------------------- 28 Aug 2024 -------------------

CREATE TABLE [Onwards].[ResignationStatus] (
    [Id] INT IDENTITY(1,1) PRIMARY KEY,
    [StatusName] VARCHAR(100) NOT NULL,   -- e.g. Pending, Approved, Rejected
    [CreatedDate] DATETIME NOT NULL DEFAULT(GETDATE()),
    [CreatedBy] INT NOT NULL,             -- FK to Users/Employees table
    [ModifiedDate] DATETIME NULL,
    [ModifiedBy] INT NULL,                -- FK to Users/Employees table
    [IsActive] BIT NOT NULL DEFAULT(1)    -- 1 = Active, 0 = Inactive
);


INSERT INTO [Onwards].[ResignationStatus] 
    ([StatusName], [CreatedBy])
VALUES
    ('Pending', 1),
    ('Approved', 1),
    ('Rejected', 1),
    ('Pullover', 1);
	
/****** Object:  StoredProcedure [Onwards].[GetTrainingByLocation]    Script Date: 28-08-2025 11:58:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [Onwards].[GetTrainingByLocation]
    @LocationId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT T.Name + ' - From Date (' + CAST(T.StartDate AS VARCHAR(15))  + ' ) - To Date (' + CAST(T.EndDate AS VARCHAR(15))  + ' ) - Contact (' + U.FullName + ')'  Name
	FROM Onwards.Training AS T
	INNER JOIN Onwards.Users AS U On T.createdBy = U.Id  
	WHERE T.LocationId = @LocationId AND T.IsActive = 1  AND U.IsActive = 1;
END
  
---------------------------- 25 Aug 2024 -------------------

DROP TABLE [Onwards].[Resignation]

CREATE TABLE [Onwards].[Resignation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ResignationTypeId] [int] NOT NULL,
	[ResignationReasonId] [int] NOT NULL,
	[ResignationLetterDate] [date] NOT NULL,
	[RequestedRelievingDate] [date] NOT NULL,
	[ActualRelievingDate] [date] NOT NULL,
	[NoticePeriod] [int] NOT NULL,
	[EndOfNoticePeriod] [int] NOT NULL,
	[NextEmployer] [varchar](500) NULL,
	[MailingAddress] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[PersonalEmailid] [varchar](500) NULL,
	[Comments] [varchar](500) NULL,
	[AttachmentFile] [varchar](500) NULL,
	[PullbackComment] [varchar](500) NULL,
	[StatusId] [int] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovalDate] [date] NULL,
	[ApproverRemarks] [varchar](1000) NULL,
	[createdDate] [datetime] NULL,
	[createdBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [Onwards].[Resignation]  WITH CHECK ADD FOREIGN KEY([ResignationTypeId])
REFERENCES [Onwards].[ResignationType] ([Id])
GO

ALTER TABLE [Onwards].[Resignation]  WITH CHECK ADD FOREIGN KEY([ResignationReasonId])
REFERENCES [Onwards].[ResignationType] ([Id])
GO


CREATE PROCEDURE Onwards.GetResignationDetailsByUserId
    @UserId INT
AS
BEGIN
    SELECT *
    FROM Onwards.Resignation
    WHERE UserId = @UserId AND IsActive = 1;
END


CREATE PROCEDURE [Onwards].[InsertResignation]
(
    @UserId INT,
    @ResignationTypeId INT,
    @ResignationReasonId INT,
    @ResignationLetterDate DATE,
    @RequestedRelievingDate DATE,
    @ActualRelievingDate DATE,
    @NoticePeriod INT,
    @NextEmployer VARCHAR(500) = NULL,  -- I see you’re passing this in code (not in table earlier?)
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
    @ApproverRemarks VARCHAR(1000) = NULL,
    @LoginId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        INSERT INTO [Onwards].[Resignation]
        (
            UserId,
            ResignationTypeId,
            ResignationReasonId,
            ResignationLetterDate,
            RequestedRelievingDate,
            ActualRelievingDate,
            NoticePeriod,
            EndOfNoticePeriod,
            MailingAddress,
            Address,
            PersonalEmailid,
            Comments,
            AttachmentFile,
            PullbackComment,
            StatusId,
            ApprovedBy,
            ApprovalDate,
            ApproverRemarks,
            CreatedDate,
            CreatedBy,
            IsActive
        )
        VALUES
        (
            @UserId,
            @ResignationTypeId,
            @ResignationReasonId,
            @ResignationLetterDate,
            @RequestedRelievingDate,
            @ActualRelievingDate,
            @NoticePeriod,
            @EndOfNoticePeriod,
            @MailingAddress,
            @Address,
            @PersonalEmailid,
            @Comments,
            @AttachmentFile,
            @PullbackComment,
            @StatusId,
            @ApprovedBy,
            @ApprovalDate,
            @ApproverRemarks,
            GETDATE(),   -- CreatedDate
            @LoginId,    -- CreatedBy
            1            -- IsActive default true
        );
    END TRY
    BEGIN CATCH
        DECLARE @ErrMsg NVARCHAR(4000), @ErrSeverity INT;
        SELECT @ErrMsg = ERROR_MESSAGE(), @ErrSeverity = ERROR_SEVERITY();
        RAISERROR(@ErrMsg, @ErrSeverity, 1);
    END CATCH
END


CREATE PROCEDURE [Onwards].[UpdateResignation]
(
    @Id INT,
    @UserId INT,
    @ResignationTypeId INT,
    @ResignationReasonId INT,
    @ResignationLetterDate DATE,
    @RequestedRelievingDate DATE,
    @ActualRelievingDate DATE,
    @NoticePeriod INT,
    @NextEmployer VARCHAR(500) = NULL,  -- keep for future consistency
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
    @ApproverRemarks VARCHAR(1000) = NULL,
    @LoginId INT
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        UPDATE [Onwards].[Resignation]
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
            AttachmentFile = @AttachmentFile,
            PullbackComment = @PullbackComment,
            StatusId = @StatusId,
            ApprovedBy = @ApprovedBy,
            ApprovalDate = @ApprovalDate,
            ApproverRemarks = @ApproverRemarks,
            ModifiedDate = GETDATE(),
            ModifiedBy = @LoginId
        WHERE Id = @Id;
    END TRY
    BEGIN CATCH
        DECLARE @ErrMsg NVARCHAR(4000), @ErrSeverity INT;
        SELECT @ErrMsg = ERROR_MESSAGE(), @ErrSeverity = ERROR_SEVERITY();
        RAISERROR(@ErrMsg, @ErrSeverity, 1);
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
