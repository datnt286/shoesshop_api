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
	public class GoodsReceivedNotesController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public GoodsReceivedNotesController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/GoodsReceivedNotes
		[HttpGet]
		public async Task<ActionResult<IEnumerable<GoodsReceivedNote>>> GetGoodsReceivedNotes()
		{
			if (_context.GoodsReceivedNotes == null)
			{
				return NotFound();
			}
			return await _context.GoodsReceivedNotes.ToListAsync();
		}

		// GET: api/GoodsReceivedNotes/5
		[HttpGet("{id}")]
		public async Task<ActionResult<GoodsReceivedNote>> GetGoodsReceivedNote(int id)
		{
			if (_context.GoodsReceivedNotes == null)
			{
				return NotFound();
			}
			var goodsReceivedNote = await _context.GoodsReceivedNotes.FindAsync(id);

			if (goodsReceivedNote == null)
			{
				return NotFound();
			}

			return goodsReceivedNote;
		}

		// PUT: api/GoodsReceivedNotes/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutGoodsReceivedNote(int id, GoodsReceivedNote goodsReceivedNote)
		{
			if (id != goodsReceivedNote.Id)
			{
				return BadRequest();
			}

			_context.Entry(goodsReceivedNote).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!GoodsReceivedNoteExists(id))
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

		// POST: api/GoodsReceivedNotes
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPost]
		public async Task<ActionResult<GoodsReceivedNote>> PostGoodsReceivedNote(GoodsReceivedNote goodsReceivedNote)
		{
			if (_context.GoodsReceivedNotes == null)
			{
				return Problem("Entity set 'ShoesshopContext.GoodsReceivedNotes'  is null.");
			}
			_context.GoodsReceivedNotes.Add(goodsReceivedNote);
			await _context.SaveChangesAsync();

			return CreatedAtAction("GetGoodsReceivedNote", new { id = goodsReceivedNote.Id }, goodsReceivedNote);
		}

		// DELETE: api/GoodsReceivedNotes/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteGoodsReceivedNote(int id)
		{
			if (_context.GoodsReceivedNotes == null)
			{
				return NotFound();
			}
			var goodsReceivedNote = await _context.GoodsReceivedNotes.FindAsync(id);
			if (goodsReceivedNote == null)
			{
				return NotFound();
			}

			_context.GoodsReceivedNotes.Remove(goodsReceivedNote);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool GoodsReceivedNoteExists(int id)
		{
			return (_context.GoodsReceivedNotes?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
