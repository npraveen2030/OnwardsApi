using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IBasicDetailsService
    {
        public Task AddOrUpdateBasicDetailsAsync(BasicDetilasModel dto);
    }
}
