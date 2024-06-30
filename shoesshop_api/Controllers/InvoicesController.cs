using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.DTOs;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class InvoicesController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public InvoicesController(ShoesshopContext context)
		{
			_context = context;
		}

		// POST: api/Invoices
		[Authorize]
		[HttpPost]
		public async Task<IActionResult> PostInvoice([FromBody] InvoiceRequest request)
		{
			if (!ModelState.IsValid)
			{
				return BadRequest(ModelState);
			}

			var user = await _context.Users.FindAsync(request.UserId);
			if (user == null)
			{
				return NotFound("User not found");
			}

			var invoice = new Invoice
			{
				UserId = request.UserId,
				CreateDate = DateTime.Now,
				Total = request.Total,
				ShippingFee = 15000,
				TotalPayment = request.Total + 15000,
				Note = request.Note ?? string.Empty,
				Status = 1,
				InvoiceDetails = new List<InvoiceDetail>()
			};

			foreach (var cartDetail in request.CartDetails)
			{
				var product = await _context.Products.FindAsync(cartDetail.ProductId);
				if (product == null || product.Quantity < cartDetail.Quantity)
				{
					return BadRequest(new { message = "Product not available or insufficient quantity." });
				}

				product.Quantity -= cartDetail.Quantity;

				var invoiceDetail = new InvoiceDetail
				{
					ProductId = cartDetail.ProductId,
					Price = cartDetail.Price,
					Quantity = cartDetail.Quantity,
					Amount = cartDetail.Amount
				};
				invoice.InvoiceDetails.Add(invoiceDetail);
			}

			_context.Invoices.Add(invoice);
			await _context.SaveChangesAsync();

			return Ok(invoice);
		}

		// GET: api/Invoices/paged
		[HttpGet("paged")]
		public async Task<ActionResult<IEnumerable<Invoice>>> GetPagedInvoices(int? status = null, int currentPage = 1, int pageSize = 10)
		{
			if (_context.Invoices == null)
			{
				return NotFound();
			}

			if (currentPage <= 0 || pageSize <= 0)
			{
				return BadRequest("Invalid page number or page size.");
			}

			IQueryable<Invoice> query = _context.Invoices;

			if (status.HasValue && status != 0)
			{
				query = query.Where(i => i.Status == status);
			}

			var totalItems = await query.CountAsync();
			var totalPages = (int)Math.Ceiling(totalItems / (double)pageSize);

			if (currentPage > totalPages && totalPages > 0)
			{
				return BadRequest("Page number exceeds total pages.");
			}

			var invoices = await query
				.Include(i => i.User)
				.Include(i => i.InvoiceDetails)
					.ThenInclude(id => id.Product)
				.Skip((currentPage - 1) * pageSize)
				.Take(pageSize)
				.ToListAsync();

			var items = invoices.Select(i => new InvoiceDTO
			{
				Id = i.Id,
				UserId = i.UserId,
				CustomerName = i.User?.Name,
				PhoneNumber = i.User?.PhoneNumber,
				Address = i.User?.Address,
				CreateDate = i.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
				Total = i.Total,
				ShippingFee = i.ShippingFee,
				TotalPayment = i.TotalPayment,
				Note = i.Note,
				Status = i.Status,
				InvoiceDetails = i.InvoiceDetails.Select(id => new InvoiceDetailDTO
				{
					Id = id.Id,
					InvoiceId = id.InvoiceId,
					ProductId = id.ProductId,
					ProductName = id.Product?.Name,
					ProductImage = id.Product?.Image,
					Price = id.Price,
					Quantity = id.Quantity,
					Amount = id.Amount
				}).ToList()
			}).ToList();

			var result = new
			{
				items,
				totalPages
			};

			return Ok(result);
		}

		[HttpPut("{id}/status")]
		public IActionResult UpdateStatus(int id, [FromBody] UpdateInvoiceStatusRequest request)
		{
			var invoice = _context.Invoices.FirstOrDefault(i => i.Id == id);
			if (invoice == null)
			{
				return NotFound(new { message = "Invoice not found" });
			}

			invoice.Status = request.Status;
			_context.SaveChanges();

			return Ok(new { message = "Invoice status updated successfully" });
		}

		// GET: api/Invoices/User/{userId}
		[HttpGet("User/{userId}")]
		public async Task<ActionResult<UserInvoicesDTO>> GetInvoicesByUser(string userId)
		{
			if (_context.Invoices == null)
			{
				return NotFound();
			}

			var query = await _context.Invoices
				.Where(i => i.UserId == userId)
				.Include(i => i.User)
				.Include(i => i.InvoiceDetails)
					.ThenInclude(id => id.Product)
				.ToListAsync();

			var invoices = query.Select(i => new InvoiceDTO
			{
				Id = i.Id,
				UserId = i.UserId,
				CreateDate = i.CreateDate.ToString("dd-MM-yyyy HH:mm:ss"),
				Total = i.Total,
				ShippingFee = i.ShippingFee,
				TotalPayment = i.TotalPayment,
				Note = i.Note,
				Status = i.Status,
				InvoiceDetails = i.InvoiceDetails.Select(id => new InvoiceDetailDTO
				{
					Id = id.Id,
					InvoiceId = id.InvoiceId,
					ProductId = id.ProductId,
					ProductName = id.Product?.Name,
					ProductImage = id.Product?.Image,
					Price = id.Price,
					Quantity = id.Quantity,
					Amount = id.Amount
				}).ToList()
			}).ToList();

			var placedInvoices = invoices
				.Where(i => i.Status == (int)InvoiceStatus.Placed)
				.ToList();

			var approvedInvoices = invoices
				.Where(i => i.Status == (int)InvoiceStatus.Approved)
				.ToList();

			var shippedInvoices = invoices
				.Where(i => i.Status == (int)InvoiceStatus.Shipped)
				.ToList();

			var receivedInvoices = invoices
				.Where(i => i.Status == (int)InvoiceStatus.Received)
				.ToList();

			var cancelledInvoices = invoices
				.Where(i => i.Status == (int)InvoiceStatus.Cancelled)
				.ToList();

			var result = new UserInvoicesDTO
			{
				AllInvoices = invoices,
				PlacedInvoices = placedInvoices,
				ApprovedInvoices = approvedInvoices,
				ShippedInvoices = shippedInvoices,
				ReceivedInvoices = receivedInvoices,
				CancelledInvoices = cancelledInvoices
			};

			return Ok(result);
		}

		// GET: api/Invoices
		[HttpGet]
		public async Task<ActionResult<IEnumerable<Invoice>>> GetInvoices()
		{
			if (_context.Invoices == null)
			{
				return NotFound();
			}
			return await _context.Invoices.ToListAsync();
		}

		// GET: api/Invoices/5
		[HttpGet("{id}")]
		public async Task<ActionResult<Invoice>> GetInvoice(int id)
		{
			if (_context.Invoices == null)
			{
				return NotFound();
			}
			var invoice = await _context.Invoices.FindAsync(id);

			if (invoice == null)
			{
				return NotFound();
			}

			return invoice;
		}

		// PUT: api/Invoices/5
		// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		[HttpPut("{id}")]
		public async Task<IActionResult> PutInvoice(int id, Invoice invoice)
		{
			if (id != invoice.Id)
			{
				return BadRequest();
			}

			_context.Entry(invoice).State = EntityState.Modified;

			try
			{
				await _context.SaveChangesAsync();
			}
			catch (DbUpdateConcurrencyException)
			{
				if (!InvoiceExists(id))
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

		//// POST: api/Invoices
		//// To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
		//[HttpPost]
		//public async Task<ActionResult<Invoice>> PostInvoice(Invoice invoice)
		//{
		//	if (_context.Invoices == null)
		//	{
		//		return Problem("Entity set 'ShoesshopContext.Invoices'  is null.");
		//	}
		//	_context.Invoices.Add(invoice);
		//	await _context.SaveChangesAsync();

		//	return CreatedAtAction("GetInvoice", new { id = invoice.Id }, invoice);
		//}

		// DELETE: api/Invoices/5
		[HttpDelete("{id}")]
		public async Task<IActionResult> DeleteInvoice(int id)
		{
			if (_context.Invoices == null)
			{
				return NotFound();
			}
			var invoice = await _context.Invoices.FindAsync(id);
			if (invoice == null)
			{
				return NotFound();
			}

			_context.Invoices.Remove(invoice);
			await _context.SaveChangesAsync();

			return NoContent();
		}

		private bool InvoiceExists(int id)
		{
			return (_context.Invoices?.Any(e => e.Id == id)).GetValueOrDefault();
		}
	}
}
