CREATE TABLE [Onwards].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[IsActive] [bit] DEFAULT 1,
)  
INSERT INTO Onwards.Status (Name,CreatedDate,IsActive)
VALUES 
    ('Pending',GETDATE(),1),
    ('Approved',GETDATE(),1),
    ('Rejected',GETDATE(),1),
    ('Cancelled',GETDATE(),1),
    ('On Hold',GETDATE(),1);

-- Table: Reimbursement

CREATE TABLE Onwards.Reimbursement (
    Id      		    INT IDENTITY(1,1) PRIMARY KEY,
    ClaimCode           NVARCHAR(255) NOT NULL,
    UserId              INT NOT NULL,
    Amount              DECIMAL(10, 2) NOT NULL,
    Purpose             NVARCHAR(255) NOT NULL,
    ReimbursementDate   DATE NOT NULL DEFAULT GETDATE(),
    StatusId            INT,  -- e.g., Pending, Approved, Rejected 
    Action        		NVARCHAR(255) NOT NULL,
	CreatedDate 		DATETIME NULL,
	CreatedBy 			INT NULL,
	ModifiedDate 		DATETIME NULL,
	ModifiedBy 			INT NULL,
	IsActive bit 		NOT NULL,
     
    CONSTRAINT FK_Reimbursement_UserId FOREIGN KEY (UserId)
    REFERENCES Onwards.Users(Id)
);
 

-- Table: ReimbursementDocuments
CREATE TABLE Onwards.ReimbursementDocuments (
    Id           		INT IDENTITY(1,1) PRIMARY KEY,
    ReimbursementId     INT NOT NULL,
    FileName            NVARCHAR(255) NOT NULL,
    FileType            NVARCHAR(100) NOT NULL,  -- e.g., 'application/pdf', 'image/png'
    FileSizeKB          INT NOT NULL,
    FileContent         VARBINARY(MAX) NOT NULL,
    UploadedAt          DATETIME NOT NULL DEFAULT GETDATE(),
	CreatedDate 		DATETIME NULL,
	CreatedBy 			INT NULL,
	ModifiedDate 		DATETIME NULL,
	ModifiedBy 			INT NULL,
	IsActive 			bit NOT NULL,
	
    -- Foreign key
    CONSTRAINT FK_ReimbursementDocuments_Reimbursement FOREIGN KEY (ReimbursementId)
    REFERENCES Onwards.Reimbursement(Id)
);


ALTER TABLE Onwards.Reimbursement
ADD CONSTRAINT DF_Reimbursement_IsActive DEFAULT 1 FOR IsActive;
GO

ALTER TABLE Onwards.ReimbursementDocuments
ADD CONSTRAINT DF_ReimbursementDocuments_IsActive DEFAULT 1 FOR IsActive;
GO

CREATE TYPE Onwards.ReimbursementDocumentType AS TABLE(
	Id                  INT NULL,
	ReimbursementId     INT NULL,
    FileName            NVARCHAR(255) NOT NULL,
    FileType            NVARCHAR(100) NOT NULL,  -- e.g., 'application/pdf', 'image/png'
    FileSizeKB          INT NOT NULL,
    FileContent         VARBINARY(MAX) NOT NULL,
    UploadedAt          DATETIME NOT NULL DEFAULT GETDATE(),
	IsActive            BIT NOT NULL DEFAULT 1
);

USE [Projects]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
-------------------------------------------------------CREATE------------------------------------------------------------------
-- Inserts one Reimbursement and a list of its corresponidng documents
CREATE PROCEDURE [Onwards].[InsertReimbursement]
    @LoginId             INT,
    @ClaimCode           NVARCHAR(255),
    @UserId              INT,
    @Amount              DECIMAL(10, 2),
    @Purpose             NVARCHAR(255),
    @ReimbursementDate   DATE,
    @StatusId            INT,
    @Action              NVARCHAR(255),
    @Documents           Onwards.ReimbursementDocumentType READONLY
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    DECLARE @ReimbursementId INT;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Insert reimbursement
        INSERT INTO Onwards.Reimbursement 
            (ClaimCode, UserId, Amount, Purpose, ReimbursementDate, StatusId, Action, CreatedDate, CreatedBy)
        VALUES 
            (@ClaimCode, @UserId, @Amount, @Purpose, @ReimbursementDate, @StatusId, @Action, GETDATE(), @LoginId);

        -- Capture inserted Reimbursement Id
        SET @ReimbursementId = SCOPE_IDENTITY();

        -- Insert documents using the captured ReimbursementId
        IF EXISTS (SELECT 1 FROM @Documents)
		BEGIN
			INSERT INTO Onwards.ReimbursementDocuments 
				(ReimbursementId, FileName, FileType, FileSizeKB, FileContent, UploadedAt, CreatedDate, CreatedBy)
			SELECT 
				@ReimbursementId, FileName, FileType, FileSizeKB, FileContent, UploadedAt, GETDATE(), @LoginId
			FROM @Documents;
		END

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END
GO
-------------------------------------------------------READ------------------------------------------------------------------
CREATE PROCEDURE [Onwards].[GetReimbursement]
    @ClaimCode           NVARCHAR(255) = NULL,
    @UserId              INT = NULL,
    @Amount              DECIMAL(10, 2) = NULL,
    @Purpose             NVARCHAR(255) = NULL,
    @ReimbursementDate   DATE = NULL,
    @StatusId            INT = NULL,
    @Action              NVARCHAR(255) = NULL,
    @Skip                INT = 0,
    @Take                INT = 10
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Step 1: Store selected Reimbursements in a table variable
        DECLARE @SelectedReimbursements TABLE (Id INT);

        -- Step 2: Insert matching reimbursements' IDs into the table
        INSERT INTO @SelectedReimbursements(Id)
        SELECT Id
        FROM Onwards.Reimbursement
        WHERE IsActive = 1
          AND (@ClaimCode IS NULL OR ClaimCode LIKE '%' + @ClaimCode + '%')
          AND (@UserId IS NULL OR UserId = @UserId)
          AND (@Amount IS NULL OR Amount = @Amount)
          AND (@Purpose IS NULL OR Purpose LIKE '%' + @Purpose + '%')
          AND (@ReimbursementDate IS NULL OR ReimbursementDate = @ReimbursementDate)
          AND (@StatusId IS NULL OR StatusId = @StatusId)
          AND (@Action IS NULL OR Action LIKE '%' + @Action + '%')
        ORDER BY Id DESC
        OFFSET @Skip ROWS
        FETCH NEXT @Take ROWS ONLY;

        -- Step 3: Return Reimbursements
        SELECT *
        FROM Onwards.Reimbursement
        WHERE Id IN (SELECT Id FROM @SelectedReimbursements);

        -- Step 4: Return matching Documents
        SELECT *
        FROM Onwards.ReimbursementDocuments
        WHERE ReimbursementId IN (SELECT Id FROM @SelectedReimbursements);

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END
GO

-------------------------------------------------------UPDATE------------------------------------------------------------------
-- Update the Reimbursment and its corresponding documents along with deleting the documents
CREATE PROCEDURE [Onwards].[UpdateReimbursement]
	@Id                  INT,
	@LoginId             INT,
    @ClaimCode           NVARCHAR(255) ,
    @UserId              INT,
    @Amount              DECIMAL(10, 2) ,
    @Purpose             NVARCHAR(255) ,
    @ReimbursementDate   DATE ,
    @StatusId            INT,  -- e.g., Pending, Approved, Rejected 
    @Action        		 NVARCHAR(255),
	@Documents           Onwards.ReimbursementDocumentType READONLY
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRANSACTION;
			
			UPDATE Onwards.Reimbursement
			SET 
				ClaimCode = @ClaimCode,
				UserId = @UserId,
				Amount =@Amount,
				Purpose = @Purpose,
				ReimbursementDate = @ReimbursementDate,
				StatusId = @StatusId,
				Action = @Action,
				ModifiedDate = GETDATE(),
				ModifiedBy = @LoginId
			WHERE Id = @Id

			MERGE Onwards.ReimbursementDocuments AS target
			USING @Documents AS source
			ON source.Id = target.Id

			WHEN MATCHED THEN
				UPDATE SET
					target.FileName     = source.FileName,
					target.FileType     = source.FileType,
					target.FileSizeKB   = source.FileSizeKB,
					target.FileContent  = source.FileContent,
					target.UploadedAt   = source.UploadedAt,
					target.ModifiedDate = GETDATE(), 
					target.ModifiedBy   = @LoginId,
					target.IsActive     = source.IsActive

			WHEN NOT MATCHED BY TARGET THEN
				INSERT (
					ReimbursementId,
					FileName,
					FileType,
					FileSizeKB,
					FileContent,
					UploadedAt,
					CreatedDate,
					CreatedBy,
					IsActive
				)
				VALUES (
					source.ReimbursementId,
					source.FileName,
					source.FileType,
					source.FileSizeKB,
					source.FileContent,
					source.UploadedAt,
					GETDATE(),
					@LoginId,
					1
				);


        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END

GO

-------------------------------------------------------DELETE------------------------------------------------------------------

-- Deletes the Reimbursment By Id along with all its correponding ReimbursementDocuments
CREATE PROCEDURE [Onwards].[DeleteReimbursement]
	@Id INT,
	@LoginId INT
AS
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;

    BEGIN TRY
        BEGIN TRANSACTION;
			
			UPDATE Onwards.Reimbursement
			SET 
				ModifiedDate = GETDATE(),
				ModifiedBy = @LoginId,
				IsActive = 0
			WHERE Id = @Id;

			UPDATE Onwards.ReimbursementDocuments
			SET 
				ModifiedDate = GETDATE(),
				ModifiedBy = @LoginId,
				IsActive = 0
			WHERE ReimbursementId = @Id 

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF XACT_STATE() <> 0
            ROLLBACK TRANSACTION;

        THROW;
    END CATCH
END

GO


