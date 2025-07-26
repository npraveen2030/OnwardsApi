using System.Data;
using System.Data.SqlClient;
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

        public UserLoginDto ValidateLogin(string employeeCode, string password)
        {
            var UserDetailsDto = new UserLoginDto();
            try
            {
                var connectionString = _config.GetConnectionString("DefaultConnection");

                using var connection = new SqlConnection(connectionString);
                connection.Open();

                using var command = new SqlCommand("Onwards.sp_ValidateUserLogin", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                command.Parameters.AddWithValue("@EmployeeCode", employeeCode);
                command.Parameters.AddWithValue("@Password", password);

                //int result = (int)command.ExecuteScalar();
                //return result > 0;

                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        UserDetailsDto.EmployeeCode = reader["EmployeeCode"].ToString();
                        UserDetailsDto.FullName = reader["FullName"].ToString();
                        UserDetailsDto.Email = reader["Email"].ToString();
                        UserDetailsDto.RoleName = reader["RoleName"].ToString();
                    }
                }
                
            }
            catch (SqlException ex)
            {
                // Rethrow to the controller or log it
                throw new ApplicationException(ex.Message);
            }
            return UserDetailsDto;
        }


    }
}
