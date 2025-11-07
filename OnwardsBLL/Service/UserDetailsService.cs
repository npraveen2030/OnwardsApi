using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsDAL.Repository;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class UserDetailsService : IUserDetailsService
    {
        private readonly IUserDetailsRepository _repo;

        public UserDetailsService(IUserDetailsRepository repo)
        {
            _repo = repo;
        }

        public async Task<List<AdminUserDto>> GetUsersForAdminAsync()
        {
            return await _repo.GetUsersForAdminAsync();
        }

        public async Task<bool> DuplicateEmailCheckAsync(string email, int? userId)
        {
            return await _repo.DuplicateEmailCheckAsync(email,userId);
        }
        public async Task<string> InsertOrUpdateUserAsync(UserModel user)
        {
            return await _repo.InsertOrUpdateUserAsync(user);
        }

        public async Task DeleteUserAsync(int Id, int LoginId)
        {
            await _repo.DeleteUserAsync(Id,LoginId);
        }

        public async Task<List<GradeDto>> GetAllGradesAsync()
        {
            try
            {
                return await _repo.GetAllGradesAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving grades.", ex);
            }
        }

        public async Task<List<DepartmentDto>> GetAllDepartmentsAsync()
        {
            try
            {
                return await _repo.GetAllDepartmentsAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving departments.", ex);
            }
        }

        public async Task<List<UserTypeDto>> GetAllTypesAsync()
        {
            try
            {
                return await _repo.GetAllTypesAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving user types.", ex);
            }
        }

        public async Task<List<ShiftsDto>> GetAllShiftsAsync()
        {
            try
            {
                return await _repo.GetAllShiftsAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while retrieving shifts.", ex);
            }
        }
    }
}
