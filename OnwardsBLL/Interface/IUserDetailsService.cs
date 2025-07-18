using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserDetailsService
    {
        public Task<IList<UserModelDto>> GetAllUserDetailsAsync(UserModelFilter filter, int skip, int take);
        public Task<string> InsertOrUpdateUserAsync(UserModel user);
        public Task DeleteUserAsync(int Id);
    }
}
