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
    public class JobPostService : IJobPostService
    {
        private readonly IJobPostRepository _repository;

        public JobPostService(IJobPostRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<SkillsDto>> GetSkillsAsync()
        {
            return await _repository.GetSkillsAsync();
        }
    }
}
