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

        public async Task<List<AdminUserDto>> GetUsersForAdminAsync()
        {
            try
            {
                var result = new List<AdminUserDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUsersForAdmin", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var user = new AdminUserDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        EmployeeCode = reader.GetString(reader.GetOrdinal("EmployeeCode")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        Password = reader.GetString(reader.GetOrdinal("Password")),
                        Email = reader.GetString(reader.GetOrdinal("Email")),
                        Mobile = reader.GetString(reader.GetOrdinal("Mobile")),
                        DOJ = reader.GetDateTime(reader.GetOrdinal("DOJ")),
                        DOR = reader.IsDBNull(reader.GetOrdinal("DOR"))
                            ? null
                            : reader.GetDateTime(reader.GetOrdinal("DOR")),
                        RoleId = reader.GetInt32(reader.GetOrdinal("RoleId")),
                        RoleName = reader.GetString(reader.GetOrdinal("RoleName")),
                        GradeId = reader.GetInt32(reader.GetOrdinal("GradeId")),
                        GradeValue = reader.GetString(reader.GetOrdinal("GradeValue")),
                        DepartmentId = reader.GetInt32(reader.GetOrdinal("DepartmentId")),
                        DepartmentName = reader.GetString(reader.GetOrdinal("DepartmentName")),
                        UserTypeId = reader.GetInt32(reader.GetOrdinal("UserTypeId")),
                        TypeName = reader.GetString(reader.GetOrdinal("TypeName")),
                        ShiftId = reader.GetInt32(reader.GetOrdinal("ShiftId")),
                        ReportingManagerId = reader.GetInt32(reader.GetOrdinal("ReportingManagerId")),
                        ReportingManagerName = reader.GetString(reader.GetOrdinal("ReportingManagerName")),
                        AdministrativeManagerId = reader.GetInt32(reader.GetOrdinal("AdministrativeManagerId")),
                        AdministrativeManagerName = reader.GetString(reader.GetOrdinal("AdministrativeManagerName")),
                        LocationId = reader.GetInt32(reader.GetOrdinal("LocationId")),
                        LocationName = reader.GetString(reader.GetOrdinal("LocationName"))
                    };

                    result.Add(user);
                }

                return result;
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while fetching users for admin.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching users for admin.", ex);
            }
        }


        public async Task<bool> DuplicateEmailCheckAsync(string email,int? userId)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.DuplicateEmailCheck", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Email", email);
                cmd.Parameters.AddWithValue("@UserId", userId ?? (object)DBNull.Value);

                var isUniqueParam = new SqlParameter("@IsUnique", SqlDbType.Bit)
                {
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(isUniqueParam);

                await cmd.ExecuteNonQueryAsync();

                return Convert.ToBoolean(isUniqueParam.Value);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while checking duplicate email.", ex);
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

                cmd.Parameters.AddWithValue("@Id", user.Id ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@ShiftId", user.ShiftId);
                cmd.Parameters.AddWithValue("@LoginId", user.LoginId);
                cmd.Parameters.AddWithValue("@Password", user.Password);
                cmd.Parameters.AddWithValue("@FullName", user.FullName);
                cmd.Parameters.AddWithValue("@Email", user.Email);
                cmd.Parameters.AddWithValue("@Mobile", user.Mobile);
                cmd.Parameters.AddWithValue("@LocationId", user.LocationId);
                cmd.Parameters.AddWithValue("@DOJ", user.DOJ);
                cmd.Parameters.AddWithValue("@DOR", user.DOR);
                cmd.Parameters.AddWithValue("@RoleId", user.RoleId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@GradeId", user.GradeId);
                cmd.Parameters.AddWithValue("@DepartmentId", user.DepartmentId ?? (object)DBNull.Value);
                cmd.Parameters.AddWithValue("@UserTypeId", user.UserTypeId);
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

        public async Task DeleteUserAsync(int Id,int LoginId)
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
                cmd.Parameters.AddWithValue("@LoginId", LoginId);
                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while Deleting user details.", ex);
            }
        }

        public async Task<List<GradeDto>> GetAllGradesAsync()
        {
            try
            {
                var result = new List<GradeDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllGrades", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    result.Add(new GradeDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        GradeValue = reader.GetString(reader.GetOrdinal("GradeValue"))
                    });
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching grades.", ex);
            }
        }

        public async Task<List<DepartmentDto>> GetAllDepartmentsAsync()
        {
            try
            {
                var result = new List<DepartmentDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllDepartments", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    result.Add(new DepartmentDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        DepartmentName = reader.GetString(reader.GetOrdinal("DepartmentName"))
                    });
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching departments.", ex);
            }
        }

        public async Task<List<UserTypeDto>> GetAllTypesAsync()
        {
            try
            {
                var result = new List<UserTypeDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllTypes", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    result.Add(new UserTypeDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        TypeName = reader.GetString(reader.GetOrdinal("TypeName"))
                    });
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching user types.", ex);
            }
        }

        public async Task<List<ShiftsDto>> GetAllShiftsAsync()
        {
            try
            {
                var result = new List<ShiftsDto>();
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAllShifts", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    result.Add(new ShiftsDto
                    {
                        ShiftId = reader.GetInt32(reader.GetOrdinal("ShiftId")),
                        ShiftName = reader.GetString(reader.GetOrdinal("ShiftName"))
                    });
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching shifts.", ex);
            }
        }
    }
}
