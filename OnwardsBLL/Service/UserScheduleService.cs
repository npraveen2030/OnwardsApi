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

        public List<UserScheduleProfileDto> GetUserScheduleForScheduler(int schedulerId, int companyId, int locationId)
        {
            return _repo.GetUserScheduleForScheduler(schedulerId, companyId, locationId);
        }
    }
}
