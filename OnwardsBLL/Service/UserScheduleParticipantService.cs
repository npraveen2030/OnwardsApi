using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class UserScheduleParticipantService : IUserScheduleParticipantService
    {
        private readonly IUserScheduleParticipantRepository _repository;

        public UserScheduleParticipantService(IUserScheduleParticipantRepository repository)
        {
            _repository = repository;
        }

        public async Task<List<UserScheduleParticipantDto>> GetUserScheduleForParticipantAsync(int schedulerId)
        {
            return await _repository.GetUserScheduleForParticipantAsync(schedulerId);
        }
    }
}
