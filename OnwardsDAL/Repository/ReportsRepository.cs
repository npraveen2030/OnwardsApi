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
    public class ReportsRepository : IReportsRepository
    {
        private readonly IConfiguration _configuration;

        public ReportsRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        private SqlConnection GetConnection() =>
            new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));

        public async Task<List<LeaveReportDto>> GetLeaveReportAsync(DateTime startDate, DateTime endDate)
        {
            try
            {
                var result = new List<LeaveReportDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetLeavesForReports", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@StartDate", startDate);
                cmd.Parameters.AddWithValue("@EndDate", endDate);

                await using var reader = await cmd.ExecuteReaderAsync();

                while (await reader.ReadAsync())
                {
                    var report = new LeaveReportDto
                    {
                        EmployeeCode = reader.GetString(reader.GetOrdinal("EmployeeCode")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        SickLeave = reader.GetDecimal(reader.GetOrdinal("SickLeave")),
                        CasualLeave = reader.GetDecimal(reader.GetOrdinal("CasualLeave")),
                        EarnedLeave = reader.GetDecimal(reader.GetOrdinal("EarnedLeave")),
                        MaternityLeave = reader.GetDecimal(reader.GetOrdinal("MaternityLeave")),
                        PaternityLeave = reader.GetDecimal(reader.GetOrdinal("PaternityLeave")),
                        BereavementLeave = reader.GetDecimal(reader.GetOrdinal("BereavementLeave")),
                        UnpaidLeave = reader.GetDecimal(reader.GetOrdinal("UnpaidLeave"))
                    };

                    result.Add(report);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching leave report.", ex);
            }
        }

        public async Task<List<AttendanceRegularizationReportDto>> GetAttendanceRegularizationReportAsync(DateTime startDate, DateTime endDate)
        {
            try
            {
                var result = new List<AttendanceRegularizationReportDto>();

                await using var conn = GetConnection();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.GetAttendanceRegularizationForReports", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@StartDate", startDate);
                cmd.Parameters.AddWithValue("@EndDate", endDate);

                await using var reader = await cmd.ExecuteReaderAsync();
                while (await reader.ReadAsync())
                {
                    var report = new AttendanceRegularizationReportDto
                    {
                        EmployeeCode = reader.GetString(reader.GetOrdinal("EmployeeCode")),
                        FullName = reader.GetString(reader.GetOrdinal("FullName")),
                        Total = reader.GetDecimal(reader.GetOrdinal("Total")),
                        Approved = reader.GetDecimal(reader.GetOrdinal("Approved")),
                        Rejected = reader.GetDecimal(reader.GetOrdinal("Rejected"))
                    };

                    result.Add(report);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while fetching attendance regularization report.", ex);
            }
        }
    }
}
