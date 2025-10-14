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
        Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization);
        public Task UpdateAttendanceRegularizationAsync(AttendanceRegularizationUpdateModel regularization);
    }
}
