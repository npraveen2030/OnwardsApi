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
    public class ResignationService : IResignationService
    {
        private readonly IResignationRepository _repository;

        public ResignationService(IResignationRepository repository)
        {
            _repository = repository;
        }
        public async Task<ResignationDto?> GetResignationDetailsByUserId(int userId) =>
           await _repository.GetResignationDetailsByUserId(userId);
        public Task InsertOrUpdateResignationAsync(ResignationModel model) => _repository.InsertOrUpdateResignationAsync(model);
        public Task DeleteResignationAsync(int id, int loginId) => _repository.DeleteResignationAsync(id, loginId);

        public async Task<IEnumerable<ResignationDto>> GetAllResignations(int userId)
        {
            // Add business logic if needed (e.g. validation, filtering)
            return await _repository.GetAllResignations(userId);
        }
        public Task ApproveResignationsAsync(ResignationApprovalModel approvals) => _repository.ApproveResignationsAsync(approvals);
    }
}
