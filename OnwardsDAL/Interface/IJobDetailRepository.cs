using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Interface
{
    public interface IJobDetailRepository
    {
        void Insert(JobDetailModel jobDetailsModel);
        void Update(JobDetailModel jobDetailsModel);
        void Delete(int id);
        JobDetailDto GetById(int id);
        List<JobDetailDto> GetAll();
        List<JobDetailDto> Search(string searchString);
    }
}
