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

        public async Task InsertOrUpdateReimbursementAsync(ReimbursementModel model)
        {
            await _repository.InsertOrUpdateReimbursementAsync(model);
        }

        public async Task<List<ReimbursementDto>> GetReimbursementsByIdAsync(int UserId, int StatusId)
        {
            return await _repository.GetReimbursementsByIdAsync(UserId, StatusId);
        }

        public async Task DeleteAsync(int id, int loginId)
        {
            await _repository.DeleteReimbursementAsync(id, loginId);
        }
    }
}
