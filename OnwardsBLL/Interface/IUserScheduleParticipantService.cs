using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IUserScheduleParticipantService
    {
        Task<List<UserScheduleParticipantDto>> GetUserScheduleForParticipantAsync(int schedulerId);
    }
}
