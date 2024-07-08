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
	public class SuppliersController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public SuppliersController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/Suppliers
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Supplier>>> GetSuppliers()
		{
			if (_context.Suppliers == null)
			{
				return NotFound();
			}

			var suppliers = await _context.Suppliers
				.Where(supplier => supplier.Status == 1)
				.Select(supplier => new
				{
					supplier.Id,
					supplier.Name,
					supplier.PhoneNumber,
					supplier.Email,
					supplier.Address,
					supplier.Description,
				})
				.ToListAsync();

			return Ok(suppliers);
		}

		// GET: api/Suppliers/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Supplier>>> GetPagedSuppliers(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Suppliers == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.Suppliers.Where(supplier => supplier.Status == 1).CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.Suppliers
				.Where(supplier => supplier.Status == 1)
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

		// GET: api/Suppliers/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Supplier>> GetSupplier(int id)
		{
			if (_context.Suppliers == null)
			{
				return NotFound();
			}
			var supplier = await _context.Suppliers.FirstOrDefaultAsync(s => s.Id == id && s.Status == 1);

			if (supplier == null)
			{
				return NotFound();
			}

			return supplier;
		}

		// PUT: api/Suppliers/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutSupplier(int id, Supplier supplier)
		{
			if (id != supplier.Id)
			{
				return BadRequest();
			}

			var errors = new List<string>();

			if (await _context.Suppliers.AnyAsync(s => s.Name == supplier.Name && s.Id != id))
			{
				errors.Add("Supplier with the same Name already exists.");
			}

			if (await _context.Suppliers.AnyAsync(s => s.PhoneNumber == supplier.PhoneNumber && s.Id != id))
			{
				errors.Add("Supplier with the same PhoneNumber already exists.");
			}

			if (await _context.Suppliers.AnyAsync(s => s.Email == supplier.Email && s.Id != id))
			{
				errors.Add("Supplier with the same Email already exists.");
			}

			if (errors.Count > 0)
			{
				return Conflict(new { messages = errors });
			}

			_context.Entry(supplier).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SupplierExists(id))
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

		// POST: api/Suppliers
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Supplier>> PostSupplier(Supplier supplier)
		{
			if (_context.Suppliers == null)
			{
				return Problem("Entity set 'ShoesshopContext.Suppliers'  is null.");
			}

			var errors = new List<string>();

			if (await _context.Suppliers.AnyAsync(s => s.Name == supplier.Name))
			{
				errors.Add("Supplier with the same Name already exists.");
			}

			if (await _context.Suppliers.AnyAsync(s => s.PhoneNumber == supplier.PhoneNumber))
			{
				errors.Add("Supplier with the same PhoneNumber already exists.");
			}

			if (await _context.Suppliers.AnyAsync(s => s.Email == supplier.Email))
			{
				errors.Add("Supplier with the same Email already exists.");
			}

			if (errors.Count > 0)
			{
				return Conflict(new { messages = errors });
			}

			_context.Suppliers.Add(supplier);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetSupplier", new { id = supplier.Id }, supplier);
		}

		// PUT: api/Suppliers/SoftDelete/{id}
		[HttpPut("SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteSupplier(int id)
		{
			var supplier = await _context.Suppliers.FindAsync(id);
			if (supplier == null)
			{
				return NotFound();
			}

			supplier.Status = 0;
			_context.Entry(supplier).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SupplierExists(id))
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

		// DELETE: api/Suppliers/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteSupplier(int id)
		{
			if (_context.Suppliers == null)
			{
				return NotFound();
			}
			var supplier = await _context.Suppliers.FindAsync(id);
			if (supplier == null)
			{
				return NotFound();
			}

			_context.Suppliers.Remove(supplier);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool SupplierExists(int id)
		{
			return (_context.Suppliers?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
