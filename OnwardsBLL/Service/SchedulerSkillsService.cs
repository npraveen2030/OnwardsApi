using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class SchedulerSkillsService : ISchedulerSkillsService
    {
        private readonly ISchedulerSkillsRepository _repository;

        public SchedulerSkillsService(ISchedulerSkillsRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<SchedulerDetailsDto>> GetSchedulersBySkillsAsync(List<string> skills)
        {
            return await _repository.GetSchedulersBySkillsAsync(skills);
        }
    }
}
