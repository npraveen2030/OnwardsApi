using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface ISchedulerProfileRepository
    {
        Task<SchedulerProfileDto> GetSchedulerProfileAsync(int userId);
        Task InsertOrUpdateSchedulerProfileAsync(SchedulerProfileSaveModel model);
    }
}
