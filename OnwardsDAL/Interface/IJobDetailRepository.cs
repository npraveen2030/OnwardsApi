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
        Task UpdateAsync(JobDetailModel jobDetailsModel);
        Task DeleteAsync(int id);
        Task<JobDetailDto> GetByIdAsync(int id);
        Task<List<JobDetailDto>> GetAllAsync();
        Task<List<JobDetailDto>> SearchAsync(string searchString);
    }
}
