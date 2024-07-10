using System;
using System.Collections.Generic;
using System.Data;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.Google;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using shoesshop_api.Data;
using shoesshop_api.DTOs;
using shoesshop_api.Models;
using shoesshop_api.Request;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class UsersController : ControllerBase
	{
		private readonly ShoesshopContext _context;
		private readonly UserManager<User> _userManager;
		private readonly SignInManager<User> _signInManager;
		private readonly RoleManager<IdentityRole> _roleManager;
		private readonly IConfiguration _configuration;
		private readonly IWebHostEnvironment _environment;

		public UsersController(UserManager<User> userManager, SignInManager<User> signInManager, RoleManager<IdentityRole> roleManager, IConfiguration configuration, IWebHostEnvironment environment, ShoesshopContext context)
		{
			_userManager = userManager;
			_signInManager = signInManager;
			_roleManager = roleManager;
			_configuration = configuration;
			_environment = environment;
			_context = context;
		}

		[AllowAnonymous]
		[HttpGet("google-login")]
		//[EnableCors("AllowAllOrigins")]
		public IActionResult GoogleLogin()
		{
			var authenticationProperties = new AuthenticationProperties
			{
				RedirectUri = Url.Action(nameof(GoogleLoginCallback)),
			};
			return Challenge(authenticationProperties, GoogleDefaults.AuthenticationScheme);
		}

		[AllowAnonymous]
		[HttpGet("google-login-callback")]
		public async Task<IActionResult> GoogleLoginCallback()
		{
			// Xử lý kết quả xác thực từ Google ở đây.
			// Lưu trạng thái đăng nhập và trả về mã thông báo (token) nếu cần.
			Response.Headers.Add("Access-Control-Allow-Origin", "http://localhost:3000");
			return Ok(new { message = "Xác thực thành công" });
		}

		[HttpGet("google-logout")]
		public async Task<IActionResult> Logout()
		{
			// Dang Xuat
			if (HttpContext.Request.Method == HttpMethods.Options)
			{
				Response.Headers.Add("Access-Control-Allow-Origin", "http://localhost:3000");
				return Ok();
			}
			await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

			return Ok("Đã đăng xuất.");
		}

		// POST: api/Users/Customer/register
		[HttpPost("Customer/register")]
		public async Task<IActionResult> RegisterCustomer([FromBody] RegisterRequest request)
		{
			if (ModelState.IsValid)
			{
				var errors = new List<string>();

				var userByUserName = await _userManager.FindByNameAsync(request.UserName);
				if (userByUserName != null)
				{
					errors.Add("DuplicateUserName");
				}

				if (await _userManager.Users.AnyAsync(u => u.Email == request.Email))
				{
					errors.Add("Employee with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				if (!await _roleManager.RoleExistsAsync("Customer"))
				{
					var roleResult = await _roleManager.CreateAsync(new IdentityRole("Customer"));
					if (!roleResult.Succeeded)
					{
						return StatusCode(StatusCodes.Status500InternalServerError, new { result = "Error creating role!" });
					}
				}

				var user = new User
				{
					UserName = request.UserName,
					Email = request.Email,
					Status = 1
				};

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

					if (user == null)
					{
						return BadRequest("User not found.");
					}

					if (user.Status == 0)
					{
						return Unauthorized("Account is not active.");
					}

					if (await _userManager.IsInRoleAsync(user, "Manager") ||
						await _userManager.IsInRoleAsync(user, "SalesStaff") ||
						await _userManager.IsInRoleAsync(user, "WarehouseStaff") ||
						await _userManager.IsInRoleAsync(user, "Shipper"))
					{
						var token = await GenerateJwtToken(user);
						return Ok(new { token });
					}
					return Unauthorized("User is not an employee.");
				}
				return Unauthorized("Invalid username or password.");
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

				var errors = new List<string>();

				if (await _userManager.Users.AnyAsync(u => u.PhoneNumber == user.PhoneNumber && u.Id != user.Id))
				{
					errors.Add("User with the same PhoneNumber already exists.");
				}

				if (await _userManager.Users.AnyAsync(u => u.Email == user.Email && u.Id != user.Id))
				{
					errors.Add("User with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
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
				new Claim("avatar", user.Avatar ?? string.Empty),
				new Claim("role", user.Role ?? string.Empty),
			};

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

			var query = _userManager.Users.Where(u => u.Role == "Manager" || u.Role == "SalesStaff" || u.Role == "WarehouseStaff" || u.Role == "Shipper");

			if (!string.IsNullOrEmpty(keyword))
			{
				query = query.Where(user => user.Name != null && user.Name.Contains(keyword, StringComparison.OrdinalIgnoreCase));
			}

			var totalItems = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await query
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
					user.Role,
					user.Salary,
					user.Status,
					user.Description,
				})
				.ToListAsync();

			var result = new
			{
				items,
				totalPages
			};

			return Ok(result);
		}

		// GET: api/Users/Employees
		[HttpGet("Employees")]
		public async Task<ActionResult> GetEmployees()
		{
			if (_context.Users == null)
			{
				return NotFound();
			}

			var users = await _userManager.Users
				.Where(u => u.Role == "Manager" || u.Role == "SalesStaff" || u.Role == "WarehouseStaff" || u.Role == "Shipper")
				.Select(user => new
				{
					user.Id,
					user.UserName,
					user.Name,
					user.Email,
					user.PhoneNumber,
					user.Address,
					user.Avatar,
					user.Role,
					user.Salary,
					user.Description,
					user.Status,
				})
				.ToListAsync();

			return Ok(users);
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

				if (await _userManager.Users.AnyAsync(u => u.PhoneNumber == model.PhoneNumber))
				{
					errors.Add("Employee with the same PhoneNumber already exists.");
				}

				if (await _userManager.Users.AnyAsync(u => u.Email == model.Email))
				{
					errors.Add("Employee with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				if (!await _roleManager.RoleExistsAsync(model.Role))
				{
					var roleResult = await _roleManager.CreateAsync(new IdentityRole(model.Role));
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
					Role = model.Role,
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
					await _userManager.AddToRoleAsync(user, model.Role);
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

				if (await _userManager.Users.AnyAsync(u => u.PhoneNumber == model.PhoneNumber && u.Id != id))
				{
					errors.Add("Employee with the same PhoneNumber already exists.");
				}

				if (await _userManager.Users.AnyAsync(u => u.Email == model.Email && u.Id != id))
				{
					errors.Add("Employee with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				if (!await _roleManager.RoleExistsAsync(model.Role))
				{
					var roleResult = await _roleManager.CreateAsync(new IdentityRole(model.Role));
					if (!roleResult.Succeeded)
					{
						return StatusCode(StatusCodes.Status500InternalServerError, new { result = "Error creating role!" });
					}
				}

				var currentRoles = await _userManager.GetRolesAsync(user);
				var removeRolesResult = await _userManager.RemoveFromRolesAsync(user, currentRoles);

				if (!removeRolesResult.Succeeded)
				{
					return StatusCode(StatusCodes.Status500InternalServerError, new { result = "Error removing current roles!" });
				}

				user.Name = model.Name ?? user.Name;
				user.Email = model.Email ?? user.Email;
				user.PhoneNumber = model.PhoneNumber ?? user.PhoneNumber;
				user.Address = model.Address ?? user.Address;
				user.Role = model.Role;
				user.Salary = model.Salary;
				user.Description = model.Description ?? user.Description;
				user.Status = model.Status;

				if (!string.IsNullOrEmpty(model.Password) && model.Password != "undefined")
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
					await _userManager.AddToRoleAsync(user, model.Role);
					return Ok(new { result = "Employee account updated successfully." });
				}
				return BadRequest(result.Errors);
			}
			return BadRequest(ModelState);
		}

		// PUT: api/Users/Employees/SoftDelete/{id}
		[HttpPut("Employees/SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteEmployee(string id)
		{
			var user = await _userManager.FindByIdAsync(id);
			if (user == null)
			{
				return NotFound();
			}

			user.Status = 0;
			_context.Entry(user).State = EntityState.Modified;
			await _userManager.UpdateAsync(user);

			return NoContent();
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

		// GET: api/Users/Customers
		[HttpGet("Customers")]
		public async Task<ActionResult> GetCustomers()
		{
			if (_context.Users == null)
			{
				return NotFound();
			}

			var users = await _userManager.Users
				.Where(u => u.Role == null)
				.Select(user => new
				{
					user.Id,
					user.UserName,
					user.Name,
					user.Email,
					user.PhoneNumber,
					user.Address,
					user.Avatar,
					user.Description,
					user.Status,
				})
				.ToListAsync();

			return Ok(users);
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

				var errors = new List<string>();

				if (await _userManager.Users.AnyAsync(u => u.PhoneNumber == model.PhoneNumber && u.Id != id))
				{
					errors.Add("Customer with the same PhoneNumber already exists.");
				}

				if (await _userManager.Users.AnyAsync(u => u.Email == model.Email && u.Id != id))
				{
					errors.Add("Customer with the same Email already exists.");
				}

				if (errors.Count > 0)
				{
					return Conflict(new { messages = errors });
				}

				user.Name = model.Name ?? user.Name;
				user.Email = model.Email ?? user.Email;
				user.PhoneNumber = model.PhoneNumber ?? user.PhoneNumber;
				user.Address = model.Address ?? user.Address;
				user.Description = model.Description ?? user.Description;
				user.Status = model.Status;

				if (!string.IsNullOrEmpty(model.Password) && model.Password != "undefined")
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

		// PUT: api/Users/CountCartAndWishlist
		[HttpGet("CountCartAndWishlist")]
		public async Task<IActionResult> GetCountCartAndWishlist()
		{
			var user = await _userManager.GetUserAsync(HttpContext.User);
			if (user == null)
			{
				return NotFound("User not found");
			}

			var cartDetailsCount = _context.Carts
				.Where(c => c.UserId == user.Id)
				.SelectMany(c => c.CartDetails)
				.Count();

			var wishlistDetailsCount = _context.Wishlists
				.Where(w => w.UserId == user.Id)
				.SelectMany(w => w.WishlistDetails)
				.Count();

			return Ok(new { cartDetailsCount, wishlistDetailsCount });
		}
	}
}
