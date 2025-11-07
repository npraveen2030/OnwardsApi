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
    public class UserScheduleRepository : IUserScheduleRepository
    {
        private readonly IConfiguration _config;

        public UserScheduleRepository(IConfiguration config)
        {
            _config = config;
        }

        public List<UserScheduleProfileDto> GetUserScheduleForScheduler(int schedulerId, int companyId, int locationId)
        {
            try
            {
                var result = new List<UserScheduleProfileDto>();
                var connectionString = _config.GetConnectionString("DefaultConnection");

                using var connection = new SqlConnection(connectionString);
                connection.Open();

                using var command = new SqlCommand("Onwards.GetUserScheduleForScheduler", connection)
                {
                    CommandType = CommandType.StoredProcedure
                };

                command.Parameters.AddWithValue("@SchedulerId", schedulerId);
                command.Parameters.AddWithValue("@CompanyId", companyId);
                command.Parameters.AddWithValue("@LocationId", locationId);

                using var reader = command.ExecuteReader();

                while (reader.Read())
                {
                    var schedule = new UserScheduleProfileDto
                    {
                        Date = reader.GetDateTime(reader.GetOrdinal("Date")),
                        Info = reader["Info"]?.ToString(),
                        ScheduleId = reader["ScheduleId"] as int?,
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
                        h11to12pm = reader["h11to12pm"] as int?
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
    }

}
