using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface ICourierRepository
    {
        Task<List<CourierUserDto>> GetUsersForCourierAsync();
        Task InsertOrUpdateCourierAsync(CourierDto courier);
        Task<List<CourierListDto>> GetCouriersAsync();
    }
}
