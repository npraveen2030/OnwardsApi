using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using System.Data.SqlClient;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserDetailsRepository : IUserDetailsRepository
    {
        private readonly IConfiguration _configuration;

        public UserDetailsRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<IList<UserModelDto>> GetAllUserDetailsAsync(UserModelFilter filter, int skip , int take)
        {
            try
            {
                var list = new List<UserModelDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllUserDetails", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Skip", skip);
                cmd.Parameters.AddWithValue("@Take", take);
                cmd.Parameters.AddWithValue("@EmployeeCode", string.IsNullOrWhiteSpace(filter.EmployeeCode) ? DBNull.Value : filter.EmployeeCode);
                cmd.Parameters.AddWithValue("@FullName", string.IsNullOrWhiteSpace(filter.FullName) ? DBNull.Value : filter.FullName);
                cmd.Parameters.AddWithValue("@Email", string.IsNullOrWhiteSpace(filter.Email) ? DBNull.Value : filter.Email);
                cmd.Parameters.AddWithValue("@Mobile", string.IsNullOrWhiteSpace(filter.Mobile) ? DBNull.Value : filter.Mobile);


                using var reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    list.Add(new UserModelDto
                    {
                        EmployeeCode = reader["EmployeeCode"].ToString() ?? "",
                        FullName = reader["FullName"].ToString() ?? "",
                        Email = reader["Email"].ToString() ?? "",
                        Mobile = reader["Mobile"].ToString() ?? "",
                        DOJ = Convert.ToDateTime(reader["DOJ"]),
                        DOR = Convert.ToDateTime(reader["DOR"]),
                        Role = reader["RoleName"].ToString() ?? "",
                        Grade = reader["GradeValue"].ToString() ?? "",
                        Department = reader["DepartmentName"].ToString() ?? "",
                        ReportingManager = reader["ReportingManagerName"].ToString() ?? "",
                        AdministrativeManager = reader["AdministrativeManagerName"].ToString() ?? ""
                    });
                }
                return list;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while Getting all user details.", ex);
            }
        }

        public async Task<string> InsertOrUpdateUserAsync(UserModel user)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserDetails", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@LoginId", user.LoginId);
                cmd.Parameters.AddWithValue("@Password", user.Password);
                cmd.Parameters.AddWithValue("@FullName", user.FullName);
                cmd.Parameters.AddWithValue("@Email", user.Email);
                cmd.Parameters.AddWithValue("@Mobile", user.Mobile);
                cmd.Parameters.AddWithValue("@DOJ", user.DOJ);
                cmd.Parameters.AddWithValue("@DOR", user.DOR);
                cmd.Parameters.AddWithValue("@RoleId", user.RoleId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@GradeId", user.GradeId);
                cmd.Parameters.AddWithValue("@DepartmentId", user.DepartmentId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ReportingManagerId", user.ReportingManagerId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@AdministrativeManagerId", user.AdministrativeManagerId ?? (object)DBNull.Value);

                var returnParam = new SqlParameter("@Return", SqlDbType.NVarChar, 100)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(returnParam);

                await cmd.ExecuteNonQueryAsync();

                return returnParam.Value?.ToString() ?? string.Empty;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating user details.", ex);
            }
        }

        public async Task DeleteUserAsync(int Id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DeleteUserDetail", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };
                cmd.Parameters.AddWithValue("@Id", Id);
                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while Deleting user details.", ex);
            }
        }
    }
}
