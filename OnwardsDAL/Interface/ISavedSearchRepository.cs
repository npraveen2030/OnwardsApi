using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface ISavedSearchRepository
    {
        Task<bool> InsertOrUpdateSavedSearchAsync(SavedSearchModel savedSearch);
        Task<List<SavedSearchDto>> GetAllSavedSearchAsync(int UserId);
        Task DeleteSavedSearchAsync(int id);
    }
}
