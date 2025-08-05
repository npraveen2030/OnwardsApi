using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using OnwardsBLL.Interface;
using OnwardsModel.Dtos;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Reflection;
using System.Security.Claims;
using System.Text;

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
        public async Task<IActionResult> ValidateLogin([FromBody] LoginRequestDto request, IConfiguration _configuration)
        {
            try
            {
                var (success, userDetails) = await _userService.ValidateLogin(request.EmployeeCode, request.Password);
                    //return Unauthorized("Invalid credentials");
                if (!success)
                {
                    return NotFound();
                }

                var claims = new[]
                {
                    new Claim(JwtRegisteredClaimNames.Sub, userDetails.FullName),
                    new Claim(ClaimTypes.Role, userDetails.RoleName),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString())
                };

                var key = _configuration["Jwt:Key"];
                var issuer = _configuration["Jwt:Issuer"];

                var keyBytes = Encoding.UTF8.GetBytes(key ?? "");
                var securityKey = new SymmetricSecurityKey(keyBytes);
                var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

                var token = new JwtSecurityToken(
                    issuer: issuer,
                    audience: issuer,
                    claims: claims,
                    expires: DateTime.UtcNow.AddHours(1),
                    signingCredentials: credentials
                );

                var usertoken = new JwtSecurityTokenHandler().WriteToken(token);

                Response.Cookies.Append("OnwardsJwt", usertoken, new CookieOptions
                {
                    HttpOnly = true,
                    Secure = true,
                    SameSite = SameSiteMode.None,
                    Expires = DateTime.UtcNow.AddHours(1)
                });

                return Ok(new { userDetails });

            }
            catch (ApplicationException ex)
            {
                return BadRequest(new
                {
                    error = ex.Message
                });
            }
        }


        [HttpPost("logout")]
        public IActionResult LogOut()
        {
            // Remove the JWT cookie
            Response.Cookies.Delete("OnwardsJwt", new CookieOptions
            {
                HttpOnly = true,
                Secure = true,
                SameSite = SameSiteMode.None,
                Path = "/"
            });

            return Ok(new { message = "Signed out successfully." });
        }


    }
}
