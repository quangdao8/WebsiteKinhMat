USE [master]
GO
/****** Object:  Database [QuanLyBanHang]    Script Date: 3/2/2022 4:34:12 PM ******/
CREATE DATABASE [QuanLyBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLyBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\QuanLyBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLyBanHang] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyBanHang] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLyBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyBanHang', N'ON'
GO
ALTER DATABASE [QuanLyBanHang] SET QUERY_STORE = OFF
GO
USE [QuanLyBanHang]
GO
/****** Object:  Table [dbo].[ChiTietDonDatHang]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonDatHang](
	[MaChiTietDDH] [int] IDENTITY(1,1) NOT NULL,
	[MaDDH] [int] NULL,
	[MaSP] [int] NULL,
	[SizeID] [int] NULL,
	[TenSP] [nvarchar](255) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPhieuNhap]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuNhap](
	[MaChiTietPN] [int] IDENTITY(1,1) NOT NULL,
	[MaPN] [int] NULL,
	[MaSP] [int] NULL,
	[SizeID] [int] NULL,
	[DonGiaNhap] [decimal](18, 0) NULL,
	[SoLuongNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[MaDDH] [int] IDENTITY(1,1) NOT NULL,
	[NgayDat] [datetime] NULL,
	[TinhTrangGiaoHang] [bit] NULL,
	[NgayGiao] [datetime] NULL,
	[DaThanhToan] [bit] NULL,
	[MaThanhVien] [int] NULL,
	[UuDai] [int] NULL,
	[DaHuy] [bit] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](100) NULL,
	[Icon] [nvarchar](max) NULL,
	[BiDanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiThanhVien]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiThanhVien](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[UuDai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[Fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [int] IDENTITY(1,1) NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[ThongTin] [nvarchar](255) NULL,
	[Logo] [nvarchar](max) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [int] IDENTITY(1,1) NOT NULL,
	[MaNCC] [int] NULL,
	[NgayNhap] [datetime] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](255) NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhap] [datetime] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[SoLuongTon] [int] NULL,
	[LuotXem] [int] NULL,
	[LuotBinhChon] [int] NULL,
	[SoLanMua] [int] NULL,
	[Moi] [int] NULL,
	[MaNCC] [int] NULL,
	[MaNSX] [int] NULL,
	[MaLoaiSP] [int] NULL,
	[DaXoa] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[SizeID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NULL,
	[NgayTao] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size_SanPham]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size_SanPham](
	[Size_SanPhamID] [int] IDENTITY(1,1) NOT NULL,
	[SizeID] [int] NULL,
	[MaSP] [int] NULL,
	[SoLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Size_SanPhamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
	[DiaChi] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[SoDienThoai] [varchar](12) NULL,
	[MaLoaiTV] [int] NULL,
	[vCode] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[TaiKhoan] [nvarchar](100) NULL,
	[MatKhau] [nvarchar](100) NULL,
	[HoTen] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] ON 

INSERT [dbo].[ChiTietDonDatHang] ([MaChiTietDDH], [MaDDH], [MaSP], [SizeID], [TenSP], [SoLuong], [DonGia]) VALUES (1, 1, 1, 1, N'Nike Air Max', 2, CAST(2000000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietDonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[DonDatHang] ON 

INSERT [dbo].[DonDatHang] ([MaDDH], [NgayDat], [TinhTrangGiaoHang], [NgayGiao], [DaThanhToan], [MaThanhVien], [UuDai], [DaHuy], [DaXoa]) VALUES (1, CAST(N'2022-02-19T16:11:15.550' AS DateTime), 0, NULL, 0, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[DonDatHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (1, N'Nam', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (2, N'Nữ', NULL, NULL)
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoai], [Icon], [BiDanh]) VALUES (3, N'Trẻ Em', NULL, NULL)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (1, N'Japan', N'abc/abc', N'japan@yahoo.com', N'0123456789', N'0777883')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (2, N'Bình Chánh', N'123/123 H .Bình Chánh', N'qweq@ewe.ew', N'0123456789', N'123123')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (3, N'United states of america', N'123/321 iraq', N'barack.obama@gmail.com', N'012345689', N'0777.777')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (4, N'Trung Quốc', N'abc', N'TQ@gmail.com', N'123456', N'111.111')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (5, N'Hàn Quốc', N'Seoul', N's@gmail.com', N'1234444', N'222.222')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [Email], [SoDienThoai], [Fax]) VALUES (6, N'Việt Nam', N'Hà Nội', N'hanoi@gmail.com', N'0364345094', N'121212')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaSanXuat] ON 

INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (1, N'Diamond D', N'diamondD@gmail.com', N'diamonD.jpg')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (2, N'Philippe Auguste', N'philippeAuguste@gmail.com', N'philippe.png')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (3, N'Burberry', N'Burberry.com', N'burberry.png')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (4, N'Prada', N'Prada@gmail.com', N'prada.png')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (5, N'Ray Ban', N'RayBan@gmail.com', N'rayban.png')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [ThongTin], [Logo]) VALUES (6, N'Michael Kors', N'MichaelKors@gmail.com', N'michealKors.png')
SET IDENTITY_INSERT [dbo].[NhaSanXuat] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (1, N'Diamond D DM-1133-32-C22', CAST(2000002 AS Decimal(18, 0)), NULL, NULL, N'DM01.jpg', NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (2, N'Diamond D DM-29237-52-C23', CAST(2000000 AS Decimal(18, 0)), NULL, NULL, N'DM02.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (3, N'Diamond D DM-T-29210-59-C6', CAST(2000000 AS Decimal(18, 0)), NULL, NULL, N'DM03.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (4, N'Diamond D DM-T-29204-62-c21', CAST(1235555 AS Decimal(18, 0)), NULL, NULL, N'DM04.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (5, N'Diamond D DM-T-29204-62-c23', CAST(1234444 AS Decimal(18, 0)), NULL, NULL, N'DM05.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (6, N'Diamond D DM-T-29204-62-c23', CAST(1234444 AS Decimal(18, 0)), NULL, NULL, N'DM06.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (7, N'Diamond D DM-T-29204-C2', CAST(4444444 AS Decimal(18, 0)), NULL, NULL, N'DM07.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (8, N'Diamond D DM-X-29903-X2', CAST(3456788 AS Decimal(18, 0)), NULL, NULL, N'DM08.jpg', NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (9, N'Philippe Auguste PA-8913-53-c6', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, N'PA01.jpg', NULL, NULL, NULL, NULL, 1, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (10, N'Philippe Auguste 53-C4', CAST(2300000 AS Decimal(18, 0)), NULL, NULL, N'PA02.jpg', NULL, NULL, NULL, NULL, 1, NULL, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (11, N'Philippe Auguste 54-C4', CAST(2300009 AS Decimal(18, 0)), NULL, NULL, N'PA03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (12, N'Philippe Auguste 54-C5', CAST(4560000 AS Decimal(18, 0)), NULL, NULL, N'PA04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (13, N'Philippe Auguste 49-c3', CAST(2344444 AS Decimal(18, 0)), NULL, NULL, N'PA05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (14, N'Philippe Auguste 56-C2', CAST(2345678 AS Decimal(18, 0)), NULL, NULL, N'PA06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (15, N'Philippe Auguste 51-C5', CAST(4567890 AS Decimal(18, 0)), NULL, NULL, N'PA07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (16, N'Philippe Auguste 53-C1', CAST(9000000 AS Decimal(18, 0)), NULL, NULL, N'PA08.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (17, N'Burberry 5434-K8', CAST(8000000 AS Decimal(18, 0)), NULL, NULL, N'BB01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (18, N'Burberry 1243-J7', CAST(5444444 AS Decimal(18, 0)), NULL, NULL, N'BB02.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (19, N'Burberry 3421-A2', CAST(3435654 AS Decimal(18, 0)), NULL, NULL, N'BB03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (20, N'Burberry 6756-B1', CAST(6680000 AS Decimal(18, 0)), NULL, NULL, N'BB04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (21, N'Burberry 1111-B2', CAST(5687675 AS Decimal(18, 0)), NULL, NULL, N'BB05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (22, N'Burberry 5643-K9', CAST(1515000 AS Decimal(18, 0)), NULL, NULL, N'BB06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (23, N'Prada C709K1', CAST(1112000 AS Decimal(18, 0)), NULL, NULL, N'P01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (24, N'Prada C699B1', CAST(2115100 AS Decimal(18, 0)), NULL, NULL, N'P02.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (25, N'Prada C123F2', CAST(1200000 AS Decimal(18, 0)), NULL, NULL, N'P03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (26, N'Prada C32J2', CAST(5313212 AS Decimal(18, 0)), NULL, NULL, N'P04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (27, N'Prada C98L9', CAST(1213212 AS Decimal(18, 0)), NULL, NULL, N'P05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (28, N'Prada A23P9', CAST(1111112 AS Decimal(18, 0)), NULL, NULL, N'P06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (29, N'Prada 909L0', CAST(4545455 AS Decimal(18, 0)), NULL, NULL, N'P07.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (30, N'Prada M99A2', CAST(8484515 AS Decimal(18, 0)), NULL, NULL, N'P08.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (31, N'Prada M99B5', CAST(2121211 AS Decimal(18, 0)), NULL, NULL, N'P09.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (32, N'Rayban 112-T2', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'RB01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (33, N'Rayban 223-K1', CAST(2121211 AS Decimal(18, 0)), NULL, NULL, N'RB02.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (34, N'Rayban 009-C1', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'RB03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (35, N'Rayban 989-B1', CAST(1212121 AS Decimal(18, 0)), NULL, NULL, N'RB04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (36, N'Rayban 282-M1', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'RB05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (37, N'Rayban 909-M2', CAST(1212121 AS Decimal(18, 0)), NULL, NULL, N'RB06.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (54, N'Michael Kors 3352-C2', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'MK01.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (55, N'Michael Kors 2323-M1', CAST(2121211 AS Decimal(18, 0)), NULL, NULL, N'MK02.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (56, N'Michael Kors 0099-N2', CAST(2211121 AS Decimal(18, 0)), NULL, NULL, N'MK03.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (57, N'Michael Kors 8989-L1', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'MK04.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (58, N'Michael Kors 3322/O8', CAST(2121212 AS Decimal(18, 0)), NULL, NULL, N'MK05.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2, 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (63, N'Test1', CAST(100000 AS Decimal(18, 0)), CAST(N'2022-02-23T00:00:00.000' AS DateTime), N'ahiii', N'', 0, 0, NULL, 0, NULL, 1, 1, 1, NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [DonGia], [NgayCapNhap], [MoTa], [HinhAnh], [SoLuongTon], [LuotXem], [LuotBinhChon], [SoLanMua], [Moi], [MaNCC], [MaNSX], [MaLoaiSP], [DaXoa]) VALUES (64, NULL, NULL, NULL, NULL, N'', 0, NULL, NULL, 0, NULL, 1, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (1, 35, CAST(N'2021-02-20T20:49:30.107' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (2, 36, CAST(N'2021-02-20T20:49:31.930' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (3, 37, CAST(N'2021-02-20T20:49:33.000' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (4, 38, CAST(N'2021-02-20T20:49:34.173' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (5, 39, CAST(N'2021-02-20T20:49:35.410' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (6, 40, CAST(N'2021-02-20T20:49:38.227' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (7, 41, CAST(N'2021-02-20T20:49:39.210' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (8, 42, CAST(N'2021-02-20T20:49:40.720' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (9, 43, CAST(N'2021-02-20T20:49:42.010' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (10, 44, CAST(N'2021-02-20T20:49:44.417' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (11, 45, CAST(N'2021-02-20T20:49:45.523' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (12, 46, CAST(N'2021-02-20T20:49:46.950' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (13, 47, CAST(N'2021-02-20T20:49:47.957' AS DateTime))
INSERT [dbo].[Size] ([SizeID], [Number], [NgayTao]) VALUES (14, 48, CAST(N'2021-02-20T20:49:49.277' AS DateTime))
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Size_SanPham] ON 

INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (2, 2, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (3, 3, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (4, 4, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (5, 5, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (6, 6, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (7, 7, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (8, 8, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (9, 9, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (10, 10, 1, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (11, 1, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (12, 2, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (13, 3, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (14, 4, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (15, 5, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (16, 6, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (17, 7, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (18, 8, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (19, 9, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (20, 10, 2, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (21, 1, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (22, 2, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (23, 3, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (24, 4, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (25, 5, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (26, 6, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (27, 7, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (28, 8, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (29, 9, 3, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (30, 10, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (31, 1, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (32, 2, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (33, 3, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (34, 4, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (35, 5, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (36, 6, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (37, 7, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (38, 8, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (39, 9, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (40, 10, 11, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (41, 1, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (42, 2, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (43, 3, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (44, 4, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (45, 5, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (46, 6, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (47, 7, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (48, 8, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (49, 9, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (50, 10, 4, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (51, 1, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (52, 2, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (53, 3, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (54, 4, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (55, 5, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (56, 6, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (57, 7, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (58, 8, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (59, 9, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (60, 10, 5, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (61, 1, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (62, 2, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (63, 3, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (64, 4, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (65, 5, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (66, 6, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (67, 7, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (68, 8, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (69, 9, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (70, 10, 6, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (71, 1, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (72, 2, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (73, 3, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (74, 4, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (75, 5, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (76, 6, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (77, 7, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (78, 8, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (79, 9, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (80, 10, 7, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (81, 1, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (82, 2, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (83, 3, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (84, 4, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (85, 5, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (86, 6, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (87, 7, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (88, 8, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (89, 9, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (90, 10, 8, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (91, 1, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (92, 2, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (93, 3, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (94, 4, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (95, 5, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (96, 6, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (97, 7, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (98, 8, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (99, 9, 9, NULL)
GO
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (100, 10, 9, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (101, 1, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (102, 2, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (103, 3, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (104, 4, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (105, 5, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (106, 6, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (107, 7, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (108, 8, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (109, 9, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (110, 10, 10, NULL)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (111, 1, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (112, 2, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (113, 3, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (114, 4, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (115, 5, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (116, 6, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (117, 7, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (118, 8, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (119, 9, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (120, 10, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (121, 11, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (122, 12, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (123, 13, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (124, 14, 63, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (125, 1, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (126, 2, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (127, 3, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (128, 4, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (129, 5, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (130, 6, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (131, 7, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (132, 8, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (133, 9, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (134, 10, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (135, 11, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (136, 12, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (137, 13, 64, 0)
INSERT [dbo].[Size_SanPham] ([Size_SanPhamID], [SizeID], [MaSP], [SoLuong]) VALUES (138, 14, 64, 0)
SET IDENTITY_INSERT [dbo].[Size_SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[ThanhVien] ON 

INSERT [dbo].[ThanhVien] ([MaThanhVien], [TaiKhoan], [MatKhau], [HoTen], [DiaChi], [Email], [SoDienThoai], [MaLoaiTV], [vCode]) VALUES (1, N'quangdao', N'EF-D9-31-57-F7-BC-62-72-80-1B-32-EC-D2-8B-39-AC', N'pham quang dao', N'Nghe An', N'phamquangdao0204@gmail.com', N'0865659232', NULL, N'0NSUTeeJmG')
SET IDENTITY_INSERT [dbo].[ThanhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [TaiKhoan], [MatKhau], [HoTen]) VALUES (1, N'daopq', N'123', N'phamquangdao')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Size] ADD  DEFAULT (getdate()) FOR [NgayTao]
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
ALTER TABLE [dbo].[ChiTietDonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonDatHang_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[ChiTietDonDatHang] CHECK CONSTRAINT [FK_ChiTietDonDatHang_Size]
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
ALTER TABLE [dbo].[ChiTietPhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuNhap_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[ChiTietPhieuNhap] CHECK CONSTRAINT [FK_ChiTietPhieuNhap_Size]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_ThanhVien] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[ThanhVien] ([MaThanhVien])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_ThanhVien]
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD  CONSTRAINT [FK_PhieuNhap_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap] CHECK CONSTRAINT [FK_PhieuNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaCungCap]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[Size_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Size_SanPham_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[Size_SanPham] CHECK CONSTRAINT [FK_Size_SanPham_SanPham]
GO
ALTER TABLE [dbo].[Size_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_Size_SanPham_Size] FOREIGN KEY([SizeID])
REFERENCES [dbo].[Size] ([SizeID])
GO
ALTER TABLE [dbo].[Size_SanPham] CHECK CONSTRAINT [FK_Size_SanPham_Size]
GO
ALTER TABLE [dbo].[ThanhVien]  WITH CHECK ADD  CONSTRAINT [FK_ThanhVien_LoaiThanhVien] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LoaiThanhVien] ([MaLoaiTV])
GO
ALTER TABLE [dbo].[ThanhVien] CHECK CONSTRAINT [FK_ThanhVien_LoaiThanhVien]
GO
/****** Object:  StoredProcedure [dbo].[ListProductsByIdCategory]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ListProductsByIdCategory] @IdMaLoaiSP INT
AS
SELECT * FROM dbo.SanPham WHERE MaLoaiSP=@IdMaLoaiSP

GO
/****** Object:  StoredProcedure [dbo].[ListProductsByIdCategoryAndIdProducer]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ListProductsByIdCategoryAndIdProducer] @IdMaLoaiSP INT, @IdNSX int
AS
SELECT * FROM dbo.SanPham WHERE MaLoaiSP=@IdMaLoaiSP AND MaNSX=@IdNSX

GO
/****** Object:  StoredProcedure [dbo].[ListProductsByIdProducer]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ListProductsByIdProducer] @IdNSX int
AS
SELECT * FROM dbo.SanPham WHERE MaNSX=@IdNSX

GO
/****** Object:  StoredProcedure [dbo].[ThongKeDatHang]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThongKeDatHang] @Thang INT, @Nam INT, @DaThanhToan INT,@TinhTrangGiaoHang int
AS
SELECT * FROM dbo.DonDatHang 
INNER JOIN dbo.ChiTietDonDatHang ON ChiTietDonDatHang.MaDDH = DonDatHang.MaDDH
WHERE DaThanhToan=@DaThanhToan AND TinhTrangGiaoHang=@TinhTrangGiaoHang AND
MONTH(NgayDat)=@Thang AND YEAR(NgayDat)=@Nam AND DaHuy=0

GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThuDatHangTheoThang]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ThongKeDoanhThuDatHangTheoThang] @Thang INT, @Nam INT
AS
SELECT SUM(DonGia*SoLuong) FROM dbo.ChiTietDonDatHang 
INNER JOIN dbo.DonDatHang ON DonDatHang.MaDDH = ChiTietDonDatHang.MaDDH
WHERE MONTH(NgayDat)=@Thang AND YEAR(NgayDat)=@Nam AND
DaHuy=0 AND DaXoa=0

GO
/****** Object:  StoredProcedure [dbo].[ThongKeNhapHangTheoThang]    Script Date: 3/2/2022 4:34:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[ThongKeNhapHangTheoThang] @Thang INT, @Nam INT
AS
SELECT SUM(SoLuongNhap*DonGiaNhap) FROM dbo.ChiTietPhieuNhap
INNER JOIN dbo.PhieuNhap ON PhieuNhap.MaPN = ChiTietPhieuNhap.MaPN
WHERE MONTH(NgayNhap)=@Thang AND YEAR(NgayNhap)=@Nam
AND DaXoa=0

GO
USE [master]
GO
ALTER DATABASE [QuanLyBanHang] SET  READ_WRITE 
GO
