using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnwardsDAL.Repository
{
    public class UserDocumentsRepository : IUserDocumentsRepository
    {
        private readonly IConfiguration _config;
        public UserDocumentsRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() => new SqlConnection(_config.GetConnectionString("DefaultConnection"));

        public async Task AddOrUpdateDocumentAsync(UserDocument doc)
        {
            try
            {
                await using var conn = GetConn();
                await conn.OpenAsync();

                await using var cmd = new SqlCommand("Onwards.InsertOrUpdateUserDocuments", conn)
                {
                    CommandType = CommandType.StoredProcedure
                };

                cmd.Parameters.AddWithValue("@UserId", doc.UserId);
                cmd.Parameters.AddWithValue("@DocumentTypeId", doc.DocumentTypeId);
                cmd.Parameters.AddWithValue("@FileName", doc.FileName);
                cmd.Parameters.AddWithValue("@FilePath", doc.FilePath);
                cmd.Parameters.AddWithValue("@LoginId", doc.LoginId);

                await cmd.ExecuteNonQueryAsync();
            }
            catch (Exception ex)
            {
                throw new Exception("Error occurred while inserting/updating user document.", ex);
            }
        }
    }
}
