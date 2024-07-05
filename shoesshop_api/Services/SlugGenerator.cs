using System.Text.RegularExpressions;

namespace shoesshop_api.Services
{
	public class SlugGenerator
	{
		private static string RemoveVietnameseDiacritics(string input)
		{
			string[] vietnameseChars = new string[] {
				"aAeEoOuUiIdDyY",
				"áàạảãâấầậẩẫăắằặẳẵ",
				"ÁÀẠẢÃÂẤẦẬẨẪĂẮẰẶẲẴ",
				"éèẹẻẽêếềệểễ",
				"ÉÈẸẺẼÊẾỀỆỂỄ",
				"óòọỏõôốồộổỗơớờợởỡ",
				"ÓÒỌỎÕÔỐỒỘỔỖƠỚỜỢỞỠ",
				"úùụủũưứừựửữ",
				"ÚÙỤỦŨƯỨỪỰỬỮ",
				"íìịỉĩ",
				"ÍÌỊỈĨ",
				"đ",
				"Đ",
				"ýỳỵỷỹ",
				"ÝỲỴỶỸ"
			};

			string[] nonVietnameseChars = new string[] {
				"aAeEoOuUiIdDyY",
				"aaaaaaaaaaaaaaaa",
				"AAAAAAAAAAAAAAAA",
				"eeeeeeeeeeeeeee",
				"EEEEEEEEEEEEEEE",
				"oooooooooooooooooo",
				"OOOOOOOOOOOOOOOOOO",
				"uuuuuuuuuuuuuuuu",
				"UUUUUUUUUUUUUUUU",
				"iiiiiiiii",
				"IIIIIIIII",
				"d",
				"D",
				"yyyyy",
				"YYYYY"
			};

			for (int i = 1; i < vietnameseChars.Length; i++)
			{
				for (int j = 0; j < vietnameseChars[i].Length; j++)
				{
					input = input.Replace(vietnameseChars[i][j], nonVietnameseChars[i][0]);
				}
			}

			return input;
		}

		public string GenerateSlug(string productName)
		{
			string slug = RemoveVietnameseDiacritics(productName.ToLowerInvariant());

			slug = Regex.Replace(slug, @"[^a-z\s]", "");
			slug = Regex.Replace(slug, @"\s+", " ").Trim();
			slug = slug.Replace(" ", "-");

			return slug;
		}
	}
}
