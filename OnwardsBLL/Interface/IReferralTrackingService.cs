using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Interface
{
    public interface IReferralTrackingService
    {
        public Task InsertReferralTrackingAsync(ReferralTrackingModel referral);

        public Task<List<ReferralTrackingDto>> GetReferralTrackingAsync(int createdBy);
        public Task<ReferralTrackingDocumentDto?> GetReferralTrackingDocumentAsync(int id);

        public Task DeleteReferralTrackingAsync(int id);

    }
}
