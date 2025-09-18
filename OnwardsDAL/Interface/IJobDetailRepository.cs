using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Interface
{
    public interface IJobDetailRepository
    {
        Task InsertAsync(JobDetailModel jobDetailsModel);
        public Task AddNewSkills(List<string> skills);
        Task UpdateAsync(JobDetailModel jobDetailsModel);
        Task DeleteAsync(int id);
        Task<JobDetailDto> GetByIdAsync(int id);
        Task<List<AllJobdetailsDto>> GetAllAsync(int? userId);
        Task<List<JobDetailDto>> SearchAsync(string searchString);
    }
}
