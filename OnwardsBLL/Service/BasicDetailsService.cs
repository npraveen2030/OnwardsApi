using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class BasicDetailsService(
        IPreviousExperienceRepository _previousExperienceRepository,
        IMaritalStatusRepository _maritalStatusRepository,
        IChildrenDetailsRepository _childrenDetailsRepository,
        IUserDocumentsRepository _userDocumentsRepository
    ) : IBasicDetailsService
    {
        public async Task AddOrUpdateBasicDetailsAsync(BasicDetailsreqDto dto)
        {
            var previousExperience = new PreviousExperienceDetail
            {
                UserId = dto.UserId,
                LoginId = dto.LoginId,
                CompanyName = dto.CompanyName,
                StartDate = dto.StartDate,
                EndDate = dto.EndDate
            };

            var maritalStatus = new MaritalStatus
            {
                UserId = dto.UserId,
                LoginId = dto.LoginId,
                Status = dto.MaritalStatus,
                TitleId = dto.TitleId,
                Name = dto.Name,
                IsHavingChildren = dto.IsHavingChildren
            };

            var childrenDetail = new ChildrenDetail
            {
                UserId = dto.UserId,
                LoginId = dto.LoginId,
                ChildName = dto.ChildName,
                GenderId = dto.GenderId,
                DateOfBirth = dto.DateOfBirth
            };

            var userDocument = new UserDocument
            {
                UserId = dto.UserId,
                LoginId = dto.LoginId,
                DocumentTypeId = dto.DocumentTypeId,
                FileName = dto.FileName,
                FilePath = dto.FilePath,
                IsVerified = dto.IsVerified,
                VerifiedDate = dto.VerifiedDate,
                VerifiedBy = dto.VerifiedBy
            };

            await _previousExperienceRepository.AddOrUpdatePreviousExperienceAsync(previousExperience);
            await _maritalStatusRepository.AddOrUpdateMaritalStatusAsync(maritalStatus);
            await _childrenDetailsRepository.AddOrUpdateChildAsync(childrenDetail);
            await _userDocumentsRepository.AddOrUpdateDocumentAsync(userDocument);
        }
    }
}
