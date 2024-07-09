using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json.Serialization;
using Newtonsoft.Json;
using shoesshop_api.Request;
using System.Text;
using System.Security.Cryptography;
using shoesshop_api.Services;

namespace shoesshop_api.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class PaymentController : ControllerBase
	{
		private const string PartnerCode = "MOMOBKUN20180529";
		private const string ReturnUrl = "http://localhost:3000/payment-return";
		private const string PaymentUrl = "https://test-payment.momo.vn/v2/gateway/api/create";
		private const string IpnUrl = "https://localhost:7196/payment/api/momo-ipn";
		private const string AccessKey = "klm05TvNBzhg7h7j";
		private const string SecretKey = "at67qH6mk8w5Y1nAyMoYKMWACiEi2bsa";

		// POST: api/Payment/Momo
		[HttpPost]
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