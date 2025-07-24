using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IResignationRepository
    {
        public Task InsertResignationAsync(ResignationModel model);
        public Task UpdateResignationAsync(ResignationModel model);
        public Task DeleteResignationAsync(int id, int loginId);
    }
}
