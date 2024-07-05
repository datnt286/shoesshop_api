using Microsoft.EntityFrameworkCore;
using shoesshop_api.Data;
using shoesshop_api.Models;
using System.Threading.Tasks;

namespace shoesshop_api.Services
{
	public class WishlistService
	{
		private readonly ShoesshopContext _context;

		public WishlistService(ShoesshopContext context)
		{
			_context = context;
		}

		public async Task<bool> AreAnyProductsInWishlistAsync(string userId, int modelId)
		{
			return await _context.WishlistDetails
				.AnyAsync(wd => wd.Wishlist.UserId == userId && wd.Product.ModelId == modelId);
		}
	}
}
