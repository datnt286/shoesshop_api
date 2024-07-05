using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Azure.Core;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;
using shoesshop_api.Request;

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
				var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
				if (userId == null)
				{
					return BadRequest("User not found");
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
					.FirstOrDefaultAsync(c => c.UserId == userId);

				if (cart == null)
				{
					cart = new Cart
					{
						UserId = userId,
						CreatedDate = DateTime.Now,
						Status = 1,
						CartDetails = new List<CartDetail>()
					};
					_context.Carts.Add(cart);
				}

				var existingCartDetail = cart.CartDetails.FirstOrDefault(cd => cd.ProductId == request.ProductId);

				if (existingCartDetail != null)
				{
					existingCartDetail.Quantity += request.Quantity ?? 1;
					existingCartDetail.Amount += request.Amount ?? (request.Quantity ?? 1) * (product.Price);
				}
				else
				{
					var cartDetail = new CartDetail
					{
						ProductId = request.ProductId,
						Price = request.Price,
						Quantity = request.Quantity ?? 1,
						Amount = request.Amount ?? (request.Quantity ?? 1) * (product.Price)
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

		// POST: api/Carts/AddToCart/Model/{modelId}
		[Authorize]
		[HttpPost("AddToCart/Model/{modelId}")]
		public async Task<ActionResult> AddToCartByModelId(int modelId)
		{
			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			if (userId == null)
			{
				return BadRequest("User not found");
			}

			var product = await _context.Products
				.Where(p => p.ModelId == modelId)
				.FirstOrDefaultAsync();

			if (product == null)
			{
				return BadRequest($"No product found for Model ID '{modelId}'.");
			}

			var cart = await _context.Carts
				.Include(c => c.CartDetails)
				.FirstOrDefaultAsync(c => c.UserId == userId);

			if (cart == null)
			{
				cart = new Cart
				{
					UserId = userId,
					CreatedDate = DateTime.Now,
					Status = 1,
					CartDetails = new List<CartDetail>()
				};
				_context.Carts.Add(cart);
			}

			var existingCartDetail = cart.CartDetails.FirstOrDefault(cd => cd.ProductId == product.Id);

			if (existingCartDetail != null)
			{
				existingCartDetail.Quantity += 1;
				existingCartDetail.Amount += product.Price;
			}
			else
			{
				var cartDetail = new CartDetail
				{
					ProductId = product.Id,
					Price = product.Price,
					Quantity = 1,
					Amount = product.Price,
				};

				cart.CartDetails.Add(cartDetail);
			}

			await _context.SaveChangesAsync();
			return Ok("Product added to cart successfully.");
		}

		// GET: api/Carts/CartDetails/User
		[Authorize]
		[HttpGet("CartDetails/User")]
		public async Task<ActionResult<IEnumerable<CartDetailDTO>>> GetCartDetailsByUser()
		{
			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			if (userId == null)
			{
				return BadRequest("User not found.");
			}

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
				Price = cd.Product?.Price ?? 0,
				Quantity = cd.Quantity,
				QuantityAvailable = cd.Product?.Quantity ?? 0,
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
