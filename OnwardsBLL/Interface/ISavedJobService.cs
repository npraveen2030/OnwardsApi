using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface ISavedJobService
    {
        public Task<bool> AddSavedJobAsync(SavedJobModel model);
        public Task<List<SavedJobDto>> GetSavedJobsAsync(int userId);
        public Task DeleteSavedJobAsync(int id);
    }
}
