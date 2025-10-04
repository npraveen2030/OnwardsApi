using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IProjectManagementService
    {
        Task<(bool Success, string Message)> InsertOrUpdateProjectAsync(ProjectManagementModel project);
        Task<List<ProjectManagementDto>> GetProjectsAsync();
        Task<(bool Success, string Message)> DeleteProjectAsync(int id, int loginId);
    }
}
