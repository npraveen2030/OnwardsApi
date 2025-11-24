using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserScheduleRepository
    {
        Task<List<UserScheduleProfileDto>> GetUserScheduleForSchedulerAsync(int schedulerId, int companyId, int locationId);
        Task InsertOrUpdateUserScheduleAsync(List<UserScheduleTVP> schedules);
    }
}

