using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IReimbursementService
    {
        Task AddAsync(ReimbursementModel model);
        Task<(List<ReimbursementModel>, List<ReimbursementDocumentModel>)> GetAsync(ReimbursementFilterModel filter);
        Task UpdateAsync(ReimbursementModel model);
        Task DeleteAsync(int id, int loginId);
    }
}
