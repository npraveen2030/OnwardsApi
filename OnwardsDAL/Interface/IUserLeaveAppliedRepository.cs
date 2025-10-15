using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserLeaveAppliedRepository
    {
        public Task<List<UserLeaveAppliedDto>> GetUserLeaveAppliedAsync(int managerId);
        public Task<(string FileName, byte[] Data)?> GetUserLeaveAppliedDocumentAsync(int id);
        public Task InsertUserLeaveAppliedAsync(UserLeaveAppliedModel leave);
        public Task UpdateUserLeaveAppliedAsync(List<UserLeaveAppliedUpdateModel> leaves);
        public Task<List<LeaveTypeDto>> GetLeaveTypesAsync(int userId);
        public Task<List<CalendarEventDto>> GetCalendarEventsAsync(int userId, int month, int year);
        public Task<List<LeavesAndAttendanceDto>> GetLeavesAndAttendanceAsync(int userId);
    }
}
