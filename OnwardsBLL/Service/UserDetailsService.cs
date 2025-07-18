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

        public async Task<IList<UserModelDto>> GetAllUserDetailsAsync(UserModelFilter filter, int skip, int take)
        {
            return await _repo.GetAllUserDetailsAsync(filter, skip,take);
        }
        public async Task<string> InsertOrUpdateUserAsync(UserModel user)
        {
            return await _repo.InsertOrUpdateUserAsync(user);
        }

        public async Task DeleteUserAsync(int Id)
        {
            await _repo.DeleteUserAsync(Id);
        }
    }
}
