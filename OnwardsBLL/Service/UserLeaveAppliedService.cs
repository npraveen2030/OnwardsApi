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
    public class UserLeaveAppliedService : IUserLeaveAppliedService
    {
        private readonly IUserLeaveAppliedRepository _repo;

        public UserLeaveAppliedService(IUserLeaveAppliedRepository repo)
        {
            _repo = repo;
        }

        public async Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int userId)
        {
            return await _repo.GetUserLeaveAppliedAsync(userId);
        }

        public async Task InsertOrUpdateUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            await _repo.InsertOrUpdateUserLeaveAppliedAsync(leave);
        }
    }
}
