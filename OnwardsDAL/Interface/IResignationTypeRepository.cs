using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Interface
{
    public interface IResignationTypeRepository
    {
        public Task InsertResignationTypeAsync(ResignationTypeModel model);
        public Task UpdateResignationTypeAsync(ResignationTypeModel model);
        public Task DeleteResignationTypeAsync(int id, int loginId);
    }
}
