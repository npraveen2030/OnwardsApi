using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
    public class UserProjectRoleAssociationModel
    {
        public int LoginId { get; set; }
        public int UserId { get; set; }
        public int ProjectId { get; set; }
        public int RoleId { get; set; }
        public DateTime AssociationStartDate { get; set; }
        public DateTime? AssociationEndDate { get; set; }
    }
}
