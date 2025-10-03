using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserProjectRoleAssociationService
    {
        Task<(bool Success, string Message)> InsertUserProjectRoleAssociationAsync(UserProjectRoleAssociationModel association);
        Task<List<UserProjectRoleAssociationDto>> GetUserProjectRoleAssociationAsync(int projectId);
        Task DeleteUserProjectRoleAssociationAsync(int id, int loginId);
    }
}
