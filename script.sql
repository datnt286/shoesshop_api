USE [Shoesshop]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 7/17/2024 10:59:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Role] [nvarchar](max) NULL,
	[Salary] [int] NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ModelId] [int] NOT NULL,
	[ParentCommentId] [int] NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceivedNoteDetails]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceivedNoteDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GoodsReceivedNoteId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ImportPrice] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_GoodsReceivedNoteDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoodsReceivedNotes]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoodsReceivedNotes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Total] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_GoodsReceivedNotes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ModelId] [int] NOT NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Amount] [int] NOT NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[PaymentMethod] [nvarchar](max) NULL,
	[Total] [int] NOT NULL,
	[ShippingFee] [int] NOT NULL,
	[TotalPayment] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Models]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Models](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProductTypeId] [int] NOT NULL,
	[BrandId] [int] NOT NULL,
	[SupplierId] [int] NOT NULL,
	[ImportPrice] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ModelId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImportPrice] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ParentProductTypeId] [int] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProductId] [int] NOT NULL,
	[Percentage] [int] NOT NULL,
	[Code] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[ModelId] [int] NULL,
 CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ModelId] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[ModelId] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WishlistDetails]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WishlistDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WishlistId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_WishlistDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Wishlists]    Script Date: 7/17/2024 10:59:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Wishlists](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Wishlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240715130357_init', N'7.0.20')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'0d85d49c-6e62-4470-84ad-9b11d512da09', N'WarehouseStaff', N'WAREHOUSESTAFF', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2b02b108-649b-41a4-b095-57349eaa70e9', N'Manager', N'MANAGER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6bef7165-1529-4bad-8e11-55cc45e56e6a', N'SalesStaff', N'SALESSTAFF', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'948f31db-64c4-4b49-8fb1-e9e6a86b345a', N'Shipper', N'SHIPPER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'd400f6b3-5ad0-4937-8546-5e091fe95431', N'Customer', N'CUSTOMER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'09869706-0c87-4f08-a40f-57056aaf4456', N'd400f6b3-5ad0-4937-8546-5e091fe95431')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2dd79b66-1814-4525-b017-f54c4e5cb60c', N'2b02b108-649b-41a4-b095-57349eaa70e9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3a2dc8ee-e0e5-49c7-a628-3567acf28d02', N'2b02b108-649b-41a4-b095-57349eaa70e9')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'54d7751c-6c3a-4f3e-8f43-52f853fb00bf', N'6bef7165-1529-4bad-8e11-55cc45e56e6a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8c4430e3-0700-4738-a652-7ca0f787d0c8', N'd400f6b3-5ad0-4937-8546-5e091fe95431')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd389c9f1-fb30-4fc5-a9aa-9e1592cbae78', N'0d85d49c-6e62-4470-84ad-9b11d512da09')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fd3cae31-0c76-490e-9a3f-d329e4fc1fbd', N'd400f6b3-5ad0-4937-8546-5e091fe95431')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fffa6204-165d-49fc-a609-066c28ecfb01', N'948f31db-64c4-4b49-8fb1-e9e6a86b345a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'09869706-0c87-4f08-a40f-57056aaf4456', NULL, NULL, NULL, NULL, 1, NULL, NULL, N'dang', N'DANG', N'dang@gmail.com', N'DANG@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAENi6/WmHc6EuOQXVJs55P/gFtp3vaiFMsMxwJQUbNKTlZ1QUz83WHs6IguSOgyo3cg==', N'TZ57GLQZEVEFTKOIBWYZ254C4WGVXZAG', N'b42ca651-f966-4781-a95f-4a71fd89dcba', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2dd79b66-1814-4525-b017-f54c4e5cb60c', N'Nguyễn Văn Admin', N'Xã Tân Đoàn, Huyện Văn Quan, Tỉnh Lạng Sơn', N'2024-07-16-12-41-57_admin.jpg', NULL, 1, N'Manager', 20000000, N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEuS35AhL5O/nOiCQc2F4EXqldo06CFfUNvDg/rJ0rWfTfnG03koh0LdRnjt+D/0uQ==', N'G4GEU7GRPV2HWUFBOK6J5SDAF4SRYJJD', N'104f5501-c556-4af1-b61a-3bd0eee1c85f', N'0987654321', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3a2dc8ee-e0e5-49c7-a628-3567acf28d02', N'Nguyễn Thành Đạt', N'Xã Chu Hương, Huyện Ba Bể, Tỉnh Bắc Kạn', NULL, NULL, 1, N'Manager', 20000000, N'admin2', N'ADMIN2', N'admin2@gmail.com', N'ADMIN2@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPkYQDbkg1o2LDQsQvpv2H4nTSXxzLA1vXDHYNzsknlLeQjWrG+SBDcbl9hR34q2Fw==', N'UJTKBI52ADLPLLXJIRXUCLA2G7C6SZEW', N'a97ed245-d333-4054-9d17-1e516b5390f1', N'0987654325', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'54d7751c-6c3a-4f3e-8f43-52f853fb00bf', N'Nguyễn Văn SaleStaff', N'Xã Nậm Khao, Huyện Mường Tè, Tỉnh Lai Châu', NULL, NULL, 1, N'SalesStaff', 15000000, N'salesstaff', N'SALESSTAFF', N'salesstaff@gmail.com', N'SALESSTAFF@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAoY9YCW2L15eyNCtAvxbmxnaqerNGw17pbdkh9bvDf6+rYIZOlzC4X4kIYxP7/Yxg==', N'TL75CC6TUYCQJPH2EAV34FRWIL5BY66G', N'6c7f10b2-a59a-4d44-8e2c-fa9c093574a6', N'0987654322', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8c4430e3-0700-4738-a652-7ca0f787d0c8', N'Nguyễn Thành Đạt', N'Xã Hòa Đông, Huyện Krông Pắc, Tỉnh Đắk Lắk', N'2024-07-16-12-46-37_dat.jpg', NULL, 1, NULL, NULL, N'dat', N'DAT', N'datnt286@gmail.com', N'DATNT286@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEOZQyJpkbGvISeDvHhIFLSYlTFEr97s4/cXiN0xbyNXqi1bUFyMiu2Na7St9NeWHag==', N'BZA742CYYPM327Q6J5XPVQYO7DBQV3MB', N'f1a126f9-d41e-4ad7-bc2b-6b300e0c91f9', N'0123456789', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd389c9f1-fb30-4fc5-a9aa-9e1592cbae78', N'Nguyễn Văn WarehouseStaff', N'Xã Quảng Long, Huyện Hải Hà, Tỉnh Quảng Ninh', NULL, NULL, 1, N'WarehouseStaff', 12000000, N'warehousestaff', N'WAREHOUSESTAFF', N'warehousestaff@gmail.com', N'WAREHOUSESTAFF@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHXX80JjT+acbLwjwHnBPHSKudmKVFN8Hq0ypgObQf2uPR99BwCPkQjmNLAxfyPuaQ==', N'FJLBUPCXFKUVEE3CNW33QHOSA5MHONMJ', N'8689fb90-ffee-43e5-94e5-4d9e1c5bc60c', N'0987654323', 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fd3cae31-0c76-490e-9a3f-d329e4fc1fbd', NULL, NULL, NULL, NULL, 1, NULL, NULL, N'chinh', N'CHINH', N'chinh@gmail.com', N'CHINH@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDNCjNHnkwCBfI9iDPDJ3sV/PFgufoO5pCIYTullOIBq+R5TNJNC9o6SDw/2WO+BOQ==', N'ACOYCUBOCL6OWCD5DQGDF2CMEUWM7TQP', N'70290c65-be44-4aae-9cdc-2a77f045d3f2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fffa6204-165d-49fc-a609-066c28ecfb01', N'Nguyễn Văn Shipper', N'Xã Ngọc Mỹ, Huyện Tân Lạc, Tỉnh Hoà Bình', NULL, NULL, 1, N'Shipper', 10000000, N'shipper', N'SHIPPER', N'shipper@gmail.com', N'SHIPPER@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHKsg+SLPJh4f1RqamGHFpWG4cvtL8gVFAu16XIewvmLik5tOR9APbyzoIBlGmy7XQ==', N'AJC3KBIPFL4MRVQY6CAV6VSFN5XSGZYX', N'54fa5f4e-7db6-414b-b1c6-3efa625d592d', N'0987654324', 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (1, N'Nike', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (2, N'Adidas', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (3, N'Puma', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (4, N'Vans', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (5, N'Sofsole', 1)
INSERT [dbo].[Brands] ([Id], [Name], [Status]) VALUES (6, N'Superfeet', 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[CartDetails] ON 

INSERT [dbo].[CartDetails] ([Id], [CartId], [ProductId], [Price], [Quantity], [Amount]) VALUES (6, 4, 13, 4200000, 1, 4200000)
SET IDENTITY_INSERT [dbo].[CartDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([Id], [UserId], [CreatedDate], [Status]) VALUES (4, N'09869706-0c87-4f08-a40f-57056aaf4456', CAST(N'2024-07-17T19:58:31.1074935' AS DateTime2), 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (1, N'Đen', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (2, N'Xám', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (3, N'Trắng', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (4, N'Đỏ', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (5, N'Cam', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (6, N'Vàng', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (7, N'Xanh lá', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (8, N'Xanh dương', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (9, N'Tím', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (10, N'Nâu', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (11, N'Carbon', 1)
INSERT [dbo].[Colors] ([Id], [Name], [Status]) VALUES (12, N'Hồng', 1)
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (1, N'nike-air-force-1-07-white-1.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (2, N'nike-air-force-1-07-white-2.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (3, N'nike-air-force-1-07-white-3.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (4, N'nike-air-force-1-07-white-4.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (5, N'nike-air-force-1-07-white-5.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (6, N'nike-air-force-1-07-black-1.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (7, N'nike-air-force-1-07-black-2.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (8, N'nike-air-force-1-07-black-3.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (9, N'nike-air-force-1-07-black-4.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (10, N'nike-air-force-1-07-black-5.png', 1)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (11, N'nike-air-force-1-07-easyon-white-1.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (12, N'nike-air-force-1-07-easyon-white-2.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (13, N'nike-air-force-1-07-easyon-white-3.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (14, N'nike-air-force-1-07-easyon-white-4.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (15, N'nike-air-force-1-07-easyon-white-5.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (16, N'nike-air-force-1-07-easyon-black-1.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (17, N'nike-air-force-1-07-easyon-black-2.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (18, N'nike-air-force-1-07-easyon-black-3.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (19, N'nike-air-force-1-07-easyon-black-4.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (20, N'nike-air-force-1-07-easyon-black-5.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (21, N'nike-air-force-1-07-easyon-blue-1.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (22, N'nike-air-force-1-07-easyon-blue-2.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (23, N'nike-air-force-1-07-easyon-blue-3.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (24, N'nike-air-force-1-07-easyon-blue-4.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (25, N'nike-air-force-1-07-easyon-blue-5.png', 2)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (26, N'nike-air-force-1-07-lv8-white-1.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (27, N'nike-air-force-1-07-lv8-white-2.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (28, N'nike-air-force-1-07-lv8-white-3.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (29, N'nike-air-force-1-07-lv8-white-4.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (30, N'nike-air-force-1-07-lv8-white-5.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (31, N'nike-air-force-1-07-lv8-grey-1.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (32, N'nike-air-force-1-07-lv8-grey-2.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (33, N'nike-air-force-1-07-lv8-grey-3.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (34, N'nike-air-force-1-07-lv8-grey-4.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (35, N'nike-air-force-1-07-lv8-grey-5.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (36, N'nike-air-force-1-07-lv8-brown-1.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (37, N'nike-air-force-1-07-lv8-brown-2.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (38, N'nike-air-force-1-07-lv8-brown-3.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (39, N'nike-air-force-1-07-lv8-brown-4.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (40, N'nike-air-force-1-07-lv8-brown-5.png', 3)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (41, N'nike-air-force-1-07-lv8-evo-1.png', 4)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (42, N'nike-air-force-1-07-lv8-evo-2.png', 4)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (43, N'nike-air-force-1-07-lv8-evo-3.png', 4)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (44, N'nike-air-force-1-07-lv8-evo-4.png', 4)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (45, N'nike-air-force-1-07-lv8-evo-5.png', 4)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (46, N'nike-air-force-1-07-next-nature-se-white-1.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (47, N'nike-air-force-1-07-next-nature-se-white-2.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (48, N'nike-air-force-1-07-next-nature-se-white-3.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (49, N'nike-air-force-1-07-next-nature-se-white-4.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (50, N'nike-air-force-1-07-next-nature-se-white-5.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (51, N'nike-air-force-1-07-next-nature-se-green-1.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (52, N'nike-air-force-1-07-next-nature-se-green-2.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (53, N'nike-air-force-1-07-next-nature-se-green-3.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (54, N'nike-air-force-1-07-next-nature-se-green-4.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (55, N'nike-air-force-1-07-next-nature-se-green-5.png', 5)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (56, N'nike-air-force-1-low-evo-1.png', 6)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (57, N'nike-air-force-1-low-evo-2.png', 6)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (58, N'nike-air-force-1-low-evo-3.png', 6)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (59, N'nike-air-force-1-low-evo-4.png', 6)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (60, N'nike-air-force-1-low-evo-5.png', 6)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (61, N'nike-air-force-1-shadow-1.png', 7)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (62, N'nike-air-force-1-shadow-2.png', 7)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (63, N'nike-air-force-1-shadow-3.png', 7)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (64, N'nike-air-force-1-shadow-4.png', 7)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (65, N'nike-air-force-1-shadow-5.png', 7)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (66, N'nike-air-jordan-1-low-white-1.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (67, N'nike-air-jordan-1-low-white-2.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (68, N'nike-air-jordan-1-low-white-3.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (69, N'nike-air-jordan-1-low-white-4.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (70, N'nike-air-jordan-1-low-white-5.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (71, N'nike-air-jordan-1-low-red-1.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (72, N'nike-air-jordan-1-low-red-2.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (73, N'nike-air-jordan-1-low-red-3.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (74, N'nike-air-jordan-1-low-red-4.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (75, N'nike-air-jordan-1-low-red-5.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (76, N'nike-air-jordan-1-low-blue-1.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (77, N'nike-air-jordan-1-low-blue-2.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (78, N'nike-air-jordan-1-low-blue-3.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (79, N'nike-air-jordan-1-low-blue-4.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (80, N'nike-air-jordan-1-low-blue-5.png', 8)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (81, N'nike-air-jordan-1-mid-white-1.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (82, N'nike-air-jordan-1-mid-white-2.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (83, N'nike-air-jordan-1-mid-white-3.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (84, N'nike-air-jordan-1-mid-white-4.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (85, N'nike-air-jordan-1-mid-white-5.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (86, N'nike-air-jordan-1-mid-gray-1.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (87, N'nike-air-jordan-1-mid-gray-2.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (88, N'nike-air-jordan-1-mid-gray-3.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (89, N'nike-air-jordan-1-mid-gray-4.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (90, N'nike-air-jordan-1-mid-gray-5.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (91, N'nike-air-jordan-1-mid-purple-1.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (92, N'nike-air-jordan-1-mid-purple-2.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (93, N'nike-air-jordan-1-mid-purple-3.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (94, N'nike-air-jordan-1-mid-purple-4.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (95, N'nike-air-jordan-1-mid-purple-5.png', 9)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (96, N'nike-air-jordan-i-high-g-golf-black-1.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (97, N'nike-air-jordan-i-high-g-golf-black-2.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (98, N'nike-air-jordan-i-high-g-golf-black-3.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (99, N'nike-air-jordan-i-high-g-golf-black-4.png', 10)
GO
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (100, N'nike-air-jordan-i-high-g-golf-black-5.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (101, N'nike-air-jordan-i-high-g-golf-blue-1.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (102, N'nike-air-jordan-i-high-g-golf-blue-2.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (103, N'nike-air-jordan-i-high-g-golf-blue-3.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (104, N'nike-air-jordan-i-high-g-golf-blue-4.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (105, N'nike-air-jordan-i-high-g-golf-blue-5.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (106, N'nike-air-jordan-i-high-g-golf-orange-1.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (107, N'nike-air-jordan-i-high-g-golf-orange-2.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (108, N'nike-air-jordan-i-high-g-golf-orange-3.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (109, N'nike-air-jordan-i-high-g-golf-orange-4.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (110, N'nike-air-jordan-i-high-g-golf-orange-5.png', 10)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (111, N'adidas-avryn-white-1.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (112, N'adidas-avryn-white-2.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (113, N'adidas-avryn-white-3.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (114, N'adidas-avryn-white-4.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (115, N'adidas-avryn-white-5.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (116, N'adidas-avryn-grey-1.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (117, N'adidas-avryn-grey-2.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (118, N'adidas-avryn-grey-3.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (119, N'adidas-avryn-grey-4.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (120, N'adidas-avryn-grey-5.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (121, N'adidas-avryn-black-1.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (122, N'adidas-avryn-black-2.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (123, N'adidas-avryn-black-3.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (124, N'adidas-avryn-black-4.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (125, N'adidas-avryn-black-5.png', 11)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (126, N'adidas-ultraboost-v1-white-1.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (127, N'adidas-ultraboost-v1-white-2.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (128, N'adidas-ultraboost-v1-white-3.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (129, N'adidas-ultraboost-v1-white-4.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (130, N'adidas-ultraboost-v1-white-5.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (131, N'adidas-ultraboost-v1-black-1.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (132, N'adidas-ultraboost-v1-black-2.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (133, N'adidas-ultraboost-v1-black-3.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (134, N'adidas-ultraboost-v1-black-4.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (135, N'adidas-ultraboost-v1-black-5.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (136, N'adidas-ultraboost-v1-green-1.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (137, N'adidas-ultraboost-v1-green-2.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (138, N'adidas-ultraboost-v1-green-3.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (139, N'adidas-ultraboost-v1-green-4.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (140, N'adidas-ultraboost-v1-green-5.png', 12)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (141, N'adidas-pureboost-23-black-1.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (142, N'adidas-pureboost-23-black-2.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (143, N'adidas-pureboost-23-black-3.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (144, N'adidas-pureboost-23-black-4.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (145, N'adidas-pureboost-23-black-5.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (146, N'adidas-pureboost-23-carbon-1.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (147, N'adidas-pureboost-23-carbon-2.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (148, N'adidas-pureboost-23-carbon-3.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (149, N'adidas-pureboost-23-carbon-4.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (150, N'adidas-pureboost-23-carbon-5.png', 13)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (151, N'adidas-response-super-white-1.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (152, N'adidas-response-super-white-2.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (153, N'adidas-response-super-white-3.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (154, N'adidas-response-super-white-4.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (155, N'adidas-response-super-white-5.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (156, N'adidas-response-super-black-1.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (157, N'adidas-response-super-black-2.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (158, N'adidas-response-super-black-3.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (159, N'adidas-response-super-black-4.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (160, N'adidas-response-super-black-5.png', 14)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (161, N'adidas-dropset-2-earth-1.png', 15)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (162, N'adidas-dropset-2-earth-2.png', 15)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (163, N'adidas-dropset-2-earth-3.png', 15)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (164, N'adidas-dropset-2-earth-4.png', 15)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (165, N'adidas-dropset-2-earth-5.png', 15)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (166, N'puma-rs-x-3d-black-1.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (167, N'puma-rs-x-3d-black-2.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (168, N'puma-rs-x-3d-black-3.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (169, N'puma-rs-x-3d-black-4.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (170, N'puma-rs-x-3d-black-5.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (171, N'puma-rs-x-3d-red-1.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (172, N'puma-rs-x-3d-red-2.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (173, N'puma-rs-x-3d-red-3.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (174, N'puma-rs-x-3d-red-4.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (175, N'puma-rs-x-3d-red-5.png', 16)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (176, N'puma-slipstream-expedition-yellow-1.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (177, N'puma-slipstream-expedition-yellow-2.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (178, N'puma-slipstream-expedition-yellow-3.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (179, N'puma-slipstream-expedition-yellow-4.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (180, N'puma-slipstream-expedition-yellow-5.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (181, N'puma-slipstream-expedition-brown-1.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (182, N'puma-slipstream-expedition-brown-2.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (183, N'puma-slipstream-expedition-brown-3.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (184, N'puma-slipstream-expedition-brown-4.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (185, N'puma-slipstream-expedition-brown-5.png', 17)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (186, N'puma-suede-xl-black-1.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (187, N'puma-suede-xl-black-2.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (188, N'puma-suede-xl-black-3.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (189, N'puma-suede-xl-black-4.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (190, N'puma-suede-xl-black-5.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (191, N'puma-suede-xl-blue-1.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (192, N'puma-suede-xl-blue-2.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (193, N'puma-suede-xl-blue-3.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (194, N'puma-suede-xl-blue-4.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (195, N'puma-suede-xl-blue-5.png', 18)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (196, N'puma-palermo-leather-white-1.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (197, N'puma-palermo-leather-white-2.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (198, N'puma-palermo-leather-white-3.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (199, N'puma-palermo-leather-white-4.png', 19)
GO
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (200, N'puma-palermo-leather-white-5.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (201, N'puma-palermo-leather-grey-1.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (202, N'puma-palermo-leather-grey-2.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (203, N'puma-palermo-leather-grey-3.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (204, N'puma-palermo-leather-grey-4.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (205, N'puma-palermo-leather-grey-5.png', 19)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (206, N'puma-180-perf-1.png', 20)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (207, N'puma-180-perf-2.png', 20)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (208, N'puma-180-perf-3.png', 20)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (209, N'puma-180-perf-4.png', 20)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (210, N'puma-180-perf-5.png', 20)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (211, N'vans-knu-skool-black-1.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (212, N'vans-knu-skool-black-2.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (213, N'vans-knu-skool-black-3.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (214, N'vans-knu-skool-black-4.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (215, N'vans-knu-skool-black-5.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (216, N'vans-knu-skool-red-1.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (217, N'vans-knu-skool-red-2.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (218, N'vans-knu-skool-red-3.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (219, N'vans-knu-skool-red-4.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (220, N'vans-knu-skool-red-5.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (221, N'vans-knu-skool-pink-1.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (222, N'vans-knu-skool-pink-2.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (223, N'vans-knu-skool-pink-3.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (224, N'vans-knu-skool-pink-4.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (225, N'vans-knu-skool-pink-5.png', 21)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (226, N'vans-old-skool-white-1.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (227, N'vans-old-skool-white-2.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (228, N'vans-old-skool-white-3.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (229, N'vans-old-skool-white-4.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (230, N'vans-old-skool-white-5.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (231, N'vans-old-skool-blue-1.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (232, N'vans-old-skool-blue-2.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (233, N'vans-old-skool-blue-3.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (234, N'vans-old-skool-blue-4.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (235, N'vans-old-skool-blue-5.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (236, N'vans-old-skool-yellow-1.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (237, N'vans-old-skool-yellow-2.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (238, N'vans-old-skool-yellow-3.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (239, N'vans-old-skool-yellow-4.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (240, N'vans-old-skool-yellow-5.png', 22)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (241, N'vans-ave-v2-grey-1.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (242, N'vans-ave-v2-grey-2.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (243, N'vans-ave-v2-grey-3.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (244, N'vans-ave-v2-grey-4.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (245, N'vans-ave-v2-grey-5.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (246, N'vans-ave-v2-black-1.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (247, N'vans-ave-v2-black-2.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (248, N'vans-ave-v2-black-3.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (249, N'vans-ave-v2-black-4.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (250, N'vans-ave-v2-black-5.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (251, N'vans-ave-v2-purple-1.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (252, N'vans-ave-v2-purple-2.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (253, N'vans-ave-v2-purple-3.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (254, N'vans-ave-v2-purple-4.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (255, N'vans-ave-v2-purple-5.png', 23)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (256, N'vans-cruze-too-comfycush-brown-1.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (257, N'vans-cruze-too-comfycush-brown-2.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (258, N'vans-cruze-too-comfycush-brown-3.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (259, N'vans-cruze-too-comfycush-brown-4.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (260, N'vans-cruze-too-comfycush-brown-5.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (261, N'vans-cruze-too-comfycush-green-1.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (262, N'vans-cruze-too-comfycush-green-2.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (263, N'vans-cruze-too-comfycush-green-3.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (264, N'vans-cruze-too-comfycush-green-4.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (265, N'vans-cruze-too-comfycush-green-5.png', 24)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (266, N'vans-sk8-hi-black-1.png', 25)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (267, N'vans-sk8-hi-black-2.png', 25)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (268, N'vans-sk8-hi-black-3.png', 25)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (269, N'vans-sk8-hi-black-4.png', 25)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (270, N'vans-sk8-hi-black-5.png', 25)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (271, N'nike-plus-cushion-white-1.png', 26)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (272, N'nike-plus-cushion-white-2.png', 26)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (273, N'nike-plus-cushion-white-3.png', 26)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (274, N'nike-max-cush-white-1.png', 27)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (275, N'nike-max-cush-white-2.png', 27)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (276, N'nike-max-cush-white-3.png', 27)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (277, N'nike-max-cush-white-4.png', 27)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (278, N'nike-max-cushion-no-show-black-1.png', 28)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (279, N'nike-max-cushion-no-show-black-2.png', 28)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (280, N'nike-max-cushion-no-show-black-3.png', 28)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (281, N'nike-max-cushion-no-show-black-4.png', 28)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (282, N'nike-white.png', 29)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (283, N'adidas-white.png', 30)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (284, N'vans-white.png', 31)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (285, N'vans-black.png', 31)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (286, N'sofsole-air-orange-1.png', 32)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (287, N'sofsole-air-orange-2.png', 32)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (288, N'sofsole-air-orange-3.png', 32)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (289, N'sofsole-air-orange-4.png', 32)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (290, N'sofsole-air-orange-5.png', 32)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (291, N'superfeet-run-comfort-blue-1.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (292, N'superfeet-run-comfort-blue-2.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (293, N'superfeet-run-comfort-blue-3.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (294, N'superfeet-run-comfort-blue-4.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (295, N'superfeet-run-comfort-blue-5.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (296, N'superfeet-run-comfort-green-1.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (297, N'superfeet-run-comfort-green-2.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (298, N'superfeet-run-comfort-green-3.png', 33)
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (299, N'superfeet-run-comfort-green-4.png', 33)
GO
INSERT [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (300, N'superfeet-run-comfort-green-5.png', 33)
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON 

INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (1, 1, 1, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (2, 1, 68, 4500000, 2, 9000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (3, 1, 76, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (4, 2, 76, 4500000, 2, 9000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (5, 2, 123, 5000000, 1, 5000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (6, 2, 189, 3100000, 1, 3100000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (7, 4, 254, 2500000, 3, 7500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (8, 4, 212, 2800000, 1, 2800000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (9, 5, 325, 200000, 5, 1000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (10, 6, 8, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (11, 6, 128, 5000000, 2, 10000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (12, 6, 328, 150000, 1, 150000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (13, 6, 326, 200000, 2, 400000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (14, 7, 15, 4200000, 1, 4200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (15, 7, 16, 4200000, 1, 4200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (16, 8, 21, 4200000, 1, 4200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (17, 8, 29, 4200000, 1, 4200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (18, 9, 88, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (19, 10, 171, 3600000, 1, 3600000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (20, 10, 179, 3600000, 1, 3600000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (21, 11, 50, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (22, 11, 71, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (23, 12, 295, 2900000, 2, 5800000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (24, 12, 290, 2900000, 2, 5800000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (25, 12, 332, 700000, 1, 700000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (26, 14, 328, 150000, 2, 300000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (27, 14, 320, 3300000, 1, 3300000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (28, 14, 160, 2900000, 1, 2900000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (29, 15, 194, 2600000, 1, 2600000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (30, 15, 76, 4500000, 2, 9000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (31, 15, 327, 200000, 1, 200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (32, 15, 39, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (33, 15, 9, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (34, 16, 320, 3300000, 1, 3300000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (35, 16, 308, 3100000, 1, 3100000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (36, 16, 77, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (37, 17, 87, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (38, 17, 95, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (39, 17, 248, 2300000, 1, 2300000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (40, 17, 332, 700000, 1, 700000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (41, 18, 51, 4500000, 2, 9000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (42, 19, 253, 2500000, 2, 5000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (43, 19, 289, 2900000, 1, 2900000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (44, 19, 27, 4200000, 1, 4200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (45, 19, 326, 200000, 1, 200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (46, 20, 45, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (47, 20, 50, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (48, 21, 326, 200000, 1, 200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (49, 21, 328, 150000, 1, 150000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (50, 21, 334, 1200000, 1, 1200000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (51, 22, 9, 4000000, 1, 4000000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (52, 22, 74, 4500000, 1, 4500000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (53, 22, 188, 3100000, 1, 3100000)
INSERT [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (54, 22, 325, 200000, 1, 200000)
SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Invoices] ON 

INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (1, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-16T12:47:55.5966619' AS DateTime2), N'COD', 17500000, 15000, 17515000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (2, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-17T12:49:18.3933448' AS DateTime2), N'VNPay', 17100000, 15000, 17115000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (4, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-18T12:50:20.3459027' AS DateTime2), N'COD', 10300000, 15000, 10315000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (5, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-19T12:50:51.9623775' AS DateTime2), N'COD', 1000000, 15000, 1015000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (6, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-20T12:55:29.9325335' AS DateTime2), N'VNPay', 14550000, 15000, 14565000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (7, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-21T19:51:55.0493896' AS DateTime2), N'COD', 8400000, 15000, 8415000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (8, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-22T19:55:23.0486647' AS DateTime2), N'COD', 8400000, 30000, 8430000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (9, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-23T20:02:07.4355330' AS DateTime2), N'Momo', 4000000, 15000, 4015000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (10, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-24T20:02:52.1091300' AS DateTime2), N'Momo', 7200000, 30000, 7230000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (11, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-06-25T22:13:30.5293498' AS DateTime2), N'COD', 9000000, 30000, 9030000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (12, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-16T22:20:28.4545000' AS DateTime2), N'VNPay', 12300000, 30000, 12330000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (14, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-16T22:21:38.1357751' AS DateTime2), N'COD', 6500000, 30000, 6530000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (15, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-16T22:22:52.1267286' AS DateTime2), N'Momo', 20300000, 30000, 20330000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (16, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-16T22:23:46.0624143' AS DateTime2), N'COD', 10900000, 30000, 10930000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (17, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:24:50.7076904' AS DateTime2), N'Momo', 11000000, 30000, 11030000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (18, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:25:10.3285257' AS DateTime2), N'COD', 9000000, 30000, 9030000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (19, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:26:09.2658548' AS DateTime2), N'COD', 12300000, 30000, 12330000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (20, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:26:58.8628897' AS DateTime2), N'VNPay', 9000000, 30000, 9030000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (21, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:27:59.5181163' AS DateTime2), N'Momo', 1550000, 30000, 1580000, N'', 5)
INSERT [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (22, N'8c4430e3-0700-4738-a652-7ca0f787d0c8', CAST(N'2024-07-17T22:28:50.8381732' AS DateTime2), N'COD', 11800000, 30000, 11830000, N'', 5)
SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO
SET IDENTITY_INSERT [dbo].[Models] ON 

INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (1, N'Nike Air Force 1 07', 3, 1, 1, 3000000, 4000000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (2, N'Nike Air Force 1 07 Easyon', 3, 1, 1, 3200000, 4200000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (3, N'Nike Air Force 1 07 LV8', 3, 1, 1, 3500000, 4500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (4, N'Nike Air Force 1 07 LV8 Evo', 3, 1, 1, 3500000, 4500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (5, N'Nike Air Force 1 07 Next Nature SE', 3, 1, 1, 2500000, 3000000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (6, N'Nike Air Force 1 Low Evo', 3, 1, 1, 3500000, 4500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (7, N'Nike Air Force 1 Shadow', 3, 1, 1, 3500000, 4500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (8, N'Nike Air Jordan 1 Low', 3, 1, 1, 3000000, 4000000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (9, N'Nike Air Jordan 1 Mid', 3, 1, 1, 3500000, 4500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (10, N'Nike Air Jordan 1 High', 5, 1, 1, 4000000, 5000000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (11, N'Adidas Avryn', 3, 2, 2, 2000000, 2600000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (12, N'Adidas Ultraboost 1.0', 4, 2, 2, 2300000, 2900000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (13, N'Adidas Pureboost 23', 4, 2, 2, 3000000, 3600000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (14, N'Adidas Response Super', 3, 2, 2, 2500000, 3100000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (15, N'Adidas Dropset 2 Earth', 3, 2, 2, 1800000, 2400000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (16, N'Puma Rs-X 3D', 3, 3, 3, 2000000, 2500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (17, N'Puma Slipstream Expedition', 3, 3, 3, 2300000, 2800000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (18, N'Puma Suede XL', 3, 3, 3, 2600000, 3100000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (19, N'Puma Palermo Leather', 3, 3, 3, 2900000, 3400000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (20, N'Puma 180 Perf', 3, 3, 3, 1800000, 2300000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (21, N'Vans Knu Skool', 3, 4, 4, 2000000, 2500000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (22, N'Vans Old Skool', 3, 4, 4, 2200000, 2700000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (23, N'Vans Ave 2.0', 3, 4, 4, 2400000, 2900000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (24, N'Vans Cruze Too Comfycush', 3, 4, 4, 2600000, 3100000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (25, N'Vans SK8 Hi', 5, 4, 4, 2800000, 3300000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (26, N'Vớ Nike Plus Cushion', 6, 1, 1, 100000, 200000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (27, N'Vớ Nike Max Cush', 6, 1, 1, 100000, 200000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (28, N'Vớ Nike Max Cushion No Show', 6, 1, 1, 100000, 200000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (29, N'Dây giày Nike', 7, 1, 1, 100000, 150000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (30, N'Dây giày Adidas', 7, 2, 2, 100000, 150000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (31, N'Dây giày Vans', 7, 4, 4, 100000, 150000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (32, N'Miếng lót giày Sofsole', 8, 5, 5, 500000, 700000, NULL, 1)
INSERT [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (33, N'Miếng lót giày Superfeet', 8, 6, 6, 1000000, 1200000, NULL, 1)
SET IDENTITY_INSERT [dbo].[Models] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (1, N'Nike Air Force 1 07 - Trắng - 39', 1, 3, 1, 49, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (2, N'Nike Air Force 1 07 - Trắng - 40', 1, 3, 2, 50, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (3, N'Nike Air Force 1 07 - Trắng - 41', 1, 3, 3, 50, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (4, N'Nike Air Force 1 07 - Trắng - 42', 1, 3, 4, 50, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (5, N'Nike Air Force 1 07 - Trắng - 43', 1, 3, 5, 50, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (6, N'Nike Air Force 1 07 - Trắng - 44', 1, 3, 6, 50, 3000000, 4000000, N'nike-air-force-1-07-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (7, N'Nike Air Force 1 07 - Đen - 39', 1, 1, 1, 50, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (8, N'Nike Air Force 1 07 - Đen - 40', 1, 1, 2, 49, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (9, N'Nike Air Force 1 07 - Đen - 41', 1, 1, 3, 48, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (10, N'Nike Air Force 1 07 - Đen - 42', 1, 1, 4, 50, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (11, N'Nike Air Force 1 07 - Đen - 43', 1, 1, 5, 50, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (12, N'Nike Air Force 1 07 - Đen - 44', 1, 1, 6, 50, 3000000, 4000000, N'nike-air-force-1-07-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (13, N'Nike Air Force 1 07 Easyon - Trắng - 39', 2, 3, 1, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (14, N'Nike Air Force 1 07 Easyon - Trắng - 40', 2, 3, 2, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (15, N'Nike Air Force 1 07 Easyon - Trắng - 41', 2, 3, 3, 49, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (16, N'Nike Air Force 1 07 Easyon - Trắng - 42', 2, 3, 4, 49, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (17, N'Nike Air Force 1 07 Easyon - Trắng - 43', 2, 3, 5, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (18, N'Nike Air Force 1 07 Easyon - Trắng - 44', 2, 3, 6, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (19, N'Nike Air Force 1 07 Easyon - Đen - 39', 2, 1, 1, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (20, N'Nike Air Force 1 07 Easyon - Đen - 40', 2, 1, 2, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (21, N'Nike Air Force 1 07 Easyon - Đen - 41', 2, 1, 3, 49, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (22, N'Nike Air Force 1 07 Easyon - Đen - 42', 2, 1, 4, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (23, N'Nike Air Force 1 07 Easyon - Đen - 43', 2, 1, 5, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (24, N'Nike Air Force 1 07 Easyon - Đen - 44', 2, 1, 6, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (25, N'Nike Air Force 1 07 Easyon - Xanh dương - 39', 2, 8, 1, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (26, N'Nike Air Force 1 07 Easyon - Xanh dương - 40', 2, 8, 2, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (27, N'Nike Air Force 1 07 Easyon - Xanh dương - 41', 2, 8, 3, 49, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (28, N'Nike Air Force 1 07 Easyon - Xanh dương - 42', 2, 8, 4, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (29, N'Nike Air Force 1 07 Easyon - Xanh dương - 43', 2, 8, 5, 49, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (30, N'Nike Air Force 1 07 Easyon - Xanh dương - 44', 2, 8, 6, 50, 3200000, 4200000, N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (31, N'Nike Air Force 1 07 LV8 - Trắng - 39', 3, 3, 1, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (32, N'Nike Air Force 1 07 LV8 - Trắng - 40', 3, 3, 2, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (33, N'Nike Air Force 1 07 LV8 - Trắng - 41', 3, 3, 3, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (34, N'Nike Air Force 1 07 LV8 - Trắng - 42', 3, 3, 4, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (35, N'Nike Air Force 1 07 LV8 - Trắng - 43', 3, 3, 5, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (36, N'Nike Air Force 1 07 LV8 - Trắng - 44', 3, 3, 6, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (37, N'Nike Air Force 1 07 LV8 - Xám - 39', 3, 2, 1, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (38, N'Nike Air Force 1 07 LV8 - Xám - 40', 3, 2, 2, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (39, N'Nike Air Force 1 07 LV8 - Xám - 41', 3, 2, 3, 49, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (40, N'Nike Air Force 1 07 LV8 - Xám - 42', 3, 2, 4, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (41, N'Nike Air Force 1 07 LV8 - Xám - 43', 3, 2, 5, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (42, N'Nike Air Force 1 07 LV8 - Xám - 44', 3, 2, 6, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (43, N'Nike Air Force 1 07 LV8 - Nâu - 39', 3, 10, 1, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (44, N'Nike Air Force 1 07 LV8 - Nâu - 40', 3, 10, 2, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (45, N'Nike Air Force 1 07 LV8 - Nâu - 41', 3, 10, 3, 49, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (46, N'Nike Air Force 1 07 LV8 - Nâu - 42', 3, 10, 4, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (47, N'Nike Air Force 1 07 LV8 - Nâu - 43', 3, 10, 5, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (48, N'Nike Air Force 1 07 LV8 - Nâu - 44', 3, 10, 6, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (49, N'Nike Air Force 1 07 LV8 Evo - 39', 4, 3, 1, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (50, N'Nike Air Force 1 07 LV8 Evo - 40', 4, 3, 2, 48, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (51, N'Nike Air Force 1 07 LV8 Evo - 41', 4, 3, 3, 48, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (52, N'Nike Air Force 1 07 LV8 Evo - 42', 4, 3, 4, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (53, N'Nike Air Force 1 07 LV8 Evo - 43', 4, 3, 5, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (54, N'Nike Air Force 1 07 LV8 Evo - 44', 4, 3, 6, 50, 3500000, 4500000, N'nike-air-force-1-07-lv8-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (55, N'Nike Air Force 1 07 Next Nature SE - Trắng - 39', 5, 3, 1, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (56, N'Nike Air Force 1 07 Next Nature SE - Trắng - 40', 5, 3, 2, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (57, N'Nike Air Force 1 07 Next Nature SE - Trắng - 41', 5, 3, 3, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (58, N'Nike Air Force 1 07 Next Nature SE - Trắng - 42', 5, 3, 4, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (59, N'Nike Air Force 1 07 Next Nature SE - Trắng - 43', 5, 3, 5, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (60, N'Nike Air Force 1 07 Next Nature SE - Trắng - 44', 5, 3, 6, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (61, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 39', 5, 7, 1, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (62, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 40', 5, 7, 2, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (63, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 41', 5, 7, 3, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (64, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 42', 5, 7, 4, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (65, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 43', 5, 7, 5, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (66, N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 44', 5, 7, 6, 50, 2500000, 3000000, N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (67, N'Nike Air Force 1 Low Evo - Trắng - 39', 6, 3, 1, 50, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (68, N'Nike Air Force 1 Low Evo - Trắng - 40', 6, 3, 2, 48, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (69, N'Nike Air Force 1 Low Evo - Trắng - 41', 6, 3, 3, 50, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (70, N'Nike Air Force 1 Low Evo - Trắng - 42', 6, 3, 4, 50, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (71, N'Nike Air Force 1 Low Evo - Trắng - 43', 6, 3, 5, 49, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (72, N'Nike Air Force 1 Low Evo - Trắng - 44', 6, 3, 6, 50, 3500000, 4500000, N'nike-air-force-1-low-evo-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (73, N'Nike Air Force 1 Shadow - Trắng - 39', 7, 3, 1, 50, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (74, N'Nike Air Force 1 Shadow - Trắng - 40', 7, 3, 2, 49, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (75, N'Nike Air Force 1 Shadow - Trắng - 41', 7, 3, 3, 50, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (76, N'Nike Air Force 1 Shadow - Trắng - 42', 7, 3, 4, 45, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (77, N'Nike Air Force 1 Shadow - Trắng - 43', 7, 3, 5, 49, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (78, N'Nike Air Force 1 Shadow - Trắng - 44', 7, 3, 6, 50, 3500000, 4500000, N'nike-air-force-1-shadow-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (79, N'Nike Air Jordan 1 Low - Trắng - 39', 8, 3, 1, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (80, N'Nike Air Jordan 1 Low - Trắng - 40', 8, 3, 2, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (81, N'Nike Air Jordan 1 Low - Trắng - 41', 8, 3, 3, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (82, N'Nike Air Jordan 1 Low - Trắng - 42', 8, 3, 4, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (83, N'Nike Air Jordan 1 Low - Trắng - 43', 8, 3, 5, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (84, N'Nike Air Jordan 1 Low - Trắng - 44', 8, 3, 6, 50, 3000000, 4000000, N'nike-air-jordan-1-low-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (85, N'Nike Air Jordan 1 Low - Đỏ - 39', 8, 4, 1, 50, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (86, N'Nike Air Jordan 1 Low - Đỏ - 40', 8, 4, 2, 50, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (87, N'Nike Air Jordan 1 Low - Đỏ - 41', 8, 4, 3, 49, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (88, N'Nike Air Jordan 1 Low - Đỏ - 42', 8, 4, 4, 49, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (89, N'Nike Air Jordan 1 Low - Đỏ - 43', 8, 4, 5, 50, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (90, N'Nike Air Jordan 1 Low - Đỏ - 44', 8, 4, 6, 50, 3000000, 4000000, N'nike-air-jordan-1-low-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (91, N'Nike Air Jordan 1 Low - Xanh dương - 39', 8, 8, 1, 50, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (92, N'Nike Air Jordan 1 Low - Xanh dương - 40', 8, 8, 2, 50, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (93, N'Nike Air Jordan 1 Low - Xanh dương - 41', 8, 8, 3, 50, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (94, N'Nike Air Jordan 1 Low - Xanh dương - 42', 8, 8, 4, 50, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (95, N'Nike Air Jordan 1 Low - Xanh dương - 43', 8, 8, 5, 49, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (96, N'Nike Air Jordan 1 Low - Xanh dương - 44', 8, 8, 6, 50, 3000000, 4000000, N'nike-air-jordan-1-low-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (97, N'Nike Air Jordan 1 Mid - Trắng - 39', 9, 3, 1, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (98, N'Nike Air Jordan 1 Mid - Trắng - 40', 9, 3, 2, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (99, N'Nike Air Jordan 1 Mid - Trắng - 41', 9, 3, 3, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (100, N'Nike Air Jordan 1 Mid - Trắng - 42', 9, 3, 4, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (101, N'Nike Air Jordan 1 Mid - Trắng - 43', 9, 3, 5, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (102, N'Nike Air Jordan 1 Mid - Trắng - 44', 9, 3, 6, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (103, N'Nike Air Jordan 1 Mid - Xám - 39', 9, 2, 1, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (104, N'Nike Air Jordan 1 Mid - Xám - 40', 9, 2, 2, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (105, N'Nike Air Jordan 1 Mid - Xám - 41', 9, 2, 3, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (106, N'Nike Air Jordan 1 Mid - Xám - 42', 9, 2, 4, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (107, N'Nike Air Jordan 1 Mid - Xám - 43', 9, 2, 5, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (108, N'Nike Air Jordan 1 Mid - Xám - 44', 9, 2, 6, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (109, N'Nike Air Jordan 1 Mid - Tím - 39', 9, 9, 1, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (110, N'Nike Air Jordan 1 Mid - Tím - 40', 9, 9, 2, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (111, N'Nike Air Jordan 1 Mid - Tím - 41', 9, 9, 3, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (112, N'Nike Air Jordan 1 Mid - Tím - 42', 9, 9, 4, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (113, N'Nike Air Jordan 1 Mid - Tím - 43', 9, 9, 5, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (114, N'Nike Air Jordan 1 Mid - Tím - 44', 9, 9, 6, 50, 3500000, 4500000, N'nike-air-jordan-1-mid-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (115, N'Nike Air Jordan 1 I High G - Đen - 39', 10, 1, 1, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (116, N'Nike Air Jordan 1 I High G - Đen - 40', 10, 1, 2, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (117, N'Nike Air Jordan 1 I High G - Đen - 41', 10, 1, 3, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (118, N'Nike Air Jordan 1 I High G - Đen - 42', 10, 1, 4, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (119, N'Nike Air Jordan 1 I High G - Đen - 43', 10, 1, 5, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (120, N'Nike Air Jordan 1 I High G - Đen - 44', 10, 1, 6, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (121, N'Nike Air Jordan 1 I High G - Xanh dương - 39', 10, 8, 1, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (122, N'Nike Air Jordan 1 I High G - Xanh dương - 40', 10, 8, 2, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (123, N'Nike Air Jordan 1 I High G - Xanh dương - 41', 10, 8, 3, 49, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (124, N'Nike Air Jordan 1 I High G - Xanh dương - 42', 10, 8, 4, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (125, N'Nike Air Jordan 1 I High G - Xanh dương - 43', 10, 8, 5, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (126, N'Nike Air Jordan 1 I High G - Xanh dương - 44', 10, 8, 6, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (127, N'Nike Air Jordan 1 I High G - Cam - 39', 10, 5, 1, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (128, N'Nike Air Jordan 1 I High G - Cam - 40', 10, 5, 2, 48, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (129, N'Nike Air Jordan 1 I High G - Cam - 41', 10, 5, 3, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (130, N'Nike Air Jordan 1 I High G - Cam - 42', 10, 5, 4, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (131, N'Nike Air Jordan 1 I High G - Cam - 43', 10, 5, 5, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (132, N'Nike Air Jordan 1 I High G - Cam - 44', 10, 5, 6, 50, 4000000, 5000000, N'nike-air-jordan-i-high-g-golf-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (133, N'Adidas Avryn - Trắng - 39', 11, 3, 1, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (134, N'Adidas Avryn - Trắng - 40', 11, 3, 2, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (135, N'Adidas Avryn - Trắng - 41', 11, 3, 3, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (136, N'Adidas Avryn - Trắng - 42', 11, 3, 4, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (137, N'Adidas Avryn - Trắng - 43', 11, 3, 5, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (138, N'Adidas Avryn - Trắng - 44', 11, 3, 6, 50, 2000000, 2600000, N'adidas-avryn-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (139, N'Adidas Avryn - Xám - 39', 11, 2, 1, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (140, N'Adidas Avryn - Xám - 40', 11, 2, 2, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (141, N'Adidas Avryn - Xám - 41', 11, 2, 3, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (142, N'Adidas Avryn - Xám - 42', 11, 2, 4, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (143, N'Adidas Avryn - Xám - 43', 11, 2, 5, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (144, N'Adidas Avryn - Xám - 44', 11, 2, 6, 50, 2000000, 2600000, N'adidas-avryn-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (145, N'Adidas Avryn - Đen - 39', 11, 1, 1, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (146, N'Adidas Avryn - Đen - 40', 11, 1, 2, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (147, N'Adidas Avryn - Đen - 41', 11, 1, 3, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (148, N'Adidas Avryn - Đen - 42', 11, 1, 4, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (149, N'Adidas Avryn - Đen - 43', 11, 1, 5, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (150, N'Adidas Avryn - Đen - 44', 11, 1, 6, 50, 2000000, 2600000, N'adidas-avryn-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (151, N'Adidas Ultraboost 1.0 - Trắng - 39', 12, 3, 1, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (152, N'Adidas Ultraboost 1.0 - Trắng - 40', 12, 3, 2, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (153, N'Adidas Ultraboost 1.0 - Trắng - 41', 12, 3, 3, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (154, N'Adidas Ultraboost 1.0 - Trắng - 42', 12, 3, 4, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (155, N'Adidas Ultraboost 1.0 - Trắng - 43', 12, 3, 5, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (156, N'Adidas Ultraboost 1.0 - Trắng - 44', 12, 3, 6, 50, 2300000, 2900000, N'adidas-ultraboost-v1-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (157, N'Adidas Ultraboost 1.0 - Đen - 39', 12, 1, 1, 50, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (158, N'Adidas Ultraboost 1.0 - Đen - 40', 12, 1, 2, 50, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (159, N'Adidas Ultraboost 1.0 - Đen - 41', 12, 1, 3, 50, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (160, N'Adidas Ultraboost 1.0 - Đen - 42', 12, 1, 4, 49, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (161, N'Adidas Ultraboost 1.0 - Đen - 43', 12, 1, 5, 50, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (162, N'Adidas Ultraboost 1.0 - Đen - 44', 12, 1, 6, 50, 2300000, 2900000, N'adidas-ultraboost-v1-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (163, N'Adidas Ultraboost 1.0 - Xanh lá - 39', 12, 7, 1, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (164, N'Adidas Ultraboost 1.0 - Xanh lá - 40', 12, 7, 2, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (165, N'Adidas Ultraboost 1.0 - Xanh lá - 41', 12, 7, 3, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (166, N'Adidas Ultraboost 1.0 - Xanh lá - 42', 12, 7, 4, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (167, N'Adidas Ultraboost 1.0 - Xanh lá - 43', 12, 7, 5, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (168, N'Adidas Ultraboost 1.0 - Xanh lá - 44', 12, 7, 6, 50, 2300000, 2900000, N'adidas-ultraboost-v1-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (169, N'Adidas Pureboost 23 - Đen - 39', 13, 1, 1, 50, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (170, N'Adidas Pureboost 23 - Đen - 40', 13, 1, 2, 50, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (171, N'Adidas Pureboost 23 - Đen - 41', 13, 1, 3, 49, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (172, N'Adidas Pureboost 23 - Đen - 42', 13, 1, 4, 50, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (173, N'Adidas Pureboost 23 - Đen - 43', 13, 1, 5, 50, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (174, N'Adidas Pureboost 23 - Đen - 44', 13, 1, 6, 50, 3000000, 3600000, N'adidas-pureboost-23-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (175, N'Adidas Pureboost 23 - Carbon - 39', 13, 11, 1, 50, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (176, N'Adidas Pureboost 23 - Carbon - 40', 13, 11, 2, 50, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (177, N'Adidas Pureboost 23 - Carbon - 41', 13, 11, 3, 50, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (178, N'Adidas Pureboost 23 - Carbon - 42', 13, 11, 4, 50, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (179, N'Adidas Pureboost 23 - Carbon - 43', 13, 11, 5, 49, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (180, N'Adidas Pureboost 23 - Carbon - 44', 13, 11, 6, 50, 3000000, 3600000, N'adidas-pureboost-23-carbon-1.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (181, N'Adidas Response Super - Trắng - 39', 14, 3, 1, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (182, N'Adidas Response Super - Trắng - 40', 14, 3, 2, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (183, N'Adidas Response Super - Trắng - 41', 14, 3, 3, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (184, N'Adidas Response Super - Trắng - 42', 14, 3, 4, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (185, N'Adidas Response Super - Trắng - 43', 14, 3, 5, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (186, N'Adidas Response Super - Trắng - 44', 14, 3, 6, 50, 2500000, 3100000, N'adidas-response-super-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (187, N'Adidas Response Super - Đen - 39', 14, 1, 1, 50, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (188, N'Adidas Response Super - Đen - 40', 14, 1, 2, 49, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (189, N'Adidas Response Super - Đen - 41', 14, 1, 3, 49, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (190, N'Adidas Response Super - Đen - 42', 14, 1, 4, 50, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (191, N'Adidas Response Super - Đen - 43', 14, 1, 5, 50, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (192, N'Adidas Response Super - Đen - 44', 14, 1, 6, 50, 2500000, 3100000, N'adidas-response-super-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (193, N'Adidas Dropset 2 Earth - Xanh lá - 39', 15, 7, 1, 50, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (194, N'Adidas Dropset 2 Earth - Xanh lá - 40', 15, 7, 2, 49, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (195, N'Adidas Dropset 2 Earth - Xanh lá - 41', 15, 7, 3, 50, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (196, N'Adidas Dropset 2 Earth - Xanh lá - 42', 15, 7, 4, 50, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (197, N'Adidas Dropset 2 Earth - Xanh lá - 43', 15, 7, 5, 50, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (198, N'Adidas Dropset 2 Earth - Xanh lá - 44', 15, 7, 6, 50, 1800000, 2600000, N'adidas-dropset-2-earth-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (199, N'Puma Rs-X 3D - Đen - 39', 16, 1, 1, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (200, N'Puma Rs-X 3D - Đen - 40', 16, 1, 2, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (201, N'Puma Rs-X 3D - Đen - 41', 16, 1, 4, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (202, N'Puma Rs-X 3D - Đen - 42', 16, 1, 4, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (203, N'Puma Rs-X 3D - Đen - 43', 16, 1, 5, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (204, N'Puma Rs-X 3D - Đen - 44', 16, 1, 6, 50, 2000000, 2500000, N'puma-rs-x-3d-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (205, N'Puma Rs-X 3D - Đỏ - 39', 16, 4, 1, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (206, N'Puma Rs-X 3D - Đỏ - 40', 16, 4, 2, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (207, N'Puma Rs-X 3D - Đỏ - 41', 16, 4, 3, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (208, N'Puma Rs-X 3D - Đỏ - 42', 16, 4, 4, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (209, N'Puma Rs-X 3D - Đỏ - 43', 16, 4, 5, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (210, N'Puma Rs-X 3D - Đỏ - 44', 16, 4, 6, 50, 2000000, 2500000, N'puma-rs-x-3d-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (211, N'Puma Slipstream Expedition - Vàng - 39', 17, 6, 1, 50, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (212, N'Puma Slipstream Expedition - Vàng - 40', 17, 6, 2, 49, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (213, N'Puma Slipstream Expedition - Vàng - 41', 17, 6, 4, 50, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (214, N'Puma Slipstream Expedition - Vàng - 42', 17, 6, 4, 50, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (215, N'Puma Slipstream Expedition - Vàng - 43', 17, 6, 5, 50, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (216, N'Puma Slipstream Expedition - Vàng - 44', 17, 6, 6, 50, 2300000, 2800000, N'puma-slipstream-expedition-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (217, N'Puma Slipstream Expedition - Nâu - 39', 17, 10, 1, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (218, N'Puma Slipstream Expedition - Nâu - 40', 17, 10, 2, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (219, N'Puma Slipstream Expedition - Nâu - 41', 17, 10, 3, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (220, N'Puma Slipstream Expedition - Nâu - 42', 17, 10, 4, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (221, N'Puma Slipstream Expedition - Nâu - 43', 17, 10, 5, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (222, N'Puma Slipstream Expedition - Nâu - 44', 17, 10, 6, 50, 2300000, 2800000, N'puma-slipstream-expedition-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (223, N'Puma Suede XL - Đen - 39', 18, 1, 1, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (224, N'Puma Suede XL - Đen - 40', 18, 1, 2, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (225, N'Puma Suede XL - Đen - 41', 18, 1, 4, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (226, N'Puma Suede XL - Đen - 42', 18, 1, 4, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (227, N'Puma Suede XL - Đen - 43', 18, 1, 5, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (228, N'Puma Suede XL - Đen - 44', 18, 1, 6, 50, 2600000, 3100000, N'puma-suede-xl-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (229, N'Puma Suede XL - Xanh dương - 39', 18, 8, 1, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (230, N'Puma Suede XL - Xanh dương - 40', 18, 8, 2, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (231, N'Puma Suede XL - Xanh dương - 41', 18, 8, 3, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (232, N'Puma Suede XL - Xanh dương - 42', 18, 8, 4, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (233, N'Puma Suede XL - Xanh dương - 43', 18, 8, 5, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (234, N'Puma Suede XL - Xanh dương - 44', 18, 8, 6, 50, 2600000, 3100000, N'puma-suede-xl-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (235, N'Adidas Palermo Leather - Trắng - 39', 19, 3, 1, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (236, N'Adidas Palermo Leather - Trắng - 40', 19, 3, 2, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (237, N'Adidas Palermo Leather - Trắng - 41', 19, 3, 3, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (238, N'Adidas Palermo Leather - Trắng - 42', 19, 3, 4, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (239, N'Adidas Palermo Leather - Trắng - 43', 19, 3, 5, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (240, N'Adidas Palermo Leather - Trắng - 44', 19, 3, 6, 50, 2900000, 3400000, N'puma-palermo-leather-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (241, N'Adidas Palermo Leather - Xám - 39', 19, 2, 1, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (242, N'Adidas Palermo Leather - Xám - 40', 19, 2, 2, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (243, N'Adidas Palermo Leather - Xám - 41', 19, 2, 3, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (244, N'Adidas Palermo Leather - Xám - 42', 19, 2, 4, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (245, N'Adidas Palermo Leather - Xám - 43', 19, 2, 5, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (246, N'Adidas Palermo Leather - Xám - 44', 19, 2, 6, 50, 2900000, 3400000, N'puma-palermo-leather-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (247, N'Puma 180 Perf - Trắng - 39', 20, 3, 1, 50, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (248, N'Puma 180 Perf - Trắng - 40', 20, 3, 2, 49, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (249, N'Puma 180 Perf - Trắng - 41', 20, 3, 3, 50, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (250, N'Puma 180 Perf - Trắng - 42', 20, 3, 4, 50, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (251, N'Puma 180 Perf - Trắng - 43', 20, 3, 5, 50, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (252, N'Puma 180 Perf - Trắng - 44', 20, 3, 6, 50, 1800000, 2300000, N'puma-180-perf-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (253, N'Vans Knu Skool - Đen - 39', 21, 1, 1, 48, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (254, N'Vans Knu Skool - Đen - 40', 21, 1, 2, 47, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (255, N'Vans Knu Skool - Đen - 41', 21, 1, 3, 50, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (256, N'Vans Knu Skool - Đen - 42', 21, 1, 4, 50, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (257, N'Vans Knu Skool - Đen - 43', 21, 1, 5, 50, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (258, N'Vans Knu Skool - Đen - 44', 21, 1, 6, 50, 2000000, 2500000, N'vans-knu-skool-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (259, N'Vans Knu Skool - Đỏ - 39', 21, 4, 1, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (260, N'Vans Knu Skool - Đỏ - 40', 21, 4, 2, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (261, N'Vans Knu Skool - Đỏ - 41', 21, 4, 3, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (262, N'Vans Knu Skool - Đỏ - 42', 21, 4, 4, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (263, N'Vans Knu Skool - Đỏ - 43', 21, 4, 5, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (264, N'Vans Knu Skool - Đỏ - 44', 21, 4, 6, 50, 2000000, 2500000, N'vans-knu-skool-do.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (265, N'Vans Knu Skool - Hồng - 39', 21, 12, 1, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (266, N'Vans Knu Skool - Hồng - 40', 21, 12, 2, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (267, N'Vans Knu Skool - Hồng - 41', 21, 12, 3, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (268, N'Vans Knu Skool - Hồng - 42', 21, 12, 4, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (269, N'Vans Knu Skool - Hồng - 43', 21, 12, 5, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (270, N'Vans Knu Skool - Hồng - 44', 21, 12, 6, 50, 2000000, 2500000, N'vans-knu-skool-hong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (271, N'Vans Old Skool - Trắng - 39', 22, 3, 1, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (272, N'Vans Old Skool - Trắng - 40', 22, 3, 2, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (273, N'Vans Old Skool - Trắng - 41', 22, 3, 3, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (274, N'Vans Old Skool - Trắng - 42', 22, 3, 4, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (275, N'Vans Old Skool - Trắng - 43', 22, 3, 5, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (276, N'Vans Old Skool - Trắng - 44', 22, 3, 6, 50, 2200000, 2700000, N'vans-old-skool-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (277, N'Vans Old Skool - Xanh dương - 39', 22, 8, 1, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (278, N'Vans Old Skool - Xanh dương - 40', 22, 8, 2, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (279, N'Vans Old Skool - Xanh dương - 41', 22, 8, 3, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (280, N'Vans Old Skool - Xanh dương - 42', 22, 8, 4, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (281, N'Vans Old Skool - Xanh dương - 43', 22, 8, 5, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (282, N'Vans Old Skool - Xanh dương - 44', 22, 8, 6, 50, 2200000, 2700000, N'vans-old-skool-xanh-duong.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (283, N'Vans Old Skool - Vàng - 39', 22, 6, 1, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (284, N'Vans Old Skool - Vàng - 40', 22, 6, 2, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (285, N'Vans Old Skool - Vàng - 41', 22, 6, 3, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (286, N'Vans Old Skool - Vàng - 42', 22, 6, 4, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (287, N'Vans Old Skool - Vàng - 43', 22, 6, 5, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (288, N'Vans Old Skool - Vàng - 44', 22, 6, 6, 50, 2200000, 2700000, N'vans-old-skool-vang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (289, N'Vans Ave 2.0 - Xám - 39', 23, 2, 1, 49, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (290, N'Vans Ave 2.0 - Xám - 40', 23, 2, 2, 48, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (291, N'Vans Ave 2.0 - Xám - 41', 23, 2, 3, 50, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (292, N'Vans Ave 2.0 - Xám - 42', 23, 2, 4, 50, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (293, N'Vans Ave 2.0 - Xám - 43', 23, 2, 5, 50, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (294, N'Vans Ave 2.0 - Xám - 44', 23, 2, 6, 50, 2400000, 2900000, N'vans-ave-v2-xam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (295, N'Vans Ave 2.0 - Đen - 39', 23, 1, 1, 48, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (296, N'Vans Ave 2.0 - Đen - 40', 23, 1, 2, 50, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (297, N'Vans Ave 2.0 - Đen - 41', 23, 1, 3, 50, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (298, N'Vans Ave 2.0 - Đen - 42', 23, 1, 4, 50, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (299, N'Vans Ave 2.0 - Đen - 43', 23, 1, 5, 50, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
GO
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (300, N'Vans Ave 2.0 - Đen - 44', 23, 1, 6, 50, 2400000, 2900000, N'vans-ave-v2-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (301, N'Vans Ave 2.0 - Tím - 39', 23, 9, 1, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (302, N'Vans Ave 2.0 - Tím - 40', 23, 9, 2, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (303, N'Vans Ave 2.0 - Tím - 41', 23, 9, 3, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (304, N'Vans Ave 2.0 - Tím - 42', 23, 9, 4, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (305, N'Vans Ave 2.0 - Tím - 43', 23, 9, 5, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (306, N'Vans Ave 2.0 - Tím - 44', 23, 9, 6, 50, 2400000, 2900000, N'vans-ave-v2-tim.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (307, N'Vans Cruze Too Comfycush - Nâu - 39', 24, 10, 1, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (308, N'Vans Cruze Too Comfycush - Nâu - 40', 24, 10, 2, 49, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (309, N'Vans Cruze Too Comfycush - Nâu - 41', 24, 10, 3, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (310, N'Vans Cruze Too Comfycush - Nâu - 42', 24, 10, 4, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (311, N'Vans Cruze Too Comfycush - Nâu - 43', 24, 10, 5, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (312, N'Vans Cruze Too Comfycush - Nâu - 44', 24, 10, 6, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-nau.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (313, N'Vans Cruze Too Comfycush - Xanh lá - 39', 24, 7, 1, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (314, N'Vans Cruze Too Comfycush - Xanh lá - 40', 24, 7, 2, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (315, N'Vans Cruze Too Comfycush - Xanh lá - 41', 24, 7, 3, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (316, N'Vans Cruze Too Comfycush - Xanh lá - 42', 24, 7, 4, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (317, N'Vans Cruze Too Comfycush - Xanh lá - 43', 24, 7, 5, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (318, N'Vans Cruze Too Comfycush - Xanh lá - 44', 24, 7, 6, 50, 2600000, 3100000, N'vans-cruze-too-comfycush-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (319, N'Vans SK8 Hi - Đen - 39', 25, 1, 1, 50, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (320, N'Vans SK8 Hi - Đen - 40', 25, 1, 2, 48, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (321, N'Vans SK8 Hi - Đen - 41', 25, 1, 3, 50, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (322, N'Vans SK8 Hi - Đen - 42', 25, 1, 4, 50, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (323, N'Vans SK8 Hi - Đen - 43', 25, 1, 5, 50, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (324, N'Vans SK8 Hi - Đen - 44', 25, 1, 6, 50, 2800000, 3300000, N'vans-sk8-hi-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (325, N'Vớ Nike Plus Cushion - Trắng', 26, 3, 7, 44, 100000, 200000, N'nike-plus-cushion-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (326, N'Vớ Nike Max Cush - Trắng', 27, 3, 7, 46, 100000, 200000, N'nike-max-cush-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (327, N'Vớ Nike Max Cushion No Show - Đen', 28, 1, 7, 49, 100000, 200000, N'nike-max-cushion-no-show-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (328, N'Dây giày Nike - Trắng', 29, 3, 7, 46, 100000, 150000, N'nike-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (329, N'Dây giày Adidas - Trắng', 30, 3, 7, 50, 100000, 150000, N'adidas-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (330, N'Dây giày Vans - Trắng', 31, 3, 7, 50, 100000, 150000, N'vans-trang.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (331, N'Dây giày Vans - Đen', 31, 1, 7, 50, 100000, 150000, N'vans-den.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (332, N'Miếng lót giày Sofsole Air - Cam', 32, 5, 7, 48, 500000, 700000, N'sofsole-air-cam.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (333, N'Miếng lót giày Superfeet Run Comfort - Xanh lá', 33, 7, 7, 50, 1000000, 1200000, N'superfeet-run-comfort-xanh-la.png', NULL, 1)
INSERT [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (334, N'Miếng lót giày Superfeet Run Comfort - Xanh dương', 33, 8, 7, 49, 1000000, 1200000, N'superfeet-run-comfort-xanh-duong.png', NULL, 1)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductTypes] ON 

INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (1, N'Giày', NULL, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (2, N'Phụ kiện khác', NULL, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (3, N'Giày Sneakers', 1, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (4, N'Giày chạy bộ', 1, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (5, N'Giày golf', 1, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (6, N'Vớ', 2, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (7, N'Dây giày', 2, 1)
INSERT [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (8, N'Miếng lót giày', 2, 1)
SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (1, N'39', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (2, N'40', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (3, N'41', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (4, N'42', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (5, N'43', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (6, N'44', 1)
INSERT [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (7, N'Free size', 1)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (1, N'Slider 1', N'slider-1.png', 1, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (2, N'Slider 2', N'slider-2.png', 2, 1)
INSERT [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (3, N'Slider 3', N'slider-3.png', 3, 1)
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Suppliers] ON 

INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (1, N'Nike', N'0123456789', N'nike@example.com', N'Q. 1, TP. HCM', NULL, 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (2, N'Adidas', N'0987654321', N'adidas@example.com', N'Q. Thủ Đức, TP. HCM', NULL, 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (3, N'Puma', N'0123123123', N'puma@example.com', N'Q. 3, TP. HCM', NULL, 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (4, N'Vans', N'0123123113', N'vans@example.com', N'Q. 4, TP. HCM', NULL, 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (5, N'Sofsole', N'0987654675', N'sofsole@example.com', N'Q. Tân Phú, TP. HCM', NULL, 1)
INSERT [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (6, N'Superfeet', N'0123123974', N'superfeet@example.com', N'Q. 6, TP. HCM', NULL, 1)
SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Carts_CartId] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Carts_CartId]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Comments_ParentCommentId] FOREIGN KEY([ParentCommentId])
REFERENCES [dbo].[Comments] ([Id])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Comments_ParentCommentId]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Models_ModelId]
GO
ALTER TABLE [dbo].[GoodsReceivedNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GoodsReceivedNoteDetails_GoodsReceivedNotes_GoodsReceivedNoteId] FOREIGN KEY([GoodsReceivedNoteId])
REFERENCES [dbo].[GoodsReceivedNotes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GoodsReceivedNoteDetails] CHECK CONSTRAINT [FK_GoodsReceivedNoteDetails_GoodsReceivedNotes_GoodsReceivedNoteId]
GO
ALTER TABLE [dbo].[GoodsReceivedNoteDetails]  WITH CHECK ADD  CONSTRAINT [FK_GoodsReceivedNoteDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[GoodsReceivedNoteDetails] CHECK CONSTRAINT [FK_GoodsReceivedNoteDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[GoodsReceivedNotes]  WITH CHECK ADD  CONSTRAINT [FK_GoodsReceivedNotes_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[GoodsReceivedNotes] CHECK CONSTRAINT [FK_GoodsReceivedNotes_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Models_ModelId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoices] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Brands_BrandId] FOREIGN KEY([BrandId])
REFERENCES [dbo].[Brands] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Brands_BrandId]
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_ProductTypes_ProductTypeId] FOREIGN KEY([ProductTypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_ProductTypes_ProductTypeId]
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Suppliers_SupplierId] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Suppliers_SupplierId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Colors_ColorId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Models_ModelId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Sizes_SizeId]
GO
ALTER TABLE [dbo].[ProductTypes]  WITH CHECK ADD  CONSTRAINT [FK_ProductTypes_ProductTypes_ParentProductTypeId] FOREIGN KEY([ParentProductTypeId])
REFERENCES [dbo].[ProductTypes] ([Id])
GO
ALTER TABLE [dbo].[ProductTypes] CHECK CONSTRAINT [FK_ProductTypes_ProductTypes_ParentProductTypeId]
GO
ALTER TABLE [dbo].[Promotions]  WITH CHECK ADD  CONSTRAINT [FK_Promotions_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
GO
ALTER TABLE [dbo].[Promotions] CHECK CONSTRAINT [FK_Promotions_Models_ModelId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Models_ModelId]
GO
ALTER TABLE [dbo].[Sliders]  WITH CHECK ADD  CONSTRAINT [FK_Sliders_Models_ModelId] FOREIGN KEY([ModelId])
REFERENCES [dbo].[Models] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sliders] CHECK CONSTRAINT [FK_Sliders_Models_ModelId]
GO
ALTER TABLE [dbo].[WishlistDetails]  WITH CHECK ADD  CONSTRAINT [FK_WishlistDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistDetails] CHECK CONSTRAINT [FK_WishlistDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[WishlistDetails]  WITH CHECK ADD  CONSTRAINT [FK_WishlistDetails_Wishlists_WishlistId] FOREIGN KEY([WishlistId])
REFERENCES [dbo].[Wishlists] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WishlistDetails] CHECK CONSTRAINT [FK_WishlistDetails_Wishlists_WishlistId]
GO
ALTER TABLE [dbo].[Wishlists]  WITH CHECK ADD  CONSTRAINT [FK_Wishlists_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Wishlists] CHECK CONSTRAINT [FK_Wishlists_AspNetUsers_UserId]
GO
