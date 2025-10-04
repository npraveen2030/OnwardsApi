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
    public class ProjectManagementService : IProjectManagementService
    {
        private readonly IProjectManagementRepository _projectRepo;

        public ProjectManagementService(IProjectManagementRepository projectRepo)
        {
            _projectRepo = projectRepo;
        }

        /// <summary>
        /// Insert or Update Project
        /// </summary>
        public async Task<(bool Success, string Message)> InsertOrUpdateProjectAsync(ProjectManagementModel project)
        {
            if (string.IsNullOrWhiteSpace(project.ProjectName))
            {
                return (false, "Project name cannot be empty.");
            }

            if (project.StartDate > project.EndDate)
            {
                return (false, "Start Date cannot be greater than End Date.");
            }

            return await _projectRepo.InsertOrUpdateProjectAsync(project);
        }

        /// <summary>
        /// Get All Active Projects
        /// </summary>
        public async Task<List<ProjectManagementDto>> GetProjectsAsync()
        {
            return await _projectRepo.GetProjectsAsync();
        }

        /// <summary>
        /// Delete (Soft Delete) Project
        /// </summary>
        public async Task<(bool Success, string Message)> DeleteProjectAsync(int id, int loginId)
        {
            if (id <= 0)
            {
                return (false, "Invalid project Id.");
            }

            try
            {
                await _projectRepo.DeleteProjectAsync(id, loginId);
                return (true, "Project deleted successfully.");
            }
            catch (Exception ex)
            {
                return (false, $"Error deleting project: {ex.Message}");
            }
        }
    }
}
