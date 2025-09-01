CREATE TABLE Onwards.ResignationType (
    Id INT PRIMARY KEY,
    TypeName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(255),
    createdDate DATETIME,
    createdBy INT,
    ModifiedDate DATETIME,
    ModifiedBy INT,
    IsActive BIT
);

-- Insert dummy data into ResignationType
INSERT INTO Onwards.ResignationType (Id,TypeName, Description)
VALUES 
(1,'Voluntary', 'Employee initiated resignation'),
(2,'Involuntary', 'Employer initiated separation'),
(3,'Retirement', 'End of career due to retirement'),
(4,'Mutual Agreement', 'Resignation due to mutual agreement'),
(5,'Persoanl Reason', 'Persoanl Reason');


CREATE TABLE Onwards.ResignationReason (
    Id INT PRIMARY KEY, 
    Reason NVARCHAR(255) NOT NULL,
    createdDate DATETIME,
    createdBy INT,
    ModifiedDate DATETIME,
    ModifiedBy INT,
    IsActive BIT
    --FOREIGN KEY (ResignationTypeID) REFERENCES Onwards.ResignationType(ResignationTypeID)
);

-- Insert dummy data into ResignationReason
INSERT INTO Onwards.ResignationReason (Id, Reason)
VALUES
(1, 'Found a better opportunity'),
(2, 'Personal reasons'),
(3, 'Performance issues'),
(4, 'Company restructuring'),
(5, 'Reached retirement age'),
(6, 'Relocation');


 
CREATE TABLE Onwards.Resignation (
    Id INT PRIMARY KEY IDENTITY(1,1),
    UserId INT NOT NULL,
	ResignationTypeId INT NOT NULL,
	ResignationReasonId INT NOT NULL,
    ResignationLetterDate DATE NOT NULL,
    ResignationRelivingDate DATE NOT NULL,
    ResignationActualDate DATE NOT NULL,
	NoticePeriod INT NOT NULL,
	EndOfNoticePeriod INT NOT NULL,
	MailingAddress VARCHAR(500),
	Address VARCHAR(500),
	PersonalEmailid VARCHAR(500),
	Comments VARCHAR(500),
	AttachmentFile VARCHAR(500),
	PullbackComment VARCHAR(500),
    StatusId INT,
    ApprovedBy INT,
    ApprovalDate DATE,
    ApproverRemarks VARCHAR(1000),    
    createdDate DATETIME,
    createdBy INT,
    ModifiedDate DATETIME,
    ModifiedBy INT,
    IsActive BIT
	FOREIGN KEY (ResignationTypeId) REFERENCES Onwards.ResignationType(Id),
	FOREIGN KEY (ResignationReasonId) REFERENCES Onwards.ResignationType(Id)
);

--ADD
--UPDATE ( UpdateByuser or UpdateByManager)