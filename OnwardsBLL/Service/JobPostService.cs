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

        public async Task<List<RolesDto>> GetRolesAsync()
        {
            return await _repository.GetRolesAsync();
        }

        public async Task<List<ProjectsDto>> GetProjectsAsync()
        {
            return await _repository.GetProjectsAsync();
        }

        public async Task<List<UserDto>> GetUsersAsync()
        {
            return await _repository.GetUsersAsync();
        }
    }
}
