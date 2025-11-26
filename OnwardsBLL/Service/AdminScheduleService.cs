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
    public class AdminScheduleService : IAdminScheduleService
    {
        private readonly IAdminScheduleRepository _repo;

        public AdminScheduleService(IAdminScheduleRepository repo)
        {
            _repo = repo;
        }

        public Task<List<AdminScheduleDto>> GetAdminScheduleAsync()
        {
            return _repo.GetAdminScheduleAsync();
        }

        public Task InsertOrUpdateAdminScheduleAsync(AdminScheduleModel model)
        {
            return _repo.InsertOrUpdateAdminScheduleAsync(model);
        }

        public Task DeleteAdminScheduleAsync(int id, int loginId)
        {
            return _repo.DeleteAdminScheduleAsync(id, loginId);
        }

        public Task<List<CompanyDto>> GetCompaniesForAdminScheduleAsync() =>
        _repo.GetCompaniesForAdminScheduleAsync();
    }

}
