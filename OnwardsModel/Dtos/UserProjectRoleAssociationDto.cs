using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Dtos
{
    public class UserProjectRoleAssociationDto
    {
        public int Id { get; set; }
        public int UserId { get; set; }

        public string FullName { get; set; } = "";
        public int ProjectId { get; set; }
        public int RoleId { get; set; }
        public DateTime AssociationStartDate { get; set; }
    }
}
