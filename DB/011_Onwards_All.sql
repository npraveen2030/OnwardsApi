
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
