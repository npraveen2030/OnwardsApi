using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserScheduleRepository : IUserScheduleRepository
    {
        private readonly IConfiguration _config;

        public UserScheduleRepository(IConfiguration config)
        {
            _config = config;
        }

        public async Task<List<UserScheduleProfileDto>> GetUserScheduleForSchedulerAsync(int schedulerId, int companyId, int locationId)
        {
            try
            {
                var result = new List<UserScheduleProfileDto>();
                var connectionString = _config.GetConnectionString("DefaultConnection");

                await using var connection = new SqlConnection(connectionString);
                await connection.OpenAsync();

                await using var command = new SqlCommand("Onwards.GetUserScheduleForScheduler", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                command.Parameters.AddWithValue("@SchedulerId", schedulerId);
                command.Parameters.AddWithValue("@CompanyId", companyId);
                command.Parameters.AddWithValue("@LocationId", locationId);

                await using var reader = await command.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var schedule = new UserScheduleProfileDto
                    {
                        Date = reader.GetDateTime(reader.GetOrdinal("Date")),
                        Info = reader["Info"]?.ToString(),

                        h9to10 = reader["h9to10"]?.ToString(),
                        h10to11 = reader["h10to11"]?.ToString(),
                        h11to12 = reader["h11to12"]?.ToString(),
                        h2to3 = reader["h2to3"]?.ToString(),
                        h3to4 = reader["h3to4"]?.ToString(),
                        h4to5 = reader["h4to5"]?.ToString(),
                        h5to6 = reader["h5to6"]?.ToString(),
                        h6to7 = reader["h6to7"]?.ToString(),
                        h7to8 = reader["h7to8"]?.ToString(),
                        h8to9 = reader["h8to9"]?.ToString(),
                        h9to10pm = reader["h9to10pm"]?.ToString(),
                        h10to11pm = reader["h10to11pm"]?.ToString(),
                        h11to12pm = reader["h11to12pm"]?.ToString()
                    };

                    result.Add(schedule);
                }

                return result;
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }


        // ✔ ASYNC VERSION FOR INSERT/UPDATE
        public async Task InsertOrUpdateUserScheduleAsync(List<UserScheduleTVP> schedules)
        {
            try
            {
                var connectionString = _config.GetConnectionString("DefaultConnection");

                await using var connection = new SqlConnection(connectionString);
                await connection.OpenAsync();

                await using var command = new SqlCommand("Onwards.InsertOrUpdateUserSchedule", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                // Build TVP
                var tvp = new DataTable();
                tvp.Columns.Add("Id", typeof(int));
                tvp.Columns.Add("SchedulerId", typeof(int));
                tvp.Columns.Add("ParticipantId", typeof(int));
                tvp.Columns.Add("Date", typeof(DateTime));
                tvp.Columns.Add("StartTime", typeof(TimeSpan));
                tvp.Columns.Add("LoginId", typeof(int));

                foreach (var s in schedules)
                {
                    tvp.Rows.Add(
                        (object?)s.Id ?? DBNull.Value,
                        s.SchedulerId,
                        (object?)s.ParticipantId ?? DBNull.Value,
                        s.Date,
                        s.StartTime,
                        s.LoginId
                    );
                }

                var tvpParam = command.Parameters.AddWithValue("@Schedules", tvp);
                tvpParam.SqlDbType = SqlDbType.Structured;
                tvpParam.TypeName = "Onwards.UserScheduleTVP";

                await command.ExecuteNonQueryAsync();
            }
            catch (SqlException ex)
            {
                throw new ApplicationException(ex.Message);
            }
        }
    }
}
