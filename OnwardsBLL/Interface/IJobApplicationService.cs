using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IJobApplicationService
    {
        Task<bool> InsertOrUpdateJobApplicationAsync(JobApplicationModel model);
        Task<List<JobApplicationDto>> GetJobApplicationsAsync(int userId);
        Task DeleteJobApplicationAsync(int id, int loginId);
    }
}
