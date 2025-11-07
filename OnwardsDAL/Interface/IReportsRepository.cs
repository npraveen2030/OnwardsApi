using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IReportsRepository
    {
        Task<List<LeaveReportDto>> GetLeaveReportAsync(DateTime startDate, DateTime endDate);
        public Task<List<AttendanceRegularizationReportDto>> GetAttendanceRegularizationReportAsync(DateTime startDate, DateTime endDate);
    }
}
