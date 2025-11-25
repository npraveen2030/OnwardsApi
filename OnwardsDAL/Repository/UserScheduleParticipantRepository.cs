using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserScheduleParticipantRepository : IUserScheduleParticipantRepository
    {
        private readonly IConfiguration _configuration;

        public UserScheduleParticipantRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<UserScheduleParticipantDto>> GetUserScheduleForParticipantAsync(int schedulerId)
        {
            var result = new List<UserScheduleParticipantDto>();

            try
            {
                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetUserScheduleForParticipant", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@SchedulerId", schedulerId);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var schedule = new UserScheduleParticipantDto
                    {
                        Date = reader.GetDateTime(reader.GetOrdinal("Date")),
                        h9to10 = reader["h9to10"] as int?,
                        h10to11 = reader["h10to11"] as int?,
                        h11to12 = reader["h11to12"] as int?,

                        h2to3 = reader["h2to3"] as int?,
                        h3to4 = reader["h3to4"] as int?,
                        h4to5 = reader["h4to5"] as int?,
                        h5to6 = reader["h5to6"] as int?,

                        h6to7 = reader["h6to7"] as int?,
                        h7to8 = reader["h7to8"] as int?,
                        h8to9 = reader["h8to9"] as int?,

                        h9to10pm = reader["h9to10pm"] as int?,
                        h10to11pm = reader["h10to11pm"] as int?,
                        h11to12pm = reader["h11to12pm"] as int?,
                    };

                    result.Add(schedule);
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching schedule for participant.", ex);
            }

            return result;
        }
    }
}
