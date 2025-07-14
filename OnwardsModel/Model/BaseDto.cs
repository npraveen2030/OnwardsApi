namespace OnwardsModel.Model
{
  public class BaseModel
  {
    public int UserId { get; set; }
    public string CreatedBy { get; set; }

    public DateTime? CreatedDate { get; set; }

    public string ModifiedBy { get; set; }

    public DateTime? ModifiedDate { get; set; }

    public bool? IsActive { get; set; }
  }
}
