namespace shoesshop_api.Models
{
	public class ProductType
	{
		public int Id { get; set; }
		public string? Name { get; set; }
		public int? ParentProductTypeId { get; set; }
		public int Status { get; set; }

		public ProductType? ParentProductType { get; set; }
		public List<Model>? Models { get; set; }
	}
}
