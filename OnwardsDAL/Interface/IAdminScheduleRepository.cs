using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IAdminScheduleRepository
    {
        Task<List<AdminScheduleDto>> GetAdminScheduleAsync();
        Task InsertOrUpdateAdminScheduleAsync(AdminScheduleModel model);
        Task DeleteAdminScheduleAsync(int id, int loginId);
        Task<List<CompanyDto>> GetCompaniesForAdminScheduleAsync();
    }
}
