using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IJobApplicationRepository
    {
        Task<bool> InsertOrUpdateJobApplicationsAsync(JobApplicationModel jobApplication);
        Task<List<JobApplicationDto>> GetJobApplicationsAsync(int userId);
        Task DeleteJobApplicationsAsync(int id, int loginId);
    }
}
