using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Interface
{
    public interface IJobDetailService
    {
        void Insert(JobDetailModel jobDetailModel);
        void Update(JobDetailModel jobDetailModel);
        void Delete(int id);
        JobDetailDto GetById(int id);
        List<JobDetailDto> GetAll();
        List<JobDetailDto> Search(string searchString);
    }
}
