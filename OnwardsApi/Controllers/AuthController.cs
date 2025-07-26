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
    public IActionResult Login([FromBody] LoginRequestDto request)
    {
      try
      {
        if (!_userService.ValidateUser(request.EmployeeCode, request.Password))
          return Unauthorized("Invalid credentials");

        return Ok(new { message = "Login successful" });
      }
      catch (ApplicationException ex)
      {
        return BadRequest(new
        {
          error = ex.Message
        });
      }
    }

        /// <summary>
        /// User login API to validate Employee credentials.
        /// </summary>
        /// <param name="request">LoginRequest containing EmployeeCode and Password</param>
        /// <returns>200 OK or 401 Unauthorized</returns>
        [HttpPost("ValidateLogin")]
        public IActionResult ValidateLogin([FromBody] LoginRequestDto request)
        {
            try
            {
                var result = _userService.ValidateLogin(request.EmployeeCode, request.Password);
                    //return Unauthorized("Invalid credentials");

                return Ok(result);
            }
            catch (ApplicationException ex)
            {
                return BadRequest(new
                {
                    error = ex.Message
                });
            }
        }



    }
}
