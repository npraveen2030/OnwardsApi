--------------------------------------- Personal Details -----------------------------------------
CREATE OR ALTER PROCEDURE Onwards.GetNationalityOptions
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id,Value
	FROM Onwards.NationalityOptions
	WHERE IsActive = 1
END
GO

CREATE OR ALTER PROCEDURE Onwards.GetYesNoOptions
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id,Value
	FROM Onwards.YesNoOptions
	WHERE IsActive = 1
END
GO


CREATE OR ALTER PROCEDURE Onwards.GetVaccinationStatusOptions
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id,Value
	FROM Onwards.VaccinationStatusOptions
	WHERE IsActive = 1
END
GO

CREATE OR ALTER PROCEDURE Onwards.GetBloodGroups
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id,Value
	FROM Onwards.BloodGroups
	WHERE IsActive = 1
END
GO

CREATE OR ALTER PROCEDURE Onwards.GetGenderOptions
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id,Value
	FROM Onwards.GenderOptions
	WHERE IsActive = 1
END
GO

CREATE OR ALTER PROCEDURE Onwards.GetUserPersonalDetailsById
	@UserId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        bud.UserId,
        bud.UserId AS LoginId,
        bud.CreatedBy,
        bud.CreatedDate,
        bud.ModifiedBy,
        bud.ModifiedDate,
        bud.IsActive,

        bud.FirstName,
        bud.MiddleName,
        bud.LastName,
        bud.PersonalEmailID,
        bud.PrimaryContactNumber AS PrimaryContactNumber_BasicDetails,
        bud.Gender,
        bud.FatherOrHusbandName,
        bud.DOB,
        bud.Nationality,
        bud.DifferentlyAbled,
        bud.VaccinationStatus,
        bud.BloodGroup,
        bud.BloodDonor,
        bud.PanNumber,
        bud.AadhaarCardno,

        -- Addresses as JSON array
        (
            SELECT
                ua.UserId,
                ua.CreatedBy,
                ua.CreatedDate,
                ua.ModifiedBy,
                ua.ModifiedDate,
                ua.IsActive,
                ua.DoorNo,
                ua.AddressLine,
                ua.State,
                ua.Pincode,
                ua.IsPresentAddress,
                ua.SameAsPresent
            FROM Onwards.UserAddresses ua
            WHERE ua.UserId = bud.UserId
            FOR JSON PATH
        ) AS UserAddresses,

        -- Compliance
        (
            SELECT TOP 1
                c.PFNo,
                c.UANNo,
                c.ESICNo,
                c.CreatedDate,
                c.CreatedBy,
                c.ModifiedDate,
                c.ModifiedBy,
                c.IsActive
            FROM Onwards.Compliance c
            WHERE c.UserId = bud.UserId
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        ) AS Compliance,

        -- Bank Details
        (
            SELECT TOP 1
                bd.BankAccountNumber,
                bd.AccountHolderName,
                bd.IFSCCode,
                bd.BankName,
                bd.BranchName,
                bd.CreatedDate,
                bd.CreatedBy,
                bd.ModifiedDate,
                bd.ModifiedBy,
                bd.IsActive
            FROM Onwards.BankDetails bd
            WHERE bd.UserId = bud.UserId
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        ) AS BankDetails,

        -- Emergency Contacts
        (
            SELECT TOP 1
                ec.ContactName,
                ec.ContactRelationship,
                ec.PrimaryContactNumber AS PrimaryContactNumber_EmergencyContactDetails,
                ec.SecondaryContactNumber,
                ec.CreatedDate,
                ec.CreatedBy,
                ec.ModifiedDate,
                ec.ModifiedBy,
                ec.IsActive
            FROM Onwards.EmergencyContacts ec
            WHERE ec.UserId = bud.UserId
            FOR JSON PATH, WITHOUT_ARRAY_WRAPPER
        ) AS EmergencyContact

    FROM Onwards.BasicUserDetails bud
    WHERE bud.UserId = @UserId

END
GO


--------------------------------------- Basic Details -----------------------------------------