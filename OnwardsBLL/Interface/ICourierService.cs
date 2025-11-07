using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface ICourierService
    {
        Task<List<CourierUserDto>> GetUsersForCourierAsync();
        Task InsertOrUpdateCourierAsync(CourierDto courier);
        Task<List<CourierListDto>> GetCouriersAsync();
    }
}
