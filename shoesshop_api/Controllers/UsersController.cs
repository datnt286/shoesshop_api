using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using shoesshop_api.Data;
using shoesshop_api.DTOs;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class UsersController : ControllerBase
	{
		private readonly UserManager<User> _userManager;
		private readonly SignInManager<User> _signInManager;
		private readonly RoleManager<IdentityRole> _roleManager;
		private readonly IConfiguration _configuration;
		private readonly IWebHostEnvironment _environment;

		public UsersController(UserManager<User> userManager, SignInManager<User> signInManager, RoleManager<IdentityRole> roleManager, IConfiguration configuration, IWebHostEnvironment environment)
		{
			_userManager = userManager;
			_signInManager = signInManager;
			_roleManager = roleManager;
			_configuration = configuration;
			_environment = environment;
		}

		// POST: api/Users/Customer/register
		[HttpPost("Customer/register")]
		public async Task<IActionResult> RegisterCustomer([FromBody] RegisterRequest request)
		{
			if (ModelState.IsValid)
			{
				if (!await _roleManager.RoleExistsAsync("Customer"))
				{
					var roleResult = await _roleManager.CreateAsync(new IdentityRole("Customer"));
					if (!roleResult.Succeeded)
					{
						return StatusCode(StatusCodes.Status500InternalServerError, new { result = "Error creating role!" });
					}
				}

				var user = new User { UserName = request.UserName, Email = request.Email };
				var result = await _userManager.CreateAsync(user, request.Password);

				if (result.Succeeded)
				{
					await _userManager.AddToRoleAsync(user, "Customer");
					return Ok(new { result = "Account created successfully." });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}

		// POST: api/Users/Customer/login
		[HttpPost("Customer/login")]
		public async Task<IActionResult> LoginCustomer([FromBody] LoginRequest request)
		{
			if (ModelState.IsValid)
			{
				var result = await _signInManager.PasswordSignInAsync(request.UserName, request.Password, false, false);

				if (result.Succeeded)
				{
					var user = await _userManager.FindByNameAsync(request.UserName);
					var token = await GenerateJwtToken(user);
					return Ok(new { token });
				}
				return Unauthorized("Invalid username or password.");
			}
			return BadRequest(ModelState);
		}

		// POST: api/Users/Employee/login
		[HttpPost("Employee/login")]
		public async Task<IActionResult> LoginEmployee([FromBody] LoginRequest request)
		{
			if (ModelState.IsValid)
			{
				var result = await _signInManager.PasswordSignInAsync(request.UserName, request.Password, false, false);

				if (result.Succeeded)
				{
					var user = await _userManager.FindByNameAsync(request.UserName);

					if (await _userManager.IsInRoleAsync(user, "Employee"))
					{
						var token = await GenerateJwtToken(user);
						return Ok(new { token });
					}
					return Unauthorized("User is not an employee.");
				}
				return Unauthorized();
			}
			return BadRequest(ModelState);
		}

		// PUT: api/Users/UpdateAccount
		[Authorize]
		[HttpPut("UpdateAccount")]
		public async Task<IActionResult> UpdateAccount([FromForm] UpdateAccountRequest request, IFormFile? avatar)
		{
			if (ModelState.IsValid)
			{
				var user = await _userManager.GetUserAsync(HttpContext.User);
				if (user == null)
				{
					return NotFound(new { result = "User not found." });
				}

				user.Name = request.Name ?? user.Name;
				user.Email = request.Email ?? user.Email;
				user.PhoneNumber = request.PhoneNumber ?? user.PhoneNumber;
				user.Address = request.Address ?? user.Address;

				if (avatar != null && avatar.Length > 0)
				{
					if (!string.IsNullOrEmpty(user.Avatar))
					{
						string existingFilePath = Path.Combine(_environment.WebRootPath, "images", "avatar", user.Avatar);
						if (System.IO.File.Exists(existingFilePath))
						{
							System.IO.File.Delete(existingFilePath);
						}
					}

					string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "avatar");

					if (!Directory.Exists(uploadsFolder))
					{
						Directory.CreateDirectory(uploadsFolder);
					}

					string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + user.UserName + Path.GetExtension(avatar.FileName);
					string filePath = Path.Combine(uploadsFolder, fileName);

					using (var fileStream = new FileStream(filePath, FileMode.Create))
					{
						await avatar.CopyToAsync(fileStream);
					}

					user.Avatar = fileName;
				}

				var result = await _userManager.UpdateAsync(user);

				if (result.Succeeded)
				{
					var token = await GenerateJwtToken(user);
					return Ok(new { token });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}

		// PUT: api/Users/ChangePassword
		[Authorize]
		[HttpPut("ChangePassword")]
		public async Task<IActionResult> ChangePassword([FromBody] ChangePasswordRequest request)
		{
			if (ModelState.IsValid)
			{
				var user = await _userManager.GetUserAsync(HttpContext.User);
				if (user == null)
				{
					return NotFound(new { result = "User not found." });
				}

				var result = await _userManager.ChangePasswordAsync(user, request.CurrentPassword, request.NewPassword);

				if (result.Succeeded)
				{
					return Ok(new { result = "Password changed successfully." });
				}

				return BadRequest(result.Errors);
			}

			return BadRequest(ModelState);
		}

		private async Task<string> GenerateJwtToken(User user)
		{
			var claims = new List<Claim>
			{
				new Claim(ClaimTypes.NameIdentifier, user.Id),
				new Claim(JwtRegisteredClaimNames.Sub, user.UserName ?? string.Empty),
				new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
				new Claim(JwtRegisteredClaimNames.Iat, DateTime.UtcNow.ToString()),
				new Claim("id", user.Id ?? string.Empty),
				new Claim("userName", user.UserName ?? string.Empty),
				new Claim("name", user.Name ?? string.Empty),
				new Claim("email", user.Email ?? string.Empty),
				new Claim("phoneNumber", user.PhoneNumber ?? string.Empty),
				new Claim("address", user.Address ?? string.Empty),
				new Claim("avatar", user.Avatar ?? string.Empty)
			};

			var roles = await _userManager.GetRolesAsync(user);

			foreach (var role in roles)
			{
				claims.Add(new Claim("role", role));
			}

			var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Secret"]));
			var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

			var token = new JwtSecurityToken(
				issuer: _configuration["JWT:ValidIssuer"],
				audience: _configuration["JWT:ValidAudience"],
				claims: claims,
				expires: DateTime.Now.AddDays(1),
				signingCredentials: creds);

			return new JwtSecurityTokenHandler().WriteToken(token);
		}

		// GET: api/Users/Employees/paged
		[HttpGet("Employees/paged")]
		public async Task<ActionResult> GetPagedEmployees(string? keyword = null, int currentPage = 1, int pageSize = 10)
		{
			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = await _userManager.GetUsersInRoleAsync("Employee");

			if (!string.IsNullOrEmpty(keyword))
			{
				query = query
					.Where(user => user.Name != null && user.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase))
					.ToList();
			}

			var totalItems = query.Count;
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = query
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.Select(user => new
				{
					user.Id,
					user.UserName,
					user.Name,
					user.Email,
					user.PhoneNumber,
					user.Address,
					user.Avatar,
					user.Status,
					user.Salary
				})
				.ToList();

			var result = new
			{
				items,
				totalPages
			};

			return Ok(result);
		}

		// POST: api/Users/Employees
		[HttpPost("Employees")]
		public async Task<IActionResult> PostEmployee([FromForm] EmployeeDTO model, IFormFile? avatar)
		{
			if (ModelState.IsValid)
			{
				var errors = new List<string>();

				var userByUserName = await _userManager.FindByNameAsync(model.UserName);
				if (userByUserName != null)
				{
					errors.Add("DuplicateUserName");
				}

				var userByPhoneNumber = await _userManager.Users.AnyAsync(u => u.PhoneNumber == model.PhoneNumber);
				if (userByPhoneNumber)
				{
					errors.Add("Employee with the same PhoneNumber already exists.");
				}

				var userByEmail = await _userManager.Users.AnyAsync(u => u.Email == model.Email);
				if (userByEmail)
				{
					errors.Add("Employee with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				if (!await _roleManager.RoleExistsAsync("Employee"))
				{
					var roleResult = await _roleManager.CreateAsync(new IdentityRole("Employee"));
					if (!roleResult.Succeeded)
					{
						return StatusCode(StatusCodes.Status500InternalServerError, new { result = "Error creating role!" });
					}
				}

				var user = new User
				{
					UserName = model.UserName,
					PasswordHash = model.Password,
					Name = model.Name,
					Email = model.Email,
					PhoneNumber = model.PhoneNumber,
					Address = model.Address,
					Salary = model.Salary,
					Description = model.Description,
					Status = model.Status
				};

				if (avatar != null && avatar.Length > 0)
				{
					string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "avatar");

					if (!Directory.Exists(uploadsFolder))
					{
						Directory.CreateDirectory(uploadsFolder);
					}

					string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + user.UserName + Path.GetExtension(avatar.FileName);
					string filePath = Path.Combine(uploadsFolder, fileName);

					using (var fileStream = new FileStream(filePath, FileMode.Create))
					{
						await avatar.CopyToAsync(fileStream);
					}

					user.Avatar = fileName;
				}

				var result = await _userManager.CreateAsync(user, model.Password);

				if (result.Succeeded)
				{
					await _userManager.AddToRoleAsync(user, "Employee");
					return Ok(new { result = "Employee account created successfully." });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}

		// PUT: api/Users/Employees/{id}
		[HttpPut("Employees/{id}")]
		public async Task<IActionResult> PutEmployee(string id, [FromForm] EmployeeDTO model, IFormFile? avatar)
		{
			if (ModelState.IsValid)
			{
				var user = await _userManager.FindByIdAsync(id);

				if (user == null)
				{
					return NotFound(new { result = "Employee not found." });
				}

				var errors = new List<string>();

				var userByPhoneNumber = await _userManager.Users.AnyAsync(u => u.PhoneNumber == model.PhoneNumber && u.Id != id);
				if (userByPhoneNumber)
				{
					errors.Add("Employee with the same PhoneNumber already exists.");
				}

				var userByEmail = await _userManager.Users.AnyAsync(u => u.Email == model.Email && u.Id != id);
				if (userByEmail)
				{
					errors.Add("Employee with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				user.Name = model.Name ?? user.Name;
				user.Email = model.Email ?? user.Email;
				user.PhoneNumber = model.PhoneNumber ?? user.PhoneNumber;
				user.Address = model.Address ?? user.Address;
				user.Salary = model.Salary;
				user.Description = model.Description ?? user.Description;
				user.Status = model.Status;

				if (!string.IsNullOrEmpty(model.Password))
				{
					var passwordHasher = new PasswordHasher<User>();
					user.PasswordHash = passwordHasher.HashPassword(user, model.Password);
				}

				if (avatar != null && avatar.Length > 0)
				{
					if (!string.IsNullOrEmpty(user.Avatar))
					{
						string existingFilePath = Path.Combine(_environment.WebRootPath, "images", "avatar", user.Avatar);
						if (System.IO.File.Exists(existingFilePath))
						{
							System.IO.File.Delete(existingFilePath);
						}
					}

					string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "avatar");

					if (!Directory.Exists(uploadsFolder))
					{
						Directory.CreateDirectory(uploadsFolder);
					}

					string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + user.UserName + Path.GetExtension(avatar.FileName);
					string filePath = Path.Combine(uploadsFolder, fileName);

					using (var fileStream = new FileStream(filePath, FileMode.Create))
					{
						await avatar.CopyToAsync(fileStream);
					}

					user.Avatar = fileName;
				}

				var result = await _userManager.UpdateAsync(user);

				if (result.Succeeded)
				{
					return Ok(new { result = "Employee account updated successfully." });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}

		// DELETE: api/Users/Employees/{id}
		[HttpDelete("Employees/{id}")]
		public async Task<IActionResult> DeleteEmployee(string id)
		{
			var user = await _userManager.FindByIdAsync(id);

			if (user == null)
			{
				return NotFound(new { result = "Employee not found." });
			}

			var result = await _userManager.DeleteAsync(user);

			if (result.Succeeded)
			{
				return NoContent();
			}

			return BadRequest(result.Errors);
		}

		// GET: api/Users/Customers/paged
		[HttpGet("Customers/paged")]
		public async Task<ActionResult> GetPagedCustomers(string? keyword = null, int currentPage = 1, int pageSize = 10)
		{
			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = await _userManager.GetUsersInRoleAsync("Customer");

			if (!string.IsNullOrEmpty(keyword))
			{
				query = query
					.Where(user => user.Name != null && user.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase))
					.ToList();
			}

			var totalItems = query.Count;
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = query
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.Select(user => new
				{
					user.Id,
					user.UserName,
					user.Name,
					user.Email,
					user.PhoneNumber,
					user.Address,
					user.Avatar,
					user.Status,
				})
				.ToList();

			var result = new
			{
				items,
				totalPages
			};

			return Ok(result);
		}

		// PUT: api/Users/Customers/{id}
		[HttpPut("Customers/{id}")]
		public async Task<IActionResult> PutCustomer(string id, [FromForm] CustomerDTO model, IFormFile? avatar)
		{
			if (ModelState.IsValid)
			{
				var user = await _userManager.FindByIdAsync(id);

				if (user == null)
				{
					return NotFound(new { result = "Customer not found." });
				}

				user.Name = model.Name ?? user.Name;
				user.Email = model.Email ?? user.Email;
				user.PhoneNumber = model.PhoneNumber ?? user.PhoneNumber;
				user.Address = model.Address ?? user.Address;
				user.Description = model.Description ?? user.Description;
				user.Status = model.Status;

				if (!string.IsNullOrEmpty(model.Password))
				{
					var passwordHasher = new PasswordHasher<User>();
					user.PasswordHash = passwordHasher.HashPassword(user, model.Password);
				}

				if (avatar != null && avatar.Length > 0)
				{
					if (!string.IsNullOrEmpty(user.Avatar))
					{
						string existingFilePath = Path.Combine(_environment.WebRootPath, "images", "avatar", user.Avatar);
						if (System.IO.File.Exists(existingFilePath))
						{
							System.IO.File.Delete(existingFilePath);
						}
					}

					string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "avatar");

					if (!Directory.Exists(uploadsFolder))
					{
						Directory.CreateDirectory(uploadsFolder);
					}

					string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + user.UserName + Path.GetExtension(avatar.FileName);
					string filePath = Path.Combine(uploadsFolder, fileName);

					using (var fileStream = new FileStream(filePath, FileMode.Create))
					{
						await avatar.CopyToAsync(fileStream);
					}

					user.Avatar = fileName;
				}

				var result = await _userManager.UpdateAsync(user);

				if (result.Succeeded)
				{
					return Ok(new { result = "Customer account updated successfully." });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}
	}
}
