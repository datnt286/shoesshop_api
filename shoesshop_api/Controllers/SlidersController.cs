using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Hosting;
using shoesshop_api.Data;
using shoesshop_api.Models;
using shoesshop_api.Services;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class SlidersController : ControllerBase
	{
		private readonly ShoesshopContext _context;
		private readonly IWebHostEnvironment _environment;
		private readonly SlugGenerator _slugGenerator;

		public SlidersController(ShoesshopContext context, IWebHostEnvironment environment, SlugGenerator slugGenerator)
		{
			_context = context;
			_environment = environment;
			_slugGenerator = slugGenerator;
		}

		// GET: api/Sliders
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Slider>>> GetSliders()
		{
			if (_context.Sliders == null)
			{
				return NotFound();
			}

			var sliders = await _context.Sliders
				.Select(slider => new
				{
					slider.Id,
					slider.Name,
					slider.Image,
					slider.Status,
				})
				.ToListAsync();

			return Ok(sliders);
		}

		// GET: api/Sliders/actived
		[HttpGet("actived")]
		public async Task<ActionResult<IEnumerable<Slider>>> GetActivedSliders()
		{
			if (_context.Sliders == null)
			{
				return NotFound();
			}

			var sliders = await _context.Sliders
				.Where(s => s.Status == 1)
				.ToListAsync();

			return Ok(sliders);
		}

		// GET: api/Sliders/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Slider>>> GetPagedSliders(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Sliders == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var totalItems = await _context.Sliders.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var items = await _context.Sliders
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

		// GET: api/Sliders/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Slider>> GetSlider(int id)
		{
			if (_context.Sliders == null)
			{
				return NotFound();
			}
			var slider = await _context.Sliders.FindAsync(id);

			if (slider == null)
			{
				return NotFound();
			}

			return slider;
		}

		// PUT: api/Sliders/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutSlider(int id, [FromForm] Slider slider, IFormFile? image)
		{
			if (id != slider.Id)
			{
				return BadRequest();
			}

			if (await _context.Sliders.AnyAsync(s => s.Name == slider.Name && s.Id != id))
			{
				return Conflict(new { message = "Slider name already exists." });
			}

			var existingSlider = await _context.Sliders.FindAsync(id);

			if (existingSlider == null)
			{
				return NotFound();
			}

			string fileName = null;

			if (image != null && image.Length > 0)
			{
				if (!string.IsNullOrEmpty(slider.Image))
				{
					string existingFilePath = Path.Combine(_environment.WebRootPath, "images", "slider", slider.Image);
					if (System.IO.File.Exists(existingFilePath))
					{
						System.IO.File.Delete(existingFilePath);
					}
				}

				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "slider");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(slider.Name);

				fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + Path.GetExtension(image.FileName);
				string filePath = Path.Combine(uploadsFolder, fileName);

				using (var fileStream = new FileStream(filePath, FileMode.Create))
				{
					await image.CopyToAsync(fileStream);
				}

				slider.Image = fileName;
			}
			else
			{
				slider.Image = existingSlider.Image;
			}

			_context.Entry(existingSlider).CurrentValues.SetValues(slider);

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SliderExists(id))
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

		// POST: api/Sliders
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<Slider>> PostSlider([FromForm] Slider slider, IFormFile? image)
		{
			if (_context.Sliders == null)
			{
				return Problem("Entity set 'ShoesshopContext.Sliders'  is null.");
			}

			if (await _context.Sliders.AnyAsync(s => s.Name == slider.Name))
			{
				return Conflict(new { message = "Slider name already exists." });
			}

			string fileName = null;

			if (image != null && image.Length > 0)
			{
				string uploadsFolder = Path.Combine(_environment.WebRootPath, "images", "slider");

				if (!Directory.Exists(uploadsFolder))
				{
					Directory.CreateDirectory(uploadsFolder);
				}

				string slug = _slugGenerator.GenerateSlug(slider.Name);

				fileName = DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss") + "_" + slug + Path.GetExtension(image.FileName);
				string filePath = Path.Combine(uploadsFolder, fileName);

				using (var fileStream = new FileStream(filePath, FileMode.Create))
				{
					await image.CopyToAsync(fileStream);
				}

				slider.Image = fileName;
			}
			_context.Sliders.Add(slider);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetSlider", new { id = slider.Id }, slider);
		}

		// PUT: api/Sliders/UpdateStatus/{id}
		[HttpPut("UpdateStatus/{id}")]
		public async Task<IActionResult> UpdateStatusSlider(int id)
		{
			var slider = await _context.Sliders.FindAsync(id);
			if (slider == null)
			{
				return NotFound();
			}

			slider.Status = slider.Status == 1 ? 0 : 1;
			_context.Entry(slider).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!SliderExists(id))
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

		// DELETE: api/Sliders/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteSlider(int id)
		{
			if (_context.Sliders == null)
			{
				return NotFound();
			}
			var slider = await _context.Sliders.FindAsync(id);
			if (slider == null)
			{
				return NotFound();
			}

			_context.Sliders.Remove(slider);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool SliderExists(int id)
		{
			return (_context.Sliders?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
