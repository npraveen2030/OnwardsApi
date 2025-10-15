using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System.Data;


namespace OnwardsDAL.Repository
{
    public class AttendanceRegularizationRepository : IAttendanceRegularizationRepository
    {
        private readonly IConfiguration _config;

        public AttendanceRegularizationRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task<List<AttendanceRegularizationDto>> GetAttendanceRegularizationAsync(int managerId)
        {
            try
            {
                var result = new List<AttendanceRegularizationDto>();

                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAttendanceRegularizationForManager", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@ManagerId", managerId);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var record = new AttendanceRegularizationDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        Duration = reader.GetDecimal(reader.GetOrdinal("Duration")),
                        Reason = reader.IsDBNull(reader.GetOrdinal("Reason")) ? null : reader.GetString(reader.GetOrdinal("Reason")),
                        Action = reader.IsDBNull(reader.GetOrdinal("Action")) ? null : reader.GetString(reader.GetOrdinal("Action")),
                        StatusName = reader.GetString(reader.GetOrdinal("StatusName"))
                    };

                    result.Add(record);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching attendance regularization records for the manager.", ex);
            }
        }

        public async Task<AttendanceRegularizationDetailsDto?> GetAttendanceRegularizationByIdAsync(int id)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAttendanceRegularizationById", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await using var reader = await cmd.ExecuteReaderAsync();

                if (await reader.ReadAsync())
                {
                    return new AttendanceRegularizationDetailsDto
                    {
                        UserName = reader.GetString(reader.GetOrdinal("UserName")),
                        ManagerName = reader.GetString(reader.GetOrdinal("ManagerName")),
                        Type = reader.GetString(reader.GetOrdinal("Type")),
                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        Duration = reader.GetDecimal(reader.GetOrdinal("Duration")),
                        Reason = reader.GetString(reader.GetOrdinal("Reason")),
                        Action = reader.IsDBNull(reader.GetOrdinal("Action")) ? null : reader.GetString(reader.GetOrdinal("Action")),
                        StatusName = reader.GetString(reader.GetOrdinal("StatusName"))
                    };
                }

                return null;
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while fetching attendance regularization details by ID.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching attendance regularization details by ID.", ex);
            }
        }


        public async Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertAttendanceRegularization", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Add parameters
                cmd.Parameters.AddWithValue("@UserId", regularization.UserId);
                cmd.Parameters.AddWithValue("@TypeId", regularization.TypeId);
                cmd.Parameters.AddWithValue("@StartDate", regularization.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", regularization.EndDate);
                cmd.Parameters.AddWithValue("@Duration", regularization.Duration);
                cmd.Parameters.AddWithValue("@Reason", (object?)regularization.Reason ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@LoginId", regularization.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex) when (ex.Message.Contains("Only 30 days Prior to Today can be applied"))
            {
                throw new InvalidOperationException("You can only apply for leave within 30 days from today.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting attendance regularization request.", ex);
            }
        }
        public async Task UpdateAttendanceRegularizationAsync(List<AttendanceRegularizationUpdateModel> regularizations)
        {
            if (regularizations == null || regularizations.Count == 0)
                throw new ArgumentException("No attendance regularizations provided.", nameof(regularizations));

            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateAttendanceRegularization", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // ✅ Create DataTable matching Onwards.UpdateARTVP structure
                var tvp = new DataTable();
                tvp.Columns.Add("Id", typeof(int));
                tvp.Columns.Add("StartDate", typeof(DateTime));
                tvp.Columns.Add("EndDate", typeof(DateTime));
                tvp.Columns.Add("Action", typeof(string));
                tvp.Columns.Add("StatusId", typeof(int));
                tvp.Columns.Add("UserId", typeof(int));
                tvp.Columns.Add("LoginId", typeof(int));

                // ✅ Fill the DataTable with multiple rows from the list
                foreach (var item in regularizations)
                {
                    tvp.Rows.Add(
                        item.Id,
                        item.StartDate.Date,
                        item.EndDate.Date,
                        (object?)item.Action ?? DBNull.Value,
                        item.StatusId,
                        item.UserId,
                        item.LoginId
                    );
                }

                // ✅ Add structured parameter
                var param = cmd.Parameters.AddWithValue("@Request", tvp);
                param.SqlDbType = SqlDbType.Structured;
                param.TypeName = "Onwards.UpdateARTVP";

                // ✅ Execute once for all records
                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while updating attendance regularizations.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating attendance regularizations.", ex);
            }
        }
    }
}

