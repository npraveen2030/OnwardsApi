using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class ReimbursementService : IReimbursementService
    {
        private readonly IReimbursementRepository _repository;

        public ReimbursementService(IReimbursementRepository repository)
        {
            _repository = repository;
        }

        public async Task AddAsync(ReimbursementModel model)
        {
            await _repository.InsertReimbursementAsync(model);
        }

        public async Task<(List<ReimbursementModel>, List<ReimbursementDocumentModel>)> GetAsync(ReimbursementFilterModel filter)
        {
            return await _repository.GetReimbursementsAsync(filter);
        }

        public async Task UpdateAsync(ReimbursementModel model)
        {
            await _repository.UpdateReimbursementAsync(model);
        }

        public async Task DeleteAsync(int id, int loginId)
        {
            await _repository.DeleteReimbursementAsync(id, loginId);
        }
    }
}
