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
    public class UserScheduleService : IUserScheduleService
    {
        private readonly IUserScheduleRepository _repo;

        public UserScheduleService(IUserScheduleRepository repo)
        {
            _repo = repo;
        }

        public async Task<List<UserScheduleProfileDto>> GetUserScheduleForSchedulerAsync(int schedulerId, int companyId, int locationId)
        {
            return await _repo.GetUserScheduleForSchedulerAsync(schedulerId, companyId, locationId);
        }

        public async Task InsertOrUpdateUserScheduleAsync(List<UserScheduleTVP> schedules)
        {
            await _repo.InsertOrUpdateUserScheduleAsync(schedules);
        }
    }
}
