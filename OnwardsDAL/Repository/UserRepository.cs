using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface; // ✅ required namespace

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
    }
}
