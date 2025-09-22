using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface ISavedSearchService
    {
        Task<bool> InsertOrUpdateSavedSearchAsync(SavedSearchModel model);
        Task<List<SavedSearchDto>> GetAllSavedSearchAsync(int UserId);
        Task DeleteSavedSearchAsync(int id);
    }
}
