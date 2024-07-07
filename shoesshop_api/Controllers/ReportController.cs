using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class ReportController : ControllerBase
	{
		private readonly ShoesshopContext _context;

		public ReportController(ShoesshopContext context)
		{
			_context = context;
		}

		// GET: api/Report
		[HttpGet]
		public async Task<IActionResult> GetReport()
		{
			var startDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
			var endDate = startDate.AddMonths(1);

			var totalRevenue = await _context.Invoices
				.Where(i => i.Status == (int)InvoiceStatus.Received)
				.SumAsync(i => i.TotalPayment);

			var totalSoldProducts = await _context.InvoiceDetails
			   .Where(id => id.Invoice.Status == (int)InvoiceStatus.Received)
			   .SumAsync(id => id.Quantity);

			var totalCustomers = await _context.Users
				.Where(u => u.Role == null)
				.CountAsync();

			var totalEmployees = await _context.Users
				.Where(u => u.Role != null)
				.CountAsync();

			var currentYear = DateTime.Now.Year;
			var monthlyRevenue = new List<decimal>();

			for (int month = 1; month <= 12; month++)
			{
				var monthStartDate = new DateTime(currentYear, month, 1);
				var monthEndDate = monthStartDate.AddMonths(1);

				var revenue = await _context.Invoices
					.Where(i => i.Status == (int)InvoiceStatus.Received && i.CreateDate >= monthStartDate && i.CreateDate < monthEndDate)
					.SumAsync(i => i.TotalPayment);

				monthlyRevenue.Add(revenue);
			}

			return Ok(new
			{
				totalRevenue,
				totalSoldProducts,
				totalCustomers,
				totalEmployees,
				monthlyRevenue,
			});
		}

		// GET: api/Report/TopSellingProducts
		[HttpGet("TopSellingProducts")]
		public async Task<IActionResult> GetTopSellingProducts(int? filter = null)
		{
			DateTime startDate;
			DateTime endDate = DateTime.Now;

			switch (filter)
			{
				case 1:
					startDate = DateTime.Today;
					break;
				case 2:
					int delta = DayOfWeek.Monday - DateTime.Now.DayOfWeek;
					startDate = DateTime.Now.AddDays(delta);
					break;
				case 3:
					startDate = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
					break;
				case 4:
					startDate = new DateTime(DateTime.Now.Year, 1, 1);
					break;
				default:
					startDate = DateTime.Today;
					break;
			}

			var topSellingProducts = await _context.InvoiceDetails
				.Where(id => id.Invoice.CreateDate >= startDate && id.Invoice.CreateDate < endDate)
				.GroupBy(id => new { id.ProductId, id.Product.Name, id.Product.Image, id.Product.Price })
				.Select(g => new
				{
					g.Key.ProductId,
					g.Key.Name,
					g.Key.Image,
					g.Key.Price,
					QuantitySold = g.Sum(id => id.Quantity)
				})
				.OrderByDescending(g => g.QuantitySold)
				.Take(5)
				.ToListAsync();

			return Ok(topSellingProducts);
		}
	}
}
