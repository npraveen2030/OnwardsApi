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

            services.AddScoped<IJobPostRepository, JobPostRepository>();
            services.AddScoped<IJobPostService, JobPostService>();

            services.AddScoped<IJobDetailRepository, JobDetailRepository>();
            services.AddScoped<IJobDetailService, JobDetailService>();

            services.AddScoped<ILocationRepository, LocationRepository>();
            services.AddScoped<ILocationService, LocationService>();

            services.AddScoped<ISavedJobRepository, SavedJobRepository>();
            services.AddScoped<ISavedJobService, SavedJobService>();

            services.AddScoped<IJobApplicationRepository, JobApplicationRepository>();
            services.AddScoped<IJobApplicationService, JobApplicationService>();

            services.AddScoped<ISavedSearchRepository, SavedSearchRepository>();
            services.AddScoped<ISavedSearchService, SavedSearchService>();

            services.AddScoped<IEmailService, EmailService>();

            services.AddScoped<IReferralTrackingRepository, ReferralTrackingRepository>();
            services.AddScoped<IReferralTrackingService, ReferralTrackingService>();

            services.AddScoped<IUserProjectRoleAssociationRepository, UserProjectRoleAssociationRepository>();
            services.AddScoped<IUserProjectRoleAssociationService, UserProjectRoleAssociationService>();

            services.AddScoped<IProjectManagementRepository, ProjectManagementRepository>();
            services.AddScoped<IProjectManagementService, ProjectManagementService>();

            services.AddScoped<IAttendanceRegularizationRepository, AttendanceRegularizationRepository>();
            services.AddScoped<IAttendanceRegularizationService, AttendanceRegularizationService>();

            services.AddScoped<IReportsRepository, ReportsRepository>();
            services.AddScoped<IReportsService, ReportsService>();

            services.AddScoped<ICourierRepository, CourierRepository>();
            services.AddScoped<ICourierService, CourierService>();

            services.AddScoped<IAdminScheduleRepository, AdminScheduleRepository>();
            services.AddScoped<IAdminScheduleService, AdminScheduleService>();

            services.AddScoped<IUserScheduleRepository, UserScheduleRepository>();
            services.AddScoped<IUserScheduleService, UserScheduleService>();

            services.AddScoped<ISchedulerProfileRepository, SchedulerProfileRepository>();
            services.AddScoped<ISchedulerProfileService, SchedulerProfileService>();

            services.AddScoped<ISchedulerSkillsRepository, SchedulerSkillsRepository>();
            services.AddScoped<ISchedulerSkillsService, SchedulerSkillsService>();

            services.AddScoped<IUserScheduleParticipantRepository, UserScheduleParticipantRepository>();
            services.AddScoped<IUserScheduleParticipantService, UserScheduleParticipantService>();

            services.AddScoped<IUserPersonalDetailsRepository, UserPersonalDetailsRepository>();
            services.AddScoped<IUserPersonalDetailsService, UserPersonalDetailsService>();


            return services;
        }
    }
}
