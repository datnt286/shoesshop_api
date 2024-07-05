using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
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
	public class ModelsController : ControllerBase
	{
		private readonly ShoesshopContext _context;
		private readonly IWebHostEnvironment _environment;
		private readonly SlugGenerator _slugGenerator;
		private readonly WishlistService _wishlistService;

		public ModelsController(ShoesshopContext context, IWebHostEnvironment environment, SlugGenerator slugGenerator, WishlistService wishlistService)
		{
			_context = context;
			_environment = environment;
			_slugGenerator = slugGenerator;
			_wishlistService = wishlistService;
		}

		// GET: api/Models
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Model>>> GetModels()
		{
			if (_context.Models == null)
			{
				return NotFound();
			}
			return await _context.Models.ToListAsync();
		}

		// GET: api/Models/paged/productType/{productTypeId}
		[HttpGet("paged/productType/{productTypeId}")]
		public async Task<ActionResult<IEnumerable<Model>>> GetPagedModelsByProductTypeId(int productTypeId, string? keyword = null, int currentPage = 1, int pageSize = 10)
		{
			if (_context.Models == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var childProductTypeIds = await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId == productTypeId)
				.Select(pt => pt.Id)
				.ToListAsync();

			if (!childProductTypeIds.Any())
			{
				return NotFound("No product types found with the specified parentProductTypeId.");
			}

			var query = _context.Models
				.Where(p => childProductTypeIds.Contains(p.ProductTypeId));

			if (!string.IsNullOrEmpty(keyword))
			{
				query = _context.Models.Where(m => m.Name.Contains(keyword));
			}

			var totalItems = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await query
				.Include(m => m.Images)
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

		// GET: api/Models/productType/{productTypeId}
		[HttpGet("productType/{productTypeId}")]
		public async Task<ActionResult<IEnumerable<Model>>> GetModels(int productTypeId)
		{
			if (_context.Models == null)
			{
				return NotFound();
			}

			var childProductTypeIds = await _context.ProductTypes
				.Where(pt => pt.ParentProductTypeId == productTypeId)
				.Select(pt => pt.Id)
				.ToListAsync();

			if (!childProductTypeIds.Any())
			{
				return NotFound("No product types found with the specified parentProductTypeId.");
			}

			var models = await _context.Models
				.Where(p => childProductTypeIds.Contains(p.ProductTypeId))
				.Select(m => new
				{
					Id = m.Id,
					Name = m.Name,
					ProductType = m.ProductType != null ? m.ProductType.Name : string.Empty,
					Brand = m.Brand != null ? m.Brand.Name : string.Empty,
					Supplier = m.Supplier != null ? m.Supplier.Name : string.Empty,
					ImportPrice = m.ImportPrice,
					Price = m.Price,
					Description = m.Description,
					Status = m.Status,
				})
				.ToListAsync();

			return Ok(models);
		}

		// GET: api/Models/all
		[HttpGet("all")]
		public async Task<ActionResult<Model>> GetAllModels()
		{
			var allModels = await _context.Models.Include(m => m.Images).ToListAsync();
			var shoesModels = await _context.Models
				.Where(m => m.ProductType != null && m.ProductType.ParentProductTypeId == 1)
				.Include(m => m.Images)
				.ToListAsync();
			var accessoriesModels = await _context.Models
				.Where(m => m.ProductType != null && m.ProductType.ParentProductTypeId == 2)
				.Include(m => m.Images)
				.ToListAsync();

			if (allModels == null || shoesModels == null || accessoriesModels == null)
			{
				return NotFound();
			}

			var result = new
			{
				allModels,
				shoesModels,
				accessoriesModels
			};

			return Ok(result);
		}

		// GET: api/Models/new
		[HttpGet("new")]
		public async Task<ActionResult<IEnumerable<Model>>> GetNewModels()
		{
			if (_context.Models == null)
			{
				return NotFound();
			}

			var models = await _context.Models
				.Include(m => m.Images)
				.OrderByDescending(m => m.Id)
				.Take(8)
				.ToListAsync();

			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			var result = new List<object>();

			foreach (var model in models)
			{
				var isInWishlist = userId != null && await _wishlistService.AreAnyProductsInWishlistAsync(userId, model.Id);

				result.Add(new
				{
					model.Id,
					model.Name,
					model.Price,
					model.Images,
					IsInWishlist = isInWishlist,
				});
			}

			return Ok(result);
		}

		// GET: api/Models/best-selling
		[HttpGet("best-selling")]
		public async Task<ActionResult<IEnumerable<object>>> GetBestSellingModels()
		{
			var startDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
			var endDate = startDate.AddMonths(1);

			var topSellingProductIds = await _context.InvoiceDetails
				.Where(id => id.Invoice.CreateDate >= startDate && id.Invoice.CreateDate < endDate)
				.GroupBy(id => id.ProductId)
				.OrderByDescending(g => g.Sum(id => id.Quantity))
				.Take(8)
				.Select(g => g.Key)
				.ToListAsync();

			var result = new List<object>();

			foreach (var productId in topSellingProductIds)
			{
				var product = await _context.Products
					.Include(p => p.Model)
					.ThenInclude(m => m.Images)
					.FirstOrDefaultAsync(p => p.Id == productId);

				if (product != null)
				{
					result.Add(new
					{
						product.Model.Id,
						product.Model.Name,
						product.Model.Price,
						product.Model.Images
					});
				}
			}

			return Ok(result);
		}

		// GET: api/Models/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Model>>> GetPagedModels(
			[FromQuery] string? keyword = null,
			[FromQuery] int? brandId = null,
			[FromQuery] int[]? productTypeIds = null,
			[FromQuery] int[]? colorIds = null,
			[FromQuery] int[]? sizeIds = null,
			int currentPage = 1,
			int pageSize = 10)
		{
			if (_context.Models == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = _context.Models.AsQueryable();

			if (!string.IsNullOrEmpty(keyword))
			{
				query = query.Where(m => m.Name.Contains(keyword));
			}

			if (brandId.HasValue)
			{
				query = query.Where(m => m.BrandId == brandId.Value);
			}

			if (productTypeIds != null && productTypeIds.Length > 0)
			{
				query = query.Where(m => productTypeIds.Contains(m.ProductTypeId));
			}

			if (colorIds != null && colorIds.Length > 0)
			{
				query = query.Where(m => m.Products.Any(p => colorIds.Contains(p.ColorId)));
			}

			if (sizeIds != null && sizeIds.Length > 0)
			{
				query = query.Where(m => m.Products.Any(p => sizeIds.Contains(p.SizeId)));
			}

			var totalItems = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await query
				.Include(m => m.Images)
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.ToListAsync();

			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);
			var result = new List<object>();

			foreach (var model in items)
			{
				var isInWishlist = userId != null && await _wishlistService.AreAnyProductsInWishlistAsync(userId, model.Id);

				result.Add(new
				{
					model.Id,
					model.Name,
					model.Price,
					model.Images,
					IsInWishlist = isInWishlist,
				});
			}

			return Ok(new
			{
				items = result,
				totalPages
			});
		}

		// GET: api/Models/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Model>> GetModel(int id)
		{
			if (_context.Models == null)
			{
				return NotFound();
			}
			var model = await _context.Models
			   .Include(m => m.Images)
			   .FirstOrDefaultAsync(m => m.Id == id);

			if (model == null)
			{
				return NotFound();
			}

			var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

			bool isBought = await _context.InvoiceDetails
				.AnyAsync(iv => iv.Invoice.UserId == userId && iv.Product.ModelId == model.Id && iv.Invoice.Status == 4);

			var result = new
			{
				Id = model.Id,
				Name = model.Name,
				ProductTypeId = model.ProductTypeId,
				BrandId = model.BrandId,
				SupplierId = model.SupplierId,
				Price = model.Price,
				Description = model.Description,
				Images = model.Images,
				Status = model.Status,
				IsBought = isBought,
			};

			return Ok(result);
		}

		// PUT: api/Models/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutModel(int id, [FromForm] Model model, [FromForm] List<IFormFile>? images)
		{
			if (id != model.Id)
			{
				return BadRequest();
			}

			if (await _context.Models.AnyAsync(m => m.Name == model.Name && m.Id != id))
			{
				return Conflict(new { message = "Model name already exists." });
			}

			var existingModel = await _context.Models.FindAsync(id);

			if (existingModel == null)
			{
				return NotFound();
			}

			if (images != null && images.Count > 0)
			{
				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "model");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(model.Name);

				int imageOrder = 1;

				var existingImages = _context.Images.Where(img => img.ModelId == model.Id).ToList();
				foreach (var existingImage in existingImages)
				{
					string existingFilePath = Path.Combine(_environment.WebRootPath, "images", "model", existingImage.Name);
					if (System.IO.File.Exists(existingFilePath))
					{
						System.IO.File.Delete(existingFilePath);
					}
					_context.Images.Remove(existingImage);
				}

				foreach (var image in images)
				{
					if (image != null && image.Length > 0)
					{
						string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + "_" + imageOrder + Path.GetExtension(image.FileName);
						string filePath = Path.Combine(uploadsFolder, fileName);

						using (var fileStream = new FileStream(filePath, FileMode.Create))
						{
							await image.CopyToAsync(fileStream);
						}

						var newImage = new Image
						{
							Name = fileName,
							ModelId = model.Id
						};

						_context.Images.Add(newImage);

						imageOrder++;
					}
				}
			}

			_context.Entry(existingModel).CurrentValues.SetValues(model);

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!ModelExists(id))
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

		// POST: api/Models
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Model>> PostModel([FromForm] Model model, [FromForm] List<IFormFile>? images)
		{
			if (_context.Models == null)
			{
				return Problem("Entity set 'ShoesshopContext.Models' is null.");
			}

			if (await _context.Models.AnyAsync(m => m.Name == model.Name))
			{
				return Conflict(new { message = "Model name already exists." });
			}

			_context.Models.Add(model);
			await _context.SaveChangesAsync();

			if (images != null && images.Count > 0)
			{
				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "model");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(model.Name);

				int imageOrder = 1;

				foreach (var image in images)
				{
					if (image != null && image.Length > 0)
					{
						string fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + "_" + imageOrder + Path.GetExtension(image.FileName);
						string filePath = Path.Combine(uploadsFolder, fileName);

						using (var fileStream = new FileStream(filePath, FileMode.Create))
						{
							await image.CopyToAsync(fileStream);
						}

						var newImage = new Image
						{
							Name = fileName,
							ModelId = model.Id
						};

						_context.Images.Add(newImage);

						imageOrder++;
					}
				}

				await _context.SaveChangesAsync();
			}

			return CreatedAtAction("GetModel", new { id = model.Id }, model);
		}

		// DELETE: api/Models/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteModel(int id)
		{
			if (_context.Models == null)
			{
				return NotFound();
			}
			var model = await _context.Models.FindAsync(id);
			if (model == null)
			{
				return NotFound();
			}

			_context.Models.Remove(model);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool ModelExists(int id)
		{
			return (_context.Models?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
