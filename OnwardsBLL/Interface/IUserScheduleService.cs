using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserScheduleService
    {
        public Task<List<UserScheduleProfileDto>> GetUserScheduleForSchedulerAsync(int schedulerId, int companyId, int locationId);
        public Task InsertOrUpdateUserScheduleAsync(List<UserScheduleTVP> schedules);
      
    }
}
