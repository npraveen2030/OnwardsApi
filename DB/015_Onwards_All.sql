


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

