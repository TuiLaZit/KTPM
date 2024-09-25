-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 08, 2024 lúc 10:17 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `smartphonestore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohanh`
--

CREATE TABLE `baohanh` (
  `id_kh` varchar(6) DEFAULT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `serial` varchar(10) NOT NULL,
  `ngay_mua` date NOT NULL,
  `ngay_het_han` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baohanh`
--

INSERT INTO `baohanh` (`id_kh`, `ten_sp`, `serial`, `ngay_mua`, `ngay_het_han`) VALUES
('KH001', 'iPhone 15 Pro Max', 'SP001004', '2024-09-08', '2025-09-08'),
('KH001', 'iPhone 15 Pro Max', 'SP001005', '2024-09-08', '2025-09-08'),
('KH001', 'iPhone 13', 'SP003003', '2024-09-08', '2025-09-08'),
('KH001', 'iPhone 13', 'SP003004', '2024-09-08', '2025-09-08'),
('KH001', 'iPhone 13', 'SP003005', '2024-09-08', '2025-09-08'),
('KH001', 'iPhone 13', 'SP003006', '2024-09-08', '2025-09-08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucnang`
--

CREATE TABLE `chucnang` (
  `id` varchar(10) NOT NULL,
  `ten` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chucnang`
--

INSERT INTO `chucnang` (`id`, `ten`) VALUES
('NV0', 'Xem nhân viên'),
('NV1', 'Thêm nhân viên'),
('NV2', 'Sửa nhân viên'),
('NV3', 'Xóa nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadon`
--

CREATE TABLE `cthoadon` (
  `id_hd` varchar(6) NOT NULL,
  `id_sp` varchar(6) NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cthoadon`
--

INSERT INTO `cthoadon` (`id_hd`, `id_sp`, `ten_sp`, `so_luong`, `don_gia`) VALUES
('HD001', 'SP001', 'iPhone 15 Pro Max', 2, 15000),
('HD001', 'SP003', 'iPhone 13', 4, 20000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `id_pn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_sp` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten_sp` varchar(50) NOT NULL,
  `so_luong` int(5) NOT NULL,
  `don_gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`id_pn`, `id_sp`, `ten_sp`, `so_luong`, `don_gia`) VALUES
('PN001', 'SP001', 'iPhone 15 Pro Max', 5, 12000),
('PN001', 'SP002', 'iPhone 14 Pro', 5, 12000),
('PN001', 'SP003', 'iPhone 13', 5, 20000),
('PN001', 'SP004', 'Samsung Galaxy Z Flip6', 5, 20000),
('PN001', 'SP005', 'Samsung Galaxy Z Fold6', 5, 50000),
('PN001', 'SP006', 'Xiaomi Redmi 14C', 5, 13000),
('PN001', 'SP007', 'realme C67', 5, 14000),
('PN001', 'SP008', 'vivo Y36', 5, 27000),
('PN001', 'SP009', 'vivo Y16', 5, 30990),
('PN001', 'SP010', 'Xiaomi POCO X6 Pro', 5, 39999),
('PN001', 'SP013', 'iPhone 11', 10, 12990),
('PN002', 'SP001', 'iPhone 15 Pro Max', 3, 15000),
('PN002', 'SP003', 'iPhone 13', 3, 20000),
('PN002', 'SP005', 'Samsung Galaxy Z Fold6', 3, 50000),
('PN002', 'SP007', 'realme C67', 4, 14000),
('PN002', 'SP008', 'vivo Y36', 2, 27000),
('PN002', 'SP009', 'vivo Y16', 4, 30990),
('PN002', 'SP010', 'Xiaomi POCO X6 Pro', 4, 39999),
('PN003', 'SP010', 'Xiaomi POCO X6 Pro', 1, 39999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctquyenchucnang`
--

CREATE TABLE `ctquyenchucnang` (
  `id_quyen` varchar(10) NOT NULL,
  `id_chuc_nang` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctquyenchucnang`
--

INSERT INTO `ctquyenchucnang` (`id_quyen`, `id_chuc_nang`) VALUES
('QU001', '00'),
('QU001', '01'),
('QU001', '02'),
('QU001', '03'),
('QU001', '04'),
('QU001', '05'),
('QU001', '06'),
('QU001', '07'),
('QU001', '08'),
('QU001', '09'),
('QU001', '10'),
('QU001', '11'),
('QU001', '12'),
('QU001', '13'),
('QU001', '14'),
('QU001', '15'),
('QU001', '16'),
('QU001', '20'),
('QU001', '21'),
('QU001', '22'),
('QU001', '23'),
('QU001', '24'),
('QU001', '30'),
('QU001', '31'),
('QU001', '32'),
('QU001', '33'),
('QU001', '34'),
('QU002', '01'),
('QU002', '03'),
('QU002', '05'),
('QU002', '07'),
('QU002', '09'),
('QU002', '11'),
('QU002', '15'),
('QU002', '21'),
('QU003', '02'),
('QU003', '03'),
('QU003', '06'),
('QU003', '08'),
('QU003', '12'),
('QU003', '16'),
('QU003', '22'),
('QU004', '00'),
('QU004', '04'),
('QU004', '10'),
('QU004', '14'),
('QU004', '20'),
('QU004', '24'),
('QU004', '30'),
('QU004', '34'),
('QU005', '03'),
('QU006', '01'),
('QU006', '02'),
('QU006', '03'),
('QU006', '05'),
('QU006', '06'),
('QU006', '07'),
('QU006', '08'),
('QU006', '09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctsanpham`
--

CREATE TABLE `ctsanpham` (
  `id_sp` varchar(6) NOT NULL,
  `serial` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctsanpham`
--

INSERT INTO `ctsanpham` (`id_sp`, `serial`) VALUES
('SP001', 'SP001001'),
('SP001', 'SP001002'),
('SP001', 'SP001003'),
('SP001', 'SP001004'),
('SP001', 'SP001005'),
('SP002', 'SP002001'),
('SP002', 'SP002002'),
('SP003', 'SP003001'),
('SP003', 'SP003002'),
('SP003', 'SP003003'),
('SP003', 'SP003004'),
('SP003', 'SP003005'),
('SP003', 'SP003006'),
('SP004', 'SP004001'),
('SP004', 'SP004002'),
('SP004', 'SP004003'),
('SP004', 'SP004004'),
('SP004', 'SP004005'),
('SP004', 'SP004006'),
('SP004', 'SP004007'),
('SP004', 'SP004008'),
('SP004', 'SP004009'),
('SP004', 'SP004010'),
('SP005', 'SP005001'),
('SP005', 'SP005002'),
('SP005', 'SP005003'),
('SP005', 'SP005004'),
('SP005', 'SP005005'),
('SP006', 'SP006001'),
('SP006', 'SP006002'),
('SP006', 'SP006003'),
('SP008', 'SP008001'),
('SP008', 'SP008002'),
('SP008', 'SP008003'),
('SP008', 'SP008004'),
('SP008', 'SP008005'),
('SP008', 'SP008006'),
('SP008', 'SP008007'),
('SP008', 'SP008008'),
('SP008', 'SP008009'),
('SP008', 'SP008010'),
('SP008', 'SP008011'),
('SP008', 'SP008012'),
('SP008', 'SP008013'),
('SP009', 'SP009001'),
('SP009', 'SP009002'),
('SP009', 'SP009003'),
('SP009', 'SP009004'),
('SP009', 'SP009005'),
('SP010', 'SP010001'),
('SP010', 'SP010002'),
('SP010', 'SP010003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hd` varchar(6) NOT NULL,
  `id_kh` varchar(6) DEFAULT NULL,
  `id_user` varchar(6) DEFAULT NULL,
  `ngay_xuat` date NOT NULL,
  `tong_tien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`id_hd`, `id_kh`, `id_user`, `ngay_xuat`, `tong_tien`) VALUES
('HD001', 'KH001', 'US002', '2024-09-08', 110000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` varchar(6) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `dia_chi` varchar(50) NOT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `ten`, `dia_chi`, `sdt`, `enable`) VALUES
('KH001', 'Sang', 'abc, 123, xyz', '09221101923', 1),
('KH002', 'VIệt', 'USA', '023746934', 1),
('KH003', 'Khang', 'Italy', '091116267', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` varchar(6) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `dia_chi` varchar(60) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `ten`, `dia_chi`, `sdt`, `enable`) VALUES
('CC001', 'Công Ty TNHH abcd', ' TP. Hồ Chí Minh', '02222222', 1),
('CC002', 'Công Ty TNHH Thương Mại Dịch Vụ agsgv', 'TP HCM', '02838115345', 1),
('CC003', 'Công Ty Cổ Phần  FPT', 'Q4, TP. Hồ Chí Minh', '025346572675', 1),
('CC004', 'Công ty Cổ phần  SDFHE', 'Hà Nội', '0900321903', 1),
('CC005', 'Công Ty TNHH Thương Mại Hoàng Hải ', 'TP. Hải Phòng', '02253250888', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_pn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_ncc` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `id_user` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngay_nhap` date NOT NULL,
  `tong_tien` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id_pn`, `id_ncc`, `id_user`, `ngay_nhap`, `tong_tien`) VALUES
('PN001', 'CC003', 'US001', '2024-09-08', 1324845),
('PN002', 'CC001', 'US004', '2024-09-08', 648956),
('PN003', 'CC001', 'US001', '2024-09-08', 39999);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` varchar(10) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `ten`, `enable`) VALUES
('QU001', 'Admin', 1),
('QU002', 'Nhân viên bán hàng', 1),
('QU003', 'Nhân viên nhập hàng', 1),
('QU004', 'Quản lý nhân viên', 1),
('QU005', 'test', 0),
('QU006', 'q6', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` varchar(5) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `gia_ban` int(11) DEFAULT NULL,
  `hang` varchar(50) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `ten`, `so_luong`, `gia_ban`, `hang`, `img`, `enable`) VALUES
('SP001', 'iPhone 15 Pro Max', 6, 15000, 'iPhone', 'SP001.png', 1),
('SP002', 'iPhone 14 Pro', 5, 12000, 'iPhone', 'SP002.png', 1),
('SP003', 'iPhone 13', 4, 20000, 'iPhone', 'SP003.png', 1),
('SP004', 'Samsung Galaxy Z Flip6', 5, 20000, 'Samsung', 'SP004.png', 1),
('SP005', 'Samsung Galaxy Z Fold6', 8, 50000, 'Samsung', 'SP005.png', 1),
('SP006', 'Xiaomi Redmi 14C', 5, 13000, 'Xiaomi', 'SP006.png', 1),
('SP007', 'realme C67', 9, 14000, 'realme', 'SP007.png', 1),
('SP008', 'vivo Y36', 7, 27000, 'vivo', 'SP008.png', 1),
('SP009', 'vivo Y16', 9, 30990, 'vivo', 'SP009.png', 1),
('SP010', 'Xiaomi POCO X6 Pro', 10, 39999, 'Xiaomi', 'SP010.png', 1),
('SP011', 'abc', 0, 3, 'iPhone', 'SP011.png', 0),
('SP012', '123', 0, 1233, 'Samsung', 'SP012.png', 0),
('SP013', 'iPhone 11', 10, 12990, 'iPhone', 'SP013.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` varchar(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `gioi_tinh` varchar(5) DEFAULT NULL,
  `sdt` varchar(15) DEFAULT NULL,
  `quyen` varchar(50) NOT NULL,
  `img` varchar(50) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `password`, `ten`, `gioi_tinh`, `sdt`, `quyen`, `img`, `enable`) VALUES
('US001', 'admin', 'Admin', 'Nam', '911', 'QU001', 'US001.png', 1),
('US002', '123', 'nhan vien 1', 'Nữ', '6666', 'QU002', 'US002.png', 1),
('US003', '123', 'nv2', 'Nam', '12345', 'QU004', 'US003.png', 1),
('US004', '123', 'abc', 'Nữ', '11', 'QU003', 'US004.png', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baohanh`
--
ALTER TABLE `baohanh`
  ADD PRIMARY KEY (`serial`);

--
-- Chỉ mục cho bảng `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`id_hd`,`id_sp`),
  ADD KEY `id_hd` (`id_hd`,`id_sp`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`id_pn`,`id_sp`),
  ADD KEY `id_pn` (`id_pn`,`id_sp`);

--
-- Chỉ mục cho bảng `ctquyenchucnang`
--
ALTER TABLE `ctquyenchucnang`
  ADD PRIMARY KEY (`id_quyen`,`id_chuc_nang`);

--
-- Chỉ mục cho bảng `ctsanpham`
--
ALTER TABLE `ctsanpham`
  ADD PRIMARY KEY (`id_sp`,`serial`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hd`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_pn`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
