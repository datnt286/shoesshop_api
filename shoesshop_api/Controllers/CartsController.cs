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

				if (product.Quantity < request.Quantity)
				{
					return BadRequest("Insufficient product quantity.");
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

		// DELETE: api/Carts/DeleteCartDetail/{id}
		[Authorize]
		[HttpDelete("DeleteCartDetail/{id}")]
		public async Task<IActionResult> DeleteCartDetail(int id)
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
	}
}
