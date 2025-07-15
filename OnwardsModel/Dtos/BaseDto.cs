namespace OnwardsModel.Dtos
{
  public class BaseDto
  {
    public int UserId { get; set; }
    public int LoginId { get; set; }
    public string? CreatedBy { get; set; }

    public DateTime? CreatedDate { get; set; }

    public string? ModifiedBy { get; set; }

    public DateTime? ModifiedDate { get; set; }

    public bool IsActive { get; set; } = true;
  }
}
