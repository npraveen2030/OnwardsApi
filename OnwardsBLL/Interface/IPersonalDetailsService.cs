using OnwardsModel.Dtos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IPersonalDetailsService
    {
        public Task AddOrUpdatePersonalDetails(PersonalDetailsDto personalDetailsDto);
    }
}
