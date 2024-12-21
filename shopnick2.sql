-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 05, 2022 lúc 08:28 AM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopnick2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `groups` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `account` text COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chitiet` text COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `listimg` longtext COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `groups`, `account`, `chitiet`, `createdate`, `updatedate`, `username`, `receiver`, `time`, `title`, `img`, `money`, `listimg`) VALUES
(10077, '16', 'tk1|2', 'Chi tiết 1: value\r\nChi tiết 2: value\r\nChi tiết 3: value\r\nChi tiết 4: value', '2021-07-02 23:22:05', NULL, NULL, NULL, NULL, NULL, 'assets/storage/images/account_0U73AP.png', 80000, '\r\nassets/storage/images/account_J73MRY.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `stk` text NOT NULL,
  `name` text NOT NULL,
  `bank_name` text NOT NULL,
  `chi_nhanh` text NOT NULL,
  `logo` text DEFAULT NULL,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `bank`
--

INSERT INTO `bank` (`id`, `stk`, `name`, `bank_name`, `chi_nhanh`, `logo`, `ghichu`) VALUES
(5, '106868238271', 'Vietinbank Auto', 'NGUYEN TAN THANH', 'Tây Ninh', 'https://i.imgur.com/5lONuYM.png', 'Vui lòng nhập đúng nội dung khi chuyển khoản.\r\n'),
(7, '10002325589898', 'Vietcombank Auto', 'NGUYEN TAN THANH', 'Tay Ninh', 'https://i.imgur.com/9wOUZTv.png', 'Vui lòng nhập đúng nội dung khi chuyển khoản.\r\n'),
(9, '0947838128', 'MoMo Auto', 'NGUYEN TAN THANH', '', 'https://i.imgur.com/BoGl5TM.png', 'Nhập đúng nội dung, cộng tiền sau 30s - 60s');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_auto`
--

CREATE TABLE `bank_auto` (
  `id` int(11) NOT NULL,
  `tid` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` int(11) DEFAULT 0,
  `cusum_balance` int(11) DEFAULT 0,
  `time` datetime DEFAULT NULL,
  `bank_sub_acc_id` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deletedate` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL,
  `username` varchar(32) NOT NULL,
  `loaithe` varchar(32) NOT NULL,
  `menhgia` int(11) NOT NULL,
  `thucnhan` int(11) DEFAULT 0,
  `seri` text NOT NULL,
  `pin` text NOT NULL,
  `createdate` datetime NOT NULL,
  `status` varchar(32) NOT NULL,
  `note` text NOT NULL,
  `deletedate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `title`, `display`, `img`) VALUES
(7, 'DANH MỤC GAME FREE FIRE', 'SHOW', 'assets/storage/images/category_CTF5OGQ4XDLK.png'),
(8, 'DANH MỤC GAME LIÊN QUÂN', 'SHOW', '/assets/storage/images/category_38UDJTKRGCQA.png'),
(9, 'DANH MỤC GAME LIÊN MINH', 'SHOW', '/assets/storage/images/category_7GSFLAQVBW9C.png'),
(10, 'DANH MỤC GAME NGỌC RỒNG', 'SHOW', '/assets/storage/images/category_2DKRF35HE4YJ.png'),
(11, 'DANH MỤC GAME PUBG MOBILE', 'SHOW', '/assets/storage/images/category_O4KMZ2PU9EXV.png'),
(12, 'DANH MỤC GAME ZINGSPEED MOBILE', 'SHOW', '/assets/storage/images/category_ZNARF20QLY61.png'),
(13, 'DANH MỤC GAME FO4', 'SHOW', '/assets/storage/images/category_K8SHBRCN5XU0.png'),
(14, 'DANH MỤC GAME NGỌC RỒNG ONLINE', 'SHOW', '/assets/storage/images/category_DQONL3Y8VS6E.png'),
(15, 'DANH MỤC GAME LÀNG LÁ', 'SHOW', '/assets/storage/images/category_9DTGFNYLH23M.png'),
(16, 'LIÊN MINH TỐC CHIẾN', 'SHOW', '/assets/storage/images/category_F256QPZDJTLW.png'),
(17, 'DANH MỤC GAME NINJA SCHOO', 'SHOW', '/assets/storage/images/category_LQX5TKM3V4ZN.png'),
(18, 'CROSSFIRE MOBILE - CHINA', 'SHOW', '/assets/storage/images/category_M1HB7KTXOYW6.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_caythue`
--

CREATE TABLE `category_caythue` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `luuy` longtext COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `category_caythue`
--

INSERT INTO `category_caythue` (`id`, `title`, `display`, `img`, `luuy`) VALUES
(9, 'CÀY THUÊ ROBLOX', 'SHOW', '/assets/storage/images/category_X7KGJP6ZIL25.png', NULL),
(13, 'MUA GAMEPASS , EVIL FRUITS KING LEGACY', 'SHOW', '/assets/storage/images/category_7GY2LK4DXMC1.png', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"font-size: 18px;\"><span style=\"color: rgb(46, 204, 113);\"><span style=\"font-weight: 700;\">NHỮNG ACC KHÔNG TRỞ VỀ OLD WORLD ( Map 1 )&nbsp;SẼ KHÔNG NHẬN ĐƯỢC VẬT PHẨM (Không hoàn tiền)</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(41, 128, 185);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">Tắt mã PIN , bảo mật 2 bước&nbsp;và thay 1 gmail không xác minh để tránh bảo mật 2 bước</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(142, 68, 173);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">Spam quá 3 lần khi bị 2-Step sẽ KHÔNG NHẬN ĐƯỢC VẬT PHẨM&nbsp;và KHÔNG HOÀN TIỀN</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(44, 62, 80);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">KHÔNG thay đổi thông tin hoặc vào acc khi đơn đang thực hiện</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(243, 156, 18);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">VI PHẠM NHỮNG QUY ĐỊNH TRÊN SẼ KHÔNG NHẬN ĐƯỢC VẬT PHẨM và KHÔNG HOÀN TIỀN</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(192, 57, 43);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">Bạn sẽ nhận được vật phẩm sau 5-10p kể từ lúc đơn được nhận</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(26, 188, 156);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">Sau khi đơn hoàn tất bạn vui lòng vào game để kiểm tra</span></span></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: &quot;Roboto Condensed&quot;, sans-serif; font-size: 17px; text-align: center;\"><span style=\"color: rgb(41, 128, 185);\"><span style=\"font-size: 18px;\"><span style=\"font-weight: 700;\">Mọi vấn đề cần hỗ trợ vui lòng liên hệ CSKH để được hỗ trợ</span></span></span></p>'),
(14, 'DỊCH VỤ MUA ROBUX CHÍNH HÃNG', 'SHOW', '/assets/storage/images/category_SWCV5RGKF6NP.png', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" roboto=\"\" condensed\",=\"\" sans-serif;=\"\" font-size:=\"\" 17px;\"=\"\"><font color=\"#ffff00\"><b style=\"\">Lưu ý :</b>&nbsp;Khi mua robux chính hãng vui lòng vào : My Setting &gt;&gt;&gt; 2 Step Verification để tắt xác minh 2 bước.</font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px;\" roboto=\"\" condensed\",=\"\" sans-serif;=\"\" font-size:=\"\" 17px;\"=\"\"><font color=\"#ffff00\">Mua robux chính hãng sẽ cần thời gian nhất định để nạp vào tài khoản. Vui lòng điền đúng thông tin tài khoản mật khẩu roblox để được xử lý nhanh chóng.</font></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(80, 80, 80); font-family: \" roboto=\"\" condensed\",=\"\" sans-serif;=\"\" font-size:=\"\" 17px;\"=\"\"><img src=\"https://maicucsuc.com/upload/userfiles/images/image(8).png\" style=\"border: 0px; height: 136px; width: 400px;\"></p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongtien`
--

CREATE TABLE `dongtien` (
  `id` int(11) NOT NULL,
  `sotientruoc` int(11) DEFAULT NULL,
  `sotienthaydoi` int(11) DEFAULT NULL,
  `sotiensau` int(11) DEFAULT NULL,
  `thoigian` datetime DEFAULT NULL,
  `noidung` text COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `dongtien`
--

INSERT INTO `dongtien` (`id`, `sotientruoc`, `sotienthaydoi`, `sotiensau`, `thoigian`, `noidung`, `username`) VALUES
(141, 1000000000, 5000, 999995000, '2021-02-22 19:36:43', 'Thanh toán đơn hàng (#9O7HUJ1MKBRI)', 'admin'),
(142, 999995000, 25000, 999970000, '2021-02-22 22:59:26', 'Thanh toán đơn hàng (#9VZ3NE8TJM4K)', 'admin'),
(143, 999970000, 25000, 999945000, '2021-02-22 22:59:29', 'Thanh toán đơn hàng (#B2ED4WIYMQNR)', 'admin'),
(144, 999945000, -999944990, 10, '2021-02-22 23:01:31', 'Admin thay đổi số dư ', 'admin'),
(145, 10, 10, 0, '2021-02-22 23:02:45', 'Thanh toán đơn hàng (#8CAQ4VOWK3U7)', 'admin'),
(146, 0, 10, 10, '2021-02-22 23:03:50', 'Admin thay đổi số dư ', 'admin'),
(147, 10, 10, 0, '2021-02-22 23:04:33', 'Thanh toán đơn hàng (#Y8EG6UDA4JLN)', 'admin'),
(148, 0, 5, 5, '2021-02-23 01:06:54', 'Admin thay đổi số dư ', 'admin'),
(149, 5, 1, 4, '2021-02-23 01:07:03', 'Thanh toán đơn hàng (#ODKF4VBMNISJ)', 'admin'),
(150, 4, 1, 3, '2021-02-23 01:07:19', 'Thanh toán đơn hàng (#I48Q6DFG9VU2)', 'admin'),
(151, 3, 47, 50, '2021-02-23 19:02:09', 'Admin thay đổi số dư ', 'admin'),
(152, 50, 50, 0, '2021-02-23 19:03:19', 'Thanh toán đơn hàng (#3DTA9VMSIUH4)', 'admin'),
(153, 1000000, 25000, 975000, '2021-03-05 20:01:13', 'Thanh toán đơn hàng (#JV3LN8FETGIR)', 'admin'),
(154, 975000, 3, 974997, '2021-03-05 20:02:25', 'Thanh toán đơn hàng (#CKRWP248UNJI)', 'admin'),
(155, 974997, 5, 974992, '2021-03-05 20:03:12', 'Thanh toán đơn hàng (#78CZEU6L2NWB)', 'admin'),
(156, 974992, 5, 974987, '2021-03-05 20:03:31', 'Thanh toán đơn hàng (#5E3TOJWCF4BD)', 'admin'),
(157, 974987, 5, 974982, '2021-03-05 20:04:28', 'Thanh toán đơn hàng (#ODTX7G369UHF)', 'admin'),
(158, 974982, 5000, 969982, '2021-03-05 20:36:47', 'Thanh toán đơn hàng (#921ZKIR0CONV)', 'admin'),
(159, 969982, 5, 969977, '2021-03-05 20:51:05', 'Thanh toán đơn hàng (#A0PEDBIWNYOX)', 'admin'),
(160, 969977, 15000, 954977, '2021-03-05 20:53:21', 'Thanh toán đơn hàng (#LZAE3IT0NVBH)', 'admin'),
(161, 954977, 10000, 944977, '2021-03-05 20:55:19', 'Thanh toán đơn hàng (#KYZ3D2W7ESUN)', 'admin'),
(162, 944977, 5000, 939977, '2021-03-05 20:59:24', 'Thanh toán đơn hàng (#AM6ZYSF31P84)', 'admin'),
(163, 939977, 25000, 914977, '2021-03-05 21:00:43', 'Thanh toán đơn hàng (#P890AIL1O567)', 'admin'),
(164, 914977, 5000, 909977, '2021-03-06 02:46:32', 'Thanh toán đơn hàng (#7ENF0S9M6CJH)', 'admin'),
(165, 909977, 5000, 904977, '2021-03-06 02:50:16', 'Thanh toán đơn hàng (#QJG5CV2AD9YN)', 'admin'),
(166, 1000000, 1000000, 2000000, '2021-03-06 03:23:52', 'Admin cộng tiền (test)', 'admin'),
(167, 2000000, 5000, 1995000, '2021-03-06 05:00:13', 'Thanh toán đơn hàng (#R7CT9HZE6X12)', 'admin'),
(168, 1995000, 5000, 1990000, '2021-03-06 05:09:34', 'Thanh toán đơn hàng (#MSQLGK6Z170N)', 'admin'),
(169, 1990000, 5000, 1985000, '2021-03-06 06:43:47', 'Thanh toán đơn hàng (#76ZH12SK0AIT)', 'admin'),
(170, 1985000, 5000, 1980000, '2021-03-06 06:56:20', 'Thanh toán đơn hàng (#U1I9LPC7R2S3)', 'admin'),
(171, 1980000, 5000, 1975000, '2021-03-06 08:00:49', 'Thanh toán đơn hàng (#NXORYWUFIBMP)', 'admin'),
(172, 1975000, 5000, 1970000, '2021-03-07 02:39:46', 'Thanh toán đơn hàng (#4IYG5EKUMHXL)', 'admin'),
(173, 1970000, 5000, 1965000, '2021-03-22 03:23:14', 'Thanh toán đơn hàng (#VMOC3NAP6K89)', 'admin'),
(174, 1974000, 9000, 1965000, '2021-03-28 04:39:10', 'Mua tài khoản (#10000)', 'admin'),
(175, 1965000, 9000, 1956000, '2021-03-28 04:39:14', 'Mua tài khoản (#10000)', 'admin'),
(176, 1956000, 9000, 1947000, '2021-03-28 04:39:18', 'Mua tài khoản (#10000)', 'admin'),
(177, 1947000, 9000, 1938000, '2021-03-28 04:39:35', 'Mua tài khoản (#10000)', 'admin'),
(178, 1938000, 9000, 1929000, '2021-03-28 04:41:41', 'Mua tài khoản (#10004)', 'admin'),
(179, 2020000, 100000, 1920000, '2021-03-28 06:41:07', 'Mua tài khoản (#10021)', 'admin'),
(180, 1920000, 100000, 1820000, '2021-03-29 18:19:52', 'Mua tài khoản (#10013)', 'admin'),
(181, 2420000, 700000, 1720000, '2021-04-02 19:12:42', 'Mua tài khoản (#10012)', 'admin'),
(182, 2019999, 999999, 1020000, '2021-04-02 19:12:59', 'Mua tài khoản (#10023)', 'admin'),
(183, 30001, 10000, 20001, '2021-04-02 19:39:37', 'Mua tài khoản (#10026)', 'admin'),
(184, 10010000, 10000, 10000000, '2021-05-24 00:47:59', 'Mua tài khoản (#10045)', 'admin'),
(185, 10000000, 10000, 9990000, '2021-05-24 05:15:03', 'Mua tài khoản (#10046)', 'admin'),
(186, 9990000, 10000, 9980000, '2021-05-24 05:17:47', 'Mua tài khoản (#10044)', 'admin'),
(187, 10070000, 100000, 9970000, '2021-06-10 18:18:59', 'Đặt hàng gói (Cày 100k cash)', 'admin'),
(188, 9970000, 100000, 9870000, '2021-06-11 11:29:31', 'Đặt hàng gói (Cày 100k cash)', 'admin'),
(189, 9970000, 100000, 9870000, '2021-06-11 13:22:43', 'Hoàn tiền gói (Cày 100k cash)', 'admin'),
(190, 0, 0, 0, '2021-07-13 09:05:01', 'Đặt hàng gói (Test - 0đ)', 'admin'),
(191, 0, 0, 0, '2021-07-13 09:12:28', 'Hoàn tiền gói (Test - 0đ)', 'admin'),
(192, 0, 0, 0, '2021-07-13 09:15:52', 'Hoàn tiền gói (Test - 0đ)', 'admin'),
(193, 0, 0, 0, '2021-07-13 09:16:33', 'Đặt hàng gói (Test - 0đ)', 'admin'),
(194, 0, 0, 0, '2021-10-21 10:21:54', 'Đặt hàng gói (Test - 0đ)', 'admin'),
(195, 0, 1000000, 1000000, '2021-10-21 10:31:37', 'Admin cộng tiền (2)', 'admin'),
(196, 1010000, 10000, 1000000, '2021-10-22 10:12:08', 'Mua tài khoản (#10080)', 'admin'),
(197, 1070000, 80000, 990000, '2021-10-22 11:44:10', 'Mua tài khoản (#10078)', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chitiet` longtext COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `category`, `title`, `display`, `img`, `chitiet`) VALUES
(16, 7, 'RANDOM 80K', 'SHOW', 'assets/storage/images/groups_L68D0RMZ5KTC.png', 'PHA+Y2hpIHRpZXR0dDwvcD4='),
(17, 7, 'MUA NICK FREE FIRE', 'SHOW', 'assets/storage/images/groups_L2BY7J1X9QD3.png', 'PHA+Y2hpIHRp4bq/dCB24buBIGRhbmggbeG7pWMgY29uPC9wPg==');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups_caythue`
--

CREATE TABLE `groups_caythue` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `display` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `groups_caythue`
--

INSERT INTO `groups_caythue` (`id`, `category`, `title`, `display`, `money`) VALUES
(13, 7, 'Treo 100 Gem Abcxyz - 10.000đ', NULL, 10000),
(15, 9, 'Test - 0đ', NULL, 0),
(16, 9, 'Test 20000', NULL, 20000),
(17, 9, 'test 300000', NULL, 300000),
(18, 13, 'Quest EXP', NULL, 110000),
(19, 13, 'Quest Beli', NULL, 200000),
(20, 13, 'Night Blade', NULL, 180000),
(22, 14, 'Premium &amp; 450 Robux', NULL, 20000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `id` int(11) NOT NULL,
  `request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tranId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `partnerId` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `partnerName` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'xuly',
  `deletedate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`id`, `request_id`, `tranId`, `partnerId`, `partnerName`, `amount`, `comment`, `time`, `username`, `status`, `deletedate`) VALUES
(1, 'test', 'test', NULL, NULL, NULL, NULL, NULL, NULL, 'xuly', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `name`, `value`) VALUES
(1, 'tenweb', 'CMSNT.CO'),
(2, 'mota', 'Hệ thống bán tài khoản game tự động'),
(3, 'tukhoa', 'shop acc, code shop nick, cmsnt, code ban nick game'),
(4, 'logo', 'assets/storage/theme/logo.png'),
(5, 'email', ''),
(6, 'pass_email', ''),
(11, 'noidung_naptien', 'NAPTIEN_'),
(12, 'thongbao', 'Thông Báo Website<br>'),
(13, 'anhbia', 'assets/storage/theme/anhbia.png'),
(14, 'favicon', 'assets/storage/theme/favicon.png'),
(17, 'baotri', 'ON'),
(18, 'chinhsach', '<p>BẰNG VIỆC SỬ DỤNG C&Aacute;C DỊCH VỤ HOẶC MỞ MỘT T&Agrave;I KHOẢN, BẠN CHO BIẾT RẰNG BẠN CHẤP NHẬN, KH&Ocirc;NG R&Uacute;T LẠI, C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG SỬ DỤNG C&Aacute;C DỊCH VỤ CỦA CH&Uacute;NG T&Ocirc;I HAY TRUY CẬP TRANG WEB. NẾU BẠN DƯỚI 18 TUỔI HOẶC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot;PH&Ugrave; HỢP Ở NƠI BẠN SỐNG, BẠN PHẢI XIN PH&Eacute;P CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P ĐỂ MỞ MỘT T&Agrave;I KHOẢN V&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P PHẢI ĐỒNG &Yacute; VỚI C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y. NẾU BẠN KH&Ocirc;NG BIẾT BẠN C&Oacute; THUỘC &quot;ĐỘ TUỔI TRƯỞNG TH&Agrave;NH&quot; Ở NƠI BẠN SỐNG HAY KH&Ocirc;NG, HOẶC KH&Ocirc;NG HIỂU PHẦN N&Agrave;Y, VUI L&Ograve;NG KH&Ocirc;NG TẠO T&Agrave;I KHOẢN CHO ĐẾN KHI BẠN Đ&Atilde; NHỜ CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA BẠN GI&Uacute;P ĐỠ. NẾU BẠN L&Agrave; CHA MẸ HOẶC NGƯỜI GI&Aacute;M HỘ HỢP PH&Aacute;P CỦA MỘT TRẺ VỊ TH&Agrave;NH NI&Ecirc;N MUỐN TẠO MỘT T&Agrave;I KHOẢN, BẠN PHẢI CHẤP NHẬN C&Aacute;C ĐIỀU KHOẢN DỊCH VỤ N&Agrave;Y THAY MẶT CHO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; V&Agrave; BẠN SẼ CHỊU TR&Aacute;CH NHIỆM ĐỐI VỚI TẤT CẢ HOẠT ĐỘNG SỬ DỤNG T&Agrave;I KHOẢN HAY C&Aacute;C DỊCH VỤ, BAO GỒM C&Aacute;C GIAO DỊCH MUA H&Agrave;NG DO TRẺ VỊ TH&Agrave;NH NI&Ecirc;N THỰC HIỆN, CHO D&Ugrave; T&Agrave;I KHOẢN CỦA TRẺ VỊ TH&Agrave;NH NI&Ecirc;N Đ&Oacute; ĐƯỢC MỞ V&Agrave;O L&Uacute;C N&Agrave;Y HAY ĐƯỢC TẠO SAU N&Agrave;Y V&Agrave; CHO D&Ugrave; TRẺ VỊ TH&Agrave;NH NI&Ecirc;N C&Oacute; ĐƯỢC BẠN GI&Aacute;M S&Aacute;T TRONG GIAO DỊCH MUA H&Agrave;NG Đ&Oacute; HAY KH&Ocirc;NG.</p>\r\n'),
(27, 'min_ruttien', '100000'),
(28, 'ck_con', '3'),
(29, 'phi_chuyentien', '500'),
(30, 'status_chuyentien', 'ON'),
(31, 'hotline', '0947838128'),
(32, 'facebook', 'https://www.facebook.com/cmsnt.co/'),
(33, 'theme_color', '#01578B'),
(34, 'modal_thongbao', ''),
(42, 'api_bank', ''),
(43, 'status_napbank', 'ON'),
(44, 'status_demo', 'OFF'),
(45, 'api_card', ''),
(46, 'luuy_naptien', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; outline: 0px; border: 0px; list-style-position: inside; color: rgb(51, 51, 51); font-family: roboto, Arial, Tahoma, sans-serif, arial, Helvetica; font-size: 14px;\"><li style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px;\">Hệ thống xử lý 5s 1 thẻ.</li><li style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px;\">Vui lòng gửi đúng mệnh giá, sai mệnh giá thực nhận mệnh giá bé nhất.</li><li style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px;\">Ví dụ mệnh giá thực là 100k, quý khách nạp 100k thực nhận 100k.</li><li style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px;\">Ví dụ mệnh giá thực là 100k quý khách nạp 50k thực nhận 50k.</li><li style=\"padding: 0px; margin: 0px; outline: 0px; border: 0px;\">Mệnh giá 10k, 20k, 30k tính thêm 3% phí.</li></ul>'),
(47, 'id_video_youtube', '5WRqOmxzBPc'),
(48, 'ck_bank', '20'),
(49, 'luuy_napbank', '<p><span class=\"text-big\" style=\"color: rgb(153, 77, 230);\"><strong>* Nạp ATM/Momo ( Được Cộng Thêm 25%)</strong></span></p><p><span class=\"text-big\" style=\"color: rgb(230, 153, 77);\"><strong>Ví Dụ:</strong></span></p><p><span class=\"text-big\" style=\"color: rgb(230, 77, 77);\"><strong>100k ATM/Momo</strong></span><span class=\"text-big\"><strong> = </strong></span><span class=\"text-big\" style=\"color: rgb(230, 77, 77);\"><strong>134k Trên Shop</strong></span></p><p><span class=\"text-big\" style=\"color: rgb(230, 77, 77);\"><strong>500k ATM/Momo</strong></span><span class=\"text-big\"> = </span><span class=\"text-big\" style=\"color: rgb(230, 77, 77);\"><strong>667k Trên Shop</strong></span></p>'),
(50, 'check_time_cron', '0'),
(51, 'api_momo', ''),
(52, 'stk_bank', NULL),
(53, 'mk_bank', NULL),
(54, 'check_time_cron_bank', '0'),
(55, 'html_footer', '<div class=\"snowflakes\" aria-hidden=\"true\">\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n  <div class=\"snowflake\">❅</div>\r\n  <div class=\"snowflake\">❆</div>\r\n</div>\r\n\r\n<style>\r\n  @-webkit-keyframes snowflakes-fall {\r\n    0% {top:-10%}\r\n    100% {top:100%}\r\n  }\r\n  @-webkit-keyframes snowflakes-shake {\r\n    0%,100% {-webkit-transform:translateX(0);transform:translateX(0)}\r\n    50% {-webkit-transform:translateX(80px);transform:translateX(80px)}\r\n  }\r\n  @keyframes snowflakes-fall {\r\n    0% {top:-10%}\r\n    100% {top:100%}\r\n  }\r\n  @keyframes snowflakes-shake {\r\n    0%,100%{ transform:translateX(0)}\r\n    50% {transform:translateX(80px)}\r\n  }\r\n  .snowflake {\r\n    color: #fff;\r\n    font-size: 1em;\r\n    font-family: Arial, sans-serif;\r\n    text-shadow: 0 0 5px #000;\r\n    position:fixed;\r\n    top:-10%;\r\n    z-index:9999;\r\n    -webkit-user-select:none;\r\n    -moz-user-select:none;\r\n    -ms-user-select:none;\r\n    user-select:none;\r\n    cursor:default;\r\n    -webkit-animation-name:snowflakes-fall,snowflakes-shake;\r\n    -webkit-animation-duration:10s,3s;\r\n    -webkit-animation-timing-function:linear,ease-in-out;\r\n    -webkit-animation-iteration-count:infinite,infinite;\r\n    -webkit-animation-play-state:running,running;\r\n    animation-name:snowflakes-fall,snowflakes-shake;\r\n    animation-duration:10s,3s;\r\n    animation-timing-function:linear,ease-in-out;\r\n    animation-iteration-count:infinite,infinite;\r\n    animation-play-state:running,running;\r\n  }\r\n  .snowflake:nth-of-type(0){\r\n    left:1%;-webkit-animation-delay:0s,0s;animation-delay:0s,0s\r\n  }\r\n  .snowflake:nth-of-type(1){\r\n    left:10%;-webkit-animation-delay:1s,1s;animation-delay:1s,1s\r\n  }\r\n  .snowflake:nth-of-type(2){\r\n    left:20%;-webkit-animation-delay:6s,.5s;animation-delay:6s,.5s\r\n  }\r\n  .snowflake:nth-of-type(3){\r\n    left:30%;-webkit-animation-delay:4s,2s;animation-delay:4s,2s\r\n  }\r\n  .snowflake:nth-of-type(4){\r\n    left:40%;-webkit-animation-delay:2s,2s;animation-delay:2s,2s\r\n  }\r\n  .snowflake:nth-of-type(5){\r\n    left:50%;-webkit-animation-delay:8s,3s;animation-delay:8s,3s\r\n  }\r\n  .snowflake:nth-of-type(6){\r\n    left:60%;-webkit-animation-delay:6s,2s;animation-delay:6s,2s\r\n  }\r\n  .snowflake:nth-of-type(7){\r\n    left:70%;-webkit-animation-delay:2.5s,1s;animation-delay:2.5s,1s\r\n  }\r\n  .snowflake:nth-of-type(8){\r\n    left:80%;-webkit-animation-delay:1s,0s;animation-delay:1s,0s\r\n  }\r\n  .snowflake:nth-of-type(9){\r\n    left:90%;-webkit-animation-delay:3s,1.5s;animation-delay:3s,1.5s\r\n  }\r\n  .snowflake:nth-of-type(10){\r\n    left:25%;-webkit-animation-delay:2s,0s;animation-delay:2s,0s\r\n  }\r\n  .snowflake:nth-of-type(11){\r\n    left:65%;-webkit-animation-delay:4s,2.5s;animation-delay:4s,2.5s\r\n  }\r\n</style>\r\n'),
(56, 'text_left_footer', ' HỆ THỐNG BÁN ACC TỰ ĐỘNG<br>\r\nĐẢM BẢO UY TÍN VÀ CHẤT LƯỢNG.'),
(57, 'text_center_footer', 'CHÚNG TÔI LUÔN LẤY UY TÍN LÀM HÀNG ĐẦU ĐỐI VỚI KHÁCH HÀNG.<br>\r\nHI VỌNG SẼ ĐƯỢC PHỤC VỤ CÁC BẠN. CẢM ƠN!'),
(58, 'email_admin', ''),
(59, 'button_buy', '1'),
(60, 'block_f12', 'OFF'),
(61, 'license_key', '4a866766abc63ffdf5b30e6d4ce07a'),
(62, 'btnSaveLicense', ''),
(63, 'ck_card', '15'),
(64, 'logo_dark', 'assets/storage/theme/logo_dark.png'),
(65, 'background', 'assets/storage/theme/background.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_caythue`
--

CREATE TABLE `orders_caythue` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `receiver` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dichvu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `tk` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mk` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ghichu` text COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders_caythue`
--

INSERT INTO `orders_caythue` (`id`, `username`, `receiver`, `dichvu`, `money`, `tk`, `mk`, `createdate`, `updatedate`, `status`, `ghichu`, `reason`) VALUES
(4, 'admin', 'admin', 'Test - 0đ', 0, '12', '12', '2021-07-13 09:05:01', '2021-07-13 09:05:01', 'huy', '', ''),
(5, 'admin', NULL, 'Test - 0đ', 0, 'test2', '1', '2021-07-13 09:16:33', '2021-07-13 09:16:33', 'xuly', '', NULL),
(6, 'admin', NULL, 'Test - 0đ', 0, 'ada', 'adad', '2021-10-21 10:21:54', '2021-10-21 10:21:54', 'xuly', '', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `level` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `banned` int(11) NOT NULL DEFAULT 0,
  `createdate` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `daily` int(11) DEFAULT 0,
  `otp` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chietkhau` float DEFAULT 0,
  `time` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `chitieu` int(11) NOT NULL DEFAULT 0,
  `total_money` int(11) NOT NULL DEFAULT 0,
  `ctv` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `token`, `money`, `level`, `banned`, `createdate`, `email`, `ref`, `daily`, `otp`, `ip`, `chietkhau`, `time`, `chitieu`, `total_money`, `ctv`) VALUES
(1, 'admin', 'admin', 'ZEgeLCYXQVyswWDankcJTbihxumRKofdPMABGzOpqUtHjrNvFIlS', 910000, 'admin', 0, '2021-01-20 08:38:05', 'ntt2001811@gmail.com', '', 0, '', NULL, 0, NULL, 0, 0, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `category_caythue`
--
ALTER TABLE `category_caythue`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `groups_caythue`
--
ALTER TABLE `groups_caythue`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders_caythue`
--
ALTER TABLE `orders_caythue`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10082;

--
-- AUTO_INCREMENT cho bảng `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `bank_auto`
--
ALTER TABLE `bank_auto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `category_caythue`
--
ALTER TABLE `category_caythue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `dongtien`
--
ALTER TABLE `dongtien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `groups_caythue`
--
ALTER TABLE `groups_caythue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `orders_caythue`
--
ALTER TABLE `orders_caythue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
