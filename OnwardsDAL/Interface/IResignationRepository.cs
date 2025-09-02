using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IResignationRepository
    {
        public Task<ResignationDto> GetResignationDetailsByUserId(int userId);
        public Task InsertOrUpdateResignationAsync(ResignationModel model);
        public Task DeleteResignationAsync(int id, int loginId);
        public Task<IEnumerable<ResignationDto>> GetAllResignations(int userId);
        public Task ApproveResignationsAsync(ResignationApprovalModel approvals);
    }
}
