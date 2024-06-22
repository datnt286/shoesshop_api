using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.DTOs;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class CartsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public CartsController(ShoesshopContext context)
		{
			_context = context;
		}

		// POST: api/Carts/AddToCart
		[Authorize]
		[HttpPost("AddToCart")]
		public async Task<ActionResult> AddToCart([FromBody] AddToCartRequest request)
		{
			try
			{
				var user = await _context.Users.FindAsync(request.UserId);
				if (user == null)
				{
					return BadRequest($"User with ID '{request.UserId}' not found.");
				}

				var product = await _context.Products.FindAsync(request.ProductId);
				if (product == null)
				{
					return BadRequest($"Product with ID '{request.ProductId}' not found.");
				}

				var cart = await _context.Carts
					.Include(c => c.CartDetails)
					.FirstOrDefaultAsync(c => c.UserId == request.UserId);

				if (cart == null)
				{
					cart = new Cart
					{
						UserId = request.UserId,
						CreatedDate = DateTime.Now,
						Status = 1,
						CartDetails = new List<CartDetail>()
					};
					_context.Carts.Add(cart);
				}

				var existingCartDetail = cart.CartDetails.FirstOrDefault(cd => cd.ProductId == request.ProductId);

				if (existingCartDetail != null)
				{
					existingCartDetail.Quantity += request.Quantity;
					existingCartDetail.Amount += request.Amount;
				}
				else
				{
					var cartDetail = new CartDetail
					{
						ProductId = request.ProductId,
						Price = request.Price,
						Quantity = request.Quantity,
						Amount = request.Amount
					};

					cart.CartDetails.Add(cartDetail);
				}

				await _context.SaveChangesAsync();

				return Ok("Product added to cart successfully.");
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"An error occurred: {ex.Message}");
			}
		}

		// GET: api/Carts/CartDetails/User/{userId}
		[Authorize]
		[HttpGet("CartDetails/User/{userId}")]
		public async Task<ActionResult<IEnumerable<CartDetailDTO>>> GetCartDetailsByUser(string userId)
		{
			var cart = await _context.Carts
				.Include(c => c.CartDetails)
					.ThenInclude(cd => cd.Product)
				.FirstOrDefaultAsync(c => c.UserId == userId);

			if (cart == null)
			{
				return NotFound($"No active cart found for user with ID '{userId}'.");
			}

			var cartDetails = cart.CartDetails.Select(cd => new CartDetailDTO
			{
				Id = cd.Id,
				ModelId = cd.Product?.ModelId ?? 0,
				ProductId = cd.ProductId,
				ProductName = cd.Product?.Name,
				ProductImage = cd.Product?.Image,
				Price = cd.Price,
				Quantity = cd.Quantity,
				Amount = cd.Amount
			}).ToList();

			return Ok(cartDetails);
		}

		// PUT: api/UpdateCartDetailQuantity/{id}
		[Authorize]
		[HttpPut("UpdateCartDetailQuantity/{id}")]
		public async Task<IActionResult> UpdateCartDetailQuantity(int id, [FromBody] UpdateCartDetailQuantityRequest request)
		{
			var cartDetail = await _context.CartDetails.FindAsync(id);
			if (cartDetail == null)
			{
				return NotFound();
			}

			cartDetail.Quantity = request.Quantity;
			cartDetail.Amount = request.Amount;

			await _context.SaveChangesAsync();

			return NoContent();
		}

		// DELETE: api/Carts/DeleteCartDetailById/{id}
		[Authorize]
		[HttpDelete("DeleteCartDetailById/{id}")]
		public async Task<IActionResult> DeleteCartDetailById(int id)
		{
			var cartDetail = await _context.CartDetails.FindAsync(id);
			if (cartDetail == null)
			{
				return NotFound();
			}

			_context.CartDetails.Remove(cartDetail);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		// GET: api/Carts
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Cart>>> GetCarts()
		{
			if (_context.Carts == null)
			{
				return NotFound();
			}
			return await _context.Carts.ToListAsync();
		}

		// GET: api/Carts/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Cart>> GetCart(int id)
		{
			if (_context.Carts == null)
			{
				return NotFound();
			}
			var cart = await _context.Carts.FindAsync(id);

			if (cart == null)
			{
				return NotFound();
			}

			return cart;
		}

		// PUT: api/Carts/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutCart(int id, Cart cart)
		{
			if (id != cart.Id)
			{
				return BadRequest();
			}

			_context.Entry(cart).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!CartExists(id))
				{
					return NotFound();
				}
				else
				{
					throw;
				}
			}

			return NoContent();
		}

		// POST: api/Carts
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Cart>> PostCart(Cart cart)
		{
			if (_context.Carts == null)
			{
				return Problem("Entity set 'ShoesshopContext.Carts'  is null.");
			}
			_context.Carts.Add(cart);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetCart", new { id = cart.Id }, cart);
		}

		// DELETE: api/Carts/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteCart(int id)
		{
			if (_context.Carts == null)
			{
				return NotFound();
			}
			var cart = await _context.Carts.FindAsync(id);
			if (cart == null)
			{
				return NotFound();
			}

			_context.Carts.Remove(cart);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool CartExists(int id)
		{
			return (_context.Carts?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
