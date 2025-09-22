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
    public class JobApplicationService : IJobApplicationService
    {
        private readonly IJobApplicationRepository _repository;

        public JobApplicationService(IJobApplicationRepository repository)
        {
            _repository = repository;
        }

        /// <summary>
        /// Adds a new job application or updates an existing one.
        /// </summary>
        public async Task<bool> InsertOrUpdateJobApplicationAsync(JobApplicationModel model)
        {
            return await _repository.InsertOrUpdateJobApplicationsAsync(model);
        }

        /// <summary>
        /// Retrieves all job applications for a specific user.
        /// </summary>
        public async Task<List<JobApplicationDto>> GetJobApplicationsAsync(int userId)
        {
            return await _repository.GetJobApplicationsAsync(userId);
        }

        /// <summary>
        /// Withdraws a job application by updating its status to 'Withdrawn' (StatusId = 3).
        /// </summary>
        public async Task DeleteJobApplicationAsync(int id, int loginId)
        {
            await _repository.DeleteJobApplicationsAsync(id, loginId);
        }
    }
}
