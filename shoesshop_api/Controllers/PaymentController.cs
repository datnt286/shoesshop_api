using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using shoesshop_api.Request;
using shoesshop_api.Services;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PaymentController : ControllerBase
	{
		private const string VnpUrl = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
		private const string VnpReturnUrl = "http://localhost:3000/payment-return";
		private const string VnpTmnCode = "S6RMUB02";
		private const string VnpHashSecret = "3R1YUK6L2EVEHT36KDR7S5K25OTXI7M9";

		// POST: api/Payment/VNPay
		[HttpPost("VNPay")]
		public IActionResult CreateVnPayPayment([FromBody] VnpayRequest request)
		{
			string vnpTxnRef = Guid.NewGuid().ToString();
			string vnpOrderInfo = "thanhtoan";
			string vnpOrderType = "billpayment";
			int vnpAmount = request.RequiredAmount * 100;
			string vnpLocale = "vn";
			string vnpIpAddr = "127.0.0.1";

			var inputData = new SortedDictionary<string, string>
			{
				{ "vnp_Version", "2.1.0" },
				{ "vnp_TmnCode", VnpTmnCode },
				{ "vnp_Amount", vnpAmount.ToString() },
				{ "vnp_Command", "pay" },
				{ "vnp_CreateDate", DateTime.Now.ToString("yyyyMMddHHmmss") },
				{ "vnp_CurrCode", "VND" },
				{ "vnp_IpAddr", vnpIpAddr },
				{ "vnp_Locale", vnpLocale },
				{ "vnp_OrderInfo", vnpOrderInfo },
				{ "vnp_OrderType", vnpOrderType },
				{ "vnp_ReturnUrl", VnpReturnUrl },
				{ "vnp_TxnRef", vnpTxnRef }
			};

			var queryBuilder = new StringBuilder();
			foreach (var kvp in inputData)
			{
				queryBuilder.Append($"{WebUtility.UrlEncode(kvp.Key)}={WebUtility.UrlEncode(kvp.Value)}&");
			}
			string query = queryBuilder.ToString().TrimEnd('&');

			string vnpSecureHash = CalculateHmacSHA512(query, VnpHashSecret);

			string paymentUrl = $"{VnpUrl}?{query}&vnp_SecureHash={vnpSecureHash}";

			var returnData = new { code = "00", message = "success", data = paymentUrl };

			if (request.Redirect)
			{
				return Redirect(paymentUrl);
			}
			else
			{
				return Ok(returnData);
			}
		}

		private static string CalculateHmacSHA512(string input, string key)
		{
			byte[] keyBytes = Encoding.UTF8.GetBytes(key);
			byte[] inputBytes = Encoding.UTF8.GetBytes(input);

			using (var hmac = new HMACSHA512(keyBytes))
			{
				byte[] hashBytes = hmac.ComputeHash(inputBytes);
				return BitConverter.ToString(hashBytes).Replace("-", "").ToLower();
			}
		}

		public class VnpayRequest
		{
			public bool Redirect { get; set; }
			public int RequiredAmount { get; set; }
		}

		private const string PartnerCode = "MOMOBKUN20180529";
		private const string ReturnUrl = "http://localhost:3000/payment-return";
		private const string PaymentUrl = "https://test-payment.momo.vn/v2/gateway/api/create";
		private const string IpnUrl = "https://localhost:7196/payment/api/momo-ipn";
		private const string AccessKey = "klm05TvNBzhg7h7j";
		private const string SecretKey = "at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa";

		// POST: api/Payment/Momo
		[HttpPost("Momo")]
		public async Task<IActionResult> CreateMomoPayment([FromBody] MomoRequest request)
		{
			var orderId = DateTimeOffset.UtcNow.ToUnixTimeMilliseconds().ToString();
			var requestId = Guid.NewGuid().ToString();

			var signature = HashService.MakeSignature(
				AccessKey,
				SecretKey,
				request.RequiredAmount.ToString(),
				string.Empty,
				IpnUrl,
				orderId,
				"test",
				PartnerCode,
				ReturnUrl,
				requestId,
				"captureWallet"
			);

			var momoRequest = new
			{
				partnerCode = PartnerCode,
				partnerName = "Test",
				storeId = "Merchant",
				requestType = "captureWallet",
				ipnUrl = IpnUrl,
				redirectUrl = ReturnUrl,
				orderId = orderId,
				amount = request.RequiredAmount.ToString(),
				lang = "en",
				autoCapture = false,
				orderInfo = "test",
				requestId = requestId,
				extraData = "",
				signature = signature
			};

			using HttpClient client = new HttpClient();
			var requestData = JsonConvert.SerializeObject(momoRequest, new JsonSerializerSettings()
			{
				ContractResolver = new CamelCasePropertyNamesContractResolver(),
				Formatting = Formatting.Indented,
			});
			var requestContent = new StringContent(requestData, Encoding.UTF8, "application/json");

			var createPaymentLinkRes = await client.PostAsync(PaymentUrl, requestContent);

			if (createPaymentLinkRes.IsSuccessStatusCode)
			{
				var responseContent = await createPaymentLinkRes.Content.ReadAsStringAsync();
				var paymentResponse = JsonConvert.DeserializeObject<PaymentResponse>(responseContent);
				return Ok(new { payUrl = paymentResponse.PayUrl });
			}
			else
			{
				return StatusCode((int)createPaymentLinkRes.StatusCode, "Payment creation failed");
			}
		}

		// GET: api/Payment/momo-return
		[HttpGet("momo-return")]
		public IActionResult MomoReturn([FromQuery] MomoReturnRequest request)
		{
			if (request.ResultCode == 0)
			{
				return Ok("Payment successful");
			}
			else
			{
				return BadRequest("Payment failed");
			}
		}

		public class PaymentResponse
		{
			[JsonProperty("payUrl")]
			public string? PayUrl { get; set; }
		}

		public class MomoReturnRequest
		{
			public int ResultCode { get; set; }
			public string? OrderId { get; set; }
			public string? TransId { get; set; }
			public string? Message { get; set; }
		}
	}
}