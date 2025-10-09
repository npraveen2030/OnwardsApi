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

        public async Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int userId)
        {
            try
            {
                var result = new List<UserLeaveAppliedDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var leave = new UserLeaveAppliedDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        LeaveTypeName = reader.GetString(reader.GetOrdinal("LeaveTypeName")),
                        NoOfDays = reader.GetDecimal(reader.GetOrdinal("NoOfDays")),
                        StartDate = reader.GetDateTime(reader.GetOrdinal("StartDate")),
                        EndDate = reader.GetDateTime(reader.GetOrdinal("EndDate")),
                        StatusName = reader.GetString(reader.GetOrdinal("Name"))
                    };
                    result.Add(leave);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching user applied leaves.", ex);
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


        public async Task UpdateUserLeaveAppliedAsync(UserLeaveAppliedUpdateModel leave)
        {
            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.UpdateUserLeaveApplied", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Parameters - match the stored procedure exactly
                cmd.Parameters.AddWithValue("@Id", leave.Id);
                cmd.Parameters.AddWithValue("@LoginId", leave.LoginId);
                cmd.Parameters.AddWithValue("@UserId", leave.UserId);
                cmd.Parameters.AddWithValue("@LeaveTypeId", leave.LeaveTypeId);
                cmd.Parameters.AddWithValue("@LeaveStatusId", leave.LeaveStatusId);
                cmd.Parameters.AddWithValue("@Action", (object?)leave.Action ?? DBNull.Value);
                cmd.Parameters.AddWithValue("@NoOfDays", leave.NoOfDays);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new Exception("SQL error occurred while updating user leave application.", ex);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while updating user leave application.", ex);
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

    }
}
