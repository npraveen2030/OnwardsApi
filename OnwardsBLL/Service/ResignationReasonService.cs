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
    public class ResignationReasonService : IResignationReasonService
    {
        private readonly IResignationReasonRepository _repository;

        public ResignationReasonService(IResignationReasonRepository repository)
        {
            _repository = repository;
        }

        public async Task<IEnumerable<ResignationReasonDto>> GetResignationReason() => await _repository.GetResignationReason();
        public Task InsertResignationReasonAsync(ResignationReasonModel model) => _repository.InsertResignationReasonAsync(model);
        public Task UpdateResignationReasonAsync(ResignationReasonModel model) => _repository.UpdateResignationReasonAsync(model);
        public Task DeleteResignationReasonAsync(int id, int loginId) => _repository.DeleteResignationReasonAsync(id, loginId);
    }
}
