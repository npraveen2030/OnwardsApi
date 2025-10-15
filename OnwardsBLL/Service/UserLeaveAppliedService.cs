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

        public async Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int managerId)
        {
            return await _repo.GetUserLeaveAppliedAsync(managerId);
        }

        public async Task<(string FileName, byte[] Data)?> GetUserLeaveAppliedDocumentAsync(int id)
        {
            return await _repo.GetUserLeaveAppliedDocumentAsync(id);
        }

        public async Task<List<LeaveTypeDto>> GetLeaveTypesAsync(int userId)
        {
            return await _repo.GetLeaveTypesAsync(userId);
        }

        public async Task InsertUserLeaveAppliedAsync(UserLeaveAppliedModel leave)
        {
            await _repo.InsertUserLeaveAppliedAsync(leave);
        }

        public async Task UpdateUserLeaveAppliedAsync(List<UserLeaveAppliedUpdateModel> leaves)
        {
            await _repo.UpdateUserLeaveAppliedAsync(leaves);
        }

        public async Task<List<CalendarEventDto>> GetCalendarEventsAsync(int userId, int month, int year)
        {
            return await _repo.GetCalendarEventsAsync(userId,month,year);
        }

        public async Task<List<LeavesAndAttendanceDto>> GetLeavesAndAttendanceAsync(int userId)
        {
            return await _repo.GetLeavesAndAttendanceAsync(userId);
        }
    }
}
