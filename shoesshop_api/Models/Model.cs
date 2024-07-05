namespace shoesshop_api.Models
{
	public class Model
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int ProductTypeId { get; set; }
		public int BrandId { get; set; }
		public int SupplierId { get; set; }
		public int ImportPrice { get; set; }
		public int Price { get; set; }
		public string? Description { get; set; }
		public int Status { get; set; }

		public ProductType? ProductType { get; set; }
		public Brand? Brand { get; set; }
		public Supplier? Supplier { get; set; }
		public List<Product>? Products { get; set; }
		public List<Image>? Images { get; set; }
		public List<Promotion>? Promotions { get; set; }
	}
}
