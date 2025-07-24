using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
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

        public Task InsertResignationAsync(ResignationModel model) => _repository.InsertResignationAsync(model);
        public Task UpdateResignationAsync(ResignationModel model) => _repository.UpdateResignationAsync(model);
        public Task DeleteResignationAsync(int id, int loginId) => _repository.DeleteResignationAsync(id, loginId);
    }
}
