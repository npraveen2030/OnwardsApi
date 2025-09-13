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
        public Task InsertOrUpdateReimbursementAsync(ReimbursementModel model);

        public Task<List<ReimbursementDto>> GetReimbursementsByIdAsync(int UserId, int StatusId);

        Task DeleteReimbursementAsync(int id, int loginId);
    }
}
