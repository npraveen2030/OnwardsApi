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
    public class UserPersonalDetailsService : IUserPersonalDetailsService
    {
        private readonly IUserPersonalDetailsRepository _repo;

        public UserPersonalDetailsService(IUserPersonalDetailsRepository repo)
        {
            _repo = repo;
        }

        public Task<List<IdValueDto>> GetNationalityOptionsAsync() =>
            _repo.GetNationalityOptionsAsync();

        public Task<List<IdValueDto>> GetYesNoOptionsAsync() =>
            _repo.GetYesNoOptionsAsync();

        public Task<List<IdValueDto>> GetVaccinationStatusOptionsAsync() =>
            _repo.GetVaccinationStatusOptionsAsync();

        public Task<List<IdValueDto>> GetBloodGroupsAsync() =>
            _repo.GetBloodGroupsAsync();

        public async Task<List<IdValueDto>> GetGenderOptionsAsync()
        {
            return await _repo.GetGenderOptionsAsync();
        }

        public async Task<PersonalDetailsModel?> GetUserPersonalDetailsByIdAsync(int userId)
        {
            return await _repo.GetUserPersonalDetailsByIdAsync(userId);
        }
    }
}
