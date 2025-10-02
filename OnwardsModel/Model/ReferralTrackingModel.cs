using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class ReferralTrackingModel 
    {
        public int JobId { get; set; }

        public int LoginId { get;set;}
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string Email { get; set; } = "";
        public string? Phone { get; set; } 
        public int LocationId { get; set; }
        public IFormFile FileData { get; set; } 
        public int StatusId { get; set; }
    }
}
