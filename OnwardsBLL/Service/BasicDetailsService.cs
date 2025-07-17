using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class BasicDetailsService(
        IPreviousExperienceRepository _previousExperienceRepository,
        IMaritalStatusRepository _maritalStatusRepository,
        IChildrenDetailsRepository _childrenDetailsRepository,
        IUserDocumentsRepository _userDocumentsRepository,
        IEducationDetailsRepository _educationDetailsRepository,
        ICertificationDetailsRepository _certificationDetailsRepository,
        ISkillDetailsRepository _skillsDetailsRepository,
        IExperienceDetailsRepository _experienceDetailsRepository
    ) : IBasicDetailsService
    {
        public async Task AddOrUpdateBasicDetailsAsync(BasicDetilasModel dto)
        {
            var educationalDetails = dto.EducationDetails;

            var certificationDetails = dto.CertificationDetails;

            var skillDetails = new SkillDetailsModel
            {
                UserId = dto.UserId,
                PrimarySkills = dto.PrimarySkills,
                SecondarySkills = dto.SecondarySkills
            };

            var experienceDetails = new ExperienceDetailsModel
            {
                UserId = dto.UserId,
                PreviousExperience = dto.PreviousExperience,
                TotalExperience = dto.TotalExperience,
                RelevantExperience = dto.RelevantExperience,
                CurrentEmployer = dto.NameOfCurrentEmployer,
                CurrentDesignation = dto.CurrentDesignation,
                PreviousOnwardExperience = dto.PreviousOnwardExperience,
                PreviousOnwardEmployeeCode = dto.PreviousOnwardEmployeeCode
            };

            var previousExperience = dto.PreviousExperienceDetail;

            var maritalStatus = new MaritalStatus
            {
                UserId = dto.UserId,
                LoginId = dto.LoginId,
                Status = dto.MaritalStatus,
                TitleId = dto.TitleId,
                Name = dto.Name,
                IsHavingChildren = dto.IsHavingChildren
            };

            var childrenDetail = dto.Children;

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


            await _educationDetailsRepository.AddOrUpdateEducationDetailsAsync(educationalDetails);
            await _certificationDetailsRepository.AddOrUpdateCertificationDetailsAsync(certificationDetails);
            await _skillsDetailsRepository.AddOrUpdateSkillsAsync(skillDetails);
            await _experienceDetailsRepository.AddOrUpdateExperienceDetailsAsync(experienceDetails);
            await _previousExperienceRepository.AddOrUpdatePreviousExperienceAsync(previousExperience);
            await _maritalStatusRepository.AddOrUpdateMaritalStatusAsync(maritalStatus);
            await _childrenDetailsRepository.AddOrUpdateChildAsync(childrenDetail);
            await _userDocumentsRepository.AddOrUpdateDocumentAsync(userDocument);     
        }
    }
}
