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
	public class BrandsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public BrandsController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/Brands
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Brand>>> GetBrands()
		{
			if (_context.Brands == null)
			{
				return NotFound();
			}

			var brands = await _context.Brands
				.Where(brand => brand.Status == 1)
				.Select(brand => new
				{
					brand.Id,
					brand.Name,
				})
				.ToListAsync();

			return Ok(brands);
		}

		// GET: api/Brands/WithModelCount
		[HttpGet("WithModelCount")]
		public async Task<ActionResult<IEnumerable<Brand>>> GetBrandsWithModelCount()
		{
			if (_context.Brands == null)
			{
				return NotFound();
			}

			var brands = await _context.Brands
				.Where(brand => brand.Status == 1)
				.Select(brand => new
				{
					brand.Id,
					brand.Name,
					ModelCount = brand.Models.Count
				})
				.ToListAsync();

			return Ok(brands);
		}

		// GET: api/Brands/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Brand>>> GetPagedBrands(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Brands == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.Brands.Where(brand => brand.Status == 1).CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.Brands
				.Where(brand => brand.Status == 1)
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

		// GET: api/Brands/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Brand>> GetBrand(int id)
		{
			if (_context.Brands == null)
			{
				return NotFound();
			}
			var brand = await _context.Brands.FirstOrDefaultAsync(b => b.Id == id && b.Status == 1);

			if (brand == null)
			{
				return NotFound();
			}

			return brand;
		}

		// PUT: api/Brands/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutBrand(int id, Brand brand)
		{
			if (id != brand.Id)
			{
				return BadRequest();
			}

			if (await _context.Brands.AnyAsync(b => b.Name == brand.Name && b.Id != id))
			{
				return Conflict(new { message = "Brand name already exists." });
			}

			_context.Entry(brand).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!BrandExists(id))
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

		// POST: api/Brands
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Brand>> PostBrand(Brand brand)
		{
			if (_context.Brands == null)
			{
				return Problem("Entity set 'ShoesshopContext.Brands'  is null.");
			}

			if (await _context.Brands.AnyAsync(b => b.Name == brand.Name))
			{
				return Conflict(new { message = "Brand name already exists." });
			}

			_context.Brands.Add(brand);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetBrand", new { id = brand.Id }, brand);
		}

		// PUT: api/Brands/SoftDelete/{id}
		[HttpPut("SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteBrand(int id)
		{
			var brand = await _context.Brands.FindAsync(id);
			if (brand == null)
			{
				return NotFound();
			}

			brand.Status = 0;
			_context.Entry(brand).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!BrandExists(id))
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

		// DELETE: api/Brands/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteBrand(int id)
		{
			if (_context.Brands == null)
			{
				return NotFound();
			}
			var brand = await _context.Brands.FindAsync(id);
			if (brand == null)
			{
				return NotFound();
			}

			_context.Brands.Remove(brand);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool BrandExists(int id)
		{
			return (_context.Brands?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
