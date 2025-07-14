using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;

namespace OnwardsApi.Controllers
{
    //[Route("api/[controller]")]
    //[ApiController]
    //public class AuthController : ControllerBase
    //{
    //}

    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IUserService _userService;

        public AuthController(IUserService userService)
        {
            _userService = userService;
        }

        /// <summary>
        /// User login API to validate Employee credentials.
        /// </summary>
        /// <param name="request">LoginRequest containing EmployeeCode and Password</param>
        /// <returns>200 OK or 401 Unauthorized</returns>
        [HttpPost("login")]
        public IActionResult Login([FromBody] LoginRequest request)
        {
            if (!_userService.ValidateUser(request.EmployeeCode, request.Password))
                return Unauthorized("Invalid credentials");

            return Ok(new { message = "Login successful" });
        }
    }
}
