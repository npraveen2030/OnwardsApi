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
    public class UserProjectRoleAssociationService : IUserProjectRoleAssociationService
    {
        private readonly IUserProjectRoleAssociationRepository _repository;

        public UserProjectRoleAssociationService(IUserProjectRoleAssociationRepository repository)
        {
            _repository = repository;
        }

        public async Task<(bool Success, string Message)> InsertUserProjectRoleAssociationAsync(UserProjectRoleAssociationModel association)
        {
            try
            {
                if (association == null)
                    throw new ArgumentNullException(nameof(association));

                 return await _repository.InsertUserProjectRoleAssociationAsync(association);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Service error while inserting association: {ex.Message}", ex);
            }
        }

        public async Task<List<UserProjectRoleAssociationDto>> GetUserProjectRoleAssociationAsync(int projectId)
        {
            try
            {
                return await _repository.GetUserProjectRoleAssociationAsync(projectId);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Service error while fetching associations: {ex.Message}", ex);
            }
        }

        public async Task DeleteUserProjectRoleAssociationAsync(int id, int loginId)
        {
            try
            {
                await _repository.DeleteUserProjectRoleAssociationAsync(id,loginId);
            }
            catch (Exception ex)
            {
                throw new ApplicationException($"Service error while deleting association: {ex.Message}", ex);
            }
        }
    }
}
