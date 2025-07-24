using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class UserLeaveAppliedService : IUserLeaveAppliedService
    {
        private readonly IUserLeaveAppliedRepository _repo;

        public UserLeaveAppliedService(IUserLeaveAppliedRepository repo)
        {
            _repo = repo;
        }

        public async Task InsertUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            await _repo.InsertUserLeaveAppliedAsync(leave);
        }

        public async Task UpdateUserLeaveAppliedAsync(UserLeaveAppliedUpdateModel Modification)
        {
            await _repo.UpdateUserLeaveAppliedAsync(Modification);
        }
    }
}
