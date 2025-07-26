



---------------------------------------------------------------------------------------------------------------------------------------------------------------
Create PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT U.EmployeeCode,U.FullName, U.Email, R.RoleName FROM Onwards.Users as U
	INNER JOIN Onwards.BasicDetails as BD ON U.id= BD.Userid
	INNER JOIN Onwards.Roles as R on U.RoleId = R.Id 
	WHERE U.Isactive = 1 AND BD.Isactive = 1 and R.isActive =1
    AND EmployeeCode = @EmployeeCode AND Password = @Password;
END;


---------------------------------------------------------------------------------------------------------------------------------------------------------------
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
