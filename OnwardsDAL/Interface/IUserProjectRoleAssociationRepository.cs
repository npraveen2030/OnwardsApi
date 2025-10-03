using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserProjectRoleAssociationRepository
    {
        public Task<(bool Success, string Message)> InsertUserProjectRoleAssociationAsync(UserProjectRoleAssociationModel association);
        public Task<List<UserProjectRoleAssociationDto>> GetUserProjectRoleAssociationAsync(int projectId);
        public Task DeleteUserProjectRoleAssociationAsync(int id, int loginId);
    }
}
