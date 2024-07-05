using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ColorsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public ColorsController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/Colors
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Color>>> GetColors()
		{
			if (_context.Colors == null)
			{
				return NotFound();
			}

			var colors = await _context.Colors
				.Select(color => new
				{
					color.Id,
					color.Name,
				})
				.ToListAsync();

			return Ok(colors);
		}

		// GET: api/Colors/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Color>>> GetPagedColors(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Colors == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.Colors.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.Colors
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.ToListAsync();

			var result = new
			{
				items,
				totalPages
			};

			return Ok(result);
		}

		// GET: api/Colors/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Color>> GetColor(int id)
		{
			if (_context.Colors == null)
			{
				return NotFound();
			}
			var color = await _context.Colors.FindAsync(id);

			if (color == null)
			{
				return NotFound();
			}

			return color;
		}

		// PUT: api/Colors/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutColor(int id, Color color)
		{
			if (id != color.Id)
			{
				return BadRequest();
			}

			if (await _context.Colors.AnyAsync(c => c.Name == color.Name && c.Id != id))
			{
				return Conflict(new { message = "Color name already exists." });
			}

			_context.Entry(color).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ColorExists(id))
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

		// POST: api/Colors
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Color>> PostColor(Color color)
		{
			if (_context.Colors == null)
			{
				return Problem("Entity set 'ShoesshopContext.Colors'  is null.");
			}

			if (await _context.Colors.AnyAsync(c => c.Name == color.Name))
			{
				return Conflict(new { message = "Color name already exists." });
			}

			_context.Colors.Add(color);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetColor", new { id = color.Id }, color);
		}

		// DELETE: api/Colors/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteColor(int id)
		{
			if (_context.Colors == null)
			{
				return NotFound();
			}
			var color = await _context.Colors.FindAsync(id);
			if (color == null)
			{
				return NotFound();
			}

			_context.Colors.Remove(color);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool ColorExists(int id)
		{
			return (_context.Colors?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
