using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserLeaveAppliedService
    {
        public Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int userId);
        public Task<List<LeaveTypeDto>> GetLeaveTypesAsync();
        public Task InsertOrUpdateUserLeaveAppliedAsync(UserLeaveAppliedModel leave);
    }
}
