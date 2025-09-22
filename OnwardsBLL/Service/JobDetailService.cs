using System.Collections.Generic;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class JobDetailService : IJobDetailService
    {
        private readonly IJobDetailRepository _repository;

        public JobDetailService(IJobDetailRepository repository)
        {
            _repository = repository;
        }

        public async Task InsertAsync(JobDetailModel model)
        {
            await _repository.InsertAsync(model);
            await _repository.AddNewSkills(model.NonDbSkills);
        }

        public async Task UpdateAsync(JobDetailModel model)
        {
            await _repository.UpdateAsync(model);
        }

        public async Task DeleteAsync(int id,int loginid)
        {
            await _repository.DeleteAsync(id,loginid);
        }

        public async Task<JobDetailDto> GetByIdAsync(int id)
        {
            return await _repository.GetByIdAsync(id);
        }

        public async Task<List<AllJobdetailsDto>> GetAllAsync(int? userId)
        {
            return await _repository.GetAllAsync(userId);
        }

        public async Task<List<AllJobdetailsDto>> SearchAsync(string? keyword, int? reqId, List<int> locationIds)
        {
            return await _repository.SearchAsync(keyword, reqId, locationIds);
        }
    }
}
