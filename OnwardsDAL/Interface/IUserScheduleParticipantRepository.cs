using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IUserScheduleParticipantRepository
    {
        Task<List<UserScheduleParticipantDto>> GetUserScheduleForParticipantAsync(int schedulerId);
    }
}
