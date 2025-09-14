using System.Data;
using System.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;

namespace OnwardsDAL.Repository
{
    public class LanguageRepository : ILanguageRepository
    {
        private readonly string _connectionString;

        public LanguageRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public void Insert(LanguageModel language)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.InsertLanguage", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", language.Name);
                cmd.Parameters.AddWithValue("@CreatedBy", language.CreatedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Update(LanguageModel language)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.UpdateLanguage", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", language.Id);
                cmd.Parameters.AddWithValue("@Name", language.Name);
                cmd.Parameters.AddWithValue("@ModifiedBy", language.ModifiedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Delete(int id)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.DeleteLanguage", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public LanguageModel GetLanguageById(int id)
        {
            LanguageModel language = null;

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetLanguageById", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        language = new LanguageModel
                        {
                            Id = (int)reader["Id"],
                            Name = reader["Name"].ToString(),
                            CreatedDate = (DateTime)reader["CreatedDate"],
                            CreatedBy = (int)reader["CreatedBy"],
                            ModifiedDate = reader["ModifiedDate"] as DateTime?,
                            ModifiedBy = reader["ModifiedBy"] as int?,
                            IsActive = (bool)reader["IsActive"]
                        };
                    }
                }
            }

            return language;
        }

        public List<LanguageModel> GetLanguages()
        {
            var languages = new List<LanguageModel>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetAllLanguages", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        languages.Add(new LanguageModel
                        {
                            Id = (int)reader["Id"],
                            Name = reader["Name"].ToString(),
                            CreatedDate = (DateTime)reader["CreatedDate"],
                            CreatedBy = (int)reader["CreatedBy"],
                            ModifiedDate = reader["ModifiedDate"] as DateTime?,
                            ModifiedBy = reader["ModifiedBy"] as int?,
                            IsActive = (bool)reader["IsActive"]
                        });
                    }
                }
            }

            return languages;
        }
    }
}
