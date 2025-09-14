using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsModel.Model;

namespace OnwardsDAL.Interface
{
    public interface ILocationRepository
    {
        //List<LocationModel> GetLocations();
        //LocationModel GetLocationById(int id);

        //void Insert(LocationModel location);
        //void Delete(int id);
        //LocationModel GetLocationById(int id);
        //List<LocationModel> GetLocations();

        void Insert(LocationModel location);
        void Update(LocationModel location);
        void Delete(int id);
        LocationModel GetLocationById(int id);
        List<LocationModel> GetLocations();
    }
}
