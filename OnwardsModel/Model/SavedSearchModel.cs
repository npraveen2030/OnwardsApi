using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class SavedSearchModel
    {
        public int? Id { get; set; }

        public int UserId { get;set;}
        public string SearchName { get; set; }
        public string Search { get; set; }
        public int LoginId { get; set; }
    }
}
