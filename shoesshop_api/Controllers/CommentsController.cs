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
	public class CommentsController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public CommentsController(ShoesshopContext context)
		{
			_context = context;
		}

		// POST: api/Comments
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<IActionResult> PostComment([FromBody] CommentRequest request)
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

			var comment = new Comment
			{
				UserId = request.UserId,
				ModelId = request.ModelId,
				ParentCommentId = request.ParentCommentId,
				Content = request.Content,
				CreateDate = DateTime.Now,
				Status = 1,
			};

			_context.Comments.Add(comment);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetComment", new { id = comment.Id }, comment);
		}

		// GET: api/Comments
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Comment>>> GetPagedComments(int currentPage = 1, int pageSize = 10)
		{
			if (_context.Comments == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = _context.Comments
				.Where(c => c.ParentCommentId == null)
				.Include(c => c.User)
				.Include(c => c.Comments)
				.OrderByDescending(c => c.CreateDate)
				.Select(c => new
				{
					Id = c.Id,
					ModelId = c.ModelId,
					UserId = c.UserId,
					CustomerUserName = c.User.UserName,
					CustomerName = c.User.Name,
					ParentCommentId = c.ParentCommentId,
					Content = c.Content,
					CreateDate = c.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
					Status = c.Status,
					Comments = c.Comments
						.Select(child => new
						{
							Id = child.Id,
							ModelId = child.ModelId,
							UserId = child.UserId,
							CustomerUserName = child.User.UserName,
							CustomerName = child.User.Name,
							ParentCommentId = child.ParentCommentId,
							Content = child.Content,
							CreateDate = child.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
							Status = child.Status,
						}).ToList()
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

		// GET: api/Comments/ByModel/{modelId}
		[HttpGet("ByModel/{modelId}")]
		public async Task<ActionResult<IEnumerable<Comment>>> GetPagedCommentsByModelId(int modelId, int currentPage = 1, int pageSize = 10)
		{
			if (_context.Comments == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			var query = _context.Comments
				.Where(c => c.ModelId == modelId)
				.Where(c => c.ParentCommentId == null)
				.Where(c => c.Status == 1)
				.Include(c => c.User)
				.Include(c => c.Comments)
				.OrderByDescending(c => c.CreateDate)
				.Select(c => new
				{
					Id = c.Id,
					ModelId = c.ModelId,
					UserId = c.UserId,
					CustomerUserName = c.User.UserName,
					CustomerName = c.User.Name,
					CustomerAvatar = c.User.Avatar,
					ParentCommentId = c.ParentCommentId,
					Content = c.Content,
					CreateDate = c.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
					Status = c.Status,
					Comments = c.Comments
						.Where(child => child.Status == 1)
						.Select(child => new
						{
							Id = child.Id,
							ModelId = child.ModelId,
							UserId = child.UserId,
							CustomerUserName = child.User.UserName,
							CustomerName = child.User.Name,
							CustomerAvatar = child.User.Avatar,
							ParentCommentId = child.ParentCommentId,
							Content = child.Content,
							CreateDate = child.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
							Status = child.Status,
						}).ToList()
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

			var totalCommentsCount = await _context.Comments
				.Where(c => c.ModelId == modelId && c.Status == 1)
				.CountAsync();

			var result = new
			{
				items,
				totalPages,
				totalCommentsCount
			};

			return Ok(result);
		}

		// PUT: api/Comments/UpdateStatus/{id}
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("UpdateStatus/{id}")]
		public async Task<IActionResult> UpdateStatusComment(int id)
		{
			var comment = await _context.Comments.FindAsync(id);
			if (comment == null)
			{
				return NotFound();
			}

			comment.Status = comment.Status == 1 ? 0 : 1;
			_context.Entry(comment).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!CommentExists(id))
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

		// GET: api/Comments/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Comment>> GetComment(int id)
		{
			if (_context.Comments == null)
			{
				return NotFound();
			}
			var comment = await _context.Comments.FindAsync(id);

			if (comment == null)
			{
				return NotFound();
			}

			return comment;
		}

		// PUT: api/Comments/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutComment(int id, Comment comment)
		{
			if (id != comment.Id)
			{
				return BadRequest();
			}

			_context.Entry(comment).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!CommentExists(id))
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

		// DELETE: api/Comments/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteComment(int id)
		{
			if (_context.Comments == null)
			{
				return NotFound();
			}
			var comment = await _context.Comments.FindAsync(id);
			if (comment == null)
			{
				return NotFound();
			}

			_context.Comments.Remove(comment);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool CommentExists(int id)
		{
			return (_context.Comments?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
