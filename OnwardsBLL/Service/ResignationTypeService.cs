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
    public class ResignationTypeService : IResignationTypeService
    {
        private readonly IResignationTypeRepository _repository;

        public ResignationTypeService(IResignationTypeRepository repository)
        {
            _repository = repository;
        }


        public async Task<IEnumerable<ResignationTypeDto>> GetResignationType()
        {
            // Add business rules if needed
            return await _repository.GetResignationType();
        }
        public Task InsertResignationTypeAsync(ResignationTypeModel model) => _repository.InsertResignationTypeAsync(model);
        public Task UpdateResignationTypeAsync(ResignationTypeModel model) => _repository.UpdateResignationTypeAsync(model);
        public Task DeleteResignationTypeAsync(int id, int loginId) => _repository.DeleteResignationTypeAsync(id, loginId);
    }
}
