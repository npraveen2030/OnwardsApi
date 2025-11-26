using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class SchedulerProfileRepository : ISchedulerProfileRepository
    {
        private readonly IConfiguration _configuration;

        public SchedulerProfileRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        // ---------------------------
        // GET PROFILE
        // ---------------------------
        public async Task<SchedulerProfileDto> GetSchedulerProfileAsync(int userId)
        {
            try
            {
                var profile = new SchedulerProfileDto
                {
                    Skills = new List<SchedulerProfileSkillDto>()
                };

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetSchedulerProfile", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", userId);

                await using var reader = await cmd.ExecuteReaderAsync();

                // Summary
                if (await reader.ReadAsync())
                {
                    profile.SummaryId = reader.GetInt32(reader.GetOrdinal("Id"));
                    profile.Summary = reader.GetString(reader.GetOrdinal("Summary"));
                }

                // Move to next resultset
                await reader.NextResultAsync();

                // Skills
                while (await reader.ReadAsync())
                {
                    profile.Skills.Add(new SchedulerProfileSkillDto
                    {
                        Id = reader.GetInt32(reader.GetOrdinal("Id")),
                        SkillName = reader.GetString(reader.GetOrdinal("SkillName")),
                        Rating = reader.GetInt32(reader.GetOrdinal("Rating"))
                    });
                }

                return profile;
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Error inserting or updating saved search: {ex.Message}", ex);
            }
        }

        // ---------------------------
        // INSERT OR UPDATE PROFILE
        // ---------------------------
        public async Task InsertOrUpdateSchedulerProfileAsync(SchedulerProfileSaveModel model)
        {
            await using var conn = GetConnection();
            await conn.OpenAsync();

            await using var cmd = new SqlCommand("Onwards.InsertOrUpdateSchedulerProfile", conn)
            {
                CommandType = CommandType.StoredProcedure
            };

            cmd.Parameters.AddWithValue("@LoginId", model.LoginId);
            cmd.Parameters.AddWithValue("@SummaryId", (object?)model.SummaryId ?? DBNull.Value);
            cmd.Parameters.AddWithValue("@Summary", model.Summary);

            // Build TVP
            var dt = new DataTable();
            dt.Columns.Add("Id", typeof(int));
            dt.Columns.Add("SkillName", typeof(string));
            dt.Columns.Add("Rating", typeof(int));

            foreach (var s in model.Skills)
            {
                dt.Rows.Add(
                    (object?)s.Id ?? DBNull.Value,
                    s.SkillName,
                    s.Rating
                );
            }

            var tvpParam = cmd.Parameters.AddWithValue("@Skills", dt);
            tvpParam.SqlDbType = SqlDbType.Structured;
            tvpParam.TypeName = "Onwards.SchedulerSkills";

            await cmd.ExecuteNonQueryAsync();
        }
    }
}
