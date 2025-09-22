using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Threading.Tasks;

namespace OnwardsBLL.Service
{
    public class SavedSearchService : ISavedSearchService
    {
        private readonly ISavedSearchRepository _repository;
        public SavedSearchService(ISavedSearchRepository repository)
        {
            _repository = repository;
        }

        /// <summary>
        /// Inserts a new saved search or updates an existing one.
        /// Returns true if the search name is unique, false otherwise.
        /// </summary>
        public async Task<bool> InsertOrUpdateSavedSearchAsync(SavedSearchModel model)
        {
            return await _repository.InsertOrUpdateSavedSearchAsync(model);
        }

        /// <summary>
        /// Retrieves all active saved searches.
        /// </summary>
        public async Task<List<SavedSearchDto>> GetAllSavedSearchAsync(int UserId)
        {
            return await _repository.GetAllSavedSearchAsync(UserId);
        }

        /// <summary>
        /// Deletes a saved search by Id.
        /// </summary>
        public async Task DeleteSavedSearchAsync(int id)
        {
            await _repository.DeleteSavedSearchAsync(id);
        }
    }
}
