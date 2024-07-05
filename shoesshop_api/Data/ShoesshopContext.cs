using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using shoesshop_api.Models;

namespace shoesshop_api.Data
{
	public class ShoesshopContext : IdentityDbContext<User>
	{
		public ShoesshopContext() { }
		public ShoesshopContext(DbContextOptions<ShoesshopContext> options) : base(options) { }
		public DbSet<ProductType> ProductTypes { get; set; }
		public DbSet<Brand> Brands { get; set; }
		public DbSet<Supplier> Suppliers { get; set; }
		public DbSet<Color> Colors { get; set; }
		public DbSet<Size> Sizes { get; set; }
		public DbSet<Model> Models { get; set; }
		public DbSet<Product> Products { get; set; }
		public DbSet<Image> Images { get; set; }
		public DbSet<Cart> Carts { get; set; }
		public DbSet<CartDetail> CartDetails { get; set; }
		public DbSet<Wishlist> Wishlists { get; set; }
		public DbSet<WishlistDetail> WishlistDetails { get; set; }
		public DbSet<GoodsReceivedNote> GoodsReceivedNotes { get; set; }
		public DbSet<GoodsReceivedNoteDetail> GoodsReceivedNoteDetails { get; set; }
		public DbSet<Invoice> Invoices { get; set; }
		public DbSet<InvoiceDetail> InvoiceDetails { get; set; }
		public DbSet<Review> Reviews { get; set; }
		public DbSet<Comment> Comments { get; set; }
		public DbSet<Slider> Sliders { get; set; }
		public DbSet<Promotion> Promotions { get; set; }
		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);

			modelBuilder.Entity<GoodsReceivedNoteDetail>()
				.HasOne(g => g.Product)
				.WithMany(p => p.GoodsReceivedNoteDetails)
				.HasForeignKey(g => g.ProductId)
				.OnDelete(DeleteBehavior.Restrict);
		}
	}
}
