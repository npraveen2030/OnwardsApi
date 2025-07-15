using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsModel.Model
{
  public class BasicDetails : BaseModel
  {
      public int Id { get; set; }

      public string FirstName { get; set; } = null!;
      public string MiddleName { get; set; } = null!;
      public string LastName { get; set; } = null!;
      public string PersonalEmailID { get; set; } = null!;
      public int PrimaryContactNumber { get; set; }

      public int Gender { get; set; }  
      public string FatherOrHusbandName { get; set; } = null!;
      public DateOnly Dob { get; set; }
      public int Nationality { get; set; }   
      public int DifferentlyAbled { get; set; }   
      public int VaccinationStatus { get; set; }   
      public int BloodGroup { get; set; }   
      public int BloodDonor { get; set; }   

      public string PanNumber { get; set; } = null!;
      public int AadhaarCardNo { get; set; }
  }
}
