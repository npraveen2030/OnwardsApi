using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IResignationReasonService
    {
        Task InsertResignationReasonAsync(ResignationReasonModel model);
        Task UpdateResignationReasonAsync(ResignationReasonModel model);
        Task DeleteResignationReasonAsync(int id, int loginId);
    }
}
