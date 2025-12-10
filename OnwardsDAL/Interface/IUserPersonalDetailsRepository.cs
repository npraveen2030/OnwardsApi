
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserPersonalDetailsRepository
    {
        Task<PersonalDetailsModel?> GetUserPersonalDetailsByIdAsync(int userId);
        Task<List<IdValueDto>> GetNationalityOptionsAsync();
        Task<List<IdValueDto>> GetYesNoOptionsAsync();
        Task<List<IdValueDto>> GetVaccinationStatusOptionsAsync();
        Task<List<IdValueDto>> GetBloodGroupsAsync();
        Task<List<IdValueDto>> GetGenderOptionsAsync();
    }
}
