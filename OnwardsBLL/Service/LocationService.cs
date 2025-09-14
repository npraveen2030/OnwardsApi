using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class LocationService : ILocationService
    {
        private readonly ILocationRepository _locationRepository;

        public LocationService(ILocationRepository locationRepository)
        {
            _locationRepository = locationRepository;
        }

        public void Insert(LocationModel location)
        {
            _locationRepository.Insert(location);
        }

        public void Update(LocationModel location)
        {
            _locationRepository.Update(location);
        }

        public void Delete(int id)
        {
            _locationRepository.Delete(id);
        }

        public LocationModel GetLocationById(int id)
        {
            return _locationRepository.GetLocationById(id);
        }

        public List<LocationModel> GetLocations()
        {
            return _locationRepository.GetLocations();
        }
    }
}
