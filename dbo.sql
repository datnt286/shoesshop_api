/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 14002056 (14.00.2056)
 Source Host           : .:1433
 Source Catalog        : Shoesshop
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14002056 (14.00.2056)
 File Encoding         : 65001

 Date: 16/07/2024 12:24:21
*/


-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type IN ('U'))
	DROP TABLE [dbo].[__EFMigrationsHistory]
GO

CREATE TABLE [dbo].[__EFMigrationsHistory] (
  [MigrationId] nvarchar(150) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProductVersion] nvarchar(32) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[__EFMigrationsHistory] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of __EFMigrationsHistory
-- ----------------------------
INSERT INTO [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240715130357_init', N'7.0.20')
GO


-- ----------------------------
-- Table structure for AspNetRoleClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoleClaims]
GO

CREATE TABLE [dbo].[AspNetRoleClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoleClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoleClaims
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetRoleClaims] OFF
GO


-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetRoles]
GO

CREATE TABLE [dbo].[AspNetRoles] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetRoles
-- ----------------------------
INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'79f75545-a98b-467c-82a2-fe313485b52e', N'Customer', N'CUSTOMER', NULL)
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8aac26df-bab8-46ba-91a4-9cc8d808345c', N'WarehouseStaff', N'WAREHOUSESTAFF', NULL)
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'8e61c728-3274-4c7f-b14b-a129428e333e', N'SalesStaff', N'SALESSTAFF', NULL)
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'af9b20f6-58f6-4af5-9e7b-6ae7aa6698f2', N'Manager', N'MANAGER', NULL)
GO

INSERT INTO [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b3bbd4ce-8ba5-4862-a051-cb303ee7a2ea', N'Shipper', N'SHIPPER', NULL)
GO


-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserClaims]
GO

CREATE TABLE [dbo].[AspNetUserClaims] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ClaimType] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ClaimValue] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserClaims] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserClaims
-- ----------------------------
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON
GO

SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO


-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserLogins]
GO

CREATE TABLE [dbo].[AspNetUserLogins] (
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderKey] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [ProviderDisplayName] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserLogins] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserLogins
-- ----------------------------

-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserRoles]
GO

CREATE TABLE [dbo].[AspNetUserRoles] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [RoleId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUserRoles] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserRoles
-- ----------------------------
INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'79f75545-a98b-467c-82a2-fe313485b52e')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9f7d00a8-e257-498f-9d99-7535acb40dd1', N'79f75545-a98b-467c-82a2-fe313485b52e')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'037905de-c479-4fae-b990-f9a0da11e07f', N'8aac26df-bab8-46ba-91a4-9cc8d808345c')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bc58c1f3-97be-4b80-9053-ad7770e3334e', N'8e61c728-3274-4c7f-b14b-a129428e333e')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'48d9ff48-ad91-4b4a-bcc8-5a09568e3204', N'af9b20f6-58f6-4af5-9e7b-6ae7aa6698f2')
GO

INSERT INTO [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'62d72144-1b96-4a85-b6da-5fac95b1f094', N'b3bbd4ce-8ba5-4862-a051-cb303ee7a2ea')
GO


-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUsers]
GO

CREATE TABLE [dbo].[AspNetUsers] (
  [Id] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Avatar] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL,
  [Role] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Salary] int  NULL,
  [UserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedUserName] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NormalizedEmail] nvarchar(256) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [EmailConfirmed] bit  NOT NULL,
  [PasswordHash] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [SecurityStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ConcurrencyStamp] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumberConfirmed] bit  NOT NULL,
  [TwoFactorEnabled] bit  NOT NULL,
  [LockoutEnd] datetimeoffset(7)  NULL,
  [LockoutEnabled] bit  NOT NULL,
  [AccessFailedCount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[AspNetUsers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUsers
-- ----------------------------
INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'037905de-c479-4fae-b990-f9a0da11e07f', N'Nguyễn Văn WarehouseStaff', N'Xã Lâu Thượng, Huyện Võ Nhai, Tỉnh Thái Nguyên', NULL, N'null', N'1', N'WarehouseStaff', N'12000000', N'warehousestaff', N'WAREHOUSESTAFF', N'warehousestaff@gmail.com', N'WAREHOUSESTAFF@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEPoQYMqVI0wRkWM3sznOEMBy20kvYliOWfiB7w+7vpIXqVv26nX4JfX3wHOa+xJQHg==', N'XDFJQOEB47UJEL75UXF25IAGTDZIUJVC', N'03139ef2-5982-463b-b004-6ff4599a9c68', N'0987654324', N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'48d9ff48-ad91-4b4a-bcc8-5a09568e3204', N'Nguyễn Thành Đạt', N'Xã Vũ Lăng, Huyện Bắc Sơn, Tỉnh Lạng Sơn', N'2024-07-16-11-56-31_admin.jpg', N'null', N'1', N'Manager', N'20000000', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEMxEvMlmtMEMpHR351D9miYtWb/T5Kn21s6mxHUSOkoRgx54BWnqJekh1vywYuadSg==', N'SOZ2USUOFBM5NHZ55BQX3AARHOUPP43N', N'd6cf2a92-471b-4b39-a451-afa6713556c0', N'0987654321', N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'62d72144-1b96-4a85-b6da-5fac95b1f094', N'Nguyễn Văn Shipper', N'Xã Cai Kinh, Huyện Hữu Lũng, Tỉnh Lạng Sơn', NULL, N'null', N'1', N'Shipper', N'10000000', N'shipper', N'SHIPPER', N'shipper@gmail.com', N'SHIPPER@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEMdSKAc6sjSNR/hb3u6pDKRX9ookCD+i8/NpMSxZAvXlMEZ2S80uzMY4eSnJXg0Uaw==', N'B77CB2S66BZJQVBUZ6OEXLRI2L4WYGUZ', N'71c3a211-639e-4001-937f-061e154d4649', N'0987654322', N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'Nguyễn Thành Đạt', N'Xã Vũ Lăng, Huyện Bắc Sơn, Tỉnh Lạng Sơn', N'2024-07-16-11-46-22_dat.jpg', NULL, N'1', NULL, NULL, N'dat', N'DAT', N'datnt286@gmail.com', N'DATNT286@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEDUzq1j/Ym1VjEDYBB7Qzw30PsohxKjgXzyuBB2h71/z/QkLrrrvPU8vP0ZniizKBQ==', N'XXKUU3ZFNPYYRJMROADFZ7RYJC3IOLOO', N'9e17368a-0312-434a-85f2-4e028df68172', N'0123456789', N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9f7d00a8-e257-498f-9d99-7535acb40dd1', NULL, NULL, NULL, NULL, N'1', NULL, NULL, N'dang', N'DANG', N'dang@gmail.com', N'DANG@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAEO7bm1KKas0kUwYocdcfgdWxB26qv3Z85fs5juHGAyFvyTeBOlxbS6NWcp8lyFfcDw==', N'PUQRKXRHXCDMMUBZASTQRSPNZII7TBHF', N'092bf3f1-43e4-417c-994d-7b457b9b6a2a', NULL, N'0', N'0', NULL, N'1', N'0')
GO

INSERT INTO [dbo].[AspNetUsers] ([Id], [Name], [Address], [Avatar], [Description], [Status], [Role], [Salary], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc58c1f3-97be-4b80-9053-ad7770e3334e', N'Nguyễn Văn SaleStaff', N'Xã Phủ Lý, Huyện Phú Lương, Tỉnh Thái Nguyên', NULL, N'null', N'1', N'SalesStaff', N'15000000', N'salesstaff', N'SALESSTAFF', N'salesstaff@gmail.com', N'SALESSTAFF@GMAIL.COM', N'0', N'AQAAAAIAAYagAAAAED34BVmE7CpHcf+SBNB/YDoi13b4gfHInAUS8LGdWLh4Fy7sJsEkcdasbn/S8kagXQ==', N'3J6OWYDI64EG7LESBXXX7DNYELLQZVFL', N'96dc862a-a26f-4d37-90ae-d17497d6951f', N'0987654323', N'0', N'0', NULL, N'1', N'0')
GO


-- ----------------------------
-- Table structure for AspNetUserTokens
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type IN ('U'))
	DROP TABLE [dbo].[AspNetUserTokens]
GO

CREATE TABLE [dbo].[AspNetUserTokens] (
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [LoginProvider] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Name] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Value] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[AspNetUserTokens] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of AspNetUserTokens
-- ----------------------------

-- ----------------------------
-- Table structure for Brands
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Brands]') AND type IN ('U'))
	DROP TABLE [dbo].[Brands]
GO

CREATE TABLE [dbo].[Brands] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Brands] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Brands
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Brands] ON
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'1', N'Nike', N'1')
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'2', N'Adidas', N'1')
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'3', N'Puma', N'1')
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'4', N'Vans', N'1')
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'5', N'Sofsole', N'1')
GO

INSERT INTO [dbo].[Brands] ([Id], [Name], [Status]) VALUES (N'6', N'Superfeet', N'1')
GO

SET IDENTITY_INSERT [dbo].[Brands] OFF
GO


-- ----------------------------
-- Table structure for CartDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CartDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[CartDetails]
GO

CREATE TABLE [dbo].[CartDetails] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [CartId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [Price] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[CartDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CartDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CartDetails] ON
GO

SET IDENTITY_INSERT [dbo].[CartDetails] OFF
GO


-- ----------------------------
-- Table structure for Carts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Carts]') AND type IN ('U'))
	DROP TABLE [dbo].[Carts]
GO

CREATE TABLE [dbo].[Carts] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreatedDate] datetime2(7)  NOT NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Carts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Carts
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Carts] ON
GO

INSERT INTO [dbo].[Carts] ([Id], [UserId], [CreatedDate], [Status]) VALUES (N'7', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-16 11:46:46.9791445', N'1')
GO

SET IDENTITY_INSERT [dbo].[Carts] OFF
GO


-- ----------------------------
-- Table structure for Colors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Colors]') AND type IN ('U'))
	DROP TABLE [dbo].[Colors]
GO

CREATE TABLE [dbo].[Colors] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Colors] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Colors
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Colors] ON
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'1', N'Đen', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'2', N'Xám', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'3', N'Trắng', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'4', N'Đỏ', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'5', N'Cam', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'6', N'Vàng', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'7', N'Xanh lá', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'8', N'Xanh dương', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'9', N'Tím', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'10', N'Nâu', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'11', N'Carbon', N'1')
GO

INSERT INTO [dbo].[Colors] ([Id], [Name], [Status]) VALUES (N'12', N'Hồng', N'1')
GO

SET IDENTITY_INSERT [dbo].[Colors] OFF
GO


-- ----------------------------
-- Table structure for Comments
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Comments]') AND type IN ('U'))
	DROP TABLE [dbo].[Comments]
GO

CREATE TABLE [dbo].[Comments] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelId] int  NOT NULL,
  [ParentCommentId] int  NULL,
  [Content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateDate] datetime2(7)  NOT NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Comments] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Comments
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Comments] ON
GO

SET IDENTITY_INSERT [dbo].[Comments] OFF
GO


-- ----------------------------
-- Table structure for GoodsReceivedNoteDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsReceivedNoteDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsReceivedNoteDetails]
GO

CREATE TABLE [dbo].[GoodsReceivedNoteDetails] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [GoodsReceivedNoteId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [ImportPrice] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[GoodsReceivedNoteDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsReceivedNoteDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GoodsReceivedNoteDetails] ON
GO

SET IDENTITY_INSERT [dbo].[GoodsReceivedNoteDetails] OFF
GO


-- ----------------------------
-- Table structure for GoodsReceivedNotes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GoodsReceivedNotes]') AND type IN ('U'))
	DROP TABLE [dbo].[GoodsReceivedNotes]
GO

CREATE TABLE [dbo].[GoodsReceivedNotes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateDate] datetime2(7)  NOT NULL,
  [Total] int  NOT NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[GoodsReceivedNotes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GoodsReceivedNotes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[GoodsReceivedNotes] ON
GO

SET IDENTITY_INSERT [dbo].[GoodsReceivedNotes] OFF
GO


-- ----------------------------
-- Table structure for Images
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type IN ('U'))
	DROP TABLE [dbo].[Images]
GO

CREATE TABLE [dbo].[Images] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Images] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Images
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Images] ON
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'1', N'nike-air-force-1-07-white-1.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'2', N'nike-air-force-1-07-white-2.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'3', N'nike-air-force-1-07-white-3.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'4', N'nike-air-force-1-07-white-4.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'5', N'nike-air-force-1-07-white-5.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'6', N'nike-air-force-1-07-black-1.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'7', N'nike-air-force-1-07-black-2.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'8', N'nike-air-force-1-07-black-3.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'9', N'nike-air-force-1-07-black-4.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'10', N'nike-air-force-1-07-black-5.png', N'1')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'11', N'nike-air-force-1-07-easyon-white-1.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'12', N'nike-air-force-1-07-easyon-white-2.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'13', N'nike-air-force-1-07-easyon-white-3.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'14', N'nike-air-force-1-07-easyon-white-4.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'15', N'nike-air-force-1-07-easyon-white-5.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'16', N'nike-air-force-1-07-easyon-black-1.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'17', N'nike-air-force-1-07-easyon-black-2.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'18', N'nike-air-force-1-07-easyon-black-3.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'19', N'nike-air-force-1-07-easyon-black-4.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'20', N'nike-air-force-1-07-easyon-black-5.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'21', N'nike-air-force-1-07-easyon-blue-1.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'22', N'nike-air-force-1-07-easyon-blue-2.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'23', N'nike-air-force-1-07-easyon-blue-3.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'24', N'nike-air-force-1-07-easyon-blue-4.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'25', N'nike-air-force-1-07-easyon-blue-5.png', N'2')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'26', N'nike-air-force-1-07-lv8-white-1.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'27', N'nike-air-force-1-07-lv8-white-2.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'28', N'nike-air-force-1-07-lv8-white-3.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'29', N'nike-air-force-1-07-lv8-white-4.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'30', N'nike-air-force-1-07-lv8-white-5.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'31', N'nike-air-force-1-07-lv8-grey-1.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'32', N'nike-air-force-1-07-lv8-grey-2.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'33', N'nike-air-force-1-07-lv8-grey-3.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'34', N'nike-air-force-1-07-lv8-grey-4.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'35', N'nike-air-force-1-07-lv8-grey-5.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'36', N'nike-air-force-1-07-lv8-brown-1.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'37', N'nike-air-force-1-07-lv8-brown-2.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'38', N'nike-air-force-1-07-lv8-brown-3.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'39', N'nike-air-force-1-07-lv8-brown-4.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'40', N'nike-air-force-1-07-lv8-brown-5.png', N'3')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'41', N'nike-air-force-1-07-lv8-evo-1.png', N'4')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'42', N'nike-air-force-1-07-lv8-evo-2.png', N'4')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'43', N'nike-air-force-1-07-lv8-evo-3.png', N'4')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'44', N'nike-air-force-1-07-lv8-evo-4.png', N'4')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'45', N'nike-air-force-1-07-lv8-evo-5.png', N'4')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'46', N'nike-air-force-1-07-next-nature-se-white-1.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'47', N'nike-air-force-1-07-next-nature-se-white-2.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'48', N'nike-air-force-1-07-next-nature-se-white-3.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'49', N'nike-air-force-1-07-next-nature-se-white-4.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'50', N'nike-air-force-1-07-next-nature-se-white-5.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'51', N'nike-air-force-1-07-next-nature-se-green-1.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'52', N'nike-air-force-1-07-next-nature-se-green-2.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'53', N'nike-air-force-1-07-next-nature-se-green-3.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'54', N'nike-air-force-1-07-next-nature-se-green-4.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'55', N'nike-air-force-1-07-next-nature-se-green-5.png', N'5')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'56', N'nike-air-force-1-low-evo-1.png', N'6')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'57', N'nike-air-force-1-low-evo-2.png', N'6')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'58', N'nike-air-force-1-low-evo-3.png', N'6')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'59', N'nike-air-force-1-low-evo-4.png', N'6')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'60', N'nike-air-force-1-low-evo-5.png', N'6')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'61', N'nike-air-force-1-shadow-1.png', N'7')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'62', N'nike-air-force-1-shadow-2.png', N'7')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'63', N'nike-air-force-1-shadow-3.png', N'7')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'64', N'nike-air-force-1-shadow-4.png', N'7')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'65', N'nike-air-force-1-shadow-5.png', N'7')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'66', N'nike-air-jordan-1-low-white-1.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'67', N'nike-air-jordan-1-low-white-2.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'68', N'nike-air-jordan-1-low-white-3.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'69', N'nike-air-jordan-1-low-white-4.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'70', N'nike-air-jordan-1-low-white-5.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'71', N'nike-air-jordan-1-low-red-1.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'72', N'nike-air-jordan-1-low-red-2.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'73', N'nike-air-jordan-1-low-red-3.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'74', N'nike-air-jordan-1-low-red-4.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'75', N'nike-air-jordan-1-low-red-5.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'76', N'nike-air-jordan-1-low-blue-1.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'77', N'nike-air-jordan-1-low-blue-2.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'78', N'nike-air-jordan-1-low-blue-3.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'79', N'nike-air-jordan-1-low-blue-4.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'80', N'nike-air-jordan-1-low-blue-5.png', N'8')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'81', N'nike-air-jordan-1-mid-white-1.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'82', N'nike-air-jordan-1-mid-white-2.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'83', N'nike-air-jordan-1-mid-white-3.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'84', N'nike-air-jordan-1-mid-white-4.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'85', N'nike-air-jordan-1-mid-white-5.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'86', N'nike-air-jordan-1-mid-gray-1.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'87', N'nike-air-jordan-1-mid-gray-2.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'88', N'nike-air-jordan-1-mid-gray-3.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'89', N'nike-air-jordan-1-mid-gray-4.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'90', N'nike-air-jordan-1-mid-gray-5.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'91', N'nike-air-jordan-1-mid-purple-1.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'92', N'nike-air-jordan-1-mid-purple-2.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'93', N'nike-air-jordan-1-mid-purple-3.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'94', N'nike-air-jordan-1-mid-purple-4.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'95', N'nike-air-jordan-1-mid-purple-5.png', N'9')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'96', N'nike-air-jordan-i-high-g-golf-black-1.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'97', N'nike-air-jordan-i-high-g-golf-black-2.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'98', N'nike-air-jordan-i-high-g-golf-black-3.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'99', N'nike-air-jordan-i-high-g-golf-black-4.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'100', N'nike-air-jordan-i-high-g-golf-black-5.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'101', N'nike-air-jordan-i-high-g-golf-blue-1.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'102', N'nike-air-jordan-i-high-g-golf-blue-2.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'103', N'nike-air-jordan-i-high-g-golf-blue-3.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'104', N'nike-air-jordan-i-high-g-golf-blue-4.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'105', N'nike-air-jordan-i-high-g-golf-blue-5.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'106', N'nike-air-jordan-i-high-g-golf-orange-1.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'107', N'nike-air-jordan-i-high-g-golf-orange-2.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'108', N'nike-air-jordan-i-high-g-golf-orange-3.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'109', N'nike-air-jordan-i-high-g-golf-orange-4.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'110', N'nike-air-jordan-i-high-g-golf-orange-5.png', N'10')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'111', N'adidas-avryn-white-1.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'112', N'adidas-avryn-white-2.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'113', N'adidas-avryn-white-3.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'114', N'adidas-avryn-white-4.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'115', N'adidas-avryn-white-5.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'116', N'adidas-avryn-grey-1.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'117', N'adidas-avryn-grey-2.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'118', N'adidas-avryn-grey-3.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'119', N'adidas-avryn-grey-4.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'120', N'adidas-avryn-grey-5.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'121', N'adidas-avryn-black-1.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'122', N'adidas-avryn-black-2.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'123', N'adidas-avryn-black-3.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'124', N'adidas-avryn-black-4.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'125', N'adidas-avryn-black-5.png', N'11')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'126', N'adidas-ultraboost-v1-white-1.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'127', N'adidas-ultraboost-v1-white-2.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'128', N'adidas-ultraboost-v1-white-3.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'129', N'adidas-ultraboost-v1-white-4.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'130', N'adidas-ultraboost-v1-white-5.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'131', N'adidas-ultraboost-v1-black-1.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'132', N'adidas-ultraboost-v1-black-2.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'133', N'adidas-ultraboost-v1-black-3.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'134', N'adidas-ultraboost-v1-black-4.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'135', N'adidas-ultraboost-v1-black-5.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'136', N'adidas-ultraboost-v1-green-1.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'137', N'adidas-ultraboost-v1-green-2.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'138', N'adidas-ultraboost-v1-green-3.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'139', N'adidas-ultraboost-v1-green-4.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'140', N'adidas-ultraboost-v1-green-5.png', N'12')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'141', N'adidas-pureboost-23-black-1.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'142', N'adidas-pureboost-23-black-2.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'143', N'adidas-pureboost-23-black-3.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'144', N'adidas-pureboost-23-black-4.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'145', N'adidas-pureboost-23-black-5.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'146', N'adidas-pureboost-23-carbon-1.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'147', N'adidas-pureboost-23-carbon-2.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'148', N'adidas-pureboost-23-carbon-3.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'149', N'adidas-pureboost-23-carbon-4.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'150', N'adidas-pureboost-23-carbon-5.png', N'13')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'151', N'adidas-response-super-white-1.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'152', N'adidas-response-super-white-2.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'153', N'adidas-response-super-white-3.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'154', N'adidas-response-super-white-4.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'155', N'adidas-response-super-white-5.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'156', N'adidas-response-super-black-1.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'157', N'adidas-response-super-black-2.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'158', N'adidas-response-super-black-3.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'159', N'adidas-response-super-black-4.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'160', N'adidas-response-super-black-5.png', N'14')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'161', N'adidas-dropset-2-earth-1.png', N'15')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'162', N'adidas-dropset-2-earth-2.png', N'15')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'163', N'adidas-dropset-2-earth-3.png', N'15')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'164', N'adidas-dropset-2-earth-4.png', N'15')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'165', N'adidas-dropset-2-earth-5.png', N'15')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'166', N'puma-rs-x-3d-black-1.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'167', N'puma-rs-x-3d-black-2.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'168', N'puma-rs-x-3d-black-3.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'169', N'puma-rs-x-3d-black-4.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'170', N'puma-rs-x-3d-black-5.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'171', N'puma-rs-x-3d-red-1.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'172', N'puma-rs-x-3d-red-2.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'173', N'puma-rs-x-3d-red-3.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'174', N'puma-rs-x-3d-red-4.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'175', N'puma-rs-x-3d-red-5.png', N'16')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'176', N'puma-slipstream-expedition-yellow-1.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'177', N'puma-slipstream-expedition-yellow-2.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'178', N'puma-slipstream-expedition-yellow-3.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'179', N'puma-slipstream-expedition-yellow-4.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'180', N'puma-slipstream-expedition-yellow-5.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'181', N'puma-slipstream-expedition-brown-1.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'182', N'puma-slipstream-expedition-brown-2.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'183', N'puma-slipstream-expedition-brown-3.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'184', N'puma-slipstream-expedition-brown-4.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'185', N'puma-slipstream-expedition-brown-5.png', N'17')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'186', N'puma-suede-xl-black-1.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'187', N'puma-suede-xl-black-2.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'188', N'puma-suede-xl-black-3.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'189', N'puma-suede-xl-black-4.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'190', N'puma-suede-xl-black-5.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'191', N'puma-suede-xl-blue-1.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'192', N'puma-suede-xl-blue-2.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'193', N'puma-suede-xl-blue-3.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'194', N'puma-suede-xl-blue-4.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'195', N'puma-suede-xl-blue-5.png', N'18')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'196', N'puma-palermo-leather-white-1.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'197', N'puma-palermo-leather-white-2.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'198', N'puma-palermo-leather-white-3.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'199', N'puma-palermo-leather-white-4.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'200', N'puma-palermo-leather-white-5.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'201', N'puma-palermo-leather-grey-1.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'202', N'puma-palermo-leather-grey-2.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'203', N'puma-palermo-leather-grey-3.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'204', N'puma-palermo-leather-grey-4.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'205', N'puma-palermo-leather-grey-5.png', N'19')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'206', N'puma-180-perf-1.png', N'20')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'207', N'puma-180-perf-2.png', N'20')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'208', N'puma-180-perf-3.png', N'20')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'209', N'puma-180-perf-4.png', N'20')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'210', N'puma-180-perf-5.png', N'20')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'211', N'vans-knu-skool-black-1.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'212', N'vans-knu-skool-black-2.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'213', N'vans-knu-skool-black-3.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'214', N'vans-knu-skool-black-4.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'215', N'vans-knu-skool-black-5.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'216', N'vans-knu-skool-red-1.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'217', N'vans-knu-skool-red-2.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'218', N'vans-knu-skool-red-3.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'219', N'vans-knu-skool-red-4.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'220', N'vans-knu-skool-red-5.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'221', N'vans-knu-skool-pink-1.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'222', N'vans-knu-skool-pink-2.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'223', N'vans-knu-skool-pink-3.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'224', N'vans-knu-skool-pink-4.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'225', N'vans-knu-skool-pink-5.png', N'21')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'226', N'vans-old-skool-white-1.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'227', N'vans-old-skool-white-2.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'228', N'vans-old-skool-white-3.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'229', N'vans-old-skool-white-4.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'230', N'vans-old-skool-white-5.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'231', N'vans-old-skool-blue-1.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'232', N'vans-old-skool-blue-2.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'233', N'vans-old-skool-blue-3.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'234', N'vans-old-skool-blue-4.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'235', N'vans-old-skool-blue-5.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'236', N'vans-old-skool-yellow-1.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'237', N'vans-old-skool-yellow-2.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'238', N'vans-old-skool-yellow-3.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'239', N'vans-old-skool-yellow-4.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'240', N'vans-old-skool-yellow-5.png', N'22')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'241', N'vans-ave-v2-grey-1.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'242', N'vans-ave-v2-grey-2.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'243', N'vans-ave-v2-grey-3.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'244', N'vans-ave-v2-grey-4.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'245', N'vans-ave-v2-grey-5.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'246', N'vans-ave-v2-black-1.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'247', N'vans-ave-v2-black-2.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'248', N'vans-ave-v2-black-3.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'249', N'vans-ave-v2-black-4.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'250', N'vans-ave-v2-black-5.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'251', N'vans-ave-v2-purple-1.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'252', N'vans-ave-v2-purple-2.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'253', N'vans-ave-v2-purple-3.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'254', N'vans-ave-v2-purple-4.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'255', N'vans-ave-v2-purple-5.png', N'23')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'256', N'vans-cruze-too-comfycush-brown-1.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'257', N'vans-cruze-too-comfycush-brown-2.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'258', N'vans-cruze-too-comfycush-brown-3.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'259', N'vans-cruze-too-comfycush-brown-4.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'260', N'vans-cruze-too-comfycush-brown-5.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'261', N'vans-cruze-too-comfycush-green-1.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'262', N'vans-cruze-too-comfycush-green-2.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'263', N'vans-cruze-too-comfycush-green-3.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'264', N'vans-cruze-too-comfycush-green-4.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'265', N'vans-cruze-too-comfycush-green-5.png', N'24')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'266', N'vans-sk8-hi-black-1.png', N'25')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'267', N'vans-sk8-hi-black-2.png', N'25')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'268', N'vans-sk8-hi-black-3.png', N'25')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'269', N'vans-sk8-hi-black-4.png', N'25')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'270', N'vans-sk8-hi-black-5.png', N'25')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'271', N'nike-plus-cushion-white-1.png', N'26')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'272', N'nike-plus-cushion-white-2.png', N'26')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'273', N'nike-plus-cushion-white-3.png', N'26')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'274', N'nike-max-cush-white-1.png', N'27')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'275', N'nike-max-cush-white-2.png', N'27')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'276', N'nike-max-cush-white-3.png', N'27')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'277', N'nike-max-cush-white-4.png', N'27')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'278', N'nike-max-cushion-no-show-black-1.png', N'28')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'279', N'nike-max-cushion-no-show-black-2.png', N'28')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'280', N'nike-max-cushion-no-show-black-3.png', N'28')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'281', N'nike-max-cushion-no-show-black-4.png', N'28')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'282', N'nike-white.png', N'29')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'283', N'adidas-white.png', N'30')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'284', N'vans-white.png', N'31')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'285', N'vans-black.png', N'31')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'286', N'sofsole-air-orange-1.png', N'32')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'287', N'sofsole-air-orange-2.png', N'32')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'288', N'sofsole-air-orange-3.png', N'32')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'289', N'sofsole-air-orange-4.png', N'32')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'290', N'sofsole-air-orange-5.png', N'32')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'291', N'superfeet-run-comfort-blue-1.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'292', N'superfeet-run-comfort-blue-2.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'293', N'superfeet-run-comfort-blue-3.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'294', N'superfeet-run-comfort-blue-4.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'295', N'superfeet-run-comfort-blue-5.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'296', N'superfeet-run-comfort-green-1.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'297', N'superfeet-run-comfort-green-2.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'298', N'superfeet-run-comfort-green-3.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'299', N'superfeet-run-comfort-green-4.png', N'33')
GO

INSERT INTO [dbo].[Images] ([Id], [Name], [ModelId]) VALUES (N'300', N'superfeet-run-comfort-green-5.png', N'33')
GO

SET IDENTITY_INSERT [dbo].[Images] OFF
GO


-- ----------------------------
-- Table structure for InvoiceDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[InvoiceDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[InvoiceDetails]
GO

CREATE TABLE [dbo].[InvoiceDetails] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [InvoiceId] int  NOT NULL,
  [ProductId] int  NOT NULL,
  [Price] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [Amount] int  NOT NULL
)
GO

ALTER TABLE [dbo].[InvoiceDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of InvoiceDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[InvoiceDetails] ON
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'1', N'1', N'1', N'4000000', N'1', N'4000000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'2', N'2', N'14', N'4200000', N'1', N'4200000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'3', N'3', N'13', N'4200000', N'1', N'4200000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'4', N'4', N'14', N'4200000', N'1', N'4200000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'5', N'6', N'74', N'4500000', N'1', N'4500000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'6', N'6', N'69', N'4500000', N'1', N'4500000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'7', N'7', N'122', N'5000000', N'1', N'5000000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'8', N'7', N'200', N'2500000', N'3', N'7500000')
GO

INSERT INTO [dbo].[InvoiceDetails] ([Id], [InvoiceId], [ProductId], [Price], [Quantity], [Amount]) VALUES (N'9', N'7', N'236', N'3400000', N'1', N'3400000')
GO

SET IDENTITY_INSERT [dbo].[InvoiceDetails] OFF
GO


-- ----------------------------
-- Table structure for Invoices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Invoices]') AND type IN ('U'))
	DROP TABLE [dbo].[Invoices]
GO

CREATE TABLE [dbo].[Invoices] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateDate] datetime2(7)  NOT NULL,
  [PaymentMethod] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Total] int  NOT NULL,
  [ShippingFee] int  NOT NULL,
  [TotalPayment] int  NOT NULL,
  [Note] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Invoices] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Invoices
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Invoices] ON
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'1', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-15 20:09:47.7155532', N'COD', N'4000000', N'15000', N'4015000', N'', N'5')
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'2', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-15 22:31:19.8989950', N'COD', N'4200000', N'15000', N'4215000', N'', N'6')
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'3', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-15 22:34:48.2446913', N'COD', N'4200000', N'15000', N'4215000', N'', N'5')
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'4', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-15 22:45:55.6809448', N'VNPay', N'4200000', N'15000', N'4215000', N'', N'5')
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'6', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-16 11:24:43.0820451', N'COD', N'9000000', N'15000', N'9015000', N'', N'5')
GO

INSERT INTO [dbo].[Invoices] ([Id], [UserId], [CreateDate], [PaymentMethod], [Total], [ShippingFee], [TotalPayment], [Note], [Status]) VALUES (N'7', N'8f5db5b4-9e13-4658-8f69-9f3cfc77f194', N'2024-07-16 11:33:24.8336375', N'VNPay', N'15900000', N'15000', N'15915000', N'', N'5')
GO

SET IDENTITY_INSERT [dbo].[Invoices] OFF
GO


-- ----------------------------
-- Table structure for Models
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Models]') AND type IN ('U'))
	DROP TABLE [dbo].[Models]
GO

CREATE TABLE [dbo].[Models] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductTypeId] int  NOT NULL,
  [BrandId] int  NOT NULL,
  [SupplierId] int  NOT NULL,
  [ImportPrice] int  NOT NULL,
  [Price] int  NOT NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Models] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Models
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Models] ON
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'1', N'Nike Air Force 1 07', N'3', N'1', N'1', N'3000000', N'4000000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'2', N'Nike Air Force 1 07 Easyon', N'3', N'1', N'1', N'3200000', N'4200000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'3', N'Nike Air Force 1 07 LV8', N'3', N'1', N'1', N'3500000', N'4500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'4', N'Nike Air Force 1 07 LV8 Evo', N'3', N'1', N'1', N'3500000', N'4500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'5', N'Nike Air Force 1 07 Next Nature SE', N'3', N'1', N'1', N'2500000', N'3000000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'6', N'Nike Air Force 1 Low Evo', N'3', N'1', N'1', N'3500000', N'4500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'7', N'Nike Air Force 1 Shadow', N'3', N'1', N'1', N'3500000', N'4500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'8', N'Nike Air Jordan 1 Low', N'3', N'1', N'1', N'3000000', N'4000000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'9', N'Nike Air Jordan 1 Mid', N'3', N'1', N'1', N'3500000', N'4500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'10', N'Nike Air Jordan 1 High', N'5', N'1', N'1', N'4000000', N'5000000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'11', N'Adidas Avryn', N'3', N'2', N'2', N'2000000', N'2600000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'12', N'Adidas Ultraboost 1.0', N'4', N'2', N'2', N'2300000', N'2900000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'13', N'Adidas Pureboost 23', N'4', N'2', N'2', N'3000000', N'3600000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'14', N'Adidas Response Super', N'3', N'2', N'2', N'2500000', N'3100000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'15', N'Adidas Dropset 2 Earth', N'3', N'2', N'2', N'1800000', N'2400000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'16', N'Puma Rs-X 3D', N'3', N'3', N'3', N'2000000', N'2500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'17', N'Puma Slipstream Expedition', N'3', N'3', N'3', N'2300000', N'2800000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'18', N'Puma Suede XL', N'3', N'3', N'3', N'2600000', N'3100000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'19', N'Puma Palermo Leather', N'3', N'3', N'3', N'2900000', N'3400000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'20', N'Puma 180 Perf', N'3', N'3', N'3', N'1800000', N'2300000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'21', N'Vans Knu Skool', N'3', N'4', N'4', N'2000000', N'2500000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'22', N'Vans Old Skool', N'3', N'4', N'4', N'2200000', N'2700000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'23', N'Vans Ave 2.0', N'3', N'4', N'4', N'2400000', N'2900000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'24', N'Vans Cruze Too Comfycush', N'3', N'4', N'4', N'2600000', N'3100000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'25', N'Vans SK8 Hi', N'5', N'4', N'4', N'2800000', N'3300000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'26', N'Vớ Nike Plus Cushion', N'6', N'1', N'1', N'100000', N'200000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'27', N'Vớ Nike Max Cush', N'6', N'1', N'1', N'100000', N'200000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'28', N'Vớ Nike Max Cushion No Show', N'6', N'1', N'1', N'100000', N'200000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'29', N'Dây giày Nike', N'7', N'1', N'1', N'100000', N'150000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'30', N'Dây giày Adidas', N'7', N'2', N'2', N'100000', N'150000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'31', N'Dây giày Vans', N'7', N'4', N'4', N'100000', N'150000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'32', N'Miếng lót giày Sofsole', N'8', N'5', N'5', N'500000', N'700000', NULL, N'1')
GO

INSERT INTO [dbo].[Models] ([Id], [Name], [ProductTypeId], [BrandId], [SupplierId], [ImportPrice], [Price], [Description], [Status]) VALUES (N'33', N'Miếng lót giày Superfeet', N'8', N'6', N'6', N'1000000', N'1200000', NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[Models] OFF
GO


-- ----------------------------
-- Table structure for Products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type IN ('U'))
	DROP TABLE [dbo].[Products]
GO

CREATE TABLE [dbo].[Products] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelId] int  NOT NULL,
  [ColorId] int  NOT NULL,
  [SizeId] int  NOT NULL,
  [Quantity] int  NOT NULL,
  [ImportPrice] int  NOT NULL,
  [Price] int  NOT NULL,
  [Image] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Products] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Products
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'1', N'Nike Air Force 1 07 - Trắng - 39', N'1', N'3', N'1', N'49', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'2', N'Nike Air Force 1 07 - Trắng - 40', N'1', N'3', N'2', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'3', N'Nike Air Force 1 07 - Trắng - 41', N'1', N'3', N'3', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'4', N'Nike Air Force 1 07 - Trắng - 42', N'1', N'3', N'4', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'5', N'Nike Air Force 1 07 - Trắng - 43', N'1', N'3', N'5', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'6', N'Nike Air Force 1 07 - Trắng - 44', N'1', N'3', N'6', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'7', N'Nike Air Force 1 07 - Đen - 39', N'1', N'1', N'1', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'8', N'Nike Air Force 1 07 - Đen - 40', N'1', N'1', N'2', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'9', N'Nike Air Force 1 07 - Đen - 41', N'1', N'1', N'3', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'10', N'Nike Air Force 1 07 - Đen - 42', N'1', N'1', N'4', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'11', N'Nike Air Force 1 07 - Đen - 43', N'1', N'1', N'5', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'12', N'Nike Air Force 1 07 - Đen - 44', N'1', N'1', N'6', N'50', N'3000000', N'4000000', N'nike-air-force-1-07-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'13', N'Nike Air Force 1 07 Easyon - Trắng - 39', N'2', N'3', N'1', N'49', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'14', N'Nike Air Force 1 07 Easyon - Trắng - 40', N'2', N'3', N'2', N'49', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'15', N'Nike Air Force 1 07 Easyon - Trắng - 41', N'2', N'3', N'3', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'16', N'Nike Air Force 1 07 Easyon - Trắng - 42', N'2', N'3', N'4', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'17', N'Nike Air Force 1 07 Easyon - Trắng - 43', N'2', N'3', N'5', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'18', N'Nike Air Force 1 07 Easyon - Trắng - 44', N'2', N'3', N'6', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'19', N'Nike Air Force 1 07 Easyon - Đen - 39', N'2', N'1', N'1', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'20', N'Nike Air Force 1 07 Easyon - Đen - 40', N'2', N'1', N'2', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'21', N'Nike Air Force 1 07 Easyon - Đen - 41', N'2', N'1', N'3', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'22', N'Nike Air Force 1 07 Easyon - Đen - 42', N'2', N'1', N'4', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'23', N'Nike Air Force 1 07 Easyon - Đen - 43', N'2', N'1', N'5', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'24', N'Nike Air Force 1 07 Easyon - Đen - 44', N'2', N'1', N'6', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'25', N'Nike Air Force 1 07 Easyon - Xanh dương - 39', N'2', N'8', N'1', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'26', N'Nike Air Force 1 07 Easyon - Xanh dương - 40', N'2', N'8', N'2', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'27', N'Nike Air Force 1 07 Easyon - Xanh dương - 41', N'2', N'8', N'3', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'28', N'Nike Air Force 1 07 Easyon - Xanh dương - 42', N'2', N'8', N'4', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'29', N'Nike Air Force 1 07 Easyon - Xanh dương - 43', N'2', N'8', N'5', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'30', N'Nike Air Force 1 07 Easyon - Xanh dương - 44', N'2', N'8', N'6', N'50', N'3200000', N'4200000', N'nike-air-force-1-07-easyon-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'31', N'Nike Air Force 1 07 LV8 - Trắng - 39', N'3', N'3', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'32', N'Nike Air Force 1 07 LV8 - Trắng - 40', N'3', N'3', N'2', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'33', N'Nike Air Force 1 07 LV8 - Trắng - 41', N'3', N'3', N'3', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'34', N'Nike Air Force 1 07 LV8 - Trắng - 42', N'3', N'3', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'35', N'Nike Air Force 1 07 LV8 - Trắng - 43', N'3', N'3', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'36', N'Nike Air Force 1 07 LV8 - Trắng - 44', N'3', N'3', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'37', N'Nike Air Force 1 07 LV8 - Xám - 39', N'3', N'2', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'38', N'Nike Air Force 1 07 LV8 - Xám - 40', N'3', N'2', N'2', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'39', N'Nike Air Force 1 07 LV8 - Xám - 41', N'3', N'2', N'3', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'40', N'Nike Air Force 1 07 LV8 - Xám - 42', N'3', N'2', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'41', N'Nike Air Force 1 07 LV8 - Xám - 43', N'3', N'2', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'42', N'Nike Air Force 1 07 LV8 - Xám - 44', N'3', N'2', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'43', N'Nike Air Force 1 07 LV8 - Nâu - 39', N'3', N'10', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'44', N'Nike Air Force 1 07 LV8 - Nâu - 40', N'3', N'10', N'2', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'45', N'Nike Air Force 1 07 LV8 - Nâu - 41', N'3', N'10', N'3', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'46', N'Nike Air Force 1 07 LV8 - Nâu - 42', N'3', N'10', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'47', N'Nike Air Force 1 07 LV8 - Nâu - 43', N'3', N'10', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'48', N'Nike Air Force 1 07 LV8 - Nâu - 44', N'3', N'10', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'49', N'Nike Air Force 1 07 LV8 Evo - 39', N'4', N'3', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'50', N'Nike Air Force 1 07 LV8 Evo - 40', N'4', N'3', N'2', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'51', N'Nike Air Force 1 07 LV8 Evo - 41', N'4', N'3', N'3', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'52', N'Nike Air Force 1 07 LV8 Evo - 42', N'4', N'3', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'53', N'Nike Air Force 1 07 LV8 Evo - 43', N'4', N'3', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'54', N'Nike Air Force 1 07 LV8 Evo - 44', N'4', N'3', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-07-lv8-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'55', N'Nike Air Force 1 07 Next Nature SE - Trắng - 39', N'5', N'3', N'1', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'56', N'Nike Air Force 1 07 Next Nature SE - Trắng - 40', N'5', N'3', N'2', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'57', N'Nike Air Force 1 07 Next Nature SE - Trắng - 41', N'5', N'3', N'3', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'58', N'Nike Air Force 1 07 Next Nature SE - Trắng - 42', N'5', N'3', N'4', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'59', N'Nike Air Force 1 07 Next Nature SE - Trắng - 43', N'5', N'3', N'5', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'60', N'Nike Air Force 1 07 Next Nature SE - Trắng - 44', N'5', N'3', N'6', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'61', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 39', N'5', N'7', N'1', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'62', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 40', N'5', N'7', N'2', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'63', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 41', N'5', N'7', N'3', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'64', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 42', N'5', N'7', N'4', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'65', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 43', N'5', N'7', N'5', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'66', N'Nike Air Force 1 07 Next Nature SE - Xanh lá - 44', N'5', N'7', N'6', N'50', N'2500000', N'3000000', N'nike-air-force-1-07-next-nature-se-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'67', N'Nike Air Force 1 Low Evo - Trắng - 39', N'6', N'3', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'68', N'Nike Air Force 1 Low Evo - Trắng - 40', N'6', N'3', N'2', N'50', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'69', N'Nike Air Force 1 Low Evo - Trắng - 41', N'6', N'3', N'3', N'49', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'70', N'Nike Air Force 1 Low Evo - Trắng - 42', N'6', N'3', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'71', N'Nike Air Force 1 Low Evo - Trắng - 43', N'6', N'3', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'72', N'Nike Air Force 1 Low Evo - Trắng - 44', N'6', N'3', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-low-evo-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'73', N'Nike Air Force 1 Shadow - Trắng - 39', N'7', N'3', N'1', N'50', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'74', N'Nike Air Force 1 Shadow - Trắng - 40', N'7', N'3', N'2', N'49', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'75', N'Nike Air Force 1 Shadow - Trắng - 41', N'7', N'3', N'3', N'50', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'76', N'Nike Air Force 1 Shadow - Trắng - 42', N'7', N'3', N'4', N'50', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'77', N'Nike Air Force 1 Shadow - Trắng - 43', N'7', N'3', N'5', N'50', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'78', N'Nike Air Force 1 Shadow - Trắng - 44', N'7', N'3', N'6', N'50', N'3500000', N'4500000', N'nike-air-force-1-shadow-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'79', N'Nike Air Jordan 1 Low - Trắng - 39', N'8', N'3', N'1', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'80', N'Nike Air Jordan 1 Low - Trắng - 40', N'8', N'3', N'2', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'81', N'Nike Air Jordan 1 Low - Trắng - 41', N'8', N'3', N'3', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'82', N'Nike Air Jordan 1 Low - Trắng - 42', N'8', N'3', N'4', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'83', N'Nike Air Jordan 1 Low - Trắng - 43', N'8', N'3', N'5', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'84', N'Nike Air Jordan 1 Low - Trắng - 44', N'8', N'3', N'6', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'85', N'Nike Air Jordan 1 Low - Đỏ - 39', N'8', N'4', N'1', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'86', N'Nike Air Jordan 1 Low - Đỏ - 40', N'8', N'4', N'2', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'87', N'Nike Air Jordan 1 Low - Đỏ - 41', N'8', N'4', N'3', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'88', N'Nike Air Jordan 1 Low - Đỏ - 42', N'8', N'4', N'4', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'89', N'Nike Air Jordan 1 Low - Đỏ - 43', N'8', N'4', N'5', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'90', N'Nike Air Jordan 1 Low - Đỏ - 44', N'8', N'4', N'6', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'91', N'Nike Air Jordan 1 Low - Xanh dương - 39', N'8', N'8', N'1', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'92', N'Nike Air Jordan 1 Low - Xanh dương - 40', N'8', N'8', N'2', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'93', N'Nike Air Jordan 1 Low - Xanh dương - 41', N'8', N'8', N'3', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'94', N'Nike Air Jordan 1 Low - Xanh dương - 42', N'8', N'8', N'4', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'95', N'Nike Air Jordan 1 Low - Xanh dương - 43', N'8', N'8', N'5', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'96', N'Nike Air Jordan 1 Low - Xanh dương - 44', N'8', N'8', N'6', N'50', N'3000000', N'4000000', N'nike-air-jordan-1-low-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'97', N'Nike Air Jordan 1 Mid - Trắng - 39', N'9', N'3', N'1', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'98', N'Nike Air Jordan 1 Mid - Trắng - 40', N'9', N'3', N'2', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'99', N'Nike Air Jordan 1 Mid - Trắng - 41', N'9', N'3', N'3', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'100', N'Nike Air Jordan 1 Mid - Trắng - 42', N'9', N'3', N'4', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'101', N'Nike Air Jordan 1 Mid - Trắng - 43', N'9', N'3', N'5', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'102', N'Nike Air Jordan 1 Mid - Trắng - 44', N'9', N'3', N'6', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'103', N'Nike Air Jordan 1 Mid - Xám - 39', N'9', N'2', N'1', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'104', N'Nike Air Jordan 1 Mid - Xám - 40', N'9', N'2', N'2', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'105', N'Nike Air Jordan 1 Mid - Xám - 41', N'9', N'2', N'3', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'106', N'Nike Air Jordan 1 Mid - Xám - 42', N'9', N'2', N'4', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'107', N'Nike Air Jordan 1 Mid - Xám - 43', N'9', N'2', N'5', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'108', N'Nike Air Jordan 1 Mid - Xám - 44', N'9', N'2', N'6', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'109', N'Nike Air Jordan 1 Mid - Tím - 39', N'9', N'9', N'1', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'110', N'Nike Air Jordan 1 Mid - Tím - 40', N'9', N'9', N'2', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'111', N'Nike Air Jordan 1 Mid - Tím - 41', N'9', N'9', N'3', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'112', N'Nike Air Jordan 1 Mid - Tím - 42', N'9', N'9', N'4', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'113', N'Nike Air Jordan 1 Mid - Tím - 43', N'9', N'9', N'5', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'114', N'Nike Air Jordan 1 Mid - Tím - 44', N'9', N'9', N'6', N'50', N'3500000', N'4500000', N'nike-air-jordan-1-mid-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'115', N'Nike Air Jordan 1 I High G - Đen - 39', N'10', N'1', N'1', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'116', N'Nike Air Jordan 1 I High G - Đen - 40', N'10', N'1', N'2', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'117', N'Nike Air Jordan 1 I High G - Đen - 41', N'10', N'1', N'3', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'118', N'Nike Air Jordan 1 I High G - Đen - 42', N'10', N'1', N'4', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'119', N'Nike Air Jordan 1 I High G - Đen - 43', N'10', N'1', N'5', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'120', N'Nike Air Jordan 1 I High G - Đen - 44', N'10', N'1', N'6', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'121', N'Nike Air Jordan 1 I High G - Xanh dương - 39', N'10', N'8', N'1', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'122', N'Nike Air Jordan 1 I High G - Xanh dương - 40', N'10', N'8', N'2', N'49', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'123', N'Nike Air Jordan 1 I High G - Xanh dương - 41', N'10', N'8', N'3', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'124', N'Nike Air Jordan 1 I High G - Xanh dương - 42', N'10', N'8', N'4', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'125', N'Nike Air Jordan 1 I High G - Xanh dương - 43', N'10', N'8', N'5', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'126', N'Nike Air Jordan 1 I High G - Xanh dương - 44', N'10', N'8', N'6', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'127', N'Nike Air Jordan 1 I High G - Cam - 39', N'10', N'5', N'1', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'128', N'Nike Air Jordan 1 I High G - Cam - 40', N'10', N'5', N'2', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'129', N'Nike Air Jordan 1 I High G - Cam - 41', N'10', N'5', N'3', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'130', N'Nike Air Jordan 1 I High G - Cam - 42', N'10', N'5', N'4', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'131', N'Nike Air Jordan 1 I High G - Cam - 43', N'10', N'5', N'5', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'132', N'Nike Air Jordan 1 I High G - Cam - 44', N'10', N'5', N'6', N'50', N'4000000', N'5000000', N'nike-air-jordan-i-high-g-golf-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'133', N'Adidas Avryn - Trắng - 39', N'11', N'3', N'1', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'134', N'Adidas Avryn - Trắng - 40', N'11', N'3', N'2', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'135', N'Adidas Avryn - Trắng - 41', N'11', N'3', N'3', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'136', N'Adidas Avryn - Trắng - 42', N'11', N'3', N'4', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'137', N'Adidas Avryn - Trắng - 43', N'11', N'3', N'5', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'138', N'Adidas Avryn - Trắng - 44', N'11', N'3', N'6', N'50', N'2000000', N'2600000', N'adidas-avryn-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'139', N'Adidas Avryn - Xám - 39', N'11', N'2', N'1', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'140', N'Adidas Avryn - Xám - 40', N'11', N'2', N'2', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'141', N'Adidas Avryn - Xám - 41', N'11', N'2', N'3', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'142', N'Adidas Avryn - Xám - 42', N'11', N'2', N'4', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'143', N'Adidas Avryn - Xám - 43', N'11', N'2', N'5', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'144', N'Adidas Avryn - Xám - 44', N'11', N'2', N'6', N'50', N'2000000', N'2600000', N'adidas-avryn-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'145', N'Adidas Avryn - Đen - 39', N'11', N'1', N'1', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'146', N'Adidas Avryn - Đen - 40', N'11', N'1', N'2', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'147', N'Adidas Avryn - Đen - 41', N'11', N'1', N'3', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'148', N'Adidas Avryn - Đen - 42', N'11', N'1', N'4', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'149', N'Adidas Avryn - Đen - 43', N'11', N'1', N'5', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'150', N'Adidas Avryn - Đen - 44', N'11', N'1', N'6', N'50', N'2000000', N'2600000', N'adidas-avryn-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'151', N'Adidas Ultraboost 1.0 - Trắng - 39', N'12', N'3', N'1', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'152', N'Adidas Ultraboost 1.0 - Trắng - 40', N'12', N'3', N'2', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'153', N'Adidas Ultraboost 1.0 - Trắng - 41', N'12', N'3', N'3', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'154', N'Adidas Ultraboost 1.0 - Trắng - 42', N'12', N'3', N'4', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'155', N'Adidas Ultraboost 1.0 - Trắng - 43', N'12', N'3', N'5', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'156', N'Adidas Ultraboost 1.0 - Trắng - 44', N'12', N'3', N'6', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'157', N'Adidas Ultraboost 1.0 - Đen - 39', N'12', N'1', N'1', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'158', N'Adidas Ultraboost 1.0 - Đen - 40', N'12', N'1', N'2', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'159', N'Adidas Ultraboost 1.0 - Đen - 41', N'12', N'1', N'3', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'160', N'Adidas Ultraboost 1.0 - Đen - 42', N'12', N'1', N'4', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'161', N'Adidas Ultraboost 1.0 - Đen - 43', N'12', N'1', N'5', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'162', N'Adidas Ultraboost 1.0 - Đen - 44', N'12', N'1', N'6', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'163', N'Adidas Ultraboost 1.0 - Xanh lá - 39', N'12', N'7', N'1', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'164', N'Adidas Ultraboost 1.0 - Xanh lá - 40', N'12', N'7', N'2', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'165', N'Adidas Ultraboost 1.0 - Xanh lá - 41', N'12', N'7', N'3', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'166', N'Adidas Ultraboost 1.0 - Xanh lá - 42', N'12', N'7', N'4', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'167', N'Adidas Ultraboost 1.0 - Xanh lá - 43', N'12', N'7', N'5', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'168', N'Adidas Ultraboost 1.0 - Xanh lá - 44', N'12', N'7', N'6', N'50', N'2300000', N'2900000', N'adidas-ultraboost-v1-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'169', N'Adidas Pureboost 23 - Đen - 39', N'13', N'1', N'1', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'170', N'Adidas Pureboost 23 - Đen - 40', N'13', N'1', N'2', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'171', N'Adidas Pureboost 23 - Đen - 41', N'13', N'1', N'3', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'172', N'Adidas Pureboost 23 - Đen - 42', N'13', N'1', N'4', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'173', N'Adidas Pureboost 23 - Đen - 43', N'13', N'1', N'5', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'174', N'Adidas Pureboost 23 - Đen - 44', N'13', N'1', N'6', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'175', N'Adidas Pureboost 23 - Carbon - 39', N'13', N'11', N'1', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'176', N'Adidas Pureboost 23 - Carbon - 40', N'13', N'11', N'2', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'177', N'Adidas Pureboost 23 - Carbon - 41', N'13', N'11', N'3', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'178', N'Adidas Pureboost 23 - Carbon - 42', N'13', N'11', N'4', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'179', N'Adidas Pureboost 23 - Carbon - 43', N'13', N'11', N'5', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'180', N'Adidas Pureboost 23 - Carbon - 44', N'13', N'11', N'6', N'50', N'3000000', N'3600000', N'adidas-pureboost-23-carbon-1.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'181', N'Adidas Response Super - Trắng - 39', N'14', N'3', N'1', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'182', N'Adidas Response Super - Trắng - 40', N'14', N'3', N'2', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'183', N'Adidas Response Super - Trắng - 41', N'14', N'3', N'3', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'184', N'Adidas Response Super - Trắng - 42', N'14', N'3', N'4', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'185', N'Adidas Response Super - Trắng - 43', N'14', N'3', N'5', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'186', N'Adidas Response Super - Trắng - 44', N'14', N'3', N'6', N'50', N'2500000', N'3100000', N'adidas-response-super-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'187', N'Adidas Response Super - Đen - 39', N'14', N'1', N'1', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'188', N'Adidas Response Super - Đen - 40', N'14', N'1', N'2', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'189', N'Adidas Response Super - Đen - 41', N'14', N'1', N'3', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'190', N'Adidas Response Super - Đen - 42', N'14', N'1', N'4', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'191', N'Adidas Response Super - Đen - 43', N'14', N'1', N'5', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'192', N'Adidas Response Super - Đen - 44', N'14', N'1', N'6', N'50', N'2500000', N'3100000', N'adidas-response-super-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'193', N'Adidas Dropset 2 Earth - Xanh lá - 39', N'15', N'7', N'1', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'194', N'Adidas Dropset 2 Earth - Xanh lá - 40', N'15', N'7', N'2', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'195', N'Adidas Dropset 2 Earth - Xanh lá - 41', N'15', N'7', N'3', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'196', N'Adidas Dropset 2 Earth - Xanh lá - 42', N'15', N'7', N'4', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'197', N'Adidas Dropset 2 Earth - Xanh lá - 43', N'15', N'7', N'5', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'198', N'Adidas Dropset 2 Earth - Xanh lá - 44', N'15', N'7', N'6', N'50', N'1800000', N'2600000', N'adidas-dropset-2-earth-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'199', N'Puma Rs-X 3D - Đen - 39', N'16', N'1', N'1', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'200', N'Puma Rs-X 3D - Đen - 40', N'16', N'1', N'2', N'47', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'201', N'Puma Rs-X 3D - Đen - 41', N'16', N'1', N'4', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'202', N'Puma Rs-X 3D - Đen - 42', N'16', N'1', N'4', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'203', N'Puma Rs-X 3D - Đen - 43', N'16', N'1', N'5', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'204', N'Puma Rs-X 3D - Đen - 44', N'16', N'1', N'6', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'205', N'Puma Rs-X 3D - Đỏ - 39', N'16', N'4', N'1', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'206', N'Puma Rs-X 3D - Đỏ - 40', N'16', N'4', N'2', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'207', N'Puma Rs-X 3D - Đỏ - 41', N'16', N'4', N'3', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'208', N'Puma Rs-X 3D - Đỏ - 42', N'16', N'4', N'4', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'209', N'Puma Rs-X 3D - Đỏ - 43', N'16', N'4', N'5', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'210', N'Puma Rs-X 3D - Đỏ - 44', N'16', N'4', N'6', N'50', N'2000000', N'2500000', N'puma-rs-x-3d-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'211', N'Puma Slipstream Expedition - Vàng - 39', N'17', N'6', N'1', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'212', N'Puma Slipstream Expedition - Vàng - 40', N'17', N'6', N'2', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'213', N'Puma Slipstream Expedition - Vàng - 41', N'17', N'6', N'4', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'214', N'Puma Slipstream Expedition - Vàng - 42', N'17', N'6', N'4', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'215', N'Puma Slipstream Expedition - Vàng - 43', N'17', N'6', N'5', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'216', N'Puma Slipstream Expedition - Vàng - 44', N'17', N'6', N'6', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'217', N'Puma Slipstream Expedition - Nâu - 39', N'17', N'10', N'1', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'218', N'Puma Slipstream Expedition - Nâu - 40', N'17', N'10', N'2', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'219', N'Puma Slipstream Expedition - Nâu - 41', N'17', N'10', N'3', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'220', N'Puma Slipstream Expedition - Nâu - 42', N'17', N'10', N'4', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'221', N'Puma Slipstream Expedition - Nâu - 43', N'17', N'10', N'5', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'222', N'Puma Slipstream Expedition - Nâu - 44', N'17', N'10', N'6', N'50', N'2300000', N'2800000', N'puma-slipstream-expedition-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'223', N'Puma Suede XL - Đen - 39', N'18', N'1', N'1', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'224', N'Puma Suede XL - Đen - 40', N'18', N'1', N'2', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'225', N'Puma Suede XL - Đen - 41', N'18', N'1', N'4', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'226', N'Puma Suede XL - Đen - 42', N'18', N'1', N'4', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'227', N'Puma Suede XL - Đen - 43', N'18', N'1', N'5', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'228', N'Puma Suede XL - Đen - 44', N'18', N'1', N'6', N'50', N'2600000', N'3100000', N'puma-suede-xl-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'229', N'Puma Suede XL - Xanh dương - 39', N'18', N'8', N'1', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'230', N'Puma Suede XL - Xanh dương - 40', N'18', N'8', N'2', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'231', N'Puma Suede XL - Xanh dương - 41', N'18', N'8', N'3', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'232', N'Puma Suede XL - Xanh dương - 42', N'18', N'8', N'4', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'233', N'Puma Suede XL - Xanh dương - 43', N'18', N'8', N'5', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'234', N'Puma Suede XL - Xanh dương - 44', N'18', N'8', N'6', N'50', N'2600000', N'3100000', N'puma-suede-xl-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'235', N'Adidas Palermo Leather - Trắng - 39', N'19', N'3', N'1', N'50', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'236', N'Adidas Palermo Leather - Trắng - 40', N'19', N'3', N'2', N'49', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'237', N'Adidas Palermo Leather - Trắng - 41', N'19', N'3', N'3', N'50', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'238', N'Adidas Palermo Leather - Trắng - 42', N'19', N'3', N'4', N'50', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'239', N'Adidas Palermo Leather - Trắng - 43', N'19', N'3', N'5', N'50', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'240', N'Adidas Palermo Leather - Trắng - 44', N'19', N'3', N'6', N'50', N'2900000', N'3400000', N'puma-palermo-leather-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'241', N'Adidas Palermo Leather - Xám - 39', N'19', N'2', N'1', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'242', N'Adidas Palermo Leather - Xám - 40', N'19', N'2', N'2', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'243', N'Adidas Palermo Leather - Xám - 41', N'19', N'2', N'3', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'244', N'Adidas Palermo Leather - Xám - 42', N'19', N'2', N'4', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'245', N'Adidas Palermo Leather - Xám - 43', N'19', N'2', N'5', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'246', N'Adidas Palermo Leather - Xám - 44', N'19', N'2', N'6', N'50', N'2900000', N'3400000', N'puma-palermo-leather-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'247', N'Puma 180 Perf - Trắng - 39', N'20', N'3', N'1', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'248', N'Puma 180 Perf - Trắng - 40', N'20', N'3', N'2', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'249', N'Puma 180 Perf - Trắng - 41', N'20', N'3', N'3', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'250', N'Puma 180 Perf - Trắng - 42', N'20', N'3', N'4', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'251', N'Puma 180 Perf - Trắng - 43', N'20', N'3', N'5', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'252', N'Puma 180 Perf - Trắng - 44', N'20', N'3', N'6', N'50', N'1800000', N'2300000', N'puma-180-perf-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'253', N'Vans Knu Skool - Đen - 39', N'21', N'1', N'1', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'254', N'Vans Knu Skool - Đen - 40', N'21', N'1', N'2', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'255', N'Vans Knu Skool - Đen - 41', N'21', N'1', N'3', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'256', N'Vans Knu Skool - Đen - 42', N'21', N'1', N'4', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'257', N'Vans Knu Skool - Đen - 43', N'21', N'1', N'5', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'258', N'Vans Knu Skool - Đen - 44', N'21', N'1', N'6', N'50', N'2000000', N'2500000', N'vans-knu-skool-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'259', N'Vans Knu Skool - Đỏ - 39', N'21', N'4', N'1', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'260', N'Vans Knu Skool - Đỏ - 40', N'21', N'4', N'2', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'261', N'Vans Knu Skool - Đỏ - 41', N'21', N'4', N'3', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'262', N'Vans Knu Skool - Đỏ - 42', N'21', N'4', N'4', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'263', N'Vans Knu Skool - Đỏ - 43', N'21', N'4', N'5', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'264', N'Vans Knu Skool - Đỏ - 44', N'21', N'4', N'6', N'50', N'2000000', N'2500000', N'vans-knu-skool-do.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'265', N'Vans Knu Skool - Hồng - 39', N'21', N'12', N'1', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'266', N'Vans Knu Skool - Hồng - 40', N'21', N'12', N'2', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'267', N'Vans Knu Skool - Hồng - 41', N'21', N'12', N'3', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'268', N'Vans Knu Skool - Hồng - 42', N'21', N'12', N'4', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'269', N'Vans Knu Skool - Hồng - 43', N'21', N'12', N'5', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'270', N'Vans Knu Skool - Hồng - 44', N'21', N'12', N'6', N'50', N'2000000', N'2500000', N'vans-knu-skool-hong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'271', N'Vans Old Skool - Trắng - 39', N'22', N'3', N'1', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'272', N'Vans Old Skool - Trắng - 40', N'22', N'3', N'2', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'273', N'Vans Old Skool - Trắng - 41', N'22', N'3', N'3', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'274', N'Vans Old Skool - Trắng - 42', N'22', N'3', N'4', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'275', N'Vans Old Skool - Trắng - 43', N'22', N'3', N'5', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'276', N'Vans Old Skool - Trắng - 44', N'22', N'3', N'6', N'50', N'2200000', N'2700000', N'vans-old-skool-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'277', N'Vans Old Skool - Xanh dương - 39', N'22', N'8', N'1', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'278', N'Vans Old Skool - Xanh dương - 40', N'22', N'8', N'2', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'279', N'Vans Old Skool - Xanh dương - 41', N'22', N'8', N'3', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'280', N'Vans Old Skool - Xanh dương - 42', N'22', N'8', N'4', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'281', N'Vans Old Skool - Xanh dương - 43', N'22', N'8', N'5', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'282', N'Vans Old Skool - Xanh dương - 44', N'22', N'8', N'6', N'50', N'2200000', N'2700000', N'vans-old-skool-xanh-duong.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'283', N'Vans Old Skool - Vàng - 39', N'22', N'6', N'1', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'284', N'Vans Old Skool - Vàng - 40', N'22', N'6', N'2', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'285', N'Vans Old Skool - Vàng - 41', N'22', N'6', N'3', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'286', N'Vans Old Skool - Vàng - 42', N'22', N'6', N'4', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'287', N'Vans Old Skool - Vàng - 43', N'22', N'6', N'5', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'288', N'Vans Old Skool - Vàng - 44', N'22', N'6', N'6', N'50', N'2200000', N'2700000', N'vans-old-skool-vang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'289', N'Vans Ave 2.0 - Xám - 39', N'23', N'2', N'1', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'290', N'Vans Ave 2.0 - Xám - 40', N'23', N'2', N'2', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'291', N'Vans Ave 2.0 - Xám - 41', N'23', N'2', N'3', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'292', N'Vans Ave 2.0 - Xám - 42', N'23', N'2', N'4', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'293', N'Vans Ave 2.0 - Xám - 43', N'23', N'2', N'5', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'294', N'Vans Ave 2.0 - Xám - 44', N'23', N'2', N'6', N'50', N'2400000', N'2900000', N'vans-ave-v2-xam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'295', N'Vans Ave 2.0 - Đen - 39', N'23', N'1', N'1', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'296', N'Vans Ave 2.0 - Đen - 40', N'23', N'1', N'2', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'297', N'Vans Ave 2.0 - Đen - 41', N'23', N'1', N'3', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'298', N'Vans Ave 2.0 - Đen - 42', N'23', N'1', N'4', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'299', N'Vans Ave 2.0 - Đen - 43', N'23', N'1', N'5', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'300', N'Vans Ave 2.0 - Đen - 44', N'23', N'1', N'6', N'50', N'2400000', N'2900000', N'vans-ave-v2-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'301', N'Vans Ave 2.0 - Tím - 39', N'23', N'9', N'1', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'302', N'Vans Ave 2.0 - Tím - 40', N'23', N'9', N'2', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'303', N'Vans Ave 2.0 - Tím - 41', N'23', N'9', N'3', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'304', N'Vans Ave 2.0 - Tím - 42', N'23', N'9', N'4', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'305', N'Vans Ave 2.0 - Tím - 43', N'23', N'9', N'5', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'306', N'Vans Ave 2.0 - Tím - 44', N'23', N'9', N'6', N'50', N'2400000', N'2900000', N'vans-ave-v2-tim.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'307', N'Vans Cruze Too Comfycush - Nâu - 39', N'24', N'10', N'1', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'308', N'Vans Cruze Too Comfycush - Nâu - 40', N'24', N'10', N'2', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'309', N'Vans Cruze Too Comfycush - Nâu - 41', N'24', N'10', N'3', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'310', N'Vans Cruze Too Comfycush - Nâu - 42', N'24', N'10', N'4', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'311', N'Vans Cruze Too Comfycush - Nâu - 43', N'24', N'10', N'5', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'312', N'Vans Cruze Too Comfycush - Nâu - 44', N'24', N'10', N'6', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-nau.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'313', N'Vans Cruze Too Comfycush - Xanh lá - 39', N'24', N'7', N'1', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'314', N'Vans Cruze Too Comfycush - Xanh lá - 40', N'24', N'7', N'2', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'315', N'Vans Cruze Too Comfycush - Xanh lá - 41', N'24', N'7', N'3', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'316', N'Vans Cruze Too Comfycush - Xanh lá - 42', N'24', N'7', N'4', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'317', N'Vans Cruze Too Comfycush - Xanh lá - 43', N'24', N'7', N'5', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'318', N'Vans Cruze Too Comfycush - Xanh lá - 44', N'24', N'7', N'6', N'50', N'2600000', N'3100000', N'vans-cruze-too-comfycush-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'319', N'Vans SK8 Hi - Đen - 39', N'25', N'1', N'1', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'320', N'Vans SK8 Hi - Đen - 40', N'25', N'1', N'2', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'321', N'Vans SK8 Hi - Đen - 41', N'25', N'1', N'3', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'322', N'Vans SK8 Hi - Đen - 42', N'25', N'1', N'4', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'323', N'Vans SK8 Hi - Đen - 43', N'25', N'1', N'5', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'324', N'Vans SK8 Hi - Đen - 44', N'25', N'1', N'6', N'50', N'2800000', N'3300000', N'vans-sk8-hi-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'325', N'Vớ Nike Plus Cushion - Trắng', N'26', N'3', N'7', N'50', N'100000', N'200000', N'nike-plus-cushion-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'326', N'Vớ Nike Max Cush - Trắng', N'27', N'3', N'7', N'50', N'100000', N'200000', N'nike-max-cush-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'327', N'Vớ Nike Max Cushion No Show - Đen', N'28', N'1', N'7', N'50', N'100000', N'200000', N'nike-max-cushion-no-show-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'328', N'Dây giày Nike - Trắng', N'29', N'3', N'7', N'50', N'100000', N'150000', N'nike-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'329', N'Dây giày Adidas - Trắng', N'30', N'3', N'7', N'50', N'100000', N'150000', N'adidas-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'330', N'Dây giày Vans - Trắng', N'31', N'3', N'7', N'50', N'100000', N'150000', N'vans-trang.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'331', N'Dây giày Vans - Đen', N'31', N'1', N'7', N'50', N'100000', N'150000', N'vans-den.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'332', N'Miếng lót giày Sofsole Air - Cam', N'32', N'5', N'7', N'50', N'500000', N'700000', N'sofsole-air-cam.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'333', N'Miếng lót giày Superfeet Run Comfort - Xanh lá', N'33', N'7', N'7', N'50', N'1000000', N'1200000', N'superfeet-run-comfort-xanh-la.png', NULL, N'1')
GO

INSERT INTO [dbo].[Products] ([Id], [Name], [ModelId], [ColorId], [SizeId], [Quantity], [ImportPrice], [Price], [Image], [Description], [Status]) VALUES (N'334', N'Miếng lót giày Superfeet Run Comfort - Xanh dương', N'33', N'8', N'7', N'50', N'1000000', N'1200000', N'superfeet-run-comfort-xanh-duong.png', NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
GO


-- ----------------------------
-- Table structure for ProductTypes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductTypes]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductTypes]
GO

CREATE TABLE [dbo].[ProductTypes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ParentProductTypeId] int  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductTypes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductTypes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[ProductTypes] ON
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'1', N'Giày', NULL, N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'2', N'Phụ kiện khác', NULL, N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'3', N'Giày Sneakers', N'1', N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'4', N'Giày chạy bộ', N'1', N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'5', N'Giày golf', N'1', N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'6', N'Vớ', N'2', N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'7', N'Dây giày', N'2', N'1')
GO

INSERT INTO [dbo].[ProductTypes] ([Id], [Name], [ParentProductTypeId], [Status]) VALUES (N'8', N'Miếng lót giày', N'2', N'1')
GO

SET IDENTITY_INSERT [dbo].[ProductTypes] OFF
GO


-- ----------------------------
-- Table structure for Promotions
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Promotions]') AND type IN ('U'))
	DROP TABLE [dbo].[Promotions]
GO

CREATE TABLE [dbo].[Promotions] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ProductId] int  NOT NULL,
  [Percentage] int  NOT NULL,
  [Code] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateDate] datetime2(7)  NOT NULL,
  [EndDate] datetime2(7)  NOT NULL,
  [Status] int  NOT NULL,
  [ModelId] int  NULL
)
GO

ALTER TABLE [dbo].[Promotions] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Promotions
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Promotions] ON
GO

SET IDENTITY_INSERT [dbo].[Promotions] OFF
GO


-- ----------------------------
-- Table structure for Reviews
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type IN ('U'))
	DROP TABLE [dbo].[Reviews]
GO

CREATE TABLE [dbo].[Reviews] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelId] int  NOT NULL,
  [Rating] int  NOT NULL,
  [Content] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [CreateDate] datetime2(7)  NOT NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Reviews] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Reviews
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Reviews] ON
GO

SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO


-- ----------------------------
-- Table structure for Sizes
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sizes]') AND type IN ('U'))
	DROP TABLE [dbo].[Sizes]
GO

CREATE TABLE [dbo].[Sizes] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Sizes] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Sizes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sizes] ON
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'1', N'39', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'2', N'40', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'3', N'41', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'4', N'42', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'5', N'43', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'6', N'44', N'1')
GO

INSERT INTO [dbo].[Sizes] ([Id], [Name], [Status]) VALUES (N'7', N'Free size', N'1')
GO

SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO


-- ----------------------------
-- Table structure for Sliders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Sliders]') AND type IN ('U'))
	DROP TABLE [dbo].[Sliders]
GO

CREATE TABLE [dbo].[Sliders] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Image] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ModelId] int  NOT NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Sliders] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Sliders
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Sliders] ON
GO

INSERT INTO [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (N'1', N'Slider 1', N'slider-1.png', N'1', N'1')
GO

INSERT INTO [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (N'2', N'Slider 2', N'slider-2.png', N'2', N'1')
GO

INSERT INTO [dbo].[Sliders] ([Id], [Name], [Image], [ModelId], [Status]) VALUES (N'3', N'Slider 3', N'slider-3.png', N'3', N'1')
GO

SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO


-- ----------------------------
-- Table structure for Suppliers
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Suppliers]') AND type IN ('U'))
	DROP TABLE [dbo].[Suppliers]
GO

CREATE TABLE [dbo].[Suppliers] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [PhoneNumber] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Email] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Address] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Description] nvarchar(max) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Status] int  NOT NULL
)
GO

ALTER TABLE [dbo].[Suppliers] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Suppliers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Suppliers] ON
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'1', N'Nike', N'0123456789', N'nike@example.com', N'Q. 1, TP. HCM', NULL, N'1')
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'2', N'Adidas', N'0987654321', N'adidas@example.com', N'Q. Thủ Đức, TP. HCM', NULL, N'1')
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'3', N'Puma', N'0123123123', N'puma@example.com', N'Q. 3, TP. HCM', NULL, N'1')
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'4', N'Vans', N'0123123113', N'vans@example.com', N'Q. 4, TP. HCM', NULL, N'1')
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'5', N'Sofsole', N'0987654675', N'sofsole@example.com', N'Q. Tân Phú, TP. HCM', NULL, N'1')
GO

INSERT INTO [dbo].[Suppliers] ([Id], [Name], [PhoneNumber], [Email], [Address], [Description], [Status]) VALUES (N'6', N'Superfeet', N'0123123974', N'superfeet@example.com', N'Q. 6, TP. HCM', NULL, N'1')
GO

SET IDENTITY_INSERT [dbo].[Suppliers] OFF
GO


-- ----------------------------
-- Table structure for WishlistDetails
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[WishlistDetails]') AND type IN ('U'))
	DROP TABLE [dbo].[WishlistDetails]
GO

CREATE TABLE [dbo].[WishlistDetails] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [WishlistId] int  NOT NULL,
  [ProductId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[WishlistDetails] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of WishlistDetails
-- ----------------------------
SET IDENTITY_INSERT [dbo].[WishlistDetails] ON
GO

SET IDENTITY_INSERT [dbo].[WishlistDetails] OFF
GO


-- ----------------------------
-- Table structure for Wishlists
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Wishlists]') AND type IN ('U'))
	DROP TABLE [dbo].[Wishlists]
GO

CREATE TABLE [dbo].[Wishlists] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [UserId] nvarchar(450) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[Wishlists] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Wishlists
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Wishlists] ON
GO

SET IDENTITY_INSERT [dbo].[Wishlists] OFF
GO


-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE [dbo].[__EFMigrationsHistory] ADD CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED ([MigrationId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetRoleClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetRoleClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetRoleClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId]
ON [dbo].[AspNetRoleClaims] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetRoles
-- ----------------------------
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [dbo].[AspNetRoles] (
  [NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoles] ADD CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for AspNetUserClaims
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[AspNetUserClaims]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table AspNetUserClaims
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId]
ON [dbo].[AspNetUserClaims] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserLogins
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId]
ON [dbo].[AspNetUserLogins] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUserRoles
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId]
ON [dbo].[AspNetUserRoles] (
  [RoleId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED ([UserId], [RoleId])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Indexes structure for table AspNetUsers
-- ----------------------------
CREATE NONCLUSTERED INDEX [EmailIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedEmail] ASC
)
GO

CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
ON [dbo].[AspNetUsers] (
  [NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
GO


-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE [dbo].[AspNetUsers] ADD CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED ([UserId], [LoginProvider], [Name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Brands
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Brands]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Brands
-- ----------------------------
ALTER TABLE [dbo].[Brands] ADD CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for CartDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[CartDetails]', RESEED, 10)
GO


-- ----------------------------
-- Indexes structure for table CartDetails
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_CartDetails_CartId]
ON [dbo].[CartDetails] (
  [CartId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_CartDetails_ProductId]
ON [dbo].[CartDetails] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table CartDetails
-- ----------------------------
ALTER TABLE [dbo].[CartDetails] ADD CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Carts
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Carts]', RESEED, 7)
GO


-- ----------------------------
-- Indexes structure for table Carts
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Carts_UserId]
ON [dbo].[Carts] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Carts
-- ----------------------------
ALTER TABLE [dbo].[Carts] ADD CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Colors
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Colors]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table Colors
-- ----------------------------
ALTER TABLE [dbo].[Colors] ADD CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Comments
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Comments]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Comments
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Comments_ModelId]
ON [dbo].[Comments] (
  [ModelId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Comments_ParentCommentId]
ON [dbo].[Comments] (
  [ParentCommentId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Comments_UserId]
ON [dbo].[Comments] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GoodsReceivedNoteDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GoodsReceivedNoteDetails]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table GoodsReceivedNoteDetails
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_GoodsReceivedNoteDetails_GoodsReceivedNoteId]
ON [dbo].[GoodsReceivedNoteDetails] (
  [GoodsReceivedNoteId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_GoodsReceivedNoteDetails_ProductId]
ON [dbo].[GoodsReceivedNoteDetails] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GoodsReceivedNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceivedNoteDetails] ADD CONSTRAINT [PK_GoodsReceivedNoteDetails] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for GoodsReceivedNotes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[GoodsReceivedNotes]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table GoodsReceivedNotes
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_GoodsReceivedNotes_UserId]
ON [dbo].[GoodsReceivedNotes] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table GoodsReceivedNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceivedNotes] ADD CONSTRAINT [PK_GoodsReceivedNotes] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Images
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Images]', RESEED, 300)
GO


-- ----------------------------
-- Indexes structure for table Images
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Images_ModelId]
ON [dbo].[Images] (
  [ModelId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Images
-- ----------------------------
ALTER TABLE [dbo].[Images] ADD CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for InvoiceDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[InvoiceDetails]', RESEED, 9)
GO


-- ----------------------------
-- Indexes structure for table InvoiceDetails
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_InvoiceDetails_InvoiceId]
ON [dbo].[InvoiceDetails] (
  [InvoiceId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_InvoiceDetails_ProductId]
ON [dbo].[InvoiceDetails] (
  [ProductId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table InvoiceDetails
-- ----------------------------
ALTER TABLE [dbo].[InvoiceDetails] ADD CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Invoices
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Invoices]', RESEED, 8)
GO


-- ----------------------------
-- Indexes structure for table Invoices
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Invoices_UserId]
ON [dbo].[Invoices] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Invoices
-- ----------------------------
ALTER TABLE [dbo].[Invoices] ADD CONSTRAINT [PK_Invoices] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Models
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Models]', RESEED, 33)
GO


-- ----------------------------
-- Indexes structure for table Models
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Models_BrandId]
ON [dbo].[Models] (
  [BrandId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Models_ProductTypeId]
ON [dbo].[Models] (
  [ProductTypeId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Models_SupplierId]
ON [dbo].[Models] (
  [SupplierId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Models
-- ----------------------------
ALTER TABLE [dbo].[Models] ADD CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Products
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Products]', RESEED, 334)
GO


-- ----------------------------
-- Indexes structure for table Products
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Products_ColorId]
ON [dbo].[Products] (
  [ColorId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Products_ModelId]
ON [dbo].[Products] (
  [ModelId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Products_SizeId]
ON [dbo].[Products] (
  [SizeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for ProductTypes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[ProductTypes]', RESEED, 8)
GO


-- ----------------------------
-- Indexes structure for table ProductTypes
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_ProductTypes_ParentProductTypeId]
ON [dbo].[ProductTypes] (
  [ParentProductTypeId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table ProductTypes
-- ----------------------------
ALTER TABLE [dbo].[ProductTypes] ADD CONSTRAINT [PK_ProductTypes] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Promotions
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Promotions]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Promotions
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Promotions_ModelId]
ON [dbo].[Promotions] (
  [ModelId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Promotions
-- ----------------------------
ALTER TABLE [dbo].[Promotions] ADD CONSTRAINT [PK_Promotions] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Reviews
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Reviews]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Reviews
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Reviews_ModelId]
ON [dbo].[Reviews] (
  [ModelId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_Reviews_UserId]
ON [dbo].[Reviews] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Reviews
-- ----------------------------
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Sizes
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Sizes]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table Sizes
-- ----------------------------
ALTER TABLE [dbo].[Sizes] ADD CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Sliders
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Sliders]', RESEED, 3)
GO


-- ----------------------------
-- Indexes structure for table Sliders
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Sliders_ModelId]
ON [dbo].[Sliders] (
  [ModelId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Sliders
-- ----------------------------
ALTER TABLE [dbo].[Sliders] ADD CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Suppliers
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Suppliers]', RESEED, 6)
GO


-- ----------------------------
-- Primary Key structure for table Suppliers
-- ----------------------------
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for WishlistDetails
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[WishlistDetails]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table WishlistDetails
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_WishlistDetails_ProductId]
ON [dbo].[WishlistDetails] (
  [ProductId] ASC
)
GO

CREATE NONCLUSTERED INDEX [IX_WishlistDetails_WishlistId]
ON [dbo].[WishlistDetails] (
  [WishlistId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table WishlistDetails
-- ----------------------------
ALTER TABLE [dbo].[WishlistDetails] ADD CONSTRAINT [PK_WishlistDetails] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for Wishlists
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Wishlists]', RESEED, 1)
GO


-- ----------------------------
-- Indexes structure for table Wishlists
-- ----------------------------
CREATE NONCLUSTERED INDEX [IX_Wishlists_UserId]
ON [dbo].[Wishlists] (
  [UserId] ASC
)
GO


-- ----------------------------
-- Primary Key structure for table Wishlists
-- ----------------------------
ALTER TABLE [dbo].[Wishlists] ADD CONSTRAINT [PK_Wishlists] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetRoleClaims] ADD CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserClaims] ADD CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserLogins] ADD CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[AspNetRoles] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[AspNetUserRoles] ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE [dbo].[AspNetUserTokens] ADD CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table CartDetails
-- ----------------------------
ALTER TABLE [dbo].[CartDetails] ADD CONSTRAINT [FK_CartDetails_Carts_CartId] FOREIGN KEY ([CartId]) REFERENCES [dbo].[Carts] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CartDetails] ADD CONSTRAINT [FK_CartDetails_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Carts
-- ----------------------------
ALTER TABLE [dbo].[Carts] ADD CONSTRAINT [FK_Carts_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Comments
-- ----------------------------
ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK_Comments_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK_Comments_Comments_ParentCommentId] FOREIGN KEY ([ParentCommentId]) REFERENCES [dbo].[Comments] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Comments] ADD CONSTRAINT [FK_Comments_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsReceivedNoteDetails
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceivedNoteDetails] ADD CONSTRAINT [FK_GoodsReceivedNoteDetails_GoodsReceivedNotes_GoodsReceivedNoteId] FOREIGN KEY ([GoodsReceivedNoteId]) REFERENCES [dbo].[GoodsReceivedNotes] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GoodsReceivedNoteDetails] ADD CONSTRAINT [FK_GoodsReceivedNoteDetails_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GoodsReceivedNotes
-- ----------------------------
ALTER TABLE [dbo].[GoodsReceivedNotes] ADD CONSTRAINT [FK_GoodsReceivedNotes_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Images
-- ----------------------------
ALTER TABLE [dbo].[Images] ADD CONSTRAINT [FK_Images_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table InvoiceDetails
-- ----------------------------
ALTER TABLE [dbo].[InvoiceDetails] ADD CONSTRAINT [FK_InvoiceDetails_Invoices_InvoiceId] FOREIGN KEY ([InvoiceId]) REFERENCES [dbo].[Invoices] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[InvoiceDetails] ADD CONSTRAINT [FK_InvoiceDetails_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Invoices
-- ----------------------------
ALTER TABLE [dbo].[Invoices] ADD CONSTRAINT [FK_Invoices_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Models
-- ----------------------------
ALTER TABLE [dbo].[Models] ADD CONSTRAINT [FK_Models_Brands_BrandId] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[Brands] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Models] ADD CONSTRAINT [FK_Models_ProductTypes_ProductTypeId] FOREIGN KEY ([ProductTypeId]) REFERENCES [dbo].[ProductTypes] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Models] ADD CONSTRAINT [FK_Models_Suppliers_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Colors_ColorId] FOREIGN KEY ([ColorId]) REFERENCES [dbo].[Colors] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Sizes_SizeId] FOREIGN KEY ([SizeId]) REFERENCES [dbo].[Sizes] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductTypes
-- ----------------------------
ALTER TABLE [dbo].[ProductTypes] ADD CONSTRAINT [FK_ProductTypes_ProductTypes_ParentProductTypeId] FOREIGN KEY ([ParentProductTypeId]) REFERENCES [dbo].[ProductTypes] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Promotions
-- ----------------------------
ALTER TABLE [dbo].[Promotions] ADD CONSTRAINT [FK_Promotions_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Reviews
-- ----------------------------
ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [FK_Reviews_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Reviews] ADD CONSTRAINT [FK_Reviews_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Sliders
-- ----------------------------
ALTER TABLE [dbo].[Sliders] ADD CONSTRAINT [FK_Sliders_Models_ModelId] FOREIGN KEY ([ModelId]) REFERENCES [dbo].[Models] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table WishlistDetails
-- ----------------------------
ALTER TABLE [dbo].[WishlistDetails] ADD CONSTRAINT [FK_WishlistDetails_Products_ProductId] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Products] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[WishlistDetails] ADD CONSTRAINT [FK_WishlistDetails_Wishlists_WishlistId] FOREIGN KEY ([WishlistId]) REFERENCES [dbo].[Wishlists] ([Id]) ON DELETE CASCADE ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Wishlists
-- ----------------------------
ALTER TABLE [dbo].[Wishlists] ADD CONSTRAINT [FK_Wishlists_AspNetUsers_UserId] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

