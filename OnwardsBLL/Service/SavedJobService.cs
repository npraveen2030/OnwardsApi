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
    public class SavedJobService : ISavedJobService
    {
        private readonly ISavedJobRepository _repository;

        public SavedJobService(ISavedJobRepository repository)
        {
            _repository = repository;
        }

        /// <summary>
        /// Adds a new saved job entry for a user.
        /// </summary>
        public async Task<bool> AddSavedJobAsync(SavedJobModel model)
        {
            return await _repository.InsertSavedJobAsync(model);
        }

        /// <summary>
        /// Retrieves all saved jobs for a specific user.
        /// </summary>
        public async Task<List<SavedJobDto>> GetSavedJobsAsync(int userId)
        {
            return await _repository.GetSavedJobsAsync(userId);
        }

        /// <summary>
        /// Deletes a saved job for a specific user.
        /// </summary>
        public async Task DeleteSavedJobAsync(int id)
        {
            await _repository.DeleteSavedJobAsync(id);
        }
    }
}
