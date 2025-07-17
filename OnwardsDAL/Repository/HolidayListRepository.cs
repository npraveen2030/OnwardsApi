using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;
using OnwardsDAL.Interface;
using OnwardsModel.Dtos;
using OnwardsModel.Model;

namespace OnwardsDAL.Repository
{
    public class HolidayListRepository : IHolidayListRepository
    {
        private readonly IConfiguration _config;
        public HolidayListRepository(IConfiguration config)
        {
            _config = config;
        }

        private SqlConnection GetConn() =>
            new SqlConnection(_config.GetConnectionString("DefaultConnection"));


        public async Task<IEnumerable<HolidayListDto>> GetAllHolidays()
        {
            var list = new List<HolidayListDto>();
            using var conn = GetConn();
            conn.Open();
            using var cmd = new SqlCommand("Onwards.GetAllHolidays", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            //cmd.Parameters.AddWithValue("@LocationId", locationId);
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                list.Add(new HolidayListDto
                {
                    Id = Convert.ToInt32(reader["Id"]),
                    HolidayName = reader["HolidayName"].ToString(),
                    HolidayDate = Convert.ToDateTime(reader["HolidayDate"]),
                    LocationId = Convert.ToInt32(reader["LocationId"])
                });
            }
            return list;
        }

        //Task<IEnumerable<HolidayListDto>> GetAllHolidays()
        //{
        //    throw new NotImplementedException();
        //}//GetHolidayById


        public async Task<HolidayListDto> GetHolidayById(int Id)
        {
            var list = new HolidayListDto();
            using var conn = GetConn();
            conn.Open();
            using var cmd = new SqlCommand("Onwards.GetHolidaById", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@Id", Id);
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                list = new HolidayListDto
                {
                    Id = Convert.ToInt32(reader["Id"]),
                    HolidayName = reader["HolidayName"].ToString(),
                    HolidayDate = Convert.ToDateTime(reader["HolidayDate"]),
                    LocationId = Convert.ToInt32(reader["LocationId"])
                };
            }
            return list;
        }

        public async Task<IEnumerable<HolidayListDto>> GetHolidayByLocationId(int locationId)
        {
            var list = new List<HolidayListDto>();
            using var conn = GetConn();
            conn.Open();
            using var cmd = new SqlCommand("Onwards.GetHolidaByLocationId", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@LocationId", locationId);
            using var reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                list.Add(new HolidayListDto
                {
                    Id = Convert.ToInt32(reader["Id"]),
                    HolidayName = reader["HolidayName"].ToString(),
                    HolidayDate = Convert.ToDateTime(reader["HolidayDate"]),
                    LocationId = Convert.ToInt32(reader["LocationId"])
                });
            }
            return list;
        }

        public async Task InsertOrUpdateHoliday(HolidayListModel h)
        {
            using var conn = GetConn();
            conn.Open();
            using var cmd = new SqlCommand("Onwards.InsertOrUpdateHoliday", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@Id", h.Id);
            cmd.Parameters.AddWithValue("@HolidayDate", h.HolidayDate);
            cmd.Parameters.AddWithValue("@HolidayName", h.HolidayName);
            cmd.Parameters.AddWithValue("@LocationId", h.LocationId);
            //cmd.Parameters.AddWithValue("@Year", h.Year);
            cmd.Parameters.AddWithValue("@LoginUserId", h.LoginId);
            cmd.ExecuteNonQuery();
        }

        //public void Update(HolidayListModel h)
        //{
        //    using var conn = GetConn();
        //    conn.Open();
        //    using var cmd = new SqlCommand("Onwards.sp_UpdateHoliday", conn)
        //    {
        //        CommandType = CommandType.StoredProcedure
        //    };
        //    cmd.Parameters.AddWithValue("@HolidayId", h.HolidayId);
        //    cmd.Parameters.AddWithValue("@HolidayName", h.HolidayName);
        //    cmd.Parameters.AddWithValue("@HolidayDate", h.HolidayDate);
        //    cmd.Parameters.AddWithValue("@LocationId", h.LocationId);
        //    cmd.Parameters.AddWithValue("@Year", h.Year);
        //    cmd.Parameters.AddWithValue("@ModifiedBy", h.ModifiedBy ?? "System");
        //    cmd.ExecuteNonQuery();
        //}

        public async Task DeleteHoliday(int id)
        {
            using var conn = GetConn();
            conn.Open();
            using var cmd = new SqlCommand("Onwards.sp_DeleteHoliday", conn)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Parameters.AddWithValue("@Id", id);
            cmd.ExecuteNonQuery();
        }

       

        //Task<HolidayListDto> IHolidayListRepository.GetHolidayById(int id)
        //{
        //    throw new NotImplementedException();
        //}

        //public Task<IEnumerable<HolidayListDto>> GetHolidayByLocationId(int locationId)
        //{
        //    throw new NotImplementedException();
        //}

        //Task IHolidayListRepository.InsertOrUpdateHoliday(HolidayListModel holiday)
        //{
        //    throw new NotImplementedException();
        //}

        //public Task DeleteHoliday(int id)
        //{
        //    throw new NotImplementedException();
        //}
    }


}
