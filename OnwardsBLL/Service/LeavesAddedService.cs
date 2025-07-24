using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class LeavesAddedService : ILeavesAddedService
    {
        private readonly ILeavesAddedRepository _leavesAddedRepository;

        public LeavesAddedService(ILeavesAddedRepository leavesAddedRepository)
        {
            _leavesAddedRepository = leavesAddedRepository;
        }

        public async Task InsertLeavesAddedAsync(LeavesAddedModel leave)
        {
            await _leavesAddedRepository.InsertLeavesAddedAsync(leave);
        }
    }
}
