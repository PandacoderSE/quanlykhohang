-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 13, 2024 lúc 06:50 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlikhohang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctkiemke`
--

CREATE TABLE `ctkiemke` (
  `maphieukiemmke` int(11) NOT NULL COMMENT 'Mã phiếu kiểm kê',
  `masanpham` int(11) NOT NULL COMMENT 'Mã sản phẩm',
  `soluong` int(11) NOT NULL,
  `chenhlech` int(11) NOT NULL,
  `ghichu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `maphienbansp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0,
  `hinhthucnhap` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctphieuxuat`
--

CREATE TABLE `ctphieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `maphienbansp` int(11) NOT NULL DEFAULT 0,
  `soluong` int(11) NOT NULL DEFAULT 0,
  `dongia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctquyen`
--

CREATE TABLE `ctquyen` (
  `manhomquyen` int(11) NOT NULL,
  `machucnang` varchar(50) NOT NULL,
  `hanhdong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctquyen`
--

INSERT INTO `ctquyen` (`manhomquyen`, `machucnang`, `hanhdong`) VALUES
(1, 'khachhang', 'create'),
(1, 'khachhang', 'delete'),
(1, 'khachhang', 'update'),
(1, 'khachhang', 'view'),
(1, 'khuvuckho', 'create'),
(1, 'khuvuckho', 'delete'),
(1, 'khuvuckho', 'update'),
(1, 'khuvuckho', 'view'),
(1, 'nhacungcap', 'create'),
(1, 'nhacungcap', 'delete'),
(1, 'nhacungcap', 'update'),
(1, 'nhacungcap', 'view'),
(1, 'nhanvien', 'create'),
(1, 'nhanvien', 'delete'),
(1, 'nhanvien', 'update'),
(1, 'nhanvien', 'view'),
(1, 'nhaphang', 'create'),
(1, 'nhaphang', 'delete'),
(1, 'nhaphang', 'update'),
(1, 'nhaphang', 'view'),
(1, 'nhomquyen', 'create'),
(1, 'nhomquyen', 'delete'),
(1, 'nhomquyen', 'update'),
(1, 'nhomquyen', 'view'),
(1, 'sanpham', 'create'),
(1, 'sanpham', 'delete'),
(1, 'sanpham', 'update'),
(1, 'sanpham', 'view'),
(1, 'taikhoan', 'create'),
(1, 'taikhoan', 'delete'),
(1, 'taikhoan', 'update'),
(1, 'taikhoan', 'view'),
(1, 'thongke', 'create'),
(1, 'thongke', 'delete'),
(1, 'thongke', 'update'),
(1, 'thongke', 'view'),
(1, 'thuoctinh', 'create'),
(1, 'thuoctinh', 'delete'),
(1, 'thuoctinh', 'update'),
(1, 'thuoctinh', 'view'),
(1, 'xuathang', 'create'),
(1, 'xuathang', 'delete'),
(1, 'xuathang', 'update'),
(1, 'xuathang', 'view'),
(2, 'khuvuckho', 'create'),
(2, 'khuvuckho', 'update'),
(2, 'khuvuckho', 'view'),
(2, 'nhacungcap', 'create'),
(2, 'nhacungcap', 'update'),
(2, 'nhacungcap', 'view'),
(2, 'nhaphang', 'create'),
(2, 'nhaphang', 'update'),
(2, 'nhaphang', 'view'),
(2, 'sanpham', 'create'),
(2, 'sanpham', 'update'),
(2, 'sanpham', 'view'),
(2, 'thuoctinh', 'create'),
(2, 'thuoctinh', 'delete'),
(2, 'thuoctinh', 'update'),
(2, 'thuoctinh', 'view'),
(2, 'xuathang', 'create'),
(2, 'xuathang', 'delete'),
(2, 'xuathang', 'update'),
(2, 'xuathang', 'view'),
(3, 'khachhang', 'create'),
(3, 'khachhang', 'update'),
(3, 'khachhang', 'view'),
(3, 'sanpham', 'update'),
(3, 'sanpham', 'view'),
(3, 'xuathang', 'create'),
(3, 'xuathang', 'update'),
(3, 'xuathang', 'view'),
(4, 'donvitinh', 'view'),
(4, 'khuvuckho', 'view'),
(4, 'kiemke', 'view'),
(4, 'loaisanpham', 'view'),
(4, 'nhacungcap', 'view'),
(5, 'khachhang', 'view'),
(5, 'khuvuckho', 'view'),
(6, 'khuvuckho', 'view'),
(6, 'kiemke', 'view'),
(6, 'loaisanpham', 'view'),
(6, 'nhacungcap', 'view'),
(6, 'nhanvien', 'view'),
(7, 'loaisanpham', 'create'),
(7, 'nhanvien', 'create'),
(7, 'sanpham', 'create'),
(7, 'xuathang', 'create'),
(8, 'donvitinh', 'view'),
(9, 'khachhang', 'view'),
(9, 'khuvuckho', 'view'),
(10, 'khachhang', 'view'),
(10, 'khuvuckho', 'view'),
(10, 'nhanvien', 'view');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctsanpham`
--

CREATE TABLE `ctsanpham` (
  `maimei` varchar(255) NOT NULL DEFAULT 'AUTO_INCREMENT' COMMENT 'Mã imei của sản phẩm',
  `maphienbansp` int(11) NOT NULL,
  `maphieunhap` int(11) NOT NULL,
  `maphieuxuat` int(11) DEFAULT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctsanpham`
--

INSERT INTO `ctsanpham` (`maimei`, `maphienbansp`, `maphieunhap`, `maphieuxuat`, `tinhtrang`) VALUES
('107725056444797', 57, 14, NULL, 1),
('107725056444798', 57, 14, NULL, 1),
('107725056444799', 57, 14, NULL, 1),
('107725056444800', 57, 14, NULL, 1),
('107725056444801', 57, 14, NULL, 1),
('107725056444802', 57, 14, NULL, 1),
('107725056444803', 57, 14, NULL, 1),
('111111111111111', 17, 23, 25, 0),
('111111111111112', 17, 23, 25, 0),
('128680626510768', 27, 12, NULL, 1),
('128680626510769', 27, 12, 19, 0),
('128680626510770', 27, 12, NULL, 1),
('191487469319798', 29, 12, NULL, 1),
('191487469319799', 29, 12, NULL, 1),
('191487469319800', 29, 12, NULL, 1),
('191487469319801', 29, 12, NULL, 1),
('191487469319802', 29, 12, NULL, 1),
('201865493271034', 19, 8, NULL, 1),
('201865493271035', 19, 8, 11, 0),
('201865493271036', 19, 8, 11, 0),
('201865493271037', 19, 8, 11, 0),
('201865493271038', 19, 8, 23, 0),
('209563810276493', 23, 9, NULL, 1),
('209563810276494', 23, 9, NULL, 1),
('209563810276495', 23, 9, 19, 0),
('209563810276496', 23, 9, 19, 0),
('209563810276497', 23, 9, NULL, 1),
('209563810276498', 23, 9, NULL, 1),
('209563810276499', 23, 9, NULL, 1),
('234307273503481', 33, 13, NULL, 1),
('234307273503482', 33, 13, NULL, 1),
('234307273503483', 33, 13, NULL, 1),
('234307273503484', 33, 13, NULL, 1),
('234307273503485', 33, 13, NULL, 1),
('234307273503486', 33, 13, NULL, 1),
('234307273503487', 33, 13, NULL, 1),
('234307273503488', 33, 13, NULL, 1),
('234307273503489', 33, 13, NULL, 1),
('234307273503490', 33, 13, NULL, 1),
('234307273503491', 33, 13, NULL, 1),
('234307273503492', 33, 13, NULL, 1),
('234307273503493', 33, 13, NULL, 1),
('234307273503494', 33, 13, NULL, 1),
('234307273503495', 33, 13, NULL, 1),
('237439786201794', 85, 16, NULL, 1),
('237439786201795', 85, 16, NULL, 1),
('237439786201796', 85, 16, NULL, 1),
('237439786201797', 85, 16, NULL, 1),
('237439786201798', 85, 16, NULL, 1),
('237439786201799', 85, 16, NULL, 1),
('237439786201800', 85, 16, NULL, 1),
('237439786201801', 85, 16, NULL, 1),
('237439786201802', 85, 16, NULL, 1),
('237439786201803', 85, 16, NULL, 1),
('248644019558673', 58, 14, NULL, 1),
('248644019558674', 58, 14, NULL, 1),
('248644019558675', 58, 14, NULL, 1),
('248644019558676', 58, 14, NULL, 1),
('248644019558677', 58, 14, NULL, 1),
('248644019558678', 58, 14, NULL, 1),
('267300933303009', 113, 15, NULL, 1),
('267300933303010', 113, 15, 14, 0),
('267300933303011', 113, 15, 14, 0),
('267300933303012', 113, 15, 14, 0),
('267300933303013', 113, 15, NULL, 1),
('267300933303014', 113, 15, NULL, 1),
('267300933303015', 113, 15, 16, 0),
('267300933303016', 113, 15, 16, 0),
('267300933303017', 113, 15, 16, 0),
('267300933303018', 113, 15, NULL, 1),
('267300933303019', 113, 15, NULL, 1),
('267300933303020', 113, 15, NULL, 1),
('267300933303021', 113, 15, NULL, 1),
('325645285296325', 125, 21, NULL, 1),
('325645285296326', 125, 21, NULL, 1),
('325645285296327', 125, 21, NULL, 1),
('325645285296328', 125, 21, NULL, 1),
('325645285296329', 125, 21, NULL, 1),
('354091067813468', 2, 5, NULL, 1),
('354091067813469', 2, 5, 6, 0),
('355663242747336', 17, 4, 4, 0),
('355663242747337', 17, 4, 4, 0),
('355663242747338', 17, 4, 4, 0),
('355663242747339', 17, 4, 4, 0),
('355663242747340', 17, 4, 4, 0),
('356285038690365', 93, 20, NULL, 1),
('356285038690366', 93, 20, NULL, 1),
('356285038690367', 93, 20, NULL, 1),
('356285038690368', 93, 20, NULL, 1),
('356285038690369', 93, 20, NULL, 1),
('356285077460984', 19, 1, 2, 0),
('356285077460985', 19, 1, 3, 0),
('356285077460989', 19, 2, 3, 0),
('356285077460990', 19, 2, 3, 0),
('356285077460991', 19, 2, 12, 0),
('356285077460992', 19, 2, 12, 0),
('356285077460993', 19, 2, 12, 0),
('356285088460123', 2, 2, 6, 0),
('356285088460124', 2, 2, 6, 0),
('356285088460125', 2, 2, 6, 0),
('356285088460126', 2, 2, NULL, 1),
('356285088460127', 2, 2, NULL, 1),
('356285088460128', 2, 2, 9, 0),
('356285088460129', 2, 2, 9, 0),
('356285088460876', 2, 1, 9, 0),
('356285088460877', 2, 1, 9, 0),
('356285088460878', 2, 1, NULL, 1),
('356285088460879', 2, 1, NULL, 1),
('356285088460880', 2, 1, 12, 0),
('356285088460881', 2, 1, 12, 0),
('356679247460989', 17, 3, 5, 0),
('356679247460990', 17, 3, 5, 0),
('356679247460991', 17, 3, 5, 0),
('356679247460992', 17, 3, NULL, 1),
('356679247460993', 17, 3, 5, 0),
('356679247460994', 17, 3, NULL, 1),
('356679247460995', 17, 3, 8, 0),
('356679247460996', 17, 3, 8, 0),
('356679247460997', 17, 3, 7, 0),
('356679247460998', 17, 3, 8, 0),
('356679247460999', 17, 3, NULL, 1),
('356679247461000', 17, 3, 10, 0),
('427856011841915', 24, 12, NULL, 1),
('427856011841916', 24, 12, NULL, 1),
('427856011841917', 24, 12, NULL, 1),
('493536926712616', 51, 14, NULL, 1),
('493536926712617', 51, 14, 21, 0),
('493536926712618', 51, 14, 21, 0),
('493536926712619', 51, 14, 21, 0),
('493536926712620', 51, 14, NULL, 1),
('493536926712621', 51, 14, NULL, 1),
('493536926712622', 51, 14, NULL, 1),
('493536926712623', 51, 14, NULL, 1),
('493536926712624', 51, 14, NULL, 1),
('493536926712625', 51, 14, NULL, 1),
('493536926712626', 51, 14, NULL, 1),
('493536926712627', 51, 14, NULL, 1),
('514897969548020', 28, 12, NULL, 1),
('514897969548021', 28, 12, NULL, 1),
('514897969548022', 28, 12, NULL, 1),
('514897969548023', 28, 12, NULL, 1),
('578559728952141', 35, 13, NULL, 1),
('578559728952142', 35, 13, NULL, 1),
('578559728952143', 35, 13, NULL, 1),
('578559728952144', 35, 13, 22, 0),
('578559728952145', 35, 13, 22, 0),
('578559728952146', 35, 13, 22, 0),
('578559728952147', 35, 13, 22, 0),
('578559728952148', 35, 13, NULL, 1),
('578559728952149', 35, 13, NULL, 1),
('578559728952150', 35, 13, NULL, 1),
('578559728952151', 35, 13, NULL, 1),
('578559728952152', 35, 13, NULL, 1),
('578559728952153', 35, 13, NULL, 1),
('578559728952154', 35, 13, NULL, 1),
('578559728952155', 35, 13, NULL, 1),
('630481155578246', 97, 16, NULL, 1),
('630481155578247', 97, 16, NULL, 1),
('630481155578248', 97, 16, NULL, 1),
('630481155578249', 97, 16, NULL, 1),
('630481155578250', 97, 16, NULL, 1),
('630481155578251', 97, 16, NULL, 1),
('630481155578252', 97, 16, NULL, 1),
('630481155578253', 97, 16, NULL, 1),
('630481155578254', 97, 16, NULL, 1),
('630481155578255', 97, 16, NULL, 1),
('630481155578256', 97, 16, NULL, 1),
('630481155578257', 97, 16, NULL, 1),
('630481155578258', 97, 16, NULL, 1),
('630481155578259', 97, 16, NULL, 1),
('630481155578260', 97, 16, NULL, 1),
('630481155578261', 97, 16, NULL, 1),
('630481155578262', 97, 16, NULL, 1),
('630481155578263', 97, 16, NULL, 1),
('630481155578264', 97, 16, NULL, 1),
('630481155578265', 97, 16, NULL, 1),
('663695386896779', 115, 15, NULL, 1),
('663695386896780', 115, 15, NULL, 1),
('663695386896781', 115, 15, NULL, 1),
('663695386896782', 115, 15, NULL, 1),
('663695386896783', 115, 15, NULL, 1),
('663695386896784', 115, 15, 15, 0),
('663695386896785', 115, 15, 15, 0),
('845223209939936', 91, 18, 17, 0),
('845223209939937', 91, 18, 17, 0),
('845223209939938', 91, 18, 17, 0),
('845223209939939', 91, 18, 16, 0),
('845223209939940', 91, 18, 16, 0),
('853057665280035', 31, 13, 20, 0),
('853057665280036', 31, 13, 20, 0),
('853057665280037', 31, 13, NULL, 1),
('853057665280038', 31, 13, NULL, 1),
('853057665280039', 31, 13, NULL, 1),
('853057665280040', 31, 13, NULL, 1),
('853057665280041', 31, 13, NULL, 1),
('853057665280042', 31, 13, NULL, 1),
('853057665280043', 31, 13, NULL, 1),
('853057665280044', 31, 13, NULL, 1),
('853057665280045', 31, 13, NULL, 1),
('853057665280046', 31, 13, NULL, 1),
('853057665280047', 31, 13, NULL, 1),
('853057665280048', 31, 13, NULL, 1),
('853057665280049', 31, 13, NULL, 1),
('876068039547345', 75, 17, 18, 0),
('876068039547346', 75, 17, 18, 0),
('876068039547347', 75, 17, 18, 0),
('876068039547348', 75, 17, NULL, 1),
('876068039547349', 75, 17, NULL, 1),
('876068039547350', 75, 17, NULL, 1),
('876068039547351', 75, 17, NULL, 1),
('876068039547352', 75, 17, NULL, 1),
('876068039547353', 75, 17, NULL, 1),
('912609172880156', 17, 10, 10, 0),
('919448001026640', 49, 13, NULL, 1),
('919448001026641', 49, 13, NULL, 1),
('919448001026642', 49, 13, NULL, 1),
('919448001026643', 49, 13, NULL, 1),
('919448001026644', 49, 13, NULL, 1),
('919448001026645', 49, 13, NULL, 1),
('919448001026646', 49, 13, 24, 0),
('919448001026647', 49, 13, 24, 0),
('919448001026648', 49, 13, 24, 0),
('919448001026649', 49, 13, NULL, 1),
('919448001026650', 49, 13, NULL, 1),
('919448001026651', 49, 13, NULL, 1),
('919448001026652', 49, 13, NULL, 1),
('919448001026653', 49, 13, NULL, 1),
('919448001026654', 49, 13, NULL, 1),
('919448001026655', 49, 13, NULL, 1),
('919448001026656', 49, 13, NULL, 1),
('919448001026657', 49, 13, NULL, 1),
('919448001026658', 49, 13, NULL, 1),
('919448001026659', 49, 13, NULL, 1),
('919448001026660', 49, 13, NULL, 1),
('919448001026661', 49, 13, NULL, 1),
('919448001026662', 49, 13, NULL, 1),
('919448001026663', 49, 13, NULL, 1),
('919448001026664', 49, 13, NULL, 1),
('919448001026665', 49, 13, NULL, 1),
('919448001026666', 49, 13, NULL, 1),
('919448001026667', 49, 13, NULL, 1),
('919448001026668', 49, 13, NULL, 1),
('919448001026669', 49, 13, NULL, 1),
('964768426041520', 89, 18, 17, 0),
('964768426041521', 89, 18, 17, 0),
('964768426041522', 89, 18, 17, 0),
('964768426041523', 89, 18, 17, 0),
('964768426041524', 89, 18, 17, 0),
('968080239661041', 2, 11, 13, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmucchucnang`
--

CREATE TABLE `danhmucchucnang` (
  `machucnang` varchar(50) NOT NULL,
  `tenchucnang` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmucchucnang`
--

INSERT INTO `danhmucchucnang` (`machucnang`, `tenchucnang`, `trangthai`) VALUES
('khachhang', 'Quản lý khách hàng', 0),
('khuvuckho', 'Quản lý khu vực kho', 0),
('nhacungcap', 'Quản lý nhà cung cấp', 0),
('nhanvien', 'Quản lý nhân viên', 0),
('nhaphang', 'Quản lý nhập hàng', 0),
('nhomquyen', 'Quản lý nhóm quyền', 0),
('sanpham', 'Quản lý sản phẩm', 0),
('taikhoan', 'Quản lý tài khoản', 0),
('thongke', 'Quản lý thống kê', 0),
('thuoctinh', 'Quản lý thuộc tính', 0),
('xuathang', 'Quản lý xuất hàng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dungluongram`
--

CREATE TABLE `dungluongram` (
  `madlram` int(11) NOT NULL,
  `kichthuocram` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dungluongram`
--

INSERT INTO `dungluongram` (`madlram`, `kichthuocram`, `trangthai`) VALUES
(1, 3, 1),
(2, 2, 1),
(3, 4, 1),
(4, 6, 1),
(5, 8, 1),
(6, 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dungluongrom`
--

CREATE TABLE `dungluongrom` (
  `madlrom` int(11) NOT NULL,
  `kichthuocrom` int(11) DEFAULT NULL,
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dungluongrom`
--

INSERT INTO `dungluongrom` (`madlrom`, `kichthuocrom`, `trangthai`) VALUES
(1, 32, 1),
(2, 64, 1),
(3, 128, 1),
(4, 256, 1),
(5, 512, 1),
(6, 1024, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hedieuhanh`
--

CREATE TABLE `hedieuhanh` (
  `mahedieuhanh` int(11) NOT NULL,
  `tenhedieuhanh` varchar(255) NOT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hedieuhanh`
--

INSERT INTO `hedieuhanh` (`mahedieuhanh`, `tenhedieuhanh`, `trangthai`) VALUES
(1, 'Android', 1),
(2, 'IOS', 1),
(3, '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `tenkhachhang` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `ngaythamgia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuckho`
--

CREATE TABLE `khuvuckho` (
  `makhuvuc` int(11) NOT NULL,
  `tenkhuvuc` varchar(255) NOT NULL,
  `ghichu` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuckho`
--

INSERT INTO `khuvuckho` (`makhuvuc`, `tenkhuvuc`, `ghichu`, `trangthai`) VALUES
(1, 'Khu vực A', 'Apple', 1),
(2, 'Khu vực B', 'Xiaomi', 1),
(3, 'Khu vực C', 'Samsung', 1),
(4, 'Khu vực D', 'Realme', 1),
(5, 'Khu vực E', 'Oppo', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `mamau` int(11) NOT NULL,
  `tenmau` varchar(50) NOT NULL DEFAULT '0',
  `trangthai` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`mamau`, `tenmau`, `trangthai`) VALUES
(1, 'Xanh', 1),
(2, 'Đỏ', 1),
(3, 'Vàng', 1),
(4, 'Bạc', 1),
(5, 'Hồng', 1),
(6, 'Đen', 1),
(7, 'Xanh ngọc', 1),
(8, 'Tím', 1),
(9, 'Xanh dương', 1),
(10, 'Xanh lá', 1),
(11, 'Cam', 1),
(12, 'Xám', 1),
(13, 'Trắng', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `manhacungcap` int(11) NOT NULL,
  `tennhacungcap` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `manv` int(11) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`manv`, `hoten`, `gioitinh`, `ngaysinh`, `sdt`, `email`, `trangthai`) VALUES
(2, 'Đỗ Trung Kiên', 1, '2003-05-22', '085674738', 'kien@gmail.com', 0),
(6, 'Nguyễn Văn Mạnh', 1, '2003-05-14', '0852608689', 'nguyenvanamanh2003@gmail.com', 1),
(7, 'Đỗ Trung Kiên', 1, '1999-05-13', '0852608689', 'kiendu@gmail.com', 1),
(8, 'Đỗ Thị Huyền', 0, '2003-05-06', '0865786665', 'huyen2003@gmail.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomquyen`
--

CREATE TABLE `nhomquyen` (
  `manhomquyen` int(11) NOT NULL,
  `tennhomquyen` varchar(255) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomquyen`
--

INSERT INTO `nhomquyen` (`manhomquyen`, `tennhomquyen`, `trangthai`) VALUES
(1, 'Quản lý kho', 1),
(2, 'Nhân viên nhập hàng', 1),
(3, 'Nhân viên xuất hàng', 1),
(4, 'Thủ kho', 0),
(5, 'Nhân viên kiểm kho', 0),
(6, 'tesst', 0),
(7, '', 0),
(8, 'ok', 0),
(9, 'ok', 0),
(10, 'abc', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phienbansanpham`
--

CREATE TABLE `phienbansanpham` (
  `maphienbansp` int(11) NOT NULL,
  `masp` int(11) DEFAULT NULL,
  `rom` int(11) DEFAULT NULL,
  `ram` int(11) DEFAULT 0,
  `mausac` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL,
  `giaxuat` int(11) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phienbansanpham`
--

INSERT INTO `phienbansanpham` (`maphienbansp`, `masp`, `rom`, `ram`, `mausac`, `gianhap`, `giaxuat`, `soluongton`, `trangthai`) VALUES
(2, 1, 3, 4, 2, 18500000, 19100000, 0, 1),
(4, 1, 4, 4, 4, 19500000, 21100000, 0, 1),
(6, 1, 5, 5, 4, 20000000, 21000000, 0, 1),
(8, 1, 6, 6, 6, 25000000, 25500000, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieubaohanh`
--

CREATE TABLE `phieubaohanh` (
  `maphieubaohanh` int(11) NOT NULL,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(50) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT curdate(),
  `thoigiantra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudoi`
--

CREATE TABLE `phieudoi` (
  `maphieudoi` tinyint(4) NOT NULL DEFAULT 0,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thoigian` date DEFAULT curdate(),
  `nguoitao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieukiemke`
--

CREATE TABLE `phieukiemke` (
  `maphieu` int(11) NOT NULL,
  `thoigian` date NOT NULL DEFAULT curdate(),
  `nguoitaophieukiemke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maphieunhap` int(11) NOT NULL,
  `thoigian` datetime DEFAULT current_timestamp(),
  `manhacungcap` int(11) NOT NULL,
  `nguoitao` int(11) NOT NULL,
  `tongtien` bigint(20) NOT NULL DEFAULT 0,
  `trangthai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieutra`
--

CREATE TABLE `phieutra` (
  `maphieutra` int(11) NOT NULL,
  `maimei` varchar(255) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thoigian` date DEFAULT curdate(),
  `nguoitao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maphieuxuat` int(11) NOT NULL,
  `thoigian` datetime NOT NULL DEFAULT current_timestamp(),
  `tongtien` bigint(20) DEFAULT NULL,
  `nguoitaophieuxuat` int(11) DEFAULT NULL,
  `makh` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(11) NOT NULL,
  `tensp` varchar(255) DEFAULT NULL,
  `hinhanh` varchar(255) DEFAULT NULL,
  `xuatxu` int(11) DEFAULT NULL,
  `chipxuly` varchar(255) DEFAULT NULL,
  `dungluongpin` int(11) DEFAULT NULL,
  `kichthuocman` double DEFAULT NULL,
  `hedieuhanh` int(11) DEFAULT NULL,
  `phienbanhdh` int(11) DEFAULT NULL,
  `camerasau` varchar(255) DEFAULT NULL,
  `cameratruoc` varchar(255) DEFAULT NULL,
  `thoigianbaohanh` int(11) DEFAULT NULL,
  `thuonghieu` int(11) DEFAULT NULL,
  `khuvuckho` int(11) DEFAULT NULL,
  `soluongton` int(11) DEFAULT 0,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `hinhanh`, `xuatxu`, `chipxuly`, `dungluongpin`, `kichthuocman`, `hedieuhanh`, `phienbanhdh`, `camerasau`, `cameratruoc`, `thoigianbaohanh`, `thuonghieu`, `khuvuckho`, `soluongton`, `trangthai`) VALUES
(1, 'Samsung Galaxy S22 Ultra', '441177Galaxy-S22-Ultra-Burgundy-600x600.jpg', 2, 'Snapdragon 8 Gen 1', 5000, 6.8, 1, 13, '108 MP', '50 MP', 2, 3, 3, 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `manv` int(11) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `manhomquyen` int(11) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL DEFAULT '',
  `trangthai` int(11) NOT NULL,
  `otp` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`manv`, `matkhau`, `manhomquyen`, `tendangnhap`, `trangthai`, `otp`) VALUES
(2, '$2a$12$FEqW/XzIuaeCLM58dtrv6.RAtCwohijspAG9j.CVmwGq4/i9l9OTu', 3, 'kien2003', -1, NULL),
(6, '$2a$12$FEqW/XzIuaeCLM58dtrv6.RAtCwohijspAG9j.CVmwGq4/i9l9OTu', 1, 'manh2003', 1, NULL),
(8, '$2a$12$yuXdw7chDADnvWb4MFxvie3hgB68z/m/uOpTAzUOa47SWeACITvvm', 2, 'huyenk3', 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `mathuonghieu` int(11) NOT NULL,
  `tenthuonghieu` varchar(255) NOT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thuonghieu`
--

INSERT INTO `thuonghieu` (`mathuonghieu`, `tenthuonghieu`, `trangthai`) VALUES
(1, 'Apple', 1),
(2, 'Xiaomi', 1),
(3, 'Samsung', 1),
(4, 'Sữa tươi', 0),
(7, 'g', 0),
(8, '', 0),
(9, 'Oppo', 1),
(10, 'Vivo', 1),
(11, 'Realme', 1),
(12, 'Nokia', 1),
(13, 'Vsmart', 1),
(14, 'Apple', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatxu`
--

CREATE TABLE `xuatxu` (
  `maxuatxu` int(11) NOT NULL,
  `tenxuatxu` varchar(50) NOT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `xuatxu`
--

INSERT INTO `xuatxu` (`maxuatxu`, `tenxuatxu`, `trangthai`) VALUES
(1, 'Trung Quốc', 1),
(2, 'Hàn Quốc', 1),
(3, 'Việt Nam', 1),
(4, 'USA', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctkiemke`
--
ALTER TABLE `ctkiemke`
  ADD PRIMARY KEY (`maphieukiemmke`,`masanpham`);

--
-- Chỉ mục cho bảng `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`maphieunhap`,`maphienbansp`);

--
-- Chỉ mục cho bảng `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`,`maphienbansp`);

--
-- Chỉ mục cho bảng `ctquyen`
--
ALTER TABLE `ctquyen`
  ADD PRIMARY KEY (`manhomquyen`,`machucnang`,`hanhdong`) USING BTREE;

--
-- Chỉ mục cho bảng `ctsanpham`
--
ALTER TABLE `ctsanpham`
  ADD PRIMARY KEY (`maimei`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmucchucnang`
--
ALTER TABLE `danhmucchucnang`
  ADD PRIMARY KEY (`machucnang`);

--
-- Chỉ mục cho bảng `dungluongram`
--
ALTER TABLE `dungluongram`
  ADD PRIMARY KEY (`madlram`);

--
-- Chỉ mục cho bảng `dungluongrom`
--
ALTER TABLE `dungluongrom`
  ADD PRIMARY KEY (`madlrom`);

--
-- Chỉ mục cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  ADD PRIMARY KEY (`mahedieuhanh`) USING BTREE;

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `khuvuckho`
--
ALTER TABLE `khuvuckho`
  ADD PRIMARY KEY (`makhuvuc`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`mamau`),
  ADD UNIQUE KEY `tenmau` (`tenmau`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`manhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`manv`);

--
-- Chỉ mục cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  ADD PRIMARY KEY (`manhomquyen`);

--
-- Chỉ mục cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  ADD PRIMARY KEY (`maphienbansp`) USING BTREE,
  ADD KEY `FK_phienbansanpham_sanpham` (`masp`);

--
-- Chỉ mục cho bảng `phieubaohanh`
--
ALTER TABLE `phieubaohanh`
  ADD PRIMARY KEY (`maphieubaohanh`);

--
-- Chỉ mục cho bảng `phieudoi`
--
ALTER TABLE `phieudoi`
  ADD PRIMARY KEY (`maphieudoi`),
  ADD KEY `FK_phieudoi_ctsanpham` (`maimei`),
  ADD KEY `FK_phieudoi_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD PRIMARY KEY (`maphieu`),
  ADD KEY `FK_phieukiemke_taikhoan` (`nguoitaophieukiemke`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maphieunhap`),
  ADD KEY `FK_phieunhap_nhacungcap` (`manhacungcap`),
  ADD KEY `FK_phieunhap_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  ADD PRIMARY KEY (`maphieutra`),
  ADD KEY `FK_phieutra_ctsanpham` (`maimei`),
  ADD KEY `FK_phieutra_taikhoan` (`nguoitao`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maphieuxuat`),
  ADD KEY `FK_phieuxuat_khachhang` (`makh`),
  ADD KEY `FK_phieuxuat_taikhoan` (`nguoitaophieuxuat`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`) USING BTREE;

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`manv`),
  ADD UNIQUE KEY `tendangnhap` (`tendangnhap`),
  ADD KEY `FK_taikhoan_nhomquyen` (`manhomquyen`);

--
-- Chỉ mục cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`mathuonghieu`) USING BTREE;

--
-- Chỉ mục cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  ADD PRIMARY KEY (`maxuatxu`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dungluongram`
--
ALTER TABLE `dungluongram`
  MODIFY `madlram` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dungluongrom`
--
ALTER TABLE `dungluongrom`
  MODIFY `madlrom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hedieuhanh`
--
ALTER TABLE `hedieuhanh`
  MODIFY `mahedieuhanh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khuvuckho`
--
ALTER TABLE `khuvuckho`
  MODIFY `makhuvuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `mausac`
--
ALTER TABLE `mausac`
  MODIFY `mamau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `manhacungcap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `manv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `nhomquyen`
--
ALTER TABLE `nhomquyen`
  MODIFY `manhomquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  MODIFY `maphienbansp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phieubaohanh`
--
ALTER TABLE `phieubaohanh`
  MODIFY `maphieubaohanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  MODIFY `maphieu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `maphieunhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  MODIFY `maphieutra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `maphieuxuat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `mathuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `xuatxu`
--
ALTER TABLE `xuatxu`
  MODIFY `maxuatxu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctkiemke`
--
ALTER TABLE `ctkiemke`
  ADD CONSTRAINT `FK_ctkiemke_phieukiemke` FOREIGN KEY (`maphieukiemmke`) REFERENCES `phieukiemke` (`maphieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ctphieuxuat`
--
ALTER TABLE `ctphieuxuat`
  ADD CONSTRAINT `FK__phieuxuat` FOREIGN KEY (`maphieuxuat`) REFERENCES `phieuxuat` (`maphieuxuat`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `ctquyen`
--
ALTER TABLE `ctquyen`
  ADD CONSTRAINT `FK__nhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phienbansanpham`
--
ALTER TABLE `phienbansanpham`
  ADD CONSTRAINT `FK_phienbansanpham_sanpham` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieudoi`
--
ALTER TABLE `phieudoi`
  ADD CONSTRAINT `FK_phieudoi_ctsanpham` FOREIGN KEY (`maimei`) REFERENCES `ctsanpham` (`maimei`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieudoi_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD CONSTRAINT `FK_phieukiemke_taikhoan` FOREIGN KEY (`nguoitaophieukiemke`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_phieunhap_nhacungcap` FOREIGN KEY (`manhacungcap`) REFERENCES `nhacungcap` (`manhacungcap`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieunhap_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieutra`
--
ALTER TABLE `phieutra`
  ADD CONSTRAINT `FK_phieutra_ctsanpham` FOREIGN KEY (`maimei`) REFERENCES `ctsanpham` (`maimei`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieutra_taikhoan` FOREIGN KEY (`nguoitao`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_phieuxuat_khachhang` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_phieuxuat_taikhoan` FOREIGN KEY (`nguoitaophieuxuat`) REFERENCES `taikhoan` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_taikhoan_nhanvien` FOREIGN KEY (`manv`) REFERENCES `nhanvien` (`manv`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_taikhoan_nhomquyen` FOREIGN KEY (`manhomquyen`) REFERENCES `nhomquyen` (`manhomquyen`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
