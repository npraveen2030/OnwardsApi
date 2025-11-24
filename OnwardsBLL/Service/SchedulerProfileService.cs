using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class SchedulerProfileService : ISchedulerProfileService
    {
        private readonly ISchedulerProfileRepository _repo;

        public SchedulerProfileService(ISchedulerProfileRepository repo)
        {
            _repo = repo;
        }

        public Task<SchedulerProfileDto> GetSchedulerProfileAsync(int userId)
        {
            return _repo.GetSchedulerProfileAsync(userId);
        }

        public Task InsertOrUpdateSchedulerProfileAsync(SchedulerProfileSaveModel model)
        {
            return _repo.InsertOrUpdateSchedulerProfileAsync(model);
        }
    }
}
