using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IAttendanceRegularizationRepository
    {
        public Task<List<AttendanceRegularizationDto>> GetAttendanceRegularizationAsync(int managerId);
        public Task<int> GetAttendanceRegularizationDurationAsync(int locationId, DateTime startDate, DateTime endDate);
        public Task<AttendanceRegularizationDetailsDto?> GetAttendanceRegularizationByIdAsync(int id);
        public Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization);
        public Task UpdateAttendanceRegularizationAsync(List<AttendanceRegularizationUpdateModel> regularizations);
    }
}
