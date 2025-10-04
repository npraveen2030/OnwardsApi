using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IProjectManagementRepository
    {
        Task<(bool Success, string Message)> InsertOrUpdateProjectAsync(ProjectManagementModel project);
        Task<List<ProjectManagementDto>> GetProjectsAsync();
        Task DeleteProjectAsync(int id, int loginId);
    }
}
