using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Interface
{
    public interface IJobDetailService
    {
        Task InsertAsync(JobDetailModel model);
        Task UpdateAsync(JobDetailModel model);
        Task DeleteAsync(int id);
        Task<JobDetailDto> GetByIdAsync(int id);
        Task<List<JobDetailDto>> GetAllAsync();
        Task<List<JobDetailDto>> SearchAsync(string searchString);
    }
}
