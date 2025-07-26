using OnwardsBLL.Interface;
using OnwardsBLL.Service;
using OnwardsDAL.Interface;
using OnwardsDAL.Repository;

namespace OnwardsApi
{
    public static class DependencyInjection
    {
        public static IServiceCollection AddProjectServices(this IServiceCollection services, IConfiguration configuration)
        {
            //// Repositories (DAL)
            //services.AddScoped<IHolidayListRepository, HolidayListRepository>();

            //// Business Services (BLL)
            //services.AddScoped<IHolidayListService, HolidayListService>();

            //// Add other services here if needed
            //// services.AddScoped<IOtherService, OtherService>();

            // Register DAL + BLL
            services.AddScoped<IUserRepository, UserRepository>();
            services.AddScoped<IUserService, UserService>();

            services.AddScoped<IHolidayListRepository, HolidayListRepository>();
            services.AddScoped<IHolidayListService, HolidayListService>();

            services.AddScoped<ITrainingRepository, TrainingRepository>();
            services.AddScoped<ITrainingService, TrainingService>();

            services.AddScoped<IUserShiftDetailsRepository, UserShiftDetailsRepository>();
            services.AddScoped<IUserShiftDetailsService, UserShiftDetailsService>();

            services.AddScoped<IBasicUserDetailsRepository, BasicUserDetailsRepository>();
            services.AddScoped<IUserAddressesRepository, UserAddressesRepository>();
            services.AddScoped<IComplianceRepository, ComplianceRepository>();
            services.AddScoped<IBankDetailsRepository, BankDetailsRepository>();
            services.AddScoped<IEmergencyContactsRepository, EmergencyContactsRepository>();
            services.AddScoped<IPersonalDetailsService, PersonalDetailsService>();

            services.AddScoped<IEducationDetailsRepository, EducationDetailsRepository>();
            services.AddScoped<ICertificationDetailsRepository, CertificationDetailsRepository>();
            services.AddScoped<ISkillDetailsRepository, SkillDetailsRepository>();
            services.AddScoped<IExperienceDetailsRepository, ExperienceDetailsRepository>();
            services.AddScoped<IPreviousExperienceRepository, PreviousExperienceRepository>();
            services.AddScoped<IMaritalStatusRepository, MaritalStatusRepository>();
            services.AddScoped<IChildrenDetailsRepository, ChildrenDetailsRepository>();
            services.AddScoped<IUserDocumentsRepository, UserDocumentsRepository>();
            services.AddScoped<IBasicDetailsService, BasicDetailsService>();

            services.AddScoped<IUserDetailsRepository, UserDetailsRepository>();
            services.AddScoped<IUserDetailsService, UserDetailsService>();

            services.AddScoped<IUserLeaveAppliedRepository, UserLeaveAppliedRepository>();
            services.AddScoped<IUserLeaveAppliedService, UserLeaveAppliedService>();

            services.AddScoped<IResignationTypeRepository, ResignationTypeRepository>();
            services.AddScoped<IResignationTypeService, ResignationTypeService>();
            
            services.AddScoped<IResignationReasonRepository, ResignationReasonRepository>();
            services.AddScoped<IResignationReasonService, ResignationReasonService>();
            
            services.AddScoped<IResignationRepository, ResignationRepository>();
            services.AddScoped<IResignationService, ResignationService>();

            services.AddScoped<IExitInterviewQuestionRepository, ExitInterviewQuestionRepository>();
            services.AddScoped<IExitInterviewService, ExitInterviewService>();

            services.AddScoped<IReimbursementRepository, ReimbursementRepository>();
            services.AddScoped<IReimbursementService, ReimbursementService>();

            return services;
        }
    }
}
