using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{

    public class EmergencyContactDto
    {
        public string ContactName { get; set; }
        public string ContactRelationship { get; set; }
        public string PrimaryContactNumber_EmergencyContactDetails { get; set; }
        public string SecondaryContactNumber { get; set; }
    }
}

