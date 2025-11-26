using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class ReportsService : IReportsService
    {
        private readonly IReportsRepository _repo;

        public ReportsService(IReportsRepository repo)
        {
            _repo = repo;
        }

        public async Task<List<LeaveReportDto>> GetLeaveReportAsync(DateTime startDate, DateTime endDate)
        {
            return await _repo.GetLeaveReportAsync(startDate, endDate);
        }

        public async Task<List<AttendanceRegularizationReportDto>> GetAttendanceRegularizationReportAsync(DateTime startDate, DateTime endDate)
        {
            return await _repo.GetAttendanceRegularizationReportAsync(startDate, endDate);
        }
    }
}
