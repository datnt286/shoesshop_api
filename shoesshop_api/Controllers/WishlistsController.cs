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
	public class WishlistsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public WishlistsController(ShoesshopContext context)
		{
			_context = context;
		}

		// POST: api/Wishlists/AddToWishlist
		[Authorize]
		[HttpPost("AddToWishlist")]
		public async Task<ActionResult> AddToWishlist([FromBody] AddToWishlistRequest request)
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

				var wishlist = await _context.Wishlists
					.Include(w => w.WishlistDetails)
					.FirstOrDefaultAsync(w => w.UserId == request.UserId);

				if (wishlist == null)
				{
					wishlist = new Wishlist
					{
						UserId = request.UserId,
						WishlistDetails = new List<WishlistDetail>()
					};
					_context.Wishlists.Add(wishlist);
				}

				var existingCartDetail = wishlist.WishlistDetails.FirstOrDefault(wd => wd.ProductId == request.ProductId);

				if (existingCartDetail == null)
				{
					var wishlistDetail = new WishlistDetail
					{
						ProductId = request.ProductId,
					};

					wishlist.WishlistDetails.Add(wishlistDetail);
				}

				await _context.SaveChangesAsync();

				return Ok("Product added to wishlist successfully.");
			}
			catch (Exception ex)
			{
				return StatusCode(500, $"An error occurred: {ex.Message}");
			}
		}

		// GET: api/Wishlists/WishlistDetails/User/{userId}
		[Authorize]
		[HttpGet("WishlistDetails/User/{userId}")]
		public async Task<ActionResult<IEnumerable<WishlistDetailDTO>>> GetWishlistDetails(string userId, int currentPage = 1, int pageSize = 10)
		{
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
	}
}
