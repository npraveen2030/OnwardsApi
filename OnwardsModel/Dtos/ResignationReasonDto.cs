using System;

namespace OnwardsModel.Dtos
{
    public class ResignationReasonDto : BasePrimaryDto
    {
        public string Reason { get; set; } = null!;
    }
}
