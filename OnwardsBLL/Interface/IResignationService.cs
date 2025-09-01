using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IResignationService
    {

        public Task<ResignationDto?> GetResignationDetailsByUserId(int userId);
        Task InsertOrUpdateResignationAsync(ResignationModel model);
        Task DeleteResignationAsync(int id, int loginId);

        Task<IEnumerable<ResignationDto>> GetAllResignations(int userId);
    }
}
