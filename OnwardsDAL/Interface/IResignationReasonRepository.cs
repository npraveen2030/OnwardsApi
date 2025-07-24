using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IResignationReasonRepository
    {
        public Task InsertResignationReasonAsync(ResignationReasonModel model);
        public Task UpdateResignationReasonAsync(ResignationReasonModel model);
        public Task DeleteResignationReasonAsync(int id, int loginId);
    }
}
