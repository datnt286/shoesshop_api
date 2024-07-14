namespace shoesshop_api.DTOs
{
    public class EmailDTO
    {
        public class ForgotPasswordRequest
        {
            public string Email { get; set; }
        }

        public class ResetPasswordRequest
        {
            public string Email { get; set; }
            public string Token { get; set; }
            public string Password { get; set; }
        }

    }
}
