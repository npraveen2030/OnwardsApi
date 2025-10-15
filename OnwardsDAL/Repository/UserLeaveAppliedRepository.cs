using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data;
using Microsoft.Data.SqlClient;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserLeaveAppliedRepository : IUserLeaveAppliedRepository
    {
        private readonly IConfiguration _configuration;

        public UserLeaveAppliedRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int managerId)
        {
            try
            {
                var result = new List<UserLeaveAppliedDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserLeaveAppliedForManager", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@ManagerId", managerId);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var leave = new UserLeaveAppliedDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        UserId = reader.GetInt32(reader.GetOrdinal("UserId")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        PhoneNo = reader.IsDBNull(reader.GetOrdinal("PhoneNo")) ? null : reader.GetString(reader.GetOrdinal("PhoneNo")),
                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        NoOfDays = reader.GetDecimal(reader.GetOrdinal("NoOfDays")),
                        Reason = reader.IsDBNull(reader.GetOrdinal("Reason")) ? null : reader.GetString(reader.GetOrdinal("Reason")),
                        Action = reader.IsDBNull(reader.GetOrdinal("Action")) ? null : reader.GetString(reader.GetOrdinal("Action")),
                        NotifiedUserName = reader.IsDBNull(reader.GetOrdinal("NotifiedUserName")) ? null : reader.GetString(reader.GetOrdinal("NotifiedUserName")),
                        LeaveTypeName = reader.GetString(reader.GetOrdinal("LeaveTypeName")),
                        StatusName = reader.GetString(reader.GetOrdinal("LeaveStatusName")),
                        FileName = reader.IsDBNull(reader.GetOrdinal("FileName")) ? null : reader.GetString(reader.GetOrdinal("FileName")),
                    };

                    result.Add(leave);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching user leave applications for the manager.", ex);
            }
        }

        public async Task<(string FileName, byte[] Data)?> GetUserLeaveAppliedDocumentAsync(int id)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserLeaveAppliedDocument", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@Id", id);

                await using var reader = await cmd.ExecuteReaderAsync();

                if (await reader.ReadAsync())
                {
                    var fileName = reader.GetString(reader.GetOrdinal("FileName"));
                    var data = (byte[])reader["Data"];
                    return (fileName, data);
                }

                return null;
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while fetching user leave document.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching user leave document.", ex);
            }
        }

        public async Task<List<LeaveTypeDto>> GetLeaveTypesAsync(int userId)
        {
            try
            {
                var result = new List<LeaveTypeDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetLeaveTypes", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var leaveType = new LeaveTypeDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        LeaveTypeName = reader.GetString(reader.GetOrdinal("LeaveTypeName")),
                        RemainingDays = reader.IsDBNull(reader.GetOrdinal("RemainingDays"))
                            ? 0
                            : reader.GetDecimal(reader.GetOrdinal("RemainingDays"))
                    };

                    result.Add(leaveType);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching leave types.", ex);
            }
        }

        public async Task InsertUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@LoginId", leave.LoginId);
                cmd.Parameters.AddWithValue("@UserId", leave.UserId);
                cmd.Parameters.AddWithValue("@LeaveTypeId", leave.LeaveTypeId);
                cmd.Parameters.AddWithValue("@Year", (object?)leave.Year ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@PhoneNo", (object?)leave.PhoneNo ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@StartDate", leave.StartDate);
                cmd.Parameters.AddWithValue("@EndDate", leave.EndDate);
                cmd.Parameters.AddWithValue("@IsFullDay", leave.IsFullDay);
                cmd.Parameters.AddWithValue("@LocationId", (object?)leave.LocationId ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@Reason", (object?)leave.Reason ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@NotifiedUserId", leave.NotifiedUserId);
                cmd.Parameters.AddWithValue("@FileName", (object?)leave.Data?.FileName ?? DBNull.Value);

                if (leave.Data != null)
                {
                    using var ms = new MemoryStream();
                    await leave.Data.CopyToAsync(ms);
                    cmd.Parameters.Add("@Data", SqlDbType.VarBinary, -1).Value = ms.ToArray();
                }
                else
                {
                    cmd.Parameters.Add("@Data", SqlDbType.VarBinary, -1).Value = DBNull.Value;
                }

                cmd.Parameters.AddWithValue("@LeaveStatusId", leave.LeaveStatusId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex) when (ex.Message.Contains("Only 30 days Prior to Today can be applied"))
            {
                throw new InvalidOperationException("You can only apply for leave within 30 days from today.", ex);
            }
            catch (SqlException ex) when (ex.Message.Contains("Dates Clash with Previous Leave Request"))
            {
                throw new InvalidOperationException("The selected leave dates overlap with an existing leave request.", ex);
            }
            catch (SqlException ex) when (ex.Message.Contains("Insuffecient Leaves"))
            {
                throw new InvalidOperationException("You do not have enough leave balance for this request.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting user leave application.", ex);
            }
        }


        public async Task UpdateUserLeaveAppliedAsync(List<UserLeaveAppliedUpdateModel> leaves)
        {
            if (leaves == null || leaves.Count == 0)
                throw new ArgumentException("No leave applications provided.", nameof(leaves));

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // ✅ Create DataTable matching Onwards.UpdateULATVP
                var tvp = new DataTable();
                tvp.Columns.Add("Id", typeof(int));
                tvp.Columns.Add("StartDate", typeof(DateTime));
                tvp.Columns.Add("EndDate", typeof(DateTime));
                tvp.Columns.Add("NoOfDays", typeof(int));
                tvp.Columns.Add("Action", typeof(string));
                tvp.Columns.Add("LeaveTypeId", typeof(int));
                tvp.Columns.Add("LeaveStatusId", typeof(int));
                tvp.Columns.Add("UserId", typeof(int));
                tvp.Columns.Add("LoginId", typeof(int));

                // ✅ Fill TVP with all leave updates
                foreach (var leave in leaves)
                {
                    tvp.Rows.Add(
                        leave.Id,
                        leave.StartDate.Date,
                        leave.EndDate.Date,
                        leave.NoOfDays,
                        (object?)leave.Action ?? DBNull.Value,
                        leave.LeaveTypeId,
                        leave.LeaveStatusId,
                        leave.UserId,
                        leave.LoginId
                    );
                }

                // ✅ Add structured parameter
                var param = cmd.Parameters.AddWithValue("@Request", tvp);
                param.SqlDbType = SqlDbType.Structured;
                param.TypeName = "Onwards.UpdateULATVP";

                // ✅ Execute stored procedure
                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while updating user leave applications.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating user leave applications.", ex);
            }
        }


        public async Task<List<CalendarEventDto>> GetCalendarEventsAsync(int userId, int month, int year)
        {
            var events = new List<CalendarEventDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetCalendarEvents", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);
                cmd.Parameters.AddWithValue("@Month", month);
                cmd.Parameters.AddWithValue("@Year", year);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var calendarEvent = new CalendarEventDto
                    {
                        Date = reader.GetDateTime(reader.GetOrdinal("Date")),
                        StatusId = reader.GetInt32(reader.GetOrdinal("StatusId")),
                        LoginTime = reader.IsDBNull(reader.GetOrdinal("LoginTime"))
                    ? (TimeSpan?)null
                    : reader.GetTimeSpan(reader.GetOrdinal("LoginTime")),

                        LogOutTime = reader.IsDBNull(reader.GetOrdinal("LogOutTime"))
                    ? (TimeSpan?)null
                    : reader.GetTimeSpan(reader.GetOrdinal("LogOutTime"))
                    };

                    events.Add(calendarEvent);
                }

                return events;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving calendar events.", ex);
            }
        }
        public async Task<List<LeavesAndAttendanceDto>> GetLeavesAndAttendanceAsync(int userId)
        {
            var result = new List<LeavesAndAttendanceDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetLeavesAndAttendance", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var record = new LeavesAndAttendanceDto
                    {
                        IsLeave = reader.GetBoolean(reader.GetOrdinal("IsLeave")),
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),

                        // Nullable columns
                        LeaveTypeId = reader["LeaveTypeId"] == DBNull.Value ? null : (int?)reader.GetInt32(reader.GetOrdinal("LeaveTypeId")),
                        LeaveTypeName = reader["LeaveTypeName"] as string,
                        Type = reader["Type"] == DBNull.Value ? null : (int?)reader.GetInt32(reader.GetOrdinal("Type")),

                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        Duration = reader.GetDecimal(reader.GetOrdinal("Duration")),
                        Status = reader["Status"] as string,
                        Reason = reader["Reason"] as string,
                        CreatedDate = reader["CreatedDate"] == DBNull.Value
                            ? null
                            : (DateTime?)reader.GetDateTime(reader.GetOrdinal("CreatedDate"))
                    };

                    result.Add(record);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving leaves and attendance data.", ex);
            }
        }

    }
}
