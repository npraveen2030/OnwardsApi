using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IJobPostService
    {
        public Task<List<SkillsDto>> GetSkillsAsync();
        public Task<List<RolesDto>> GetRolesAsync();
        public Task<List<ProjectsDto>> GetProjectsAsync();

        public Task<List<UserDto>> GetUsersAsync();
    }
}
