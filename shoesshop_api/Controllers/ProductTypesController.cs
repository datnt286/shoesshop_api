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
	public class ProductTypesController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public ProductTypesController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/ProductTypes
		[HttpGet]
		public async Task<ActionResult<IEnumerable<ProductType>>> GetProductTypes()
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}

			var productTypes = await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId != null)
				.Where(pt => pt.Status == 1)
				.Select(productType => new
				{
					productType.Id,
					productType.Name,
				})
				.ToListAsync();

			return Ok(productTypes);
		}

		// GET: api/ProductTypes/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Brand>>> GetPagedProductTypes(int currentPage = 1, int pageSize = 10)
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId != null)
				.Where(pt => pt.Status == 1)
				.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId != null)
				.Where(pt => pt.Status == 1)
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

		// GET: api/ProductTypes/ParentProductTypes
		[HttpGet("ParentProductTypes")]
		public async Task<ActionResult<IEnumerable<ProductType>>> GetParentProductTypes()
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}
			return await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId == null)
				.Where(pt => pt.Status == 1)
				.ToListAsync();
		}

		// GET: api/ProductTypes/ChildProductTypes
		[HttpGet("ChildProductTypes")]
		public async Task<ActionResult<IEnumerable<ProductType>>> GetChildProductTypes()
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}
			return await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId != null)
				.Where(pt => pt.Status == 1)
				.ToListAsync();
		}

		// GET: api/ProductTypes/5
		[HttpGet("{id}")]
		public async Task<ActionResult<ProductType>> GetProductType(int id)
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}
			var productType = await _context.ProductTypes.FirstOrDefaultAsync(pt => pt.Id == id && pt.Status == 1);

			if (productType == null)
			{
				return NotFound();
			}

			return productType;
		}

		// PUT: api/ProductTypes/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutProductType(int id, ProductType productType)
		{
			if (id != productType.Id)
			{
				return BadRequest();
			}

			if (await _context.ProductTypes.AnyAsync(pt => pt.Name == productType.Name && pt.Id != id))
			{
				return Conflict(new { message = "ProductType name already exists." });
			}

			_context.Entry(productType).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ProductTypeExists(id))
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

		// POST: api/ProductTypes
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<ProductType>> PostProductType(ProductType productType)
		{
			if (_context.ProductTypes == null)
			{
				return Problem("Entity set 'ShoesshopContext.ProductTypes'  is null.");
			}

			if (await _context.ProductTypes.AnyAsync(pt => pt.Name == productType.Name))
			{
				return Conflict(new { message = "ProductType name already exists." });
			}

			_context.ProductTypes.Add(productType);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetProductType", new { id = productType.Id }, productType);
		}

		// PUT: api/ProductTypes/SoftDelete/{id}
		[HttpPut("SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteProductType(int id)
		{
			var productType = await _context.ProductTypes.FindAsync(id);
			if (productType == null)
			{
				return NotFound();
			}

			productType.Status = 0;
			_context.Entry(productType).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ProductTypeExists(id))
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

		// DELETE: api/ProductTypes/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteProductType(int id)
		{
			if (_context.ProductTypes == null)
			{
				return NotFound();
			}
			var productType = await _context.ProductTypes.FindAsync(id);
			if (productType == null)
			{
				return NotFound();
			}

			_context.ProductTypes.Remove(productType);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool ProductTypeExists(int id)
		{
			return (_context.ProductTypes?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
