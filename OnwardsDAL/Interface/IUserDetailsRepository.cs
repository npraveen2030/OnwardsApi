using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserDetailsRepository
    {
        public Task<List<AdminUserDto>> GetUsersForAdminAsync();
        public Task<bool> DuplicateEmailCheckAsync(string email, int? userId);
        public Task<string> InsertOrUpdateUserAsync(UserModel user);
        public Task DeleteUserAsync(int Id, int LoginId);


        Task<List<GradeDto>> GetAllGradesAsync();
        Task<List<DepartmentDto>> GetAllDepartmentsAsync();
        Task<List<UserTypeDto>> GetAllTypesAsync();
        public Task<List<ShiftsDto>> GetAllShiftsAsync();
    }
}
