using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Net;
using System.Security.Cryptography;
using System.Text;

namespace shoesshop_api.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class VnpayController : ControllerBase
    {
        private const string VnpUrl = "https://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        private const string VnpReturnUrl = "https://localhost/vnpay_php/vnpay_return.php";
        private const string VnpTmnCode = "S6RMUB02"; 
        private const string VnpHashSecret = "3R1YUK6L2EVEHT36KDR7S5K25OTXI7M9"; 

        [HttpPost]
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
    }

    public class VnpayRequest
    {
        public bool Redirect { get; set; }
        public int RequiredAmount { get; set; }
    }
}
