using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IAttendanceRegularizationService
    {
        public Task<List<AttendanceRegularizationDto>> GetAttendanceRegularizationAsync(int managerId);
        Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization);
        public Task UpdateAttendanceRegularizationAsync(List<AttendanceRegularizationUpdateModel> regularizations);
    }
}
