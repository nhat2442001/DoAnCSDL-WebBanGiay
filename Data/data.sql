USE [master]
GO
/****** Object:  Database [DoAn_WebBanHang]    Script Date: 1/31/2022 3:06:14 PM ******/
CREATE DATABASE [DoAn_WebBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoAn_WebBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoAn_WebBanHang.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoAn_WebBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoAn_WebBanHang_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoAn_WebBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoAn_WebBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoAn_WebBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoAn_WebBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoAn_WebBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoAn_WebBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoAn_WebBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoAn_WebBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [DoAn_WebBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoAn_WebBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoAn_WebBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoAn_WebBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DoAn_WebBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DoAn_WebBanHang]
GO
/****** Object:  Table [dbo].[BangSize]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BangSize](
	[Size] [nvarchar](50) NOT NULL,
	[ChuThich] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[MaBL] [int] NOT NULL,
	[NoiDungBL] [nvarchar](max) NULL,
	[MaThanhVien] [int] NULL,
	[MaSP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaSP] [int] NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
	[MaDDH] [nvarchar](50) NOT NULL,
	[Size] [nvarchar](50) NULL,
	[MaSizeSP] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC,
	[MaSizeSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaCT] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuongNhap] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[Size] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [nvarchar](50) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[UuDai] [int] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongGiay]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongGiay](
	[MaDongGiay] [int] IDENTITY(1,1) NOT NULL,
	[TenDongGiay] [nvarchar](50) NULL,
	[Icon] [nvarchar](max) NULL,
	[DongDB] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDongGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[SĐT] [nvarchar](150) NULL,
	[MaThanhVien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
 CONSTRAINT [PK_LoaiThanhVien] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[SĐT] [nvarchar](50) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](max) NULL,
	[Gia] [decimal](18, 0) NULL,
	[NgayCapNhatGia] [datetime] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[LuotBinhChon] [int] NULL,
	[LuotBinhLuan] [int] NULL,
	[SoLanMua] [int] NULL,
	[HangMoi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaDongGiay] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SoLuongSize]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SoLuongSize](
	[MaSizeSP] [int] IDENTITY(1,1) NOT NULL,
	[MaSP] [int] NULL,
	[Size] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSizeSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 1/31/2022 3:06:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](150) NULL,
	[MatKhau] [nvarchar](150) NULL,
	[HoTen] [nvarchar](150) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](50) NULL,
	[MaLoaiTV] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'38', NULL)
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'39', NULL)
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'40', NULL)
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'41', NULL)
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'42', NULL)
INSERT [dbo].[BangSize] ([Size], [ChuThich]) VALUES (N'43', NULL)
GO
INSERT [dbo].[ChiTietDonDatHang] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaDDH], [Size], [MaSizeSP]) VALUES (3, N'




Nike Defy All Day', 1, CAST(1909000 AS Decimal(18, 0)), N'DH6', N'41', 12)
INSERT [dbo].[ChiTietDonDatHang] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaDDH], [Size], [MaSizeSP]) VALUES (2, N'Air Jordan 1 Mid', 1, CAST(3239000 AS Decimal(18, 0)), N'DH7', N'42', 6)
INSERT [dbo].[ChiTietDonDatHang] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaDDH], [Size], [MaSizeSP]) VALUES (2, N'Air Jordan 1 Mid', 1, CAST(3239000 AS Decimal(18, 0)), N'DH8', N'42', 6)
INSERT [dbo].[ChiTietDonDatHang] ([MaSP], [TenSP], [SoLuong], [DonGia], [MaDDH], [Size], [MaSizeSP]) VALUES (3, N'




Nike Defy All Day', 1, CAST(1909000 AS Decimal(18, 0)), N'DH8', N'42', 11)
GO
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [UuDai], [MaKH]) VALUES (N'DH6', CAST(N'2022-01-30T21:41:27.277' AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [UuDai], [MaKH]) VALUES (N'DH7', CAST(N'2022-01-30T22:47:33.830' AS DateTime), NULL, NULL, NULL, 2)
INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [UuDai], [MaKH]) VALUES (N'DH8', CAST(N'2022-01-31T10:52:36.537' AS DateTime), NULL, NULL, NULL, 2)
GO
SET IDENTITY_INSERT [dbo].[DongGiay] ON 

INSERT [dbo].[DongGiay] ([MaDongGiay], [TenDongGiay], [Icon], [DongDB]) VALUES (1, N'Giày chạy bộ', NULL, NULL)
INSERT [dbo].[DongGiay] ([MaDongGiay], [TenDongGiay], [Icon], [DongDB]) VALUES (2, N'Giày đi chơi', NULL, NULL)
INSERT [dbo].[DongGiay] ([MaDongGiay], [TenDongGiay], [Icon], [DongDB]) VALUES (3, N'Giày thể thao', NULL, NULL)
SET IDENTITY_INSERT [dbo].[DongGiay] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [Email], [SĐT], [MaThanhVien]) VALUES (2, N'Thống Nhât', N'157/11, Phạm Văn Chiêu', N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] ON 

INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (1, N'Vang', 10)
INSERT [dbo].[LoaiThanhVien] ([MaLoaiTV], [TenLoai], [UuDai]) VALUES (2, N'Bac', 5)
SET IDENTITY_INSERT [dbo].[LoaiThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SĐT], [Logo]) VALUES (1, N'Nike', N'USA', NULL, N'1244532', N'images/logo/nike.jpeg')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SĐT], [Logo]) VALUES (2, N'Adidas', N'USA', NULL, N'123215', N'images/logo/adidas.png')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SĐT], [Logo]) VALUES (3, N'Bitis', N'VietNam', NULL, N'123213', N'images/logo/bitis.png')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SĐT], [Logo]) VALUES (4, N'Fila', N'Korea', NULL, N'5521312', N'images/logo/fila.png')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (1, N'Nike Air Force 1 ''07', CAST(2649000 AS Decimal(18, 0)), NULL, N'The radiance lives on in the Nike Air Force 1 ''07, the b-ball OG that puts a fresh spin on what you know best: durably stitched overlays, clean finishes and the perfect amount of flash to make you shine.', N'\images\nike\Nike Air Force 1 ''07\nike-1-1.png', 3, NULL, 2, NULL, 1, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (2, N'Air Jordan 1 Mid', CAST(3239000 AS Decimal(18, 0)), NULL, N'The Air Jordan 1 Mid Shoe is inspired by the first AJ1, offering fans of Jordan retros a chance to follow in the footsteps of greatness.Fresh colour trims the clean, classic materials, injecting some newness into the familiar design.', N'\images\nike\Air Jordan 1 Mid\nike-2-1.png', 31, NULL, 5, NULL, 1, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (3, N'




Nike Defy All Day', CAST(1909000 AS Decimal(18, 0)), NULL, N'Take on everyday challenges in the Nike Defy All Day. Leather up top and rubber traction on the bottom create a durable design that lasts the rigours of tough training sessions. Soft cushioning carries comfort through your workout—or a day of getting things done.', N'\images\nike\Nike Defy All Day\nike-3-1.png', 45, NULL, 6, NULL, 1, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (19, N'Biti''s Football', CAST(699000 AS Decimal(18, 0)), NULL, N'Lần đầu tiên, giày bóng đá Biti’s Hunter Football dòng đế bằng Futsal được ra mắt, dành riêng cho sân futsal, sân xi măng, sân trong nhà. Đặc biệt, với kiểu dáng trẻ trung, phối màu hiện đại và thời trang, mẫu thiết kế dễ dàng được tận dụng cho cả dịp đi chơi, đi học, đi làm.', N'\images\bitis\Biti''s Hunter Football Gen 2K21\bitis-2-1.png', 2, NULL, 1, NULL, 3, 3)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (20, N'Bitis''s Hunter X', CAST(750000 AS Decimal(18, 0)), NULL, N'Biti''s tự hào mang đến bộ sưu tập “tái sử dụng" đầu tiên – BST “Còn-Gì-Dùng-Đó” những đôi giày được tạo nên từ những mảnh ghép ngẫu nhiên, có tỷ lệ tái sử dụng lên đến 60% cùng bộ đế được sử dụng công thức tái chế phế cao su. Những thay đổi nhỏ bé mà bạn sắp trải nghiệm sẽ là điểm khởi đầu của Biti’s trên con đường nỗ lực theo đuổi kỷ nguyên Xanh với 3 trụ cột Products - People - Planet.', N'\images\bitis\Bitis Hunter X\bitis-1-1.png', 3, NULL, 0, NULL, 3, 2)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [NgayCapNhatGia], [MoTa], [HinhAnh], [LuotBinhChon], [LuotBinhLuan], [SoLanMua], [HangMoi], [MaNCC], [MaDongGiay]) VALUES (21, N'Adidas NMD', CAST(2250000 AS Decimal(18, 0)), NULL, NULL, N'\images\adidas\NMD\adidas-1-1.png', 5, NULL, 0, NULL, 2, 2)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SoLuongSize] ON 

INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (1, 1, N'43', 10)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (2, 1, N'42', 14)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (3, 1, N'40', 6)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (4, 1, N'38', 3)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (6, 2, N'42', -1)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (7, 2, N'41', 5)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (8, 2, N'39', 3)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (10, 3, N'43', 11)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (11, 3, N'42', -2)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (12, 3, N'41', 1)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (14, 3, N'38', 3)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (15, 19, N'43', 4)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (16, 20, N'41', 2)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (17, 21, N'39', 2)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (18, 21, N'40', 2)
INSERT [dbo].[SoLuongSize] ([MaSizeSP], [MaSP], [Size], [SoLuong]) VALUES (20, 21, N'42', 2)
SET IDENTITY_INSERT [dbo].[SoLuongSize] OFF
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_SanPham]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_ThanhVien]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_BangSize] FOREIGN KEY([Size])
REFERENCES [dbo].[BangSize] ([Size])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_BangSize]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang] FOREIGN KEY([MaDDH])
REFERENCES [dbo].[DonDatHang] ([MaDDH])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SanPham]
GO
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_SoLuongSize] FOREIGN KEY([MaSizeSP])
REFERENCES [dbo].[SoLuongSize] ([MaSizeSP])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_SoLuongSize]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap] FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_PhieuNhap]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_SanPham]
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_Size] FOREIGN KEY([Size])
REFERENCES [dbo].[BangSize] ([Size])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_Size]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_ThanhVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DongGiay] FOREIGN KEY([MaDongGiay])
REFERENCES [dbo].[DongGiay] ([MaDongGiay])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DongGiay]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NCC]
GO
ALTER TABLE [dbo].[SoLuongSize]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongSize_BangSize] FOREIGN KEY([Size])
REFERENCES [dbo].[BangSize] ([Size])
GO
ALTER TABLE [dbo].[SoLuongSize] CHECK CONSTRAINT [FK_SoLuongSize_BangSize]
GO
ALTER TABLE [dbo].[SoLuongSize]  WITH CHECK ADD  CONSTRAINT [FK_SoLuongSize_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[SoLuongSize] CHECK CONSTRAINT [FK_SoLuongSize_SanPham]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
USE [master]
GO
ALTER DATABASE [DoAn_WebBanHang] SET  READ_WRITE 
GO
