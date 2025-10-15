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

        public async Task InsertAttendanceRegularizationAsync(AttendanceRegularizationModel regularization)
        {
            try
            {
                await _attendanceRegularizationRepository.InsertAttendanceRegularizationAsync(regularization);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while saving attendance regularization.", ex);
            }
        }

        public async Task UpdateAttendanceRegularizationAsync(List<AttendanceRegularizationUpdateModel> regularizations)
        {
            try
            {
                await _attendanceRegularizationRepository.UpdateAttendanceRegularizationAsync(regularizations);
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while Updating attendance regularization.", ex);
            }
        }


    }
}
