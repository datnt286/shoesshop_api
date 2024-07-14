using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;
using Newtonsoft.Json;
using shoesshop_api.Data;
using shoesshop_api.Models;
using shoesshop_api.Services;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
var configuration = builder.Configuration;

builder.Services.AddDbContext<ShoesshopContext>(options =>
	options.UseSqlServer(configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddScoped<SlugGenerator>();
builder.Services.AddScoped<WishlistService>();

// Configure CORS
builder.Services.AddCors(options =>
{
	options.AddPolicy("AllowAnyOrigin", builder =>
	{
		builder.AllowAnyOrigin()
			   .AllowAnyMethod()
			   .AllowAnyHeader();
	});
});

// Config cho Identity
builder.Services.AddIdentity<User, IdentityRole>()
	.AddEntityFrameworkStores<ShoesshopContext>()
	.AddDefaultTokenProviders();

// Config cho Authentication
builder.Services.AddAuthentication(options =>
{
	options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
	options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
})
.AddCookie().AddGoogle(googleOptions =>
{
	googleOptions.ClientId = "439368532866-hf73fs8grb1pv3hco734n6i9vgibougi.apps.googleusercontent.com";
	googleOptions.ClientSecret = "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";
})
.AddJwtBearer(options =>
{
	options.SaveToken = true;
	options.RequireHttpsMetadata = false;
	options.TokenValidationParameters = new TokenValidationParameters()
	{
		ValidateIssuer = true,
		ValidateAudience = true,
		ValidAudience = builder.Configuration["JWT:ValidAudience"],
		ValidIssuer = builder.Configuration["JWT:ValidIssuer"],
		IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(configuration["JWT:Secret"]))
	};
});
builder.Services.AddTransient<IEmailSender, EmailSender>();
// Add Newtonsoft.Json with handling for reference loops
builder.Services.AddControllers()
	.AddNewtonsoftJson(options =>
	{
		options.SerializerSettings.ReferenceLoopHandling = ReferenceLoopHandling.Ignore;
	});

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseCors("AllowAnyOrigin");

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
	app.UseSwagger();
	app.UseSwaggerUI();
}

app.UseStaticFiles();

app.UseHttpsRedirection();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllers();

app.Run();
