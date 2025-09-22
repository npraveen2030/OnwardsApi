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
        Task DeleteAsync(int id, int loginid);
        Task<JobDetailDto> GetByIdAsync(int id);
        Task<List<AllJobdetailsDto>> GetAllAsync(int? userId);
        public Task<List<AllJobdetailsDto>> SearchAsync(string? keyword, int? reqId, List<int> locationIds);
    }
}
