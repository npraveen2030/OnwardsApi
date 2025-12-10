using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos; // ✅ required namespace

namespace OnwardsDAL.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly IConfiguration _config;

        public UserRepository(IConfiguration config)
        {
            _config = config;
        }

        public bool ValidateUser(string employeeCode, string password)
        {
            try
            {
                var connectionString = _config.GetConnectionString("DefaultConnection");

                using var connection = new SqlConnection(connectionString);
                connection.Open();

                using var command = new SqlCommand("Onwards.sp_UserLogin", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                command.Parameters.AddWithValue("@EmployeeCode", employeeCode);
                command.Parameters.AddWithValue("@Password", password);

                int result = (int)command.ExecuteScalar();
                return result > 0;
            }
            catch (SqlException ex)
            {
                // Rethrow to the controller or log it
                throw new ApplicationException(ex.Message);
            }
        }

        public async Task<(bool, UserLoginDto)> ValidateLogin(string employeeCode, string password)
        {
            try
            {
                UserLoginDto userDetailsDto = new();

                var connectionString = _config.GetConnectionString("DefaultConnection");
                await using var connection = new SqlConnection(connectionString);
                await connection.OpenAsync();

                using var command = new SqlCommand("Onwards.sp_ValidateUserLogin", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                command.Parameters.Add("@EmployeeCode", SqlDbType.NVarChar, 50).Value = employeeCode;
                command.Parameters.Add("@Password", SqlDbType.NVarChar, 100).Value = password;

                await using var reader = await command.ExecuteReaderAsync(CommandBehavior.SingleRow);

                if (!await reader.ReadAsync())
                {
                    return (false, userDetailsDto);
                }

                // Get ordinals for all returned fields
                int iId = reader.GetOrdinal("Id");
                int iEmpCode = reader.GetOrdinal("EmployeeCode");
                int iFullName = reader.GetOrdinal("FullName");
                int iEmail = reader.GetOrdinal("Email");
                int iMobile = reader.GetOrdinal("Mobile");
                int iRoleName = reader.GetOrdinal("RoleName");

                int iLocationName = reader.GetOrdinal("LocationName");
                int iDepartmentName = reader.GetOrdinal("DepartmentName");
                int iGradeValue = reader.GetOrdinal("GradeValue");
                int iDOJ = reader.GetOrdinal("DOJ");

                int iManagerCode = reader.GetOrdinal("ReportingManagerEmpCode");
                int iManagerName = reader.GetOrdinal("ReportingManagerFullName");

                int iAdminManagerCode = reader.GetOrdinal("AdministrativeManagerEmpCode");
                int iAdminManagerName = reader.GetOrdinal("AdministrativeManagerFullName");

                int iFuncManagerCode = reader.GetOrdinal("FunctionalReportingManagerEmpCode");
                int iFuncManagerName = reader.GetOrdinal("FunctionalReportingManagerFullName");

                int iLocationId = reader.GetOrdinal("LocationId");
                int iCompanyId = reader.GetOrdinal("CompanyId");

                // Assign values
                userDetailsDto.Id = reader.IsDBNull(iId) ? 0 : reader.GetInt32(iId);
                userDetailsDto.EmployeeCode = reader.IsDBNull(iEmpCode) ? "" : reader.GetString(iEmpCode);
                userDetailsDto.FullName = reader.IsDBNull(iFullName) ? "" : reader.GetString(iFullName);
                userDetailsDto.Email = reader.IsDBNull(iEmail) ? "" : reader.GetString(iEmail);
                userDetailsDto.MobileNo = reader.IsDBNull(iMobile) ? "" : reader.GetString(iMobile);
                userDetailsDto.RoleName = reader.IsDBNull(iRoleName) ? "" : reader.GetString(iRoleName);

                userDetailsDto.LocationName = reader.IsDBNull(iLocationName) ? "" : reader.GetString(iLocationName);
                userDetailsDto.DepartmentName = reader.IsDBNull(iDepartmentName) ? "" : reader.GetString(iDepartmentName);
                userDetailsDto.GradeValue = reader.IsDBNull(iGradeValue) ? "" : reader.GetString(iGradeValue);
                userDetailsDto.DOJ = reader.IsDBNull(iDOJ) ? (DateTime?)null : reader.GetDateTime(iDOJ);

                userDetailsDto.ReportingManagerEmpCode = reader.IsDBNull(iManagerCode) ? "" : reader.GetString(iManagerCode);
                userDetailsDto.ReportingManagerName = reader.IsDBNull(iManagerName) ? "" : reader.GetString(iManagerName);

                userDetailsDto.AdministrativeManagerEmpCode = reader.IsDBNull(iAdminManagerCode) ? "" : reader.GetString(iAdminManagerCode);
                userDetailsDto.AdministrativeManagerName = reader.IsDBNull(iAdminManagerName) ? "" : reader.GetString(iAdminManagerName);

                userDetailsDto.FunctionalReportingManagerEmpCode = reader.IsDBNull(iFuncManagerCode) ? "" : reader.GetString(iFuncManagerCode);
                userDetailsDto.FunctionalReportingManagerName = reader.IsDBNull(iFuncManagerName) ? "" : reader.GetString(iFuncManagerName);

                userDetailsDto.LocationId = reader.IsDBNull(iLocationId) ? 0 : reader.GetInt32(iLocationId);
                userDetailsDto.CompanyId = reader.IsDBNull(iCompanyId) ? 0 : reader.GetInt32(iCompanyId);

                return (true, userDetailsDto);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error validating login: {ex.Message}", ex);
            }
        }

    }
}
