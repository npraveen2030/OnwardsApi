using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Model;

namespace OnwardsBLL.Interface
{
    public interface ILocationService
    {
        public void Insert(LocationModel location);
        public void Update(LocationModel location);
        public void Delete(int id);
        public LocationModel GetLocationById(int id);
        public List<LocationModel> GetLocations();
    }
}
