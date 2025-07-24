using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IResignationService
    {
        Task InsertResignationAsync(ResignationModel model);
        Task UpdateResignationAsync(ResignationModel model);
        Task DeleteResignationAsync(int id, int loginId);
    }
}
