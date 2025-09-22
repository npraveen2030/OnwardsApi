using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class SavedJobDto
    {
        public int Id { get; set; }           // SavedJob table Id
        public int JobId { get; set; }        // JobDetails table Id
        public string RoleName { get; set; }  // From Roles table
        public string LocationName { get; set; } // From Locations table
    }
}
