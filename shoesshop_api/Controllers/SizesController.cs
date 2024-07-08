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
	public class SizesController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public SizesController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/Sizes
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Size>>> GetSizes()
		{
			if (_context.Sizes == null)
			{
				return NotFound();
			}

			var sizes = await _context.Sizes
				.Where(size => size.Status == 1)
				.Select(size => new
				{
					size.Id,
					size.Name,
				})
				.ToListAsync();

			return Ok(sizes);
		}

		// GET: api/Sizes/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Size>>> GetPagedSizes(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Sizes == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.Sizes.Where(size => size.Status == 1).CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.Sizes
				.Where(size => size.Status == 1)
				.OrderBy(size => size.Name)
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

		// GET: api/Sizes/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Size>> GetSize(int id)
		{
			if (_context.Sizes == null)
			{
				return NotFound();
			}
			var size = await _context.Sizes.FirstOrDefaultAsync(s => s.Id == id && s.Status == 1);

			if (size == null)
			{
				return NotFound();
			}

			return size;
		}

		// PUT: api/Sizes/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutSize(int id, Size size)
		{
			if (id != size.Id)
			{
				return BadRequest();
			}

			if (await _context.Sizes.AnyAsync(s => s.Name == size.Name && s.Id != id))
			{
				return Conflict(new { message = "Size name already exists." });
			}

			_context.Entry(size).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SizeExists(id))
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

		// POST: api/Sizes
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Size>> PostSize(Size size)
		{
			if (_context.Sizes == null)
			{
				return Problem("Entity set 'ShoesshopContext.Sizes'  is null.");
			}

			if (await _context.Sizes.AnyAsync(s => s.Name == size.Name))
			{
				return Conflict(new { message = "Size name already exists." });
			}

			_context.Sizes.Add(size);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetSize", new { id = size.Id }, size);
		}

		// PUT: api/Sizes/SoftDelete/{id}
		[HttpPut("SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteSize(int id)
		{
			var size = await _context.Sizes.FindAsync(id);
			if (size == null)
			{
				return NotFound();
			}

			size.Status = 0;
			_context.Entry(size).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SizeExists(id))
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

		// DELETE: api/Sizes/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteSize(int id)
		{
			if (_context.Sizes == null)
			{
				return NotFound();
			}
			var size = await _context.Sizes.FindAsync(id);
			if (size == null)
			{
				return NotFound();
			}

			_context.Sizes.Remove(size);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool SizeExists(int id)
		{
			return (_context.Sizes?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
