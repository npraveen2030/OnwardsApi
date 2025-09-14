using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Model;

namespace OnwardsDAL.Repository
{
    public class LocationRepository : ILocationRepository
    {
        private readonly string _connectionString;

        public LocationRepository(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public void Insert(LocationModel location)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.InsertLocation", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Name", location.Name);
                cmd.Parameters.AddWithValue("@CreatedBy", location.CreatedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Update(LocationModel location)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.UpdateLocation", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", location.Id);
                cmd.Parameters.AddWithValue("@Name", location.Name);
                cmd.Parameters.AddWithValue("@ModifiedBy", location.ModifiedBy);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public void Delete(int id)
        {
            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.DeleteLocation", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                cmd.ExecuteNonQuery();
            }
        }

        public LocationModel GetLocationById(int id)
        {
            LocationModel location = null;

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetLocationById", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Id", id);

                conn.Open();
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        location = new LocationModel
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

            return location;
        }

        public List<LocationModel> GetLocations()
        {
            var locations = new List<LocationModel>();

            using (SqlConnection conn = new SqlConnection(_connectionString))
            using (SqlCommand cmd = new SqlCommand("Onwards.GetAllLocations", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        locations.Add(new LocationModel
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

            return locations;
        }
    }
}
