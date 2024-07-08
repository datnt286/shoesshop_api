using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;
using shoesshop_api.Services;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ProductsController : ControllerBase
	{
		private readonly ShoesshopContext _context;
		private readonly IWebHostEnvironment _environment;
		private readonly SlugGenerator _slugGenerator;

		public ProductsController(ShoesshopContext context, IWebHostEnvironment environment, SlugGenerator slugGenerator)
		{
			_context = context;
			_environment = environment;
			_slugGenerator = slugGenerator;
		}

		// GET: api/Products
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Product>>> GetProducts()
		{
			if (_context.Products == null)
			{
				return NotFound();
			}

			var products = await _context.Products
				.Where(p => p.Status == 1)
				.Select(p => new
				{
					Id = p.Id,
					Name = p.Name,
					Model = p.Model != null ? p.Model.Name : string.Empty,
					Color = p.Color != null ? p.Color.Name : string.Empty,
					Size = p.Size != null ? p.Size.Name : string.Empty,
					Quantity = p.Quantity,
					ImportPrice = p.ImportPrice,
					Price = p.Price,
					Image = p.Image,
					Description = p.Description,
					Status = p.Status,
				})
				.ToListAsync();

			return Ok(products);
		}

		// GET: api/Products/Model/{modelId}
		[HttpGet("Model/{modelId}")]
		public async Task<ActionResult<IEnumerable<object>>> GetProductsByModelId(int modelId)
		{
			if (_context.Products == null)
			{
				return NotFound();
			}

			var products = await _context.Products
				.Where(p => p.ModelId == modelId)
				.Where(p => p.Status == 1)
				.ToListAsync();

			if (products == null || products.Count == 0)
			{
				return NotFound();
			}

			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			var result = new List<object>();

			foreach (var product in products)
			{
				var isInWishlist = userId != null ? await _context.WishlistDetails
					.AnyAsync(wd => wd.Wishlist.UserId == userId && wd.ProductId == product.Id) : false;

				result.Add(new
				{
					product.Id,
					product.Name,
					product.ModelId,
					product.ColorId,
					product.SizeId,
					product.Quantity,
					product.ImportPrice,
					product.Price,
					product.Image,
					product.Description,
					product.Status,
					IsInWishlist = isInWishlist
				});
			}

			return Ok(result);
		}

		// GET: api/Products/paged/model/{modelId}
		[HttpGet("paged/model/{modelId}")]
		public async Task<ActionResult<IEnumerable<Product>>> GetPagedProductsByModelId(int modelId, string? keyword = null, int currentPage = 1, int pageSize = 10)
		{
			if (_context.Products == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = _context.Products.Where(p => p.ModelId == modelId).Where(p => p.Status == 1);

			if (!string.IsNullOrEmpty(keyword))
			{
				query = query.Where(p => p.Name.Contains(keyword));
			}

			var totalItems = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await query
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

		// GET: api/Products/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Product>> GetProduct(int id)
		{
			if (_context.Products == null)
			{
				return NotFound();
			}
			var product = await _context.Products.FindAsync(id);

			if (product == null)
			{
				return NotFound();
			}

			return product;
		}

		// PUT: api/Products/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutProduct(int id, [FromForm] Product product, IFormFile? image)
		{
			if (id != product.Id)
			{
				return BadRequest();
			}

			if (await _context.Products.AnyAsync(p => p.ModelId == product.ModelId && p.ColorId == product.ColorId && p.SizeId == product.SizeId && p.Id != id))
			{
				return Conflict(new { message = "A product with the same ModelId, ColorId, and SizeId already exists." });
			}

			if (await _context.Products.AnyAsync(p => p.Name == product.Name && p.Id != id))
			{
				return Conflict(new { message = "Product name already exists." });
			}

			var existingProduct = await _context.Products.FindAsync(id);

			if (existingProduct == null)
			{
				return NotFound();
			}

			string fileName = null;

			if (image != null && image.Length > 0)
			{
				var productsWithSameColorId = _context.Products.Where(p => p.ColorId == product.ColorId).ToList();
				foreach (var prod in productsWithSameColorId)
				{
					if (!string.IsNullOrEmpty(prod.Image))
					{
						string oldImagePath = Path.Combine(_environment.WebRootPath, "images", "product", prod.Image);

						if (System.IO.File.Exists(oldImagePath))
						{
							System.IO.File.Delete(oldImagePath);
						}
					}
				}

				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "product");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(product.Name);

				fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + Path.GetExtension(image.FileName);
				string filePath = Path.Combine(uploadsFolder, fileName);

				using (var fileStream = new FileStream(filePath, FileMode.Create))
				{
					await image.CopyToAsync(fileStream);
				}

				product.Image = fileName;
			}
			else
			{
				product.Image = existingProduct.Image;
			}

			_context.Entry(existingProduct).CurrentValues.SetValues(product);

			if (fileName != null)
			{
				var productsWithSameColorId = _context.Products.Where(p => p.ColorId == product.ColorId).ToList();
				foreach (var prod in productsWithSameColorId)
				{
					prod.Image = fileName;
				}
			}

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ProductExists(id))
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

		// POST: api/Products
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Product>> PostProduct([FromForm] Product product, IFormFile? image)
		{
			if (_context.Products == null)
			{
				return Problem("Entity set 'ShoesshopContext.Products' is null.");
			}

			if (await _context.Products.AnyAsync(p => p.ModelId == product.ModelId && p.ColorId == product.ColorId && p.SizeId == product.SizeId))
			{
				return Conflict(new { message = "A product with the same ModelId, ColorId, and SizeId already exists." });
			}

			if (await _context.Products.AnyAsync(p => p.Name == product.Name))
			{
				return Conflict(new { message = "Product name already exists." });
			}

			string fileName = null;

			if (image != null && image.Length > 0)
			{
				var productsWithSameColorId = _context.Products.Where(p => p.ColorId == product.ColorId).ToList();
				foreach (var prod in productsWithSameColorId)
				{
					if (!string.IsNullOrEmpty(prod.Image))
					{
						string oldImagePath = Path.Combine(_environment.WebRootPath, "images", "product", prod.Image);

						if (System.IO.File.Exists(oldImagePath))
						{
							System.IO.File.Delete(oldImagePath);
						}
					}
				}

				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "product");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(product.Name);

				fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + Path.GetExtension(image.FileName);
				string filePath = Path.Combine(uploadsFolder, fileName);

				using (var fileStream = new FileStream(filePath, FileMode.Create))
				{
					await image.CopyToAsync(fileStream);
				}

				product.Image = fileName;
			}
			else
			{
				var productWithImage = _context.Products.FirstOrDefault(p => p.ColorId == product.ColorId && !string.IsNullOrEmpty(p.Image));

				if (productWithImage != null)
				{
					fileName = productWithImage.Image;
					product.Image = fileName;
				}
			}

			_context.Products.Add(product);
			await _context.SaveChangesAsync();

			if (fileName != null)
			{
				var productsWithSameColorId = _context.Products.Where(p => p.ColorId == product.ColorId).ToList();
				foreach (var prod in productsWithSameColorId)
				{
					prod.Image = fileName;
				}

				await _context.SaveChangesAsync();
			}

			return CreatedAtAction("GetProduct", new { id = product.Id }, product);
		}

		// PUT: api/Products/SoftDelete/{id}
		[HttpPut("SoftDelete/{id}")]
		public async Task<IActionResult> SoftDeleteProduct(int id)
		{
			var product = await _context.Products.FindAsync(id);
			if (product == null)
			{
				return NotFound();
			}

			product.Status = 0;
			_context.Entry(product).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ProductExists(id))
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

		// DELETE: api/Products/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteProduct(int id)
		{
			if (_context.Products == null)
			{
				return NotFound();
			}
			var product = await _context.Products.FindAsync(id);
			if (product == null)
			{
				return NotFound();
			}

			_context.Products.Remove(product);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool ProductExists(int id)
		{
			return (_context.Products?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
