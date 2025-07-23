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

CREATE TABLE Onwards.Training (
    id INT PRIMARY KEY,
    TrainingDate DATE,
    Name NVARCHAR(255),
    locationid INT,
    createdDate DATETIME,
    createdBy INT,
    ModifiedDate DATETIME,
    ModifiedBy INT,
    IsActive BIT
);
 
-- Create a helper table with locations
CREATE TABLE #Locations (
    locationid INT PRIMARY KEY,
    locationName VARCHAR(100)
);

INSERT INTO #Locations (locationid, locationName)
VALUES (1, 'Bangalore'), (2, 'Hyderabad');

-- Insert sample records into Onwards.Training
DECLARE @id INT = 1;
DECLARE @month INT = 1;
DECLARE @day INT;
DECLARE @locationid INT;
DECLARE @trainingDate DATE;
DECLARE @createdDate DATETIME;
DECLARE @modifiedDate DATETIME;
DECLARE @createdBy INT;
DECLARE @modifiedBy INT;
DECLARE @isActive BIT;
DECLARE @name VARCHAR(100);

WHILE @month <= 12
BEGIN
    DECLARE @counter INT = 1;
    WHILE @counter <= 20
    BEGIN
        SET @day = 1 + ABS(CHECKSUM(NEWID())) % 28;
        SET @trainingDate = DATEFROMPARTS(2025, @month, @day);
        SET @createdDate = DATEADD(DAY, -1 * (ABS(CHECKSUM(NEWID())) % 10), @trainingDate);
        SET @modifiedDate = DATEADD(DAY, ABS(CHECKSUM(NEWID())) % 5, @createdDate);
        SET @createdBy = 1 + ABS(CHECKSUM(NEWID())) % 5;
        SET @modifiedBy = 1 + ABS(CHECKSUM(NEWID())) % 5;
        SET @isActive = ABS(CHECKSUM(NEWID())) % 2;
        SET @name = CONCAT('Training Session ', ABS(CHECKSUM(NEWID())) % 100);

        -- Loop over both locations
        SET @locationid = 1;
        WHILE @locationid <= 2
        BEGIN
            INSERT INTO Onwards.Training (
                id, TrainingDate, Name, locationid,
                createdDate, createdBy, ModifiedDate, ModifiedBy, IsActive
            )
            VALUES (
                @id, @trainingDate, @name, @locationid,
                @createdDate, @createdBy, @modifiedDate, @modifiedBy, @isActive
            );

            SET @id = @id + 1;
            SET @locationid = @locationid + 1;
        END

        SET @counter = @counter + 1;
    END
    SET @month = @month + 1;
END

-- Drop the helper table
DROP TABLE #Locations;

--- 22 July-25 
SET IDENTITY_INSERT [Onwards].[Shift] ON 
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, N'Morning Shift', CAST(N'09:00:00' AS Time), CAST(N'18:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, N'Afternoon Shift', CAST(N'14:00:00' AS Time), CAST(N'21:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[Shift] ([ShiftId], [ShiftName], [StartTime], [EndTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, N'Evening Shift', CAST(N'18:00:00' AS Time), CAST(N'03:00:00' AS Time), NULL, CAST(N'2025-07-08T12:06:02.760' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[Shift] OFF


SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] ON 
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, 1, 1, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (2, 2, 2, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftAssignment] ([Id], [UserId], [ShiftId], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (3, 3, 3, NULL, CAST(N'2025-07-08T12:21:46.453' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserShiftAssignment] OFF

 
SET IDENTITY_INSERT [Onwards].[UserShiftLog] ON 
GO
INSERT [Onwards].[UserShiftLog] ([LogId], [UserId], [ShiftId], [LoginTime], [Date], [LogOutTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (1, 1, 1, CAST(N'12:50:30.6166667' AS Time), CAST(N'2025-07-09' AS Date), CAST(N'13:15:44.5566667' AS Time), NULL, CAST(N'2025-07-09T12:50:30.617' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftLog] ([LogId], [UserId], [ShiftId], [LoginTime], [Date], [LogOutTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (5, 2, 2, CAST(N'13:17:22.7733333' AS Time), CAST(N'2025-07-09' AS Date), CAST(N'13:17:41.6900000' AS Time), NULL, CAST(N'2025-07-09T13:17:22.773' AS DateTime), NULL, NULL, 1)
GO
INSERT [Onwards].[UserShiftLog] ([LogId], [UserId], [ShiftId], [LoginTime], [Date], [LogOutTime], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IsActive]) VALUES (6, 1, 1, CAST(N'17:10:14.6333333' AS Time), CAST(N'2025-07-21' AS Date), CAST(N'22:44:15.6566667' AS Time), 1, CAST(N'2025-07-21T17:10:14.633' AS DateTime), NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[UserShiftLog] OFF


ALTER PROCEDURE [Onwards].[GetUserShiftDetails]
    @UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Today DATE = CAST(GETDATE() AS DATE);

    SELECT 
        U.FullName,
        S.ShiftName,

        -- Date formatted as 07-Jul-2025
        FORMAT(@Today, 'dd-MMM-yyyy') AS TodayDate,

        -- Shift start time formatted as 9:00 am
       -- LOWER(CONVERT(VARCHAR(15), S.StartTime, 100)) AS ShiftStartTime,
        
        LOWER(STUFF(RIGHT(CONVERT(VARCHAR(20), S.StartTime, 100), 7), 5, 0, ' ')) AS ShiftStartTime,

        -- Login/Logout times formatted as 12:59 am/pm
        --LOWER(RIGHT(CONVERT(VARCHAR(20), USL.LoginTime, 100), 7)) AS LoginTime,
        --LOWER(RIGHT(CONVERT(VARCHAR(20), USL.LogOutTime, 100), 7)) AS LoginTime,
        LOWER(STUFF(RIGHT(CONVERT(VARCHAR(20), USL.LoginTime, 100), 7), 6, 0, ' ')) AS LoginTime,
        LOWER(STUFF(RIGHT(CONVERT(VARCHAR(20), USL.LogOutTime, 100), 7), 6, 0, ' ')) AS LogoutTime,


        -- Total logged-in duration formatted as 03:57 Hrs
        CASE 
            WHEN USL.LoginTime IS NOT NULL AND USL.LogOutTime IS NOT NULL
            THEN 
                RIGHT('00' + CAST(DATEDIFF(MINUTE, USL.LoginTime, USL.LogOutTime) / 60 AS VARCHAR(2)), 2)
                + ':' +
                RIGHT('00' + CAST(DATEDIFF(MINUTE, USL.LoginTime, USL.LogOutTime) % 60 AS VARCHAR(2)), 2)
                + ' Hrs'
            ELSE NULL
        END AS TotalLoggedInHours
    FROM [Onwards].[Users] AS U
    INNER JOIN [Onwards].[UserShiftAssignment] AS USA 
        ON U.Id = USA.UserId
    INNER JOIN [Onwards].[Shift] AS S 
        ON USA.ShiftId = S.ShiftId
    LEFT JOIN [Onwards].[UserShiftLog] AS USL 
        ON U.Id = USL.UserId
       AND USL.Date = @Today  -- Replace LogDate with actual date column if exists
    WHERE U.Id = @UserId;
END;
GO

-- DELETE (soft delete) a holiday
CREATE PROCEDURE [Onwards].[DeleteHolidaybyId]
    @Id INT,
    @LoginUserId INT
AS
BEGIN
    UPDATE Onwards.HolidayList
    SET IsActive = 0,
        ModifiedBy = @LoginUserId,
        ModifiedDate = GETDATE()
    WHERE Id = @Id;
END
GO
/****** Object:  StoredProcedure [Onwards].[GetAllHolidays]    Script Date: 22-07-2025 13:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- GET all active holidays
CREATE PROCEDURE [Onwards].[GetAllHolidays]
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE IsActive = 1;
END
GO
/****** Object:  StoredProcedure [Onwards].[GetHolidaById]    Script Date: 22-07-2025 13:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- GET a single holiday by Id
CREATE PROCEDURE [Onwards].[GetHolidaById]
    @Id INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE Id = @Id AND IsActive = 1;
END
GO
/****** Object:  StoredProcedure [Onwards].[GetHolidaByLocationId]    Script Date: 22-07-2025 13:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- GET a single holiday by Id
CREATE PROCEDURE [Onwards].[GetHolidaByLocationId]
    @LocationId INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE LocationId = @LocationId AND IsActive = 1;
END
GO

/****** Object:  Table [Onwards].[HolidayList]    Script Date: 22-07-2025 13:53:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [Onwards].[HolidayList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HolidayDate] [date] NOT NULL,
	[Day] [nvarchar](20) NULL,
	[LocationId] [int] NOT NULL,
	[HolidayName] [nvarchar](255) NULL,
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

ALTER TABLE [Onwards].[HolidayList] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO

ALTER TABLE [Onwards].[HolidayList] ADD  DEFAULT ((1)) FOR [IsActive]
GO

ALTER TABLE [Onwards].[HolidayList]  WITH CHECK ADD  CONSTRAINT [FK_Holidays_Location] FOREIGN KEY([LocationId])
REFERENCES [Onwards].[Locations] ([Id])
GO

ALTER TABLE [Onwards].[HolidayList] CHECK CONSTRAINT [FK_Holidays_Location]
GO



SET IDENTITY_INSERT [Onwards].[HolidayList] ON 
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (1, CAST(N'2025-01-01' AS Date), N'Wednesday', 1, N'New Years Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (2, CAST(N'2025-01-26' AS Date), N'Sunday', 1, N'Republic Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (3, CAST(N'2025-08-15' AS Date), N'Friday', 1, N'Independence Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (4, CAST(N'2025-10-02' AS Date), N'Thursday', 1, N'Gandhi Jayanti', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (5, CAST(N'2025-12-25' AS Date), N'Thursday', 1, N'Christmas Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (6, CAST(N'2025-01-01' AS Date), N'Wednesday', 2, N'New Years Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (7, CAST(N'2025-03-17' AS Date), N'Monday', 2, N'St. Patricks Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (8, CAST(N'2025-07-04' AS Date), N'Friday', 2, N'Independence Day (US)', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (9, CAST(N'2025-11-27' AS Date), N'Thursday', 2, N'Thanksgiving', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (10, CAST(N'2025-12-25' AS Date), N'Thursday', 2, N'Christmas Day', CAST(N'2025-07-16T19:27:11.877' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (11, CAST(N'2024-01-01' AS Date), N'Monday', 1, N'New Years Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (12, CAST(N'2024-01-26' AS Date), N'Friday', 1, N'Republic Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (13, CAST(N'2024-08-15' AS Date), N'Thursday', 1, N'Independence Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (14, CAST(N'2024-10-02' AS Date), N'Wednesday', 1, N'Gandhi Jayanti', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (15, CAST(N'2024-12-25' AS Date), N'Wednesday', 1, N'Christmas Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 1, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (16, CAST(N'2024-01-01' AS Date), N'Monday', 2, N'New Years Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (17, CAST(N'2024-03-17' AS Date), N'Sunday', 2, N'St. Patricks Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (18, CAST(N'2024-07-04' AS Date), N'Thursday', 2, N'Independence Day (US)', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (19, CAST(N'2024-11-28' AS Date), N'Thursday', 2, N'Thanksgiving', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 2, NULL, NULL, 1)
GO
INSERT [Onwards].[HolidayList] ([Id], [HolidayDate], [Day], [LocationId], [HolidayName], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [IsActive]) VALUES (20, CAST(N'2024-12-25' AS Date), N'Wednesday', 2, N'Christmas Day', CAST(N'2025-07-16T19:27:11.883' AS DateTime), 2, NULL, NULL, 1)
GO
SET IDENTITY_INSERT [Onwards].[HolidayList] OFF
GO
ALTER TABLE [Onwards].[HolidayList] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Onwards].[HolidayList] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [Onwards].[HolidayList]  WITH CHECK ADD  CONSTRAINT [FK_Holidays_Location] FOREIGN KEY([LocationId])
REFERENCES [Onwards].[Locations] ([Id])
GO
ALTER TABLE [Onwards].[HolidayList] CHECK CONSTRAINT [FK_Holidays_Location]
GO