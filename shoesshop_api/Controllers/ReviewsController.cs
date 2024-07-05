using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;
using shoesshop_api.Request;

namespace shoesshop_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ReviewsController : ControllerBase
    {
        private readonly ShoesshopContext _context;

        public ReviewsController(ShoesshopContext context)
        {
            _context = context;
        }

		// POST: api/Reviews
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<IActionResult> PostReview([FromBody] ReviewRequest request)
		{
			var user = await _context.Users.FindAsync(request.UserId);
			if (user == null)
			{
				return NotFound("User not found.");
			}

			var model = await _context.Models.FindAsync(request.ModelId);
			if (model == null)
			{
				return NotFound("Model not found.");
			}

			var existingReview = await _context.Reviews
				.FirstOrDefaultAsync(r => r.UserId == request.UserId && r.ModelId == request.ModelId);
			
			if (existingReview != null)
			{
				_context.Reviews.Remove(existingReview);
			}

			var review = new Review
			{
				UserId = request.UserId,
				ModelId = request.ModelId,
				Rating = request.Rating,
				Content = request.Content,
				CreateDate = DateTime.Now,
				Status = 1,
			};

			_context.Reviews.Add(review);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetReview", new { id = review.Id }, review);
		}

		// GET: api/Reviews/Model/{modelId}
		[HttpGet("Model/{modelId}")]
		public async Task<ActionResult<IEnumerable<Review>>> GetPagedReviewsByModelId(int modelId, int currentPage = 1, int pageSize = 10)
		{
			if (_context.Reviews == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = _context.Reviews
				.Where(c => c.ModelId == modelId)
				.Where(c => c.Status == 1)
				.Include(c => c.User)
				.OrderByDescending(c => c.CreateDate)
				.Select(c => new
				{
					Id = c.Id,
					ModelId = c.ModelId,
					UserId = c.UserId,
					CustomerUserName = c.User.UserName,
					CustomerName = c.User.Name,
					CustomerAvatar = c.User.Avatar,
					Rating = c.Rating,
					Content = c.Content,
					CreateDate = c.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
					Status = c.Status
				});

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

		// GET: api/Reviews
		[HttpGet]
        public async Task<ActionResult<IEnumerable<Review>>> GetReviews()
        {
          if (_context.Reviews == null)
          {
              return NotFound();
          }
            return await _context.Reviews.ToListAsync();
        }

        // GET: api/Reviews/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Review>> GetReview(int id)
        {
          if (_context.Reviews == null)
          {
              return NotFound();
          }
            var review = await _context.Reviews.FindAsync(id);

            if (review == null)
            {
                return NotFound();
            }

            return review;
        }

        // PUT: api/Reviews/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutReview(int id, Review review)
        {
            if (id != review.Id)
            {
                return BadRequest();
            }

            _context.Entry(review).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ReviewExists(id))
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

        // DELETE: api/Reviews/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteReview(int id)
        {
            if (_context.Reviews == null)
            {
                return NotFound();
            }
            var review = await _context.Reviews.FindAsync(id);
            if (review == null)
            {
                return NotFound();
            }

            _context.Reviews.Remove(review);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ReviewExists(int id)
        {
            return (_context.Reviews?.Any(e => e.Id == id)).GetValueOrDefault();
        }
    }
}
