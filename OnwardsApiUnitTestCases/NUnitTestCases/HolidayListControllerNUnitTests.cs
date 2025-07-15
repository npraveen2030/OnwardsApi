using System.Data.SqlClient; 
using OnwardsApi.Controllers;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos; 
using Moq;
using NUnit.Framework;
using NUnit.Framework;


namespace OnwardsApiUnitTestCases.NUnitTestCases
{
    [TestFixture]
    public class HolidayListControllerTests
    {
        private Mock<IHolidayListService> _mockService;
        private HolidayListController _controller;

        [SetUp]
        public void Setup()
        {
            _mockService = new Mock<IHolidayListService>();
            _controller = new HolidayListController(_mockService.Object);
        }

        #region GetByLocation

        [Test]
        public void GetByLocation_ReturnsOk_WithData()
        {
            var expected = new List<HolidayListDto> { new HolidayListDto { HolidayId = 1 } };
            _mockService.Setup(s => s.GetByLocation(1)).Returns(expected);

            var result = _controller.GetByLocation(1) as OkObjectResult;

            NUnit.Framework.Assert.IsNotNull(result);
            NUnit.Framework.Assert.AreEqual(200, result.StatusCode);
            NUnit.Framework.Assert.AreEqual(expected, result.Value);
        }

        [Test]
        public void GetByLocation_ThrowsSqlException_Returns400()
        {
            _mockService.Setup(s => s.GetByLocation(1)).Throws(CreateSqlException());

            var result = _controller.GetByLocation(1) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(400, result.StatusCode);
            Assert.IsTrue(result.Value.ToString().Contains("Database error occurred"));
        }

        [Test]
        public void GetByLocation_ThrowsException_Returns500()
        {
            _mockService.Setup(s => s.GetByLocation(1)).Throws(new Exception("Unexpected"));

            var result = _controller.GetByLocation(1) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(500, result.StatusCode);
            Assert.IsTrue(result.Value.ToString().Contains("Unexpected error"));
        }

        #endregion

        #region Add

        [Test]
        public void AddHoliday_ReturnsOk()
        {
            var dto = new HolidayListDto { HolidayId = 1 };

            var result = _controller.Add(dto) as OkObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(200, result.StatusCode);
        }

        [Test]
        public void AddHoliday_ThrowsSqlException_Returns400()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Add(dto)).Throws(CreateSqlException());

            var result = _controller.Add(dto) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(400, result.StatusCode);
        }

        [Test]
        public void AddHoliday_ThrowsException_Returns500()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Add(dto)).Throws(new Exception("Error"));

            var result = _controller.Add(dto) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(500, result.StatusCode);
        }

        #endregion

        #region Update

        [Test]
        public void UpdateHoliday_Success_ReturnsOk()
        {
            var dto = new HolidayListDto { HolidayId = 1 };

            var result = _controller.Update(1, dto) as OkObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(200, result.StatusCode);
        }

        [Test]
        public void UpdateHoliday_IdMismatch_ReturnsBadRequest()
        {
            var dto = new HolidayListDto { HolidayId = 2 };

            var result = _controller.Update(1, dto) as BadRequestObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(400, result.StatusCode);
        }

        [Test]
        public void UpdateHoliday_ThrowsSqlException_Returns400()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Update(dto)).Throws(CreateSqlException());

            var result = _controller.Update(1, dto) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(400, result.StatusCode);
        }

        [Test]
        public void UpdateHoliday_ThrowsException_Returns500()
        {
            var dto = new HolidayListDto { HolidayId = 1 };
            _mockService.Setup(s => s.Update(dto)).Throws(new Exception("Unexpected"));

            var result = _controller.Update(1, dto) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(500, result.StatusCode);
        }

        #endregion

        #region Delete

        [Test]
        public void DeleteHoliday_Success_ReturnsOk()
        {
            var result = _controller.Delete(1) as OkObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(200, result.StatusCode);
        }

        [Test]
        public void DeleteHoliday_ThrowsSqlException_Returns400()
        {
            _mockService.Setup(s => s.Delete(1)).Throws(CreateSqlException());

            var result = _controller.Delete(1) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(400, result.StatusCode);
        }

        [Test]
        public void DeleteHoliday_ThrowsException_Returns500()
        {
            _mockService.Setup(s => s.Delete(1)).Throws(new Exception("Unexpected"));

            var result = _controller.Delete(1) as ObjectResult;

            Assert.IsNotNull(result);
            Assert.AreEqual(500, result.StatusCode);
        }

        #endregion

        // Helper method to simulate SqlException
        private SqlException CreateSqlException()
        {
            try
            {
                using var connection = new SqlConnection("InvalidConnection");
                connection.Open();
            }
            catch (SqlException ex)
            {
                return ex;
            }

            return null!;
        }
    }
}
