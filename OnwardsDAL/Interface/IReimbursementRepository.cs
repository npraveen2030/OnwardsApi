using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IReimbursementRepository
    {
        Task InsertReimbursementAsync(ReimbursementModel model);

        Task<(List<ReimbursementModel> reimbursements, List<ReimbursementDocumentModel> documents)>
            GetReimbursementsAsync(ReimbursementFilterModel filter);

        Task UpdateReimbursementAsync(ReimbursementModel model);

        Task DeleteReimbursementAsync(int id, int loginId);
    }
}
