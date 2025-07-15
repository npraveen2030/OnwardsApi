using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Runtime.Serialization;
using Microsoft.AspNetCore.Mvc;
using Moq;
using OnwardsApi.Controllers;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using Xunit;

namespace OnwardsApiUnitTestCases.XUnitTestCases
{
    public class HolidayListControllerTests
    {
        private readonly Mock<IHolidayListService> _mockService;
        private readonly HolidayListController _controller;

        public HolidayListControllerTests()
        {
            _mockService = new Mock<IHolidayListService>();
            _controller = new HolidayListController(_mockService.Object);
        }

        #region GetByLocation

        [Fact]
        public void GetByLocation_ReturnsOk_WithData()
        {
            var expected = new List<HolidayListDto> { new HolidayListDto { HolidayId = 1 } };
            _mockService.Setup(s => s.GetByLocation(1)).Returns(expected);

            var result = _controller.GetByLocation(1) as OkObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(200, result.StatusCode);
            Xunit.Assert.Equal(expected, result.Value);
        }

        [Fact]
        public void GetByLocation_ThrowsSqlException_Returns400()
        {
            _mockService.Setup(s => s.GetByLocation(1)).Throws(CreateSqlException());

            var result = _controller.GetByLocation(1) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(400, result.StatusCode);
            Xunit.Assert.Contains("Database error", result.Value.ToString());
        }

        [Fact]
        public void GetByLocation_ThrowsException_Returns500()
        {
            _mockService.Setup(s => s.GetByLocation(1)).Throws(new Exception("Unexpected"));

            var result = _controller.GetByLocation(1) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(500, result.StatusCode);
            Xunit.Assert.Contains("Unexpected error", result.Value.ToString());
        }

        #endregion

        #region Add

        [Fact]
        public void AddHoliday_ReturnsOk()
        {
            var dto = new HolidayListDto { HolidayId = 1 };

            var result = _controller.Add(dto) as OkObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(200, result.StatusCode);
        }

        [Fact]
        public void AddHoliday_ThrowsSqlException_Returns400()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Add(dto)).Throws(CreateSqlException());

            var result = _controller.Add(dto) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(400, result.StatusCode);
        }

        [Fact]
        public void AddHoliday_ThrowsException_Returns500()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Add(dto)).Throws(new Exception("Error"));

            var result = _controller.Add(dto) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(500, result.StatusCode);
        }

        #endregion

        #region Update

        [Fact]
        public void UpdateHoliday_Success_ReturnsOk()
        {
            var dto = new HolidayListDto { HolidayId = 1 };

            var result = _controller.Update(1, dto) as OkObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(200, result.StatusCode);
        }

        [Fact]
        public void UpdateHoliday_IdMismatch_ReturnsBadRequest()
        {
            var dto = new HolidayListDto { HolidayId = 2 };

            var result = _controller.Update(1, dto) as BadRequestObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(400, result.StatusCode);
        }

        [Fact]
        public void UpdateHoliday_ThrowsSqlException_Returns400()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Update(dto)).Throws(CreateSqlException());

            var result = _controller.Update(1, dto) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(400, result.StatusCode);
        }

        [Fact]
        public void UpdateHoliday_ThrowsException_Returns500()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Update(dto)).Throws(new Exception("Unexpected"));

            var result = _controller.Update(1, dto) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(500, result.StatusCode);
        }

        #endregion

        #region Delete

        [Fact]
        public void DeleteHoliday_Success_ReturnsOk()
        {
            var result = _controller.Delete(1) as OkObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(200, result.StatusCode);
        }

        [Fact]
        public void DeleteHoliday_ThrowsSqlException_Returns400()
        {
            _mockService.Setup(s => s.Delete(1)).Throws(CreateSqlException());

            var result = _controller.Delete(1) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(400, result.StatusCode);
        }

        [Fact]
        public void DeleteHoliday_ThrowsException_Returns500()
        {
            _mockService.Setup(s => s.Delete(1)).Throws(new Exception("Unexpected"));

            var result = _controller.Delete(1) as ObjectResult;

            Xunit.Assert.NotNull(result);
            Xunit.Assert.Equal(500, result.StatusCode);
        }

        #endregion

        // Helper to simulate SqlException
        //private SqlException CreateSqlException()
        //{
        //    try
        //    {
        //        using var conn = new SqlConnection("InvalidConn");
        //        conn.Open();
        //    }
        //    catch (SqlException ex)
        //    {
        //        return ex;
        //    }

        //    return null!;
        //}

        // Inside your test class
        private SqlException CreateSqlException()
        {
            // Use a helper or third-party library to create SqlException instance (advanced).
            // Instead, mock the service to throw the exception directly.
            var sqlException = (SqlException)FormatterServices.GetUninitializedObject(typeof(SqlException));
            return sqlException;
        }
    }
}