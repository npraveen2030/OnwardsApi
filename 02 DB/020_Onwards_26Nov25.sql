------------------------------------------------ Authorization ------------------------------------------------------
CREATE TABLE Onwards.Companies
(
	Id INT PRIMARY KEY,
	CompanyDomain VARCHAR(50) NOT NULL,
	CompanyName VARCHAR(250) NOT NULL,
	CreatedBy INT NULL,
	CreatedDate DATETIME NULL,
	ModifiedBy INT NULL,
	ModifiedDate DATETIME NULL,
	IsActive BIT NOT NULL DEFAULT 1
)

INSERT INTO Onwards.Companies(Id,CompanyDomain,CompanyName,CreatedBy,CreatedDate)
VALUES
(1,'onwardsslk','Onwards Slk Pvt Ltd',0,GETDATE()),
(2,'tcs','Tata Consultancy Service',0,GETDATE()),
(3,'wipro','Wipro Pvt Ltd',0,GETDATE());

CREATE OR ALTER PROCEDURE Onwards.GetCompanyFromEmail
    @Email VARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Domain VARCHAR(50);

    -- Extract domain between @ and .
    -- Example: sameer@onwardsslk.in → onwardsslk
    SET @Domain = SUBSTRING(
                    @Email,
                    CHARINDEX('@', @Email) + 1,
                    CHARINDEX('.', @Email, CHARINDEX('@', @Email)) 
                        - CHARINDEX('@', @Email) - 1
                 );

    SELECT Id, CompanyDomain, CompanyName
    FROM Onwards.Companies
    WHERE CompanyDomain = @Domain
      AND IsActive = 1;
END;

ALTER PROCEDURE [Onwards].[sp_ValidateUserLogin]
    @EmployeeCode NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @Email NVARCHAR(100);
    DECLARE @Domain NVARCHAR(50);
    DECLARE @CompanyId INT;

    -------------------------------------------------------
    -- 1. Get the Email first (only if login is correct)
    -------------------------------------------------------
    SELECT @Email = U.Email
    FROM Onwards.Users AS U
    WHERE U.EmployeeCode = @EmployeeCode
      AND U.[Password] = @Password
      AND U.IsActive = 1;

    -------------------------------------------------------
    -- If no user found, return nothing
    -------------------------------------------------------
    IF (@Email IS NULL)
    BEGIN
        SELECT 'Invalid Credentials' AS Message;
        RETURN;
    END

    -------------------------------------------------------
    -- 2. Extract domain between @ and .
    -- Example: sameer@onwardsslk.in → onwardsslk
    -------------------------------------------------------
    IF (@Email LIKE '%@%.%')
    BEGIN
        SET @Domain = SUBSTRING(
                        @Email,
                        CHARINDEX('@', @Email) + 1,
                        CHARINDEX('.', @Email, CHARINDEX('@', @Email)) 
                            - CHARINDEX('@', @Email) - 1
                      );
    END
    ELSE
    BEGIN
        SET @Domain = NULL;
    END

    -------------------------------------------------------
    -- 3. Get CompanyId based on domain
    -------------------------------------------------------
    SELECT @CompanyId = Id 
    FROM Onwards.Companies
    WHERE CompanyDomain = @Domain AND IsActive = 1;


    -------------------------------------------------------
    -- 4. Final user details + CompanyId
    -------------------------------------------------------
    SELECT  
        U.Id,
        U.EmployeeCode,
        U.FullName,
        U.Email,
        U.Mobile,
        R.RoleName,
        L.Name AS LocationName,
        D.DepartmentName,
        G.GradeValue,
        U.DOJ,

        
        RM.EmployeeCode AS ReportingManagerEmpCode,
        RM.FullName AS ReportingManagerFullName,

        AM.EmployeeCode AS AdministrativeManagerEmpCode,
        AM.FullName AS AdministrativeManagerFullName,

        FM.EmployeeCode AS FunctionalReportingManagerEmpCode,
        FM.FullName AS FunctionalReportingManagerFullName,
        
        U.LocationId,
        @CompanyId AS CompanyId
    FROM Onwards.Users AS U
    LEFT JOIN Onwards.BasicUserDetails AS BD ON U.Id = BD.UserId AND BD.IsActive = 1
    LEFT JOIN Onwards.Roles AS R ON U.RoleId = R.Id AND R.IsActive = 1
    LEFT JOIN Onwards.Users AS RM ON RM.Id = U.ReportingManagerId AND RM.IsActive = 1
    LEFT JOIN Onwards.Users AS AM ON AM.Id = U.AdministrativeManagerId AND RM.IsActive = 1
    LEFT JOIN Onwards.Users AS FM ON FM.Id = U.FunctionalReportingManagerId AND RM.IsActive = 1
    INNER JOIN Onwards.Locations AS L ON L.Id = U.LocationId AND L.IsActive = 1
    INNER JOIN Onwards.Departments AS D ON D.Id = U.DepartmentId AND D.IsActive = 1
    INNER JOIN Onwards.Grades AS G ON G.Id = U.GradeId AND G.IsActive = 1
    WHERE 
        U.EmployeeCode = @EmployeeCode
        AND U.Password = @Password
        AND U.IsActive = 1;
END;

ALTER TABLE Onwards.Users
ADD FunctionalReportingManagerId INT NULL


