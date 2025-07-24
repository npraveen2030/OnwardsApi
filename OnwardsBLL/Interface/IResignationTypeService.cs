using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IResignationTypeService
    {
        Task InsertResignationTypeAsync(ResignationTypeModel model);
        Task UpdateResignationTypeAsync(ResignationTypeModel model);
        Task DeleteResignationTypeAsync(int id, int loginId);
    }
}
