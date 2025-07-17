  

CREATE TABLE Onwards.Locations (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL UNIQUE,         -- e.g., Bangalore, Mumbai, New York
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    CreatedBy INT NULL,
    ModifiedDate DATETIME NULL,
    ModifiedBy INT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

INSERT INTO Onwards.Locations (Name, CreatedBy)
VALUES 
('Bangalore', 1),
('Mumbai', 1),
('New York', 1);
 
  --DROP TABLE Onwards.HolidayList 
CREATE TABLE Onwards.HolidayList (
    Id INT PRIMARY KEY IDENTITY(1,1),
    HolidayDate DATE NOT NULL,                        -- Holiday date
    Day NVARCHAR(20) NULL,                     -- Optional: Monday, Tuesday, etc.
    LocationId INT NOT NULL,                   -- Foreign key to Locations table
    HolidayName NVARCHAR(255) NULL,            -- Holiday description
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    CreatedBy INT NULL,
    ModifiedDate DATETIME NULL,
    ModifiedBy INT NULL,
    IsActive BIT NOT NULL DEFAULT 1
);
ALTER TABLE Onwards.HolidayList
ADD CONSTRAINT FK_Holidays_Location
FOREIGN KEY (LocationId) REFERENCES Onwards.Locations(Id);


-- Insert holidays for the current year (2025)
INSERT INTO Onwards.HolidayList (HolidayDate, Day, LocationId, HolidayName, CreatedBy, IsActive)
VALUES 
('2025-01-01', 'Wednesday', 1, 'New Years Day', 1, 1),
('2025-01-26', 'Sunday', 1, 'Republic Day', 1, 1),
('2025-08-15', 'Friday', 1, 'Independence Day', 1, 1),
('2025-10-02', 'Thursday', 1, 'Gandhi Jayanti', 1, 1),
('2025-12-25', 'Thursday', 1, 'Christmas Day', 1, 1),

('2025-01-01', 'Wednesday', 2, 'New Years Day', 2, 1),
('2025-03-17', 'Monday', 2, 'St. Patricks Day', 2, 1),
('2025-07-04', 'Friday', 2, 'Independence Day (US)', 2, 1),
('2025-11-27', 'Thursday', 2, 'Thanksgiving', 2, 1),
('2025-12-25', 'Thursday', 2, 'Christmas Day', 2, 1);

-- Insert holidays for the previous year (2024)
INSERT INTO Onwards.HolidayList (HolidayDate, Day, LocationId, HolidayName, CreatedBy, IsActive)
VALUES 
('2024-01-01', 'Monday', 1, 'New Years Day', 1, 1),
('2024-01-26', 'Friday', 1, 'Republic Day', 1, 1),
('2024-08-15', 'Thursday', 1, 'Independence Day', 1, 1),
('2024-10-02', 'Wednesday', 1, 'Gandhi Jayanti', 1, 1),
('2024-12-25', 'Wednesday', 1, 'Christmas Day', 1, 1),

('2024-01-01', 'Monday', 2, 'New Years Day', 2, 1),
('2024-03-17', 'Sunday', 2, 'St. Patricks Day', 2, 1),
('2024-07-04', 'Thursday', 2, 'Independence Day (US)', 2, 1),
('2024-11-28', 'Thursday', 2, 'Thanksgiving', 2, 1),
('2024-12-25', 'Wednesday', 2, 'Christmas Day', 2, 1);

-- GET all active holidays
CREATE PROCEDURE Onwards.GetAllHolidays
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE IsActive = 1;
END
GO

-- GET a single holiday by Id
CREATE PROCEDURE Onwards.GetHolidaById
    @Id INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE Id = @Id AND IsActive = 1;
END
GO
-- GET a single holiday by Id
ALTER PROCEDURE Onwards.GetHolidaByLocationId
    @LocationId INT
AS
BEGIN
	SET NOCOUNT ON;
    SELECT * FROM Onwards.HolidayList WHERE LocationId = @LocationId AND IsActive = 1;
END
GO

-- INSERT a new holiday
CREATE PROCEDURE Onwards.InsertOrUpdateHoliday
	@ID INT,
    @HolidayDate DATE,
    @HolidayName NVARCHAR(255),
    --@Day NVARCHAR(20),
    @LocationId INT,
    @LoginUserId INT
AS
BEGIN

	IF(@ID IS NULL OR @ID = 0)
	BEGIN
			INSERT INTO Onwards.HolidayList
				(HolidayDate, Day, LocationId, HolidayName, CreatedDate, CreatedBy)
			VALUES
				(@HolidayDate, @Day, @LocationId, @HolidayName, GETDATE(), @LoginUserId);

	END
	ELSE
	BEGIN
			UPDATE Onwards.HolidayList
			SET
				HolidayDate = @HolidayDate,
				Day = @Day,
				LocationId = @LocationId,
				HolidayName = @HolidayName,
				ModifiedBy = @LoginUserId,
				ModifiedDate = GETDATE()
			WHERE Id = @Id AND IsActive = 1;
	END
END
GO
 

-- DELETE (soft delete) a holiday
CREATE PROCEDURE Onwards.DeleteHolidaybyId
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

