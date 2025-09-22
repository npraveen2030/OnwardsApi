using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface ISavedJobRepository
    {
        Task<bool> InsertSavedJobAsync(SavedJobModel savedjob);
        Task<List<SavedJobDto>> GetSavedJobsAsync(int userId);
        Task DeleteSavedJobAsync(int id);
    }
}
