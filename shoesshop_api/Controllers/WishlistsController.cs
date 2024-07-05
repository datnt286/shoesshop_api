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
using shoesshop_api.DTOs;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class WishlistsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public WishlistsController(ShoesshopContext context)
		{
			_context = context;
		}

		// POST: api/Wishlists/AddToWishlist/{productId}
		[Authorize]
		[HttpPost("AddToWishlist/{productId}")]
		public async Task<ActionResult> AddToWishlist(int productId)
		{
			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			if (userId == null)
			{
				return BadRequest("User not found");
			}

			var product = await _context.Products.FindAsync(productId);
			if (product == null)
			{
				return BadRequest($"Product with ID '{productId}' not found.");
			}

			var wishlist = await _context.Wishlists
				.Include(w => w.WishlistDetails)
				.FirstOrDefaultAsync(w => w.UserId == userId);

			if (wishlist == null)
			{
				wishlist = new Wishlist
				{
					UserId = userId,
					WishlistDetails = new List<WishlistDetail>()
				};
				_context.Wishlists.Add(wishlist);
			}

			var existingCartDetail = wishlist.WishlistDetails.FirstOrDefault(wd => wd.ProductId == productId);

			if (existingCartDetail == null)
			{
				var wishlistDetail = new WishlistDetail
				{
					ProductId = productId,
				};

				wishlist.WishlistDetails.Add(wishlistDetail);
			}

			await _context.SaveChangesAsync();
			return Ok("Product added to wishlist successfully.");
		}

		// POST: api/Wishlists/AddToWishlist/Model/{modelId}
		[Authorize]
		[HttpPost("AddToWishlist/Model/{modelId}")]
		public async Task<ActionResult> AddToWishlistByModelId(int modelId)
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

			var wishlist = await _context.Wishlists
				.Include(w => w.WishlistDetails)
				.FirstOrDefaultAsync(w => w.UserId == userId);

			if (wishlist == null)
			{
				wishlist = new Wishlist
				{
					UserId = userId,
					WishlistDetails = new List<WishlistDetail>()
				};
				_context.Wishlists.Add(wishlist);
			}

			var existingWishlistDetail = wishlist.WishlistDetails.FirstOrDefault(wd => wd.ProductId == product.Id);

			if (existingWishlistDetail == null)
			{
				var wishlistDetail = new WishlistDetail
				{
					ProductId = product.Id,
				};

				wishlist.WishlistDetails.Add(wishlistDetail);
			}

			await _context.SaveChangesAsync();
			return Ok("Product added to wishlist successfully.");
		}

		// GET: api/Wishlists/WishlistDetails/User
		[Authorize]
		[HttpGet("WishlistDetails/User")]
		public async Task<ActionResult<IEnumerable<WishlistDetailDTO>>> GetWishlistDetailsByUser(int currentPage = 1, int pageSize = 10)
		{
			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			if (userId == null)
			{
				return BadRequest("User not found.");
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var wishlist = await _context.Wishlists
				.Include(w => w.WishlistDetails)
					.ThenInclude(wd => wd.Product)
				.FirstOrDefaultAsync(w => w.UserId == userId);

			if (wishlist == null)
			{
				return NotFound($"No active wishlist found for user with ID '{userId}'.");
			}

			var totalItems = wishlist.WishlistDetails.Count;
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var wishlistDetails = wishlist.WishlistDetails
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.Select(wd => new WishlistDetailDTO
				{
					Id = wd.Id,
					ModelId = wd.Product?.ModelId ?? 0,
					ProductId = wd.ProductId,
					ProductName = wd.Product?.Name,
					Price = wd.Product?.Price ?? 0,
					Image = wd.Product?.Image
				})
				.ToList();

			var result = new
			{
				items = wishlistDetails,
				totalPages
			};

			return Ok(result);
		}

		// DELETE: api/Wishlists/DeleteWishlistDetail/{id}
		[Authorize]
		[HttpDelete("DeleteWishlistDetail/{id}")]
		public async Task<IActionResult> DeleteWishlistDetail(int id)
		{
			var wishlistDetail = await _context.WishlistDetails.FindAsync(id);
			if (wishlistDetail == null)
			{
				return NotFound();
			}

			_context.WishlistDetails.Remove(wishlistDetail);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		// DELETE: api/Wishlists/DeleteWishlistDetailByProductId/{productId}
		[Authorize]
		[HttpDelete("DeleteWishlistDetailByProductId/{productId}")]
		public async Task<IActionResult> DeleteWishlistDetailByProductId(int productId)
		{
			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			if (userId == null)
			{
				return BadRequest("User not found");
			}

			var wishlistDetail = await _context.WishlistDetails
				.Include(wd => wd.Wishlist)
				.FirstOrDefaultAsync(wd => wd.ProductId == productId && wd.Wishlist.UserId == userId);

			if (wishlistDetail == null)
			{
				return NotFound();
			}

			_context.WishlistDetails.Remove(wishlistDetail);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		// DELETE: api/Wishlists/DeleteWishlistDetail/Model/{modelId}
		[Authorize]
		[HttpDelete("DeleteWishlistDetail/Model/{modelId}")]
		public async Task<IActionResult> DeleteWishlistDetailByModelId(int modelId)
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
				return NotFound($"No product found for Model ID '{modelId}'.");
			}

			var wishlistDetail = await _context.WishlistDetails
				.Include(wd => wd.Wishlist)
				.FirstOrDefaultAsync(wd => wd.ProductId == product.Id && wd.Wishlist.UserId == userId);

			if (wishlistDetail == null)
			{
				return NotFound("Product not found in wishlist.");
			}

			_context.WishlistDetails.Remove(wishlistDetail);
			await _context.SaveChangesAsync();

			return NoContent();
		}
	}
}
