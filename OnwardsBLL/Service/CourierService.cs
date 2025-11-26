using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class CourierService : ICourierService
    {
        private readonly ICourierRepository _repo;

        public CourierService(ICourierRepository repo)
        {
            _repo = repo;
        }

        public async Task<List<CourierUserDto>> GetUsersForCourierAsync()
        {
            return await _repo.GetUsersForCourierAsync();
        }

        public async Task InsertOrUpdateCourierAsync(CourierDto courier)
        {
             await _repo.InsertOrUpdateCourierAsync(courier);
        }
        public async Task<List<CourierListDto>> GetCouriersAsync()
        {
            return await _repo.GetCouriersAsync();
        }
    }
}
