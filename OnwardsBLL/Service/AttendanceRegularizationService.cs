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
    public class AttendanceRegularizationService : IAttendanceRegularizationService
    {
        private readonly IAttendanceRegularizationRepository _attendanceRegularizationRepository;

        public AttendanceRegularizationService(IAttendanceRegularizationRepository attendanceRegularizationRepository)
        {
            _attendanceRegularizationRepository = attendanceRegularizationRepository;
        }

        public async Task<List<AttendanceRegularizationDto>> GetAttendanceRegularizationAsync(int managerId)
        {
            return await _attendanceRegularizationRepository.GetAttendanceRegularizationAsync(managerId);
        }

        public async Task<int> GetAttendanceRegularizationDurationAsync(int locationId, DateTime startDate, DateTime endDate)
        {
            return await _attendanceRegularizationRepository.GetAttendanceRegularizationDurationAsync(locationId,startDate,endDate);
        }

        public async Task<AttendanceRegularizationDetailsDto?> GetAttendanceRegularizationByIdAsync(int id)
        {
            return await _attendanceRegularizationRepository.GetAttendanceRegularizationByIdAsync(id);
        }

        public async Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization)
        {
            await _attendanceRegularizationRepository.InsertAttendanceRegularizationAsync(regularization);
        }

        public async Task UpdateAttendanceRegularizationAsync(List<AttendanceRegularizationUpdateModel> regularizations)
        {
             await _attendanceRegularizationRepository.UpdateAttendanceRegularizationAsync(regularizations);
        }


    }
}
