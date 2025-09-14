using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class JobDetailService : IJobDetailService
    {
        private readonly IJobDetailRepository _repository;

        public JobDetailService(IJobDetailRepository repository)
        {
            _repository = repository;
        }

        public void Insert(JobDetailModel model)
        {
            _repository.Insert(model);
        }

        public void Update(JobDetailModel model)
        {
            _repository.Update(model);
        }

        public void Delete(int id)
        {
            _repository.Delete(id);
        }

        public JobDetailDto GetById(int id)
        {
            return _repository.GetById(id);
        }

        public List<JobDetailDto> GetAll()
        {
            return _repository.GetAll();
        }

        public List<JobDetailDto> Search(string searchString)
        {
            return _repository.Search(searchString);
        }
    }
}
