using System.Security.Cryptography;
using System.Text;

namespace shoesshop_api.Services
{
	public class HashService
	{
		public static string HmacSHA256(string inputData, string key)
		{
			byte[] keyByte = Encoding.UTF8.GetBytes(key);
			byte[] messageBytes = Encoding.UTF8.GetBytes(inputData);
			using (var hmacsha256 = new HMACSHA256(keyByte))
			{
				byte[] hashmessage = hmacsha256.ComputeHash(messageBytes);
				string hex = BitConverter.ToString(hashmessage);
				hex = hex.Replace("-", "").ToLower();
				return hex;
			}
		}

		public static string MakeSignature(string accessKey, string secretKey, string amount, string extraData, string ipnUrl, string orderId, string orderInfo, string partnerCode, string redirectUrl, string requestId, string requestType)
		{
			var rawHash = "accessKey=" + accessKey +
						  "&amount=" + amount +
						  "&extraData=" + extraData +
						  "&ipnUrl=" + ipnUrl +
						  "&orderId=" + orderId +
						  "&orderInfo=" + orderInfo +
						  "&partnerCode=" + partnerCode +
						  "&redirectUrl=" + redirectUrl +
						  "&requestId=" + requestId +
						  "&requestType=" + requestType;
			return HmacSHA256(rawHash, secretKey);
		}
	}
}
