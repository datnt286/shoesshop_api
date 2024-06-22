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

		// GET: api/Wishlists/GetWishlistDetails/{userId}
		[Authorize]
		[HttpGet("GetWishlistDetails/{userId}")]
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

		// DELETE: api/Wishlists/DeleteWishlistDetailById/{id}
		[Authorize]
		[HttpDelete("DeleteWishlistDetailById/{id}")]
		public async Task<IActionResult> DeleteWishlistDetailById(int id)
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

		// GET: api/Wishlists
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Wishlist>>> GetWishlists()
		{
			if (_context.Wishlists == null)
			{
				return NotFound();
			}
			return await _context.Wishlists.ToListAsync();
		}

		// GET: api/Wishlists/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Wishlist>> GetWishlist(int id)
		{
			if (_context.Wishlists == null)
			{
				return NotFound();
			}
			var wishlist = await _context.Wishlists.FindAsync(id);

			if (wishlist == null)
			{
				return NotFound();
			}

			return wishlist;
		}

		// PUT: api/Wishlists/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutWishlist(int id, Wishlist wishlist)
		{
			if (id != wishlist.Id)
			{
				return BadRequest();
			}

			_context.Entry(wishlist).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!WishlistExists(id))
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

		// POST: api/Wishlists
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Wishlist>> PostWishlist(Wishlist wishlist)
		{
			if (_context.Wishlists == null)
			{
				return Problem("Entity set 'ShoesshopContext.Wishlists'  is null.");
			}
			_context.Wishlists.Add(wishlist);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetWishlist", new { id = wishlist.Id }, wishlist);
		}

		// DELETE: api/Wishlists/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteWishlist(int id)
		{
			if (_context.Wishlists == null)
			{
				return NotFound();
			}
			var wishlist = await _context.Wishlists.FindAsync(id);
			if (wishlist == null)
			{
				return NotFound();
			}

			_context.Wishlists.Remove(wishlist);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool WishlistExists(int id)
		{
			return (_context.Wishlists?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
