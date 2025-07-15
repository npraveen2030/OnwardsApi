using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsDAL.Repository;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsBLL.Service
{
    public class PersonalDetailsService(IBasicDetailsRepository _basicDetailsRepository, IUserAddressesRepository _userAddressesRepository,
        IComplianceRepository _complianceRepository, IBankDetailsRepository _bankDetailsRepository,
        IEmergencyContactsRepository _emergencyContactsRepository) : IPersonalDetailsService
    {
        public async Task AddOrUpdatePersonalDetails(PersonalDetailsDto personalDetailsDto)
        {
            var basicDetail = new BasicDetail
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                FirstName = personalDetailsDto.FirstName,
                MiddleName = personalDetailsDto.MiddleName,
                LastName = personalDetailsDto.LastName,
                PersonalEmailID = personalDetailsDto.PersonalEmailID,
                PrimaryContactNumber = personalDetailsDto.PrimaryContactNumber_BasicDetails,
                Gender = personalDetailsDto.Gender,
                FatherOrHusbandName = personalDetailsDto.FatherOrHusbandName,
                DOB = personalDetailsDto.DOB,
                Nationality = personalDetailsDto.Nationality,
                DifferentlyAbled = personalDetailsDto.DifferentlyAbled,
                VaccinationStatus = personalDetailsDto.VaccinationStatus,
                BloodGroup = personalDetailsDto.BloodGroup,
                BloodDonor = personalDetailsDto.BloodDonor,
                PanNumber = personalDetailsDto.PanNumber,
                AadhaarCardno = personalDetailsDto.AadhaarCardno,
            };

            var userAddress = new UserAddress
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                PresentDoorNo = personalDetailsDto.PresentDoorNo,
                PresentAddressLine = personalDetailsDto.PresentAddressLine,
                PresentState = personalDetailsDto.PresentState,
                PresentPincode = personalDetailsDto.PresentPincode,
                IsSameAsPermanent = personalDetailsDto.IsSameAsPermanent,
                PermanentDoorNo = personalDetailsDto.PermanentDoorNo,
                PermanentAddressLine = personalDetailsDto.PermanentAddressLine,
                PermanentState = personalDetailsDto.PermanentState,
                PermanentPincode = personalDetailsDto.PermanentPincode,
            };

            var compliance = new Compliance
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                PFNo = personalDetailsDto.PFNo,
                UANNo = personalDetailsDto.UANNo,
                ESICNo = personalDetailsDto.ESICNo,
            };

            var bankDetail = new BankDetail
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                BankAccountNumber = personalDetailsDto.BankAccountNumber,
                AccountHolderName = personalDetailsDto.AccountHolderName,
                IFSCCode = personalDetailsDto.IFSCCode,
                BankName = personalDetailsDto.BankName,
                BranchName = personalDetailsDto.BranchName,
            };

            var emergencyContact = new EmergencyContact
            {
                UserId = personalDetailsDto.UserId,
                LoginId = personalDetailsDto.LoginId,
                ContactName = personalDetailsDto.ContactName,
                ContactRelationship = personalDetailsDto.ContactRelationship,
                PrimaryContactNumber = personalDetailsDto.PrimaryContactNumber_EmergencyContactDetails,
                SecondaryContactNumber = personalDetailsDto.SecondaryContactNumber,
            };

            await _basicDetailsRepository.AddOrUpdateBasicDetailsAsync(basicDetail);
            await _userAddressesRepository.AddOrUpdateUserAddressAsync(userAddress);
            await _complianceRepository.AddOrUpdateUserComplianceAsync(compliance);
            await _bankDetailsRepository.AddOrUpdateUserBankDetailsAsync(bankDetail);
            await _emergencyContactsRepository.AddOrUpdateEmergencyContactAsync(emergencyContact);
        }
    }
}
