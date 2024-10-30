-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2024 lúc 07:03 PM
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
-- Cơ sở dữ liệu: `phongtro123`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` varchar(255) NOT NULL,
  `price` varchar(255) DEFAULT NULL,
  `acreage` varchar(255) DEFAULT NULL,
  `published` varchar(255) DEFAULT NULL,
  `hashtag` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `price`, `acreage`, `published`, `hashtag`, `createdAt`, `updatedAt`) VALUES
('0002b1f0-9062-44f1-9099-e7a759a08cb9', '11 triệu/tháng', '70m2', '12 giờ trước', '667025', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0156abf6-37a5-4c49-8ba9-8ec3663549dc', '16 triệu/tháng', '30m2', '1 ngày trước', '667556', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0325aed2-e79f-4846-b3eb-25aa6671662a', '4.8 triệu/tháng', '30m2', '3 giờ trước', '663135', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('0cf60e76-ba57-46c0-9132-b8796c596cca', '15 triệu/tháng', '220m2', '1 tuần trước', '666593', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('0e8c8c33-3199-4754-8143-4982bcca8714', '3 triệu/tháng', '400m2', '13 giờ trước', '667630', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('104fad6f-f483-4e57-88af-e43ba3ad5f24', '4 triệu/tháng', '30m2', '16 giờ trước', '667594', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('10d8f757-2a3f-4ed6-9099-a7334cff11dd', '3.3 triệu/tháng', '18m2', '2 ngày trước', '661397', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('17657860-574b-4480-a83e-7b335c41eea4', '6.2 triệu/tháng', '90m2', '1 ngày trước', '667237', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('19679f3e-7568-40c4-a81a-5b79ad791d19', '12 triệu/tháng', '30m2', '14 giờ trước', '665583', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('1c461580-c20d-450c-b4eb-a1683d4fe1bb', '20 triệu/tháng', '150m2', '2 ngày trước', '665406', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('1da38389-da0d-4582-8544-72543136fad9', '14.5 triệu/tháng', '48m2', '2 tuần trước', '665656', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('2245e44c-7e2b-4d0f-9aa0-8c47eb06c1a1', '2.6 triệu/tháng', '18m2', '3 ngày trước', '142044', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('2951a50d-6fa9-499e-883f-2e0f91e0cf3c', '4.5 triệu/tháng', '25m2', '3 tuần trước', '612116', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('318f548a-52d9-403a-ac88-3d1b158d450b', '6.2 triệu/tháng', '35m2', '1 tuần trước', '315940', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('474b28e0-3ecd-41e3-a791-0e055f688360', '8 triệu/tháng', '30m2', '1 ngày trước', '667460', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4ac548d0-ea3c-4882-852c-d1b0075de86c', '6 triệu/tháng', '30m2', '1 ngày trước', '666724', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('4ed1fbcb-19b8-4f96-b232-9b0c2c461f56', '2.5 triệu/tháng', '74m2', '1 giờ trước', '667664', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5263f7c1-4b90-4962-ab4f-fe84fa1b11eb', '3 triệu/tháng', '16m2', '2 ngày trước', '4345', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5774511e-78e9-4a0c-b113-ee7f41237982', '7.5 triệu/tháng', '35m2', '16 giờ trước', '664188', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5a6bd023-485c-4cd6-821d-484af6a9c845', '2.5 triệu/tháng', '18m2', '3 ngày trước', '131678', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5eb11a47-3861-48e5-aa36-7f90c9e8a9d0', '130 triệu/tháng', '430m2', '14 giờ trước', '666465', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('61fe072b-7c95-4a56-9293-c24c6e5c913e', '10 triệu/tháng', '140m2', '2 ngày trước', '656957', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('627a9ea1-85be-4cc9-b875-10c89bf05021', '18 triệu/tháng', '45m2', '8 giờ trước', '667649', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('65a3543d-9490-43fa-93ed-758da222cad3', '25 triệu/tháng', '265m2', '1 ngày trước', '591002', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('6de773e5-d189-449f-8df2-96c425a6e3ae', '12.5 triệu/tháng', '100m2', '12 giờ trước', '667634', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('6e0c0026-2b4d-43cf-a9d7-6f8937a75a58', '9 triệu/tháng', '90m2', '2 ngày trước', '608646', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('74aa0a4d-3536-4302-8dc2-1348699b3929', '6 triệu/tháng', '60m2', '1 ngày trước', '667474', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('74e64b98-5451-4b12-b0ed-22d66a4e3d8e', '8 triệu/tháng', '32m2', '14 giờ trước', '667624', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('7625bf44-c281-4d75-844c-0517c73a5934', '75 triệu/tháng', '1000m2', '14 giờ trước', '667611', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('7b59c6ed-c1e3-4b8d-835a-aa8a7c46a445', '7.5 triệu/tháng', '45m2', '6 giờ trước', '655831', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('7f700733-a146-44b4-8e5a-33476e2879d2', '20 triệu/tháng', '108m2', '2 ngày trước', '664216', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('7fe06256-9c03-4b0e-8999-c8bf1bbe8d5a', '4.5 triệu/tháng', '25m2', '2 ngày trước', '667464', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('84382318-9675-4c61-8b83-d8c892ce08a4', '3.7 triệu/tháng', '20m2', '3 ngày trước', '314706', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('8f784134-7994-4873-90ab-669c9800ed42', '6.1 triệu/tháng', '35m2', '7 giờ trước', '667657', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('90df5702-3f3f-4060-9438-bd4843c2aaa4', '2.8 triệu/tháng', '36m2', '1 ngày trước', '317639', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('912069f9-2dc7-4f63-976c-7036b78f0ede', '3.9 triệu/tháng', '25m2', '6 giờ trước', '667650', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('920c52e4-9765-4efb-a576-60c42790b8ec', '4.5 triệu/tháng', '70m2', '13 giờ trước', '271580', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('987ce5f8-d5ec-4975-8eee-43b9e27ad97b', '3.7 triệu/tháng', '15m2', '2 ngày trước', '661400', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('9e3ac743-aea0-4712-8a83-8c2746c7abea', '22.22 triệu/tháng', '55m2', '3 giờ trước', '599099', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('9f16671d-3d6f-42a3-b229-baec8b2d3118', '3.9 triệu/tháng', '32m2', '1 tuần trước', '666751', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('a43a5f2c-a9a2-4f8b-b833-70ab74860f11', '4.8 triệu/tháng', '30m2', '9 giờ trước', '667154', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('a646416c-b021-4eef-946a-46e7ebce65f0', '3.2 triệu/tháng', '20m2', '2 tuần trước', '64946', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('a6a40702-b602-44e8-aa45-ac21d14628ab', '4 triệu/tháng', '20m2', '14 giờ trước', '591678', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('a7618b28-28cf-4c0e-8c22-f4ca3202a85c', '14 triệu/tháng', '120m2', '1 ngày trước', '667234', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('a82ac87a-a7e8-490e-a127-b046f4b2c113', '6.8 triệu/tháng', '40m2', '17 giờ trước', '667592', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('a97b4a99-d3ad-4be1-b5c9-f732a7a0c0b5', '4.5 triệu/tháng', '25m2', '5 giờ trước', '667016', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('a9be21da-8bb6-4cf9-a8ab-00f9227280d0', '3 triệu/tháng', '30m2', '1 ngày trước', '277630', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('aaa1882b-e82a-4b00-b819-62bafaa2a518', '14 triệu/tháng', '137m2', '1 ngày trước', '665296', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('aaff4355-6f31-4687-a5b9-9725de29ef32', '12 triệu/tháng', '180m2', '1 ngày trước', '667463', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('b3284916-de54-42ad-a44f-ca7304640b80', '1.8 triệu/tháng', '20m2', '17 giờ trước', '603145', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('b3dd9500-566b-40be-8f7a-1ec70e8f0073', '6 triệu/tháng', '48m2', '13 giờ trước', '286621', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('b4723c07-5b20-4dcc-bae9-4a1702958ba5', '5.6 triệu/tháng', '35m2', '1 ngày trước', '667488', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('b9c4810b-0ebd-4687-bbe3-070e3a8af359', '5.2 triệu/tháng', '28m2', '6 giờ trước', '592334', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('bd10d4b6-3b1d-4ce3-b90f-7de44287d03c', '13 triệu/tháng', '114m2', '16 giờ trước', '667238', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('c2244c7e-c6a0-45f7-8e3a-7cfe61f17753', '6.5 triệu/tháng', '38m2', '1 ngày trước', '666748', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('c5e6a0c5-a242-40f8-8f58-d4a58182bcb0', '5.5 triệu/tháng', '30m2', '8 giờ trước', '667647', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('c8df4c2c-c21a-41de-8de6-fd150f3a7766', '2.5 triệu/tháng', '11m2', '3 ngày trước', '656769', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('ca9fa37d-e4a9-4b8d-bbe8-d8c637acb9f0', '2.4 triệu/tháng', '20m2', '13 giờ trước', '303703', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('cbb7327c-8bc3-486f-9a38-7cf03c60beb8', '8 triệu/tháng', '50m2', '8 giờ trước', '663918', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('ce44468e-2ea3-4093-bee9-29f94f9feffe', '1.4 triệu/tháng', '12m2', '3 ngày trước', '615892', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('d216ef24-ece0-402b-8d4e-15ee2c99bd44', '4.5 triệu/tháng', '35m2', '16 giờ trước', '666953', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('d94db8ec-a05c-4564-bb12-7f8ee0f0155a', '1.299 triệu/tháng', '30m2', '2 tuần trước', '595846', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('dcdc2862-c6fa-479d-aa76-c8a2bac40975', '8 triệu/tháng', '30m2', '12 giờ trước', '661265', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('dd5e244f-c0c4-4f6d-9a2f-4df8039cc6fd', '1.8 triệu/tháng', '30m2', '2 tuần trước', '582881', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('ddae0bed-c964-4976-825a-e0803642145b', '8 triệu/tháng', '40m2', '2 ngày trước', '664604', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('df162e0f-dbf0-44a2-b533-00229bd9e5c1', '8 triệu/tháng', '50m2', '5 giờ trước', '667456', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('e01fe919-fa44-4469-83d8-09fdae4d0815', '25 triệu/tháng', '80m2', '2 ngày trước', '667413', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('e4126fda-652a-41f0-9f8b-7f550fa71567', '6.5 triệu/tháng', '40m2', '14 giờ trước', '667406', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('e7309549-76e0-4f87-ad66-3997756facbe', '25 triệu/tháng', '220m2', '14 giờ trước', '666471', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('eaabfca6-97dd-420e-b467-270fa38d277e', '8 triệu/tháng', '45m2', '2 tuần trước', '666082', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('eefa4356-682c-439b-a1f4-f1695bf56268', '5 triệu/tháng', '30m2', '16 giờ trước', '610196', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f3f4579c-1d42-4908-bf47-76c51170017b', '6.7 triệu/tháng', '70m2', '1 ngày trước', '667475', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('f49dc818-8a82-474c-b0c7-9fd2a7a9cdc0', '3.5 triệu/tháng', '45m2', '4 ngày trước', '662192', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f55d46cc-f151-4f17-83eb-10fa1001ef66', '6 triệu/tháng', '36m2', '3 tuần trước', '591951', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f618893c-3a80-4859-b9da-da074699c201', '7 triệu/tháng', '35m2', '8 giờ trước', '667507', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f82da202-3212-498b-a206-fb141f642e78', '15 triệu/tháng', '75m2', '5 ngày trước', '667040', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f9092e71-5508-42d0-9768-888c51007043', '4.5 triệu/tháng', '22m2', '4 ngày trước', '59783', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('fcf806e9-d420-452a-97c2-b639365c0bbf', '4.5 triệu/tháng', '40m2', '4 ngày trước', '659826', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('fcf8c3f7-5e86-4c95-952e-1d5582a9bfc6', '48 triệu/tháng', '192m2', '1 ngày trước', '665991', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('ff21697c-7ff7-4631-a871-d85fa82ebba9', '11.5 triệu/tháng', '130m2', '10 giờ trước', '667648', '2024-10-29 18:47:35', '2024-10-29 18:47:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `subheader` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `code`, `value`, `header`, `subheader`, `createdAt`, `updatedAt`) VALUES
(3, 'CTCH', 'Cho thuê căn hộ', 'Cho Thuê Căn Hộ Chung Cư, Giá Rẻ, View Đẹp, Mới Nhất 2024', 'Cho thuê căn hộ - Kênh đăng tin cho thuê căn hộ số 1: giá rẻ, chính chủ, đầy đủ tiện nghi. Cho thuê chung cư với nhiều mức giá, diện tích cho thuê khác nhau.', '2024-10-30 02:26:48', '2024-10-30 02:26:48'),
(4, 'CTMB', 'Cho thuê mặt bằng', 'Cho Thuê Mặt Bằng, Giá Rẻ, Chính Chủ, Mới Nhất 2024', 'Cho thuê mặt bằng: giá rẻ, chính chủ, gần chợ, trường học, tiện mở quán ăn, cafe, kinh doanh mọi ngành nghề. Đăng tin cho thuê mặt bằng hiệu quả tại Phongtro123.com', '2024-10-30 02:26:48', '2024-10-30 02:26:48'),
(5, 'CTPT', 'Cho thuê phòng trọ', 'Cho Thuê Phòng Trọ - Kênh thông tin số 1 về phòng trọ giá rẻ, phòng trọ sinh viên, phòng trọ cao cấp mới nhất năm 2024', 'Tất cả nhà trọ cho thuê giá tốt nhất tại Việt Nam.', '2024-10-30 02:26:48', '2024-10-30 02:26:48'),
(6, 'NCT', 'Nhà cho thuê', 'Cho Thuê Nhà Nguyên Căn, Giá Rẻ, Chính Chủ, Mới Nhất 2024', 'Cho thuê nhà nguyên căn, nhà riêng: giá rẻ, chính chủ, đầy đủ tiện nghi. Tìm thuê nhà với nhiều mức giá khác nhau, đa dạng loại diện tích. Đăng tin cho thuê nhà nhanh, hiệu quả tại phongtro123.com', '2024-10-30 02:26:48', '2024-10-30 02:26:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image`, `createdAt`, `updatedAt`) VALUES
('02cc5a56-e66f-4afe-a5f1-5c5ce5c7de38', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5933516970824-3dda666a0e0b2c88ce138848654c223c_1728999621.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5933516968837-53ace6974ca4bad83693f2b2dc2554b8_17', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('04459d97-6e48-418e-a2cf-5a8cf5cef8fb', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-9290_1729218829.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-9289_1729218828.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0804b49b-bb33-43f8-aa4c-fe4c6bdf065d', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/01/189_1722496072.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/03/15_1727924960.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/03/14_17', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('098d94f9-b3a9-4d59-b81d-802378dc4705', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/02/19/cho-thue-3_1676817662.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/01/12/hinh-1tx_1610461788.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/202', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('1200298e-030c-418f-971a-7a0a7250b18b', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/eea92f4d-27ed-4274-8210-d17ec0cf551b_1729335262.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/281d12f6-af9f-45c7-975d-4658b01c38d2_1729335225.jpg\",\"https:/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('139ce6d2-6bc7-4f5d-a7bd-125be5e58655', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-7088_1729222448.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-7080_1729222437.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('2887247e-2a6f-4c4a-8948-b750f6ac4391', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5922195927578-2b25153676c024dda78ec1fde3f939a4_1728880850.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5925976762078-3093be51995886bd429815233466adc0_17', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('28d1e315-fc9b-48fa-8553-1648c7eda99f', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/10/01/pccc1_1696140505.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/07/27/hinh-2707-sau-khi-sua-7_1658890843.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x6', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('28faa3c0-3281-435f-a9d9-a778ab13f39a', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/img-6957_1729154236.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/img-3244_1729154231.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('2904f974-f7d4-47be-8316-d84ba7b1de3b', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5945420040484-268a3c27a3edee615ea2b82e4aa86b5e_1729314229.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5945373113544-3689b878e8f881f57d1390598dcf1328_17', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('2a579fc1-f58b-4f26-afbe-6f0baa5c3e34', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5916738833520-45ed365de0260be6a178d0059e89f7ab_1728879181.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5916734718719-0a0cde357627b561743d179663fc74e2_17', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('2dac9219-cae3-431f-91ef-82d9329758a8', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/5_1727340297.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/1_1727340296.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/2-2_1727', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('2df56ab2-8428-4907-981c-fbc0a5537a16', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/01/thiet-ke-chua-co-ten-23_1722495454.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/01/7_1722495429.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/f', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('32849e0b-52b6-4a9f-a50b-0e37603a724a', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/hoa-xuan-3_1729316009.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/px-139_1729315989.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('34b9f7fd-914c-46a1-9080-f8f04a9226ad', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/8259713aeaac53f20abd_1729244395.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/1d5ad23849aef0f0a9bf_1729244390.jpg\",\"https://pt123.cdn.static123.com/images/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('3858db3c-eea4-4e9e-945d-439b295bac8b', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/05/02/1565171930554_1714624952.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/04/19/3qdrxecn27wahzuemcmkagakfxnbdketzyg3jby6rj9ntss4omqsyvthvop6ktfkyrrkzruchfc7dlwnu6bc', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('3ab800ea-d325-4487-9d37-f623df71475d', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/img-6388_1729308364.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/img-6384_1729308364.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('3af461c9-9b3b-498a-ab1b-1c622a5ebe78', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/10_1728374637.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/1_1728374625.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/2_17283', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('3f3b3db0-8f53-4866-8213-b8a6ccc9b331', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/02/tang-51_1727849882.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/02/ngo_1727849880.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/02/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('404aff4b-0e74-464f-9570-4e139c4796db', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/18/img-4266_1723953828.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/18/img-4764_1723953808.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('4293f4f7-bb60-4846-ab89-e2ac83f63438', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/3_1728374929.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/1_1728374929.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/3_172837', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('43980a31-ae34-44c4-bb2b-debf6cb0dc73', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/01/27/z4064025782399-7fdd263204a56fc552bcc876a12293c6_1674785594.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/01/27/z4064025740041-0c32a1d0197c20b63c64a57df8c64959_16', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('43b17665-fb5e-4814-975a-17b400852764', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/04/z5878643101483-a660a374cc25e5ffee61b698cb3a0a73_1728010971.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/04/z5878643013660-99045711764d09c22e9030c83e6dbc8c_17', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('43da127d-7b37-4ca4-9a17-801d22a745fa', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/11/bd0e09bd-c480-406a-88a9-a88de05d6fde-1-102-o_1726038600.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/11/4007b729-d0a7-4167-a203-8b5476e123f7-1-102-o_17260383', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4fd6ea05-e9d3-4ce6-a28c-0b29fa68433d', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/11/z5794430839497-f530bde2ccc80bd0fefd697a11a5b2e4_1726016530.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/11/11_1726016518.jpg\",\"https://pt123.cdn.static123.co', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5303ee81-70f3-4c8c-bb24-581c98301db3', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/30/10eb49663d9398cdc18220_1722354888.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/30/a0d6c658b2ad17f34ebc23_1722354890.jpg\",\"https://pt123.cdn.static123.com/ima', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5329e4fc-c895-4d89-89a6-43c371259a06', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/img-5955_1729332459.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/img-5957_1729332453.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('548675cc-ef2d-4111-b1cc-c47257b0c000', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/11/3_1723375362.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/11/1_1723375358.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/11/2_172337', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5b6d9174-2a24-405f-b9c9-3ea7dcc3725d', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5912323840467-ebf9ae64502cd6a2f2ef3c4e94bdc0d7_1728887878.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/14/z5911808099095-6c47567e1edcd8af890a631edfab4559_17', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5d7209b3-71f6-411e-b02a-6eba3440eda1', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/07/03/41d5d190-73b1-43c5-a461-fbf97c8f381e_1656830824.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/07/03/11e35888-b0d2-49b3-8d5f-a4202978ec99_1656830824.jpg\",\"https:/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5ea3488e-3c6b-4206-9cd5-32d5566280c3', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/6a5cefdc-48fc-4fac-9082-df3e12231295_1729242234.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/10/fc9ba1ba-531c-445e-8478-d5206a828a61_1728552765.jpg\",\"https:/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('606cf122-5df7-4666-a13e-097e7c1b953f', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/04/01/img-1596_1711989363.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/04/01/img-1597_1711989458.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('62a53b58-c864-4a77-9be1-443328da6d1b', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/10/13/z3795898560499-87fa69afe7eb722f4a9138074160e448_1665632459.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/10/13/z3795897236424-07fa1357ad55ebccaa5bd63f4d30d1fb_16', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('66f52ce6-6c99-4a2c-936c-96b686942754', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/11/08/16522822-908961642540309-318722795-n_1667899425.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/11/08/z3864461102812-45557224e5e84263e041cfc2e0a0a8b3_1667899424.jp', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('6fdd611a-721f-4fda-8bfb-2774fde9d7c7', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/06/11/25b4be27f13926677f2832_1718077468.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/06/11/hinh-thue-nguyen-can-ds14-30tr_1718077309.jpg\",\"https://pt123.cdn.static123', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('7723237d-e1a5-4f52-8b37-b73ec5422d44', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/06/18/43_1718685247.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/03/40_1727924043.png\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/03/41_172', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('796c5975-f825-4b2d-875a-d173c1716085', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/mat-tien-30-nguyen-van-dung4_1729310295.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/mat-tien-30-nguyen-van-dung_1729310295.png\",\"https://pt123.cdn.static', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('79bc73be-d8b3-4c0a-af01-47a9a90ef1ed', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/584_1729326734.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/577_1729326732.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/578_', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('79c67a20-f207-4dce-bbd1-bd2badc2a002', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/1fbef07600e4223965af35139a36de3d_1729325911.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/d7c0a474cbe54ea5e7a94667ea81bd77_1729325899.jpg\",\"https://pt123.c', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('8014b174-af86-4649-8f16-b8493b8d48ff', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/13/7c6dfb18-a172-409d-b6e1-a74643b53cab_1728802814.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/13/4f7bff4d-7c9e-411b-b08f-0849d528a7e3_1728802812.jpg\",\"https:/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('81b791f5-6ce2-4e22-9157-0704c484a3f3', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-6945_1729186335.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-6940_1729186332.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('832fb04a-9499-4777-8a45-fdcc1e80a464', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/12/anh-cua-hang-to-2_1720774375.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/12/cua-hang-be-mat-ngoai-1-rong-khoang-30m_1720773557.jpg\",\"https://pt123.cdn.stati', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('86b4703c-c5ca-4002-918f-c05315d05771', '[]', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('86de272f-a303-403a-b195-fa44e0452ea8', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/04/img-2216_1728055864.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/04/img-2360_1728055863.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('88c71c41-03ac-4398-bf60-ff7f12ce917e', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/06/19/352551237-1047930589510911-1604906869852148303-n_1687148126.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/11/04/1572776146007_1572851201.jpg\",\"https://pt123.cdn.', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('8ce511cb-efa8-494c-a5ca-5fd1c35d92b9', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/20241004-114638_1729219048.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/20241004-114710_1729218953.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('8d00392b-958d-4194-9216-85b3d30ebd2a', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5933632596808-c2bef10be17b6fb811b0c762188c0d6f_1729001521.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5933635857490-386e4c1b8d80f44eaea692746bb33540_17', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('8d08c4e2-70ab-4a54-95b9-4946f6eb1f82', '[]', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('8f2be85d-ecf0-4759-8362-9aa1480fac15', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-5556_1729191651.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-5522_1729190559.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('9639eabf-92e8-4fb8-963a-9c5b85fc6abf', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z4548950057566-117d28069e1948e40776615d029c6e4c_1729300998.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/001_1729300988.jpg\",\"https://pt123.cdn.static123.c', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('9777c1dd-49aa-4f6c-bb03-a9415d686ded', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/27/845096b60245a41bfd54_1727443374.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/27/845096b60245a41bfd54_1727443374.jpg\",\"https://pt123.cdn.static123.com/images/', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('9a2b8a3c-f4b6-4017-85d1-f83efdaad3a6', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/20/z5947677761630-d9a0e1dd258c39e6c4b4d89526730940_1729358500.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/20/z5947677759533-44dc6cabb7b5d93aef393d069345ff61_17', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('9ba5df9c-e0b7-4f10-9a03-cbfd3f549b08', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/02/07/photo-2020-12-26-15-19-37_1644217617.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/27/img-2047_1722050282.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('9fd41401-00c8-4593-a4f6-19f140873041', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/08/45243bf930f889a6d0e97_1728367356.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2018/11/19/20160618115635-2c13_1542610159.jpg\",\"https://pt123.cdn.static123.com/images/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('a4ebfc09-21d4-494d-bf46-b64cf8478c35', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/10/18/z2855400236910-509061cc2c6e2d8478ebbcf128836c01_1634531320.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2019/02/25/63b548ae81a263fc3ab3_1551067966.jpg\",\"https://pt12', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('a665f635-c1c4-4bb6-b68a-7f40770945bd', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/02/11/45125c65-dde9-49fe-bb1a-4bf284f9e498_1676120671.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/02/11/c11a6917-a0ac-4de4-9135-1b4c1e166892_1676120670.jpg\",\"https:/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('ab74170d-35af-4c18-bec7-635b23decf8c', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/d65a6d5e-58bb-48de-9b90-492a524571c0_1729179205.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/0fd59eea-7d74-41c5-a40b-468d22d2a211_1729179202.jpg\",\"https:/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('aba3536a-2c54-46f5-b020-bf63c95ef1f6', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/11/0104976b-d875-43fb-8a06-c3a9b43f955a_1728618342.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/11/6be1de36-697c-4c54-b252-183291a3011c_1728590745.jpg\",\"https:/', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('af9e9fa8-162b-47bc-b98b-e727fa7b5892', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/003_1727315264.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/001_1727315264.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/26/002_', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('b8865dc5-5439-48a2-9b23-462862edc1c7', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-20241018-110949_1729229795.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/18/img-20241018-110945_1729229800.jpg\",\"https://pt123.cdn.static123.com/images/th', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('c125e6c7-98d1-4acd-858c-42a5c77f3fd6', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/11/z5917876195927-18069987ac59a9ffa953a1a983ac392c_1728610200.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/11/z5917876187747-03f58f87302a08285968a31e8e1322d0_17', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('cda05b7f-b4fb-4261-b633-42f69d66d365', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/05/01/img-2145_1714566574.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/06/11/img-2158_1718066628.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('cdd59d34-c6f7-4b19-9744-68f28b6ae7a4', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/c65e3045-b9e5-439c-a0e1-af7699068514_1729335704.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/049f08fa-2026-4eeb-8362-60b13b93db92_1729335699.jpg\",\"https:/', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('cf645a3a-0ea0-48ac-978d-0705813307e9', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/10/20/img-20211018-151722_1634696442.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/10/20/img-20211018-151710_1634696442.jpg\",\"https://pt123.cdn.static123.com/images/th', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('d174af9d-fd76-4f0a-8de8-039643977f85', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/07/12/z5626106327510-72c855e425cbf8ea6147ecf867d7bc9e_1720764321.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/03/10/z2372642429419-09c9c7a541863ae55ad41b3e267136f4_16', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('d42bacb8-8c26-4cf0-992f-16ca13bd5b64', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/10/17/6_1697528738.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/10/17/1_1697528735.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2023/10/17/2_169752', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('d48b86e7-0dab-4452-b9cb-36414d7d58e4', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/12/08/z2216753993358-ff7e2006d4cd4a467f857d6f5d213f4c_1607398735.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2020/12/08/z2216753992450-eb92e4fa0fc7f15a039bf4a9ea4a0856_16', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('d749f7bf-62de-4053-9622-fc244d313f33', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/04/a2df3d23-0837-4450-8bf2-e0bbe7b7f101_1725431027.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2021/10/14/aa5f89a4-0846-41cc-94ca-05fac47c4160_1634186774.jpg\",\"https:/', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('dbc53572-8024-42a3-88da-2b1531f85e80', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5909007349652-741e23299bd601704941861602672770_1729347330.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5906179998563-129b03726d17d17c033a7336684dda65_17', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('de16684d-bd6d-4b97-930d-e41cc4466a31', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/05/z5700891606430-8892e82825aeebabe7fe70c7509bbecd_1722840942.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/08/05/z5700891578770-a45ef51685d48cf0a41f8f020ceacbc4_17', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('ded7dcb9-ba51-4c60-8966-442fd183181e', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/1000000543_1729001756.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/1000000535_1729001746.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('e75d802d-e96c-4902-94f5-95127ff19316', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/05/27/1hus62ftg-c2a7e5_1716787271.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/05/27/1hus62fuu-c2a7e5_1716787259.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/9', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f0b9f5af-094c-4b78-a542-876b4660a9bc', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/17/z5839213565629-d6794dd1aa95e2f6937b7f19dd14ee9e_1726553150.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/09/17/z5839213219602-1ab9684bbbed744e5eba60b023086b85_17', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f1a54c68-a9fa-48ea-979e-8bfc02643469', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/04/14/vnahomes-198_1649922776.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2022/04/14/vnahomes-1_1649922719.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f2cf6182-8630-483c-93fd-0414f2cb6de9', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/z5932226839729-3f040978846b4d1d2944c33846ac65ef_1729152369.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/z5932226839655-786c34095fd00dc3c3be3f38bb222b93_17', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f881b031-266c-44d9-a693-4736d231bff2', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5945614540416-0808d3e1db2148aa7b52405212bfe3f6_1729330224.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/z5945614520918-406ec8c936a673f348b25354ce746624_17', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('fc9b9703-61b1-4cd6-8827-290b86e33b20', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5929705557131-84bbd167e46df0f8867977b4b95ab7b4_1728971295.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/15/z5929705502383-650904f8a9a6b446d3c8a9eb80d9fc0c_17', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('fcb68236-0801-4e8c-9f1f-656e3923aa15', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/f2d6667fe8e751b908f69_1729303929.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/19/2a1e51b6df2e66703f3f13_1729303923.jpg\",\"https://pt123.cdn.static123.com/imag', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('fcddd680-6dac-4470-8369-05ab19c1b889', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/01/z5884455341185-9e85dbf498c3691b76355a7a1a72408b_1727754215.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/01/z5884578751229-b0a31dac5151b680cee065205d7ee47a_17', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('fd9e7179-5341-406f-a29f-2ea18f96743f', '[\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/d4e75933efa0c9b2fab40df866d11f55_1729182373.jpg\",\"https://pt123.cdn.static123.com/images/thumbs/900x600/fit/2024/10/17/c041b4eda8c9234ea64444d2074b55d6_1729182339.jpg\",\"https://pt123.c', '2024-10-29 18:47:35', '2024-10-29 18:47:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `labels`
--

CREATE TABLE `labels` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `labels`
--

INSERT INTO `labels` (`id`, `code`, `value`, `createdAt`, `updatedAt`) VALUES
(1, 'WGJ3', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(2, 'HEJ5', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(3, 'ITJ4', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(4, 'LYW6', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(5, 'HWD9', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(6, 'NNS8', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(7, 'ULH7', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(8, 'ZWW0', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(9, 'EZN1', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(10, 'CLM8', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(11, 'OXD3', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(12, 'TFV1', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(13, 'EEJ0', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(14, 'MVM0', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(15, 'GLO8', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(16, 'QHK0', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(17, 'QVV6', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(18, 'KIM3', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(19, 'TGK5', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(20, 'JHA4', 'Cho thue phong tro PTT', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
(21, 'VEL4', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(22, 'YYB8', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(23, 'KYE0', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(24, 'ZOG2', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(25, 'BTZ3', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(26, 'DGT0', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(27, 'LAT6', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(28, 'KAR9', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(29, 'MRF2', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(30, 'NXU9', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(31, 'JQY8', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(32, 'PFM7', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(33, 'ZCS8', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(34, 'PUU7', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(35, 'BTZ5', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(36, 'DOF9', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(37, 'BSF4', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(38, 'OYH3', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(39, 'XPK7', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(40, 'SPS4', 'Cho thue phong tro PTT', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
(41, 'SOL1', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(42, 'IKE0', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(43, 'VQQ4', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(44, 'ZOB4', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(45, 'DOC6', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(46, 'OLR2', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(47, 'XUI8', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(48, 'RMN7', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(49, 'QEY0', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(50, 'KKL7', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(51, 'TBE7', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(52, 'RRO4', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(53, 'LLP7', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(54, 'ZOK2', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(55, 'LBZ8', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(56, 'OEF6', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(57, 'JFM0', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(58, 'WPL5', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(59, 'AOR3', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(60, 'GBS4', 'Cho thue phong tro PTT', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
(61, 'GQD3', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(62, 'SVA2', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(63, 'YYE9', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(64, 'ZTV3', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(65, 'PCH9', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(66, 'BSP9', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(67, 'AIA8', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(68, 'JPK8', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(69, 'KLF8', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(70, 'HBK5', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(71, 'SZB5', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(72, 'XSY5', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(73, 'VOO8', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(74, 'BFZ1', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(75, 'OZR4', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(76, 'XLG6', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(77, 'JNY8', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(78, 'MQO2', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(79, 'YVF3', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
(80, 'ETB7', 'Cho thue phong tro PTT', '2024-10-29 18:59:58', '2024-10-29 18:59:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `overviews`
--

CREATE TABLE `overviews` (
  `id` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `bounus` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `overviews`
--

INSERT INTO `overviews` (`id`, `code`, `area`, `type`, `target`, `created`, `expire`, `bounus`, `createdAt`, `updatedAt`) VALUES
('02e8cff5-2c50-4dc6-a76f-cbc714f8b369', '#59783', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('06015824-3adf-45df-b065-c30a3c151faa', '#661265', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('082840e5-d371-4b5c-a573-e07084804491', '#667413', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0f530ebf-a297-4cad-a5ae-1556440c6d2a', '#603145', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('0fa0f6c4-5863-443b-afac-684e387879c2', '#661400', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('17d8cfa1-b598-4721-a7fb-b0c25381d22d', '#667234', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('1f43dd34-a598-479f-9b90-a468c5d4eb15', '#663918', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('2003b9fe-fad4-4899-bd21-45c3a368e422', '#665406', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('218a8ae4-65a1-4edf-9d7c-4e6e7cbfebaf', '#667657', 'Cho thuê căn hộ Hồ Chí Minh', 'Cho thuê căn hộ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('22140363-03b9-4ad5-b94b-d65d15980b6d', '#659826', 'Cho thuê mặt bằng Hà Nội', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('275a0327-a9ba-499c-93b7-86fc3244ca89', '#666751', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('2bc2ba37-1c3e-4205-92a4-06a5d2242069', '#655831', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('2d4e4d8b-39b8-4a1a-a726-d3d9975fcc09', '#656957', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('2f57c612-badd-49b6-8126-4fbf6bbab0e4', '#662192', 'Cho thuê mặt bằng Đà Nẵng', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('3ac81dbf-0f56-4238-8cf7-ffacd9343d35', '#4345', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('3b81448e-51b6-4bad-8c15-6e2572477080', '#667664', 'Cho thuê căn hộ Hồ Chí Minh', 'Cho thuê căn hộ', 'Nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('3d207bf9-69b2-4b1a-907d-dec33fd2a39d', '#665583', 'Cho thuê nhà Hà Nội', 'Nhà thuê nguyên căn', 'Nữ', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('40d1ac9a-2fac-4d31-906c-10f0e647eb9b', '#667474', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('410329f7-90e2-4a14-95de-cffadd7cc4a0', '#661397', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('43873b60-4fc1-4f83-9594-25e69e786202', '#271580', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('468c54c9-9fb6-4d9e-a3e9-f7d6ef00625f', '#667592', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('46f6f5f8-7754-4bfe-8841-34dcbe91ac0a', '#667507', 'Cho thuê căn hộ mini Hồ Chí Minh', 'Cho thuê căn hộ mini', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4a50651c-9e4e-4ffe-a7d2-e74744c995d8', '#667463', 'Cho thuê nhà Bà Rịa - Vũng Tàu', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('5097b584-8fc0-4f12-a848-d399f831ec9d', '#664216', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('52dfe8d1-b8f7-4d65-abb9-53591b62ab31', '#591678', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5818a1b6-fc23-4c32-bbe0-f0bba82625b8', '#664604', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('58b5be35-afe9-4db4-80b6-6c42f2062d4c', '#314706', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '2024-01-12 08:05:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('59e4c891-b071-4ae7-88b3-30bf83b2b968', '#667237', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('5a892b45-d64a-429e-8229-43da03576484', '#667456', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5bb2d607-09d8-45e1-8fba-af26aa24f977', '#667624', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5c7a91a4-1eeb-4708-bf79-cc152f0cc822', '#667650', 'Cho thuê căn hộ mini Hồ Chí Minh', 'Cho thuê căn hộ mini', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5edbbcee-1c21-4c36-84c7-02c792fe33f6', '#664188', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5f4e9465-20a3-4380-ab17-b432e9a52c90', '#667647', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('68299adb-2b71-4f59-9f21-b6e179f2ef10', '#667238', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('6dae3c23-d4fb-40a0-a7ce-3209cee6794d', '#277630', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '2024-10-11 03:22:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('7356e536-ceff-4e26-b3a8-3bd28fa7ed0a', '#599099', 'Cho thuê căn hộ dịch vụ Hà Nội', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('73e714cf-7f76-470c-b025-ff086245eed6', '#315940', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '2024-10-11 02:41:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('7dd75dd8-a57f-4912-a5dc-099cd3b7e311', '#582881', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('7ec7e15a-1105-4086-ad99-644db473a9ce', '#667016', 'Cho thuê căn hộ Hồ Chí Minh', 'Cho thuê căn hộ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('83ab4a5e-f21c-4cc9-993e-07c36359274c', '#667648', 'Cho thuê căn hộ Hồ Chí Minh', 'Cho thuê căn hộ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('8c0b7e41-b1b2-474b-82fe-d3725c1be950', '#303703', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('8c3bfb13-0f24-4832-a1f1-0fc7625555e9', '#666082', 'Cho thuê nhà Đà Nẵng', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('8c3c1348-b6cd-42c5-aef1-79764af7f260', '#131678', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('906b52b0-5f50-44fb-98f6-6cd03be4f3b5', '#595846', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('9139deea-470e-4e0b-a639-27266ec4b033', '#615892', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('9544f64a-d0e8-4df6-aea5-2c0489f9ca97', '#317639', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('95b138b0-38b1-48af-9bad-9da1192b7e2b', '#656769', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('96c00c10-3a5c-4e7b-87f2-60e89206e0f4', '#667594', 'Cho thuê căn hộ mini Hồ Chí Minh', 'Cho thuê căn hộ mini', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('99343b7b-6920-4935-8a68-b0613a9ce431', '#610196', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('a02a7a90-ecb0-4970-bff2-dfd0bd42e6ac', '#666471', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('a099d5af-1bf0-4fca-97c6-93dd37916068', '#667634', 'Cho thuê nhà Đà Nẵng', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('a1293daa-5fae-49c1-b798-26c690434193', '#665296', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('a77e984c-dbd7-4a24-afb9-d5f8963e5924', '#663135', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('b432950e-0cc4-4dd7-8ce0-3c7043513497', '#665991', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('b48b3167-6146-4550-828b-da4940b2fa40', '#667040', 'Cho thuê mặt bằng Hà Nội', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('b48d2266-b259-4640-a1d8-9be522f84650', '#591002', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('bbb8d28b-0495-42d2-a244-fdd567216931', '#667630', 'Cho thuê nhà Nam Định', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('bc353ffc-2b9a-48e0-9cce-8aada6a21a29', '#666465', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('bdc7a3db-217a-45f1-bf3e-5b7c6cd0500e', '#667488', 'Cho thuê căn hộ mini Hồ Chí Minh', 'Cho thuê căn hộ mini', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('c2587449-f921-434f-af64-80bbfb7762d6', '#666748', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('c2a1bdfa-80b7-41a0-b80b-01ca593b4bb3', '#592334', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('c4475599-0c57-417f-bcd0-967628d17b38', '#608646', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('c8747159-d5cf-458d-868f-ae9d95a5b76d', '#667649', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('c8bfe4e0-7044-4ce4-9976-004641024937', '#667475', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('cc589c1f-3d31-4d34-b769-b35ab2be2c4d', '#612116', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('d58f2b2b-fd2e-4b83-8b50-2b97fff883de', '#666593', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('d8508aad-7e6d-4042-9b96-e90e29aaf7a1', '#286621', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('d9d2f746-ccbe-4996-8a63-42facb1acee7', '#591951', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('dc05a86f-c7e0-4960-8944-39362481d801', '#667460', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('ddbeba3d-6ede-4e00-9b09-f230812df4f6', '#64946', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('e0e117ef-0f5a-4681-b540-f384cc277110', '#142044', 'Cho thuê phòng trọ Hồ Chí Minh', 'Phòng trọ, nhà trọ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('e24ead07-2a2f-4740-bf45-acdfeb002cbb', '#667154', 'Cho thuê căn hộ mini Hồ Chí Minh', 'Cho thuê căn hộ mini', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('e4631b1c-0b7d-455b-9cc5-293bc183a5ef', '#666724', 'Cho thuê nhà Hồ Chí Minh', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('e704520a-fbe3-4953-bbba-1981751356bb', '#667464', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin miễn phí', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('e75f5bf4-c31e-416e-8d28-1e01086b8507', '#666953', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP nổi bật', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('e8ae2b52-6421-48e4-96fd-fd2745b3d544', '#667025', 'Cho thuê nhà Đà Nẵng', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('e9b5684d-29db-4b81-98c4-f5ab6ec19ce4', '#667406', 'Cho thuê căn hộ dịch vụ Hồ Chí Minh', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 3', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f53cad6f-27c7-404a-8556-89aa633331b6', '#667556', 'Cho thuê nhà Hà Nội', 'Nhà thuê nguyên căn', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('f6c08b90-3de6-4f8a-81c6-2207f86e0a47', '#665656', 'Cho thuê căn hộ dịch vụ Hà Nội', 'Cho thuê căn hộ dịch vụ', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin VIP 1', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('f7bd7a31-8f2e-4d78-9e74-d14704eaa56b', '#667611', 'Cho thuê mặt bằng Hồ Chí Minh', 'Cho thuê mặt bằng', 'Tất cả', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Tin thường', '2024-10-29 18:54:47', '2024-10-29 18:54:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `star` varchar(255) DEFAULT '0',
  `labelCode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `attributesId` varchar(255) DEFAULT NULL,
  `categoryCode` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `overviewId` varchar(255) DEFAULT NULL,
  `imagesId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `star`, `labelCode`, `address`, `attributesId`, `categoryCode`, `description`, `userId`, `overviewId`, `imagesId`, `createdAt`, `updatedAt`) VALUES
('00dc4447-2887-4000-b9ce-e5ebafe97366', 'Cho thuê văn phòng nhỏ gần Giga mall', '0', 'ZCS8', 'Địa chỉ: Đường số 25, Phường Hiệp Bình Chánh, Thủ Đức, Hồ Chí Minh', '7fe06256-9c03-4b0e-8999-c8bf1bbe8d5a', 'CTMB', '[\"Cho thuê phòng đường số 25, Hiệp Bình Chánh, Thủ Đức\",\"- Đường xe tải, oto ra vào, đậu thoải mái, khu vực đông đúc nhộn nhịp, tiện ích cao\",\"- Tiện ích: Giga mall, 15p di chuyển qua các quận Gò Vấp, Bình Thạnh, chợ HBC, Bách hoá xanh, winmart, nhà thuốc', '41c8748d-81d7-45c1-b394-83846b4ac779', 'e704520a-fbe3-4953-bbba-1981751356bb', '8f2be85d-ecf0-4759-8362-9aa1480fac15', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('011e557e-75c4-4b5a-b3b4-3eca603acd0b', 'Cho thuê rẻ nguyên căn 5 x 15m Phú Thọ Quận 11 TP.HCM', '0', 'KAR9', 'Địa chỉ: Đường Phú Thọ, Phường 5, Quận 11, Hồ Chí Minh', 'e7309549-76e0-4f87-ad66-3997756facbe', 'CTMB', '[\"- Cho thuê nguyên căn nhà phố mặt tiền Phú Thọ - Hàn Hải Nguyên F1Q11, khu dân cư hiện hữu kinh doanh buôn bán sầm uất TP.HCM\",\"- Giao thông thuận tiện, ra chợ Lớn mất 5 phút bằng xe máy, gần trung tâm thương mại, ngân hàng, trường học, chợ Bình Thới…\",', '0f2e5398-f419-4973-8817-bfe64a8874c2', 'a02a7a90-ecb0-4970-bff2-dfd0bd42e6ac', '4293f4f7-bb60-4846-ab89-e2ac83f63438', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('02715c3f-383e-4a80-9c14-f36c4b952295', 'Cho Thuê MT NC Lê Lợi P.4 Gò Vấp', '2', 'GQD3', 'Địa chỉ: Đường Lê Lợi, Phường 4, Quận Gò Vấp, Hồ Chí Minh', 'e01fe919-fa44-4469-83d8-09fdae4d0815', 'NCT', '[\"Cho thuê nhà NC MT đường Lê Lợi p4, sát trường ĐHCNTPHCM và chợ Gò Vấp\",\"Diện tích: 4m x 20m đúc 1 tấm,có 3pn\",\"Tầng trệt trống suốt thuận tiện seup phòng spa,tóc,yoga....\",\"Nhà mới sơn sữa lại rất đẹp...\",\"HD lâu đai\",\"Giá thuê 25tr/tháng\",\"Lh 09096031', '0e91fdd6-9899-4a06-aa02-b0cfb7cd0558', '082840e5-d371-4b5c-a573-e07084804491', '28faa3c0-3281-435f-a9d9-a778ab13f39a', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('05efc3ff-7f04-466a-b599-e940cd376ce3', 'Phòng trọ FULL Nội Thất, giờ giấc tự do ngay công viên Hoàng Văn Thụ.', '5', 'ZOB4', 'Địa chỉ: 50 Đường Phạm Cự Lượng, Phường 2, Quận Tân Bình, Hồ Chí Minh', '84382318-9675-4c61-8b83-d8c892ce08a4', 'CTPT', '[\"Cách CV Hoàng Văn Thụ 150m\",\"Cách ĐH Tài Chính Marketing 300m\",\"Diện tích 20m2\",\"Mức giá: 3tr7\",\"Địa chỉ: Phạm Cự Lượng, P2, Tân Bình.\",\"Mô tả:\",\"- Có máy lạnh\",\"- Có kệ bếp và tủ bếp\",\"- Có gác\",\"- Toilet riêng\",\"- Có một bàn ăn 2 ghế.\",\"Ngoài ra còn c', 'b3b21807-a6ec-44d4-8990-654fd88f6227', '58b5be35-afe9-4db4-80b6-6c42f2062d4c', 'cda05b7f-b4fb-4261-b633-42f69d66d365', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('066f6901-3f26-48b7-aa32-7dcf0cbff376', 'Cho thuê nguyên lầu / 2PN hoặc làm văn phòng 90m2 Có sẵn 1pn full nội thất', '0', 'VOO8', 'Địa chỉ: Đường Bùi Đình Túy, Phường 24, Quận Bình Thạnh, Hồ Chí Minh', '17657860-574b-4480-a83e-7b335c41eea4', 'NCT', '[\"Cho thuê nguyên lầu / 2pn hoặc làm văn phòng 90m2 Có sẵn 1pn full nội thất\",\"Nhà mới, Phòng mới hỗ trợ 100% - Nhà xe rộng để được 10-20 chiếc - ra vào vân tay\",\"có thể làm 2 phòng ngủ hoặc làm sàn văn phòng\",\"camera 24/24, có bảo vệ.......Liên hệ ngay n', 'f62bc5dc-b0ce-49a4-a15b-9d15057a1fc8', '59e4c891-b071-4ae7-88b3-30bf83b2b968', '8d00392b-958d-4194-9216-85b3d30ebd2a', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0e375c3d-f0d2-432e-8c61-db507cb1dea4', 'Cho thuê căn hộ dịch vụ, Trần Đình Xu, P. Cầu Kho, Quận 1 Gần chợ Bến Thành', '0', 'EZN1', 'Địa chỉ: Đường Trần Đình Xu, Phường Cầu Kho, Quận 1, Hồ Chí Minh', 'df162e0f-dbf0-44a2-b533-00229bd9e5c1', 'CTCH', '[\"- Nội thất: Căn hộ được thiết kế hiện đại, đầy đủ nội thất gồm giường, tủ quần áo, bếp và máy lạnh, đáp ứng nhu cầu sinh hoạt hàng ngày.\",\"- Không gian sống: Căn hộ thoáng mát, ánh sáng tự nhiên, mang lại cảm giác dễ chịu và thoải mái.\",\"- Gần các trườn', 'da37bb5a-c2f7-4775-a321-06f184f65ede', '5a892b45-d64a-429e-8229-43da03576484', 'ab74170d-35af-4c18-bec7-635b23decf8c', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('17231899-98e2-4a3c-9944-48a78bd14d8d', 'KTX Tân Bình gần Học Viện Hàng Không bao điện nước chỉ 1tr4', '4', 'WPL5', 'Địa chỉ: 13/12 Quách Văn Tuấn, Phường 12, Quận Tân Bình, Hồ Chí Minh', 'ce44468e-2ea3-4093-bee9-29f94f9feffe', 'CTPT', '[\"‼️ Giá chỉ:1.400.000/người ‼️\",\"Cọc 2.000.000\",\"BAO TẤT CẢ CHI PHÍ\",\"VỊ TRÍ TRUNG TÂM QUẬN TÂN BÌNH\",\" NGAY SIÊU THỊ LOTTE MART!\",\" Trang bị đầy đủ các nội thất tiện ích\",\"Máy lạnh\",\"Trang bị giường tầng, nệm và drap mới\",\"Tủ đồ riêng\",\"Nhà vệ sinh riên', 'a1037dd4-e397-43a0-a2e1-c012f17edb5e', '9139deea-470e-4e0b-a639-27266ec4b033', 'a665f635-c1c4-4bb6-b68a-7f40770945bd', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('1a2c1c03-c202-4236-a7ba-e220786f21e1', 'Cho thuê phòng trọ cao cấp tại 64 Trương Văn Bang - Bình Trưng Tây', '5', 'DOC6', 'Địa chỉ: 64 Đường Trương Văn Bang, Phường Bình Trưng Tây, Quận 2, Hồ Chí Minh', '5263f7c1-4b90-4962-ab4f-fe84fa1b11eb', 'CTPT', '[\"Cho thuê phòng đẹp, giá rẻ, an ninh tốt tại Bình Trưng Tây, Quận 2\",\"Diện tích: 16-30m2.&nbsp;\",\"Phòng mới xây, cao cấp như khách sạn, đầy đủ nội thất (giường, tủ), vệ sinh khép kín, có máy lạnh, nước nóng năng lượng mặt trời, nhà để xe. Khu an ninh, yê', 'ff042684-5528-4590-942c-5f1396d0bdc2', '3ac81dbf-0f56-4238-8cf7-ffacd9343d35', '9fd41401-00c8-4593-a4f6-19f140873041', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('1c5f0945-bdfa-4f06-87fe-ef2c8c4f2bca', 'TÌM NỮ Ở GHÉP CHUNG CƯ SKY9 QUẬN 9 ( TP.THỦ ĐỨC )', '0', 'ULH7', 'Địa chỉ: 61-63 Đường số 1, Phường Phú Hữu, Quận 9, Hồ Chí Minh', '4ed1fbcb-19b8-4f96-b232-9b0c2c461f56', 'CTCH', '[\"Tìm nữ ở ghép, căn hộ chung cư Sky 9, Q9, TP. Thủ Đức (góc Liên phường và Võ Chí Công).\",\"Diện tích căn hộ 74m².\",\"------------------------------\",\"Do nhu cầu sử dụng không hết nên mình muốn share lại phòng WC chung.\",\"Giá 2tr5/tháng/ng, phòng rộng ghép', '15b760ee-396f-4063-bf7b-6e4f38a734c0', '3b81448e-51b6-4bad-8c15-6e2572477080', '9a2b8a3c-f4b6-4017-85d1-f83efdaad3a6', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('1c713967-55ae-4cda-ba79-950b68ec7864', 'Phòng Studio Cao Cấp – Ban Công Riêng – Gần ĐH Văn Lang, IUH, Học Viện Cán Bộ', '2', 'HEJ5', 'Địa chỉ: Đường Chu Văn An, Phường 12, Quận Bình Thạnh, Hồ Chí Minh', 'e4126fda-652a-41f0-9f8b-7f550fa71567', 'CTCH', '[\"Phòng rộng thoáng, không gian sống hiện đại và sang trọng, thích hợp cho gia đình từ 2-4 người, tạo cảm giác ấm cúng và thoải mái.\",\"Vị trí đắc địa: Chỉ vài phút đến ĐH Văn Lang, IUH, Học viện Cán Bộ – cực kỳ thuận tiện cho sinh viên và người đi làm.\",\"', '4100242c-73ca-49c2-8a32-ce4bcc30a451', 'e9b5684d-29db-4b81-98c4-f5ab6ec19ce4', 'f2cf6182-8630-483c-93fd-0414f2cb6de9', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('1dec3329-3265-40c8-b916-fcb277fe2cd7', 'CHÍNH CHỦ CHO THUÊ TRỌ GẦN NGÃ 4 HÀNG XANH, HUTECH, HỒNG BÀNG, UEF, BÊN XE MIỀN ĐÔNG', '4', 'JFM0', 'Địa chỉ: 82/12 Phố Nguyễn Xí, Phường 26, Quận Bình Thạnh, Hồ Chí Minh', 'c8df4c2c-c21a-41de-8de6-fd150f3a7766', 'CTPT', '[\"- Trọ chính chủ, nằm ngay Ngã 4 Hàng Xanh, bến xe Miền Đông, các trường ĐH: Hutech, Hồng Bàng, UEF thuận tiện di chuyển quận 2 và các quận trung tâm Q1, Q3.\",\"- Không chung chủ, giờ giấc tự do\",\"- Máy lọc nước uống MIỄN PHÍ, máy giặt siêu tiết kiệm, sân', 'cf1e8762-e3f7-4785-9cf3-33f059efcd75', '95b138b0-38b1-48af-9bad-9da1192b7e2b', '7723237d-e1a5-4f52-8b37-b73ec5422d44', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('20142b95-30b1-4c6d-b39e-61e9d7c146da', 'Cho thuê nhà nguyên căn tại 17 lầu 3 đào tấn', '0', 'MQO2', 'Địa chỉ: 17 Đường Đào Tấn, Phường 5, Quận 5, Hồ Chí Minh', '74aa0a4d-3536-4302-8dc2-1348699b3929', 'NCT', '[\"có một căn trống cần cho thuê ngay chợ hoà bình quận 5 ngay trung tâm\",\"1 phòng ngủ có gác bên trên 1 phòng khách\",\"Cho học sinh, sinh viên, hoặc gia đình thuê nhà nguyên căn đường đào tấn , xuống lầu là chợ tiện đi lại gần trường học , siêu thị .... Ti', 'b082f582-125b-4f68-b8f9-18977df5516e', '40d1ac9a-2fac-4d31-906c-10f0e647eb9b', '04459d97-6e48-418e-a2cf-5a8cf5cef8fb', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('21193457-c81f-421c-be95-091be6bb5c7f', 'KHÁCH SẠN CĂN HỘ VNAHOMES APARTHOTEL SANG TRỌNG, TIỆN NGHI PHÙ HỢP KHÁCH CÔNG TÁC, DU LỊCH 19009202', '0', 'ZWW0', 'Địa chỉ: VNAHOMES APARTHOTEL đường Võng Thị, Phường Bưởi, Quận Tây Hồ, Hà Nội', '9e3ac743-aea0-4712-8a83-8c2746c7abea', 'CTCH', '[\"- Với sứ mệnh mang lại trải nghiệm lưu trú cao cấp, hoàn hảo phục vụ nhu cầu công tác, nghỉ ngơi, du lịch đến khách hàng trong và ngoài nước: Thương hiệu VNAHOMES APARTHOTEL ra đời.\",\"- Tọa lạc tại địa chỉ: Số 30 Phố Võng Thị, Phường Bưởi, Quận Tây Hồ, ', 'a742972b-1074-4564-9a40-1777802df93a', '7356e536-ceff-4e26-b3a8-3bd28fa7ed0a', 'f1a54c68-a9fa-48ea-979e-8bfc02643469', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('21a09165-172d-4219-8599-455f990d4231', 'Cho thuê phòng trọ đầy đủ nội thất, đường 3/2, khu Kỳ Hòa, Quận 10', '4', 'OEF6', 'Địa chỉ: 181/36 Đường số 3/2, Phường 11, Quận 10, Hồ Chí Minh', 'f9092e71-5508-42d0-9768-888c51007043', 'CTPT', '[\"Phòng trọ nằm tọa lạc trong hẻm chính yên tĩnh, an ninh tại khu trung tâm quận 10\",\"Phòng rộng 20m2, có bãi đậu xe, giờ giấc tự do\",\"Gần các trường đại học, bệnh viện, phòng gym lớn, hồ Kỳ Hòa, Hà Đô Centrosa, Vạn Hạnh Mall\",\"Phòng trọ rộng rãi, đầy đủ ', '2600faf8-3b8c-4982-b123-b3a50e34f297', '02e8cff5-2c50-4dc6-a76f-cbc714f8b369', 'de16684d-bd6d-4b97-930d-e41cc4466a31', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('246cc981-bbb8-4398-804e-c49200f77e98', 'Mặt bằng đẹp cho thuê đường Tân Sơn Nhì,Q.Tân Phú – (ở lại được, KD tự do hoặc mở Văn Phòng)', '0', 'LAT6', 'Địa chỉ: 26/42 Tân Sơn Nhì, Phường Tân Sơn Nhì, Quận Tân Phú, Hồ Chí Minh', 'eefa4356-682c-439b-a1f4-f1695bf56268', 'CTMB', '[\"+ Mặt bằng cho thuê đường xe hơi Tân Sơn Nhì, Quận Tân Phú (Rất đông người qua lại – tiện kinh doanh online hay mọi ngành nghề hoặc mở văn phòng)\",\"+ Diện tích: 3 x 10m, có phòng riêng ở lại bên trong, mặt bằng kinh doanh nhỏ bên ngoài, WC riêng.\",\"+ Gầ', '56c1261a-a015-4122-9355-922f11da99c0', '99343b7b-6920-4935-8a68-b0613a9ce431', '66f52ce6-6c99-4a2c-936c-96b686942754', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('28ca6480-c437-4ab0-a7c7-b98bfbd8d14b', 'Cho thuê phòng trọ: 58/6 Thành Thái, P.12, Quận 10 ( ngay ngã tư 3/2 - Thành Thái)', '4', 'AOR3', 'Địa chỉ: 58/6 Đường Thành Thái, Phường 12, Quận 10, Hồ Chí Minh', '5a6bd023-485c-4cd6-821d-484af6a9c845', 'CTPT', '[\"- Cho thuê phòng trọ mới xây, kế Nhà Thờ Đồng Tiến ( Đường Thành Thái) &nbsp; khu vực rất yên tĩnh, an ninh, dân trí cao, không gian sống lý tưởng để làm việc, học hành. Cách Trường Đại Học Kinh tế 1,5km, cách Nga 4 Nguyễn Tri Phương- Ba Thang Hai 100m,', 'a5a5ab67-2e29-41c2-8536-7b4024108d29', '8c3c1348-b6cd-42c5-aef1-79764af7f260', '5d7209b3-71f6-411e-b02a-6eba3440eda1', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('2d1f87a6-bcf7-4dd6-a17e-9a0e60845bd0', 'KHAI TRƯƠNG MỚI 100% TRỐNG ĐA DẠNG PHÒNG ( 1PN, 2PN, GÁC CAO, VIEW BAN CÔNG) NGAY ETOWN2 CỘNG HOÀ', '0', 'KIM3', 'Địa chỉ: Đường Nhất Chi Mai, Phường 13, Quận Tân Bình, Hồ Chí Minh', 'f618893c-3a80-4859-b9da-da074699c201', 'CTCH', '[\"- Nằm ngay trục đường lớn Cộng Hoà, qua Etown2 Cộng Hoà 200m.\",\"️ Đ/C : Nhất Chi Mai, Tân Bình ( nằm trên trục đường Cộng Hoà).\",\"Tiện Ích vô vàn:\",\"- Nhà trang bị Full Nội thất đa dạng, Có thang máy, bảo vệ 24/24, PCCC, camera an ninh, giờ giấc tự do, ', '0b4f72a1-538a-4b6d-bfb6-041851f9a660', '46f6f5f8-7754-4bfe-8841-34dcbe91ac0a', 'b8865dc5-5439-48a2-9b23-462862edc1c7', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('328bacd8-9ad8-4aae-8d3c-846ecd209991', 'Cho Thuê Căn Hộ Dịch Vụ Mới Xây Full Nội Thất, Ngay Ngã Tư Bốn Xã', '5', 'CLM8', 'Địa chỉ: 427 Đường Lê Văn Quới, Phường Bình Trị Đông A, Quận Bình Tân, Hồ Chí Minh', 'd216ef24-ece0-402b-8d4e-15ee2c99bd44', 'CTCH', '[\"Căn hộ dịch vụ Studio Máy Lạnh - ngay Lê Văn Quới - Ngã Tư Bốn Xã\",\"-&gt; Nội thất từ Máy lạnh, tủ quần áo, tủ kệ bếp, giường\",\"• Thang máy, máy giặt chung, sân phơi\",\"• Ra vào vân tay, giờ giấc tự do, có hầm xe rộng\",\" Lê Văn Quới - Bình Tân ( gần chợ,', 'ee0d6fc7-3037-4d8b-a126-2510882969c2', 'e75f5bf4-c31e-416e-8d28-1e01086b8507', '8014b174-af86-4649-8f16-b8493b8d48ff', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('39490407-7db7-4c86-973f-3b76c912befd', 'PHÒNG TRỌ MỚI TINH NGAY LÊ VĂN VIỆT - TĂNG NHƠN PHÚ A - FULL NỘI THẤT', '0', 'TGK5', 'Địa chỉ: 10 Đường số 494, Phường Tăng Nhơn Phú A, Quận 9, Hồ Chí Minh', 'a43a5f2c-a9a2-4f8b-b833-70ab74860f11', 'CTCH', '[\"ƯU ĐÃI NÓNG CHO THUÊ PHÒNG - NỘI THẤT ĐẦY ĐỦ &amp; DỊCH VỤ TIỆN NGHI!\",\"Bạn đang tìm kiếm một căn hộ thoải mái, đầy đủ nội thất cùng dịch vụ chất lượng cao? Hãy tham khảo ngay ưu đãi của chúng tôi!\",\"Tiện Ích Tòa Nhà:\",\"Camera An Ninh 24/7 – Đảm bảo an ', '275d1921-d692-41fd-9ea6-29da3dc089c8', 'e24ead07-2a2f-4740-bf45-acdfeb002cbb', 'fc9b9703-61b1-4cd6-8827-290b86e33b20', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('3d22c351-72ce-4cef-b6e1-402f5c39cec4', 'Cho Thuê Nhà Nguyên Căn / Văn Phòng - 4 Phòng Ngủ - 4wc Full Nội Thất', '0', 'JNY8', 'Địa chỉ: Đường Quang Trung, Quận Gò Vấp, Hồ Chí Minh', 'a7618b28-28cf-4c0e-8c22-f4ca3202a85c', 'NCT', '[\"Khai trương nhà mới, mình làm spa nên còn dư lại 2 lầu phía trên có sẵn 4pn - 4wc banconl cửa sổ trời thoáng mát\",\"rất phù hợp làm văn phòng hoặc làm nhà ở gia đình\",\"Nếu thuê nguyên căn giá thương lượng - Có cho thuê Phòng giá 3tr-4tr banconl nội thất\"', 'a513f0ee-419d-44b6-b9f1-2a2bcf40af5c', '17d8cfa1-b598-4721-a7fb-b0c25381d22d', '02cc5a56-e66f-4afe-a5f1-5c5ce5c7de38', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('3e0dbdab-d317-479a-afa4-63868e603165', 'CHÍNH CHỦ TRỐNG PHÒNG TRỌ ĐẸP, XỊN GẦN SÂN BAY, BẠCH ĐẰNG, CỘNG HÒA', '4', 'LLP7', 'Địa chỉ: 54/37 Đường Bạch Đằng, Phường 2, Quận Tân Bình, Hồ Chí Minh', '987ce5f8-d5ec-4975-8eee-43b9e27ad97b', 'CTPT', '[\"- Cách sân bay chỉ 5 phút\",\"- Gần trường Học viện Hàng Không, ĐH Văn Hiến, CĐ Kinh tế Đối Ngoại,...\",\"- Cổng vân tay\",\"- Máy lọc nước MIỄN PHÍ\",\"- Máy giặt siêu tiết kiệm chỉ 2k/kg\",\"- Thang máy nội khu\",\"- Sân thượng mát mẻ\",\"Địa chỉ: 54/37 Bạch Đằng, ', '779233f0-7f03-4451-b488-dae9306ca9a7', '0fa0f6c4-5863-443b-afac-684e387879c2', '0804b49b-bb33-43f8-aa4c-fe4c6bdf065d', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('3e6975e6-66c7-4ae8-8548-6061a6c30dff', 'Trống sẵn check in ngay với căn hộ 1PN cod bancon cửa sổ ngay trung tâm Q7 chỉ từ 6TR', '0', 'TFV1', 'Địa chỉ: Đường số 1, Phường Tân Thuận Đông, Quận 7, Hồ Chí Minh', '7b59c6ed-c1e3-4b8d-835a-aa8a7c46a445', 'CTCH', '[\"Gần Crescentmall, Lotte, Him Lam, Khu Chế Xuất Q7, cầu kênh tẻ Q4, trung tâm mua sắm, ăn uống,…\",\" Cách 5p qua các Đại Học Tôn Đức Thắng , Tài Chính - Marketing , RMIT ,…\",\" Full nội thất , đầy đủ tiện nghi\",\" Ra vào toà bằng vân tay\",\" Có bãi xe rộng t', '90ede7b5-a630-45dc-b4d3-cf275fc3bcac', '2bc2ba37-1c3e-4205-92a4-06a5d2242069', 'e75d802d-e96c-4902-94f5-95127ff19316', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4223b2e5-9af5-4b7b-bac4-30cd6dbdeb43', 'Cho thuê nhà hẻm 68/73A Trần Quang Khải Q1, trệt 2 lầu, cách mặt tiền 50m giá 5.5tr', '0', 'YYE9', 'Địa chỉ: 68 Đường Trần Quang Khải, Phường Tân Định, Quận 1, Hồ Chí Minh', 'b3dd9500-566b-40be-8f7a-1ec70e8f0073', 'NCT', '[\"Cho thuê nhà nguyên căn trệt + 2 lầu Q1, hẻm an ninh yên tĩnh , cách hẻm xe hơi 15m, cách măt tiền 50m, gần khu phố sinh hoạt phường tân định nên rất an ninh , cách chợ tân định 500m, cách rạp chiếu phim 300m, cách bờ kè hoàng sa 200m, cách sở thú thảo ', 'f3191198-fc3f-4e10-929e-3b6939835b57', 'd8508aad-7e6d-4042-9b96-e90e29aaf7a1', '88c71c41-03ac-4398-bf60-ff7f12ce917e', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('48e4f517-c4a1-401a-a22a-9868009f507a', 'Cho Thuê Căn Hộ Dịch Vụ Mới Xây 100% ,Diện Tích 30m Ngay Ngã Tư Bốn Xã', '5', 'LYW6', 'Địa chỉ: 427 Lê Văn Quới, Phường Bình Trị Đông A, Quận Bình Tân, Hồ Chí Minh', '104fad6f-f483-4e57-88af-e43ba3ad5f24', 'CTCH', '[\"Căn hộ dịch vụ mới xây mới 100% - ngay mã lò - Lê Văn Quới - Ngã Tư Bốn Xã\",\"Nội thất cơ bản : kệ bếp\",\"- thêm máy lạnh 300k\",\"- thêm giường 200k\",\"- thêm tủ áo 200k\",\"• Thang máy, máy giặt chung, sân phơi\",\"• Ra vào vân tay, giờ giấc tự do, có hầm xe r', '7b99a67c-32ad-476c-8f19-9cdaff006fca', '96c00c10-3a5c-4e7b-87f2-60e89206e0f4', 'fcb68236-0801-4e8c-9f1f-656e3923aa15', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4bdf905b-07a4-403f-88b3-986187bc56e6', 'Phòng trọ dạng Studio FULL NT cao cấp ngay ngã tư Hàng Xanh, Bình Thạnh', '2', 'HWD9', 'Địa chỉ: Đường Bạch Đằng, Phường 15, Quận Bình Thạnh, Hồ Chí Minh', '5774511e-78e9-4a0c-b113-ee7f41237982', 'CTCH', '[\"- Phòng trọ cao cấp dạng Studio, Duplex, căn hộ mini trang bị Full : Cửa khoá từ, Máy lạnh inverter, Tủ bếp trên dưới, Tủ lạnh, Máy hút mùi, Giường, Tủ, Chăn, Ga, Gối Nệm, Bàn ghế… . Giá thuê từ 6,5 triệu.\",\"- Các tiện ích đi kèm : Thang máy Mitsubishi,', 'a4425063-917a-4604-a256-8f420281817f', '5edbbcee-1c21-4c36-84c7-02c792fe33f6', '43da127d-7b37-4ca4-9a17-801d22a745fa', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('4c676654-5f6b-46c4-a9ae-f55a549773fe', 'Cho thuê nhà ở, mặt bằng kinh doanh tại Thanh Khê, Đà Nẵng', '0', 'OYH3', 'Địa chỉ: Đối diện 165 Phạm Ngọc Mậu, Phường An Khê, Quận Thanh Khê, Đà Nẵng', 'f49dc818-8a82-474c-b0c7-9fd2a7a9cdc0', 'CTMB', '[\"Mặt bằng tầng 1 nên mùa hè mát mẻ, mùa đông ấm áp. Không sợ bão gió, ngập lụt.\",\"Nhà mặt tiền, diện tích 45 m2. Đường 5m2 vỉa hè 3m5 rộng rãi thoáng mát, có mái che.\",\"Khu vực có an ninh tốt, chủ nhà tốt bụng, hàng xóm thân thiện. Dùng để ở hay kinh doa', '043e20ee-70ba-4d94-89c7-cd5ff8d5b0c4', '2f57c612-badd-49b6-8126-4fbf6bbab0e4', '548675cc-ef2d-4111-b1cc-c47257b0c000', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('4e06014b-16bb-40c3-874d-2971ac0d2e46', 'Mặt Bằng Hẻm Lớn Cư Xá Lữ Gia gồm 1Trệt 1 Lửng', '0', 'MRF2', 'Địa chỉ: 257/12 Lý Thường Kiệt, Phường 15, Quận 11, Hồ Chí Minh', 'a82ac87a-a7e8-490e-a127-b046f4b2c113', 'CTMB', '[\"Mặt Bằng Hẻm Lớn Cư Xá Lữ Gia gồm 1Trệt 1 Lửng \",\"Mọi người đọc kỹ thông tin bên dưới:\",\"- Cho thuê mặt bằng tầng trệt trong nhà nguyên căn, trên lầu có 3 tầng cho thuê trọ, chú ý chỉ cho thuê mặt bằng không cho thuê nguyên căn.\",\"- Sử dụng lối đi chung', 'ee9a1a22-d780-4c3a-b12c-ab19a271e562', '468c54c9-9fb6-4d9e-a3e9-f7d6ef00625f', '9639eabf-92e8-4fb8-963a-9c5b85fc6abf', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('54a9e338-6195-441d-90bb-4929860e6f4b', 'Cho Thuê Văn Phòng + Mặt bằng + Diện Tích 75m2 ( Có phòng họp , phòng làm việc và phòng chờ .... )', '4', 'VEL4', 'Địa chỉ: 6/61 Phạm Tuấn Tài, Phường Yên Hòa, Quận Cầu Giấy, Hà Nội', 'f82da202-3212-498b-a206-fb141f642e78', 'CTMB', '[\"CHÍNH CHỦ CHO THUÊ VĂN PHÒNG PHỐ DỊCH VỌNG HẬU, CẦU GIẤY \",\"Tọa lạc tại vị trí chiến lược - lựa chọn hoàn hảo cho doanh nghiệp.\",\"- Đường rộng ô tô tránh nhau thuận tiện cho việc di chuyển, giao dịch mà không sợ tắc đường.\",\"- Phòng cháy chữa cháy đáp ứ', '173f8135-d5ee-4444-bf19-9d5c2ad3fe03', 'b48b3167-6146-4550-828b-da4940b2fa40', '5b6d9174-2a24-405f-b9c9-3ea7dcc3725d', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('55a38fe0-d10c-4edf-9659-6bbec2e93f2f', 'CHO THUÊ CỬA HÀNG GIÁ RẺ, PHÒNG TRỌ TẠI TRÂU QUỲ - GẦN HỌC VIỆN NÔNG NGHIỆP - TIỆN NGHI ĐẦY ĐỦ', '2', 'YYB8', 'Địa chỉ: 11 Đường Trâu Quỳ, Thị trấn Trâu Quỳ, Huyện Gia Lâm, Hà Nội', 'fcf806e9-d420-452a-97c2-b639365c0bbf', 'CTMB', '[\"Cho thuê cửa hàng nhà 11 Trâu Quỳ, huyện Gia Lâm gần cổng Học viện Nông Nghiệp và có rất nhiều sinh viên xung quanh.\",\"Diện tích từ 35 m2, gần chợ, gần trường học, gần bệnh viện Đa Khoa Gia Lâm.\",\"Phòng khép kín gồm có: Điều hòa, gác xép, giường, quạt t', 'ff80675d-671b-4cf7-a559-60ec6d0122e3', '22140363-03b9-4ad5-b94b-d65d15980b6d', '832fb04a-9499-4777-8a45-fdcc1e80a464', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5712998d-04ae-4574-9d5c-891cd52038c6', 'Cho thuê phòng trọ mới sửa 7/2023 Đường Lương Thế Vinh, Phường Tân Thới Hòa, Quận Tân Phú (gần Đầm Sen)', '5', 'IKE0', 'Địa chỉ: 48/13 Đường Lương Thế Vinh, Phường Tân Thới Hòa, Quận Tân Phú, Hồ Chí Minh', 'b3284916-de54-42ad-a44f-ca7304640b80', 'CTPT', '[\"Giá Phòng từ 1800k. Đang còn phòng 1800K đến xem đảm bảo ưng ý, cam kết hình đúng với thực tế.\",\"Phòng mới sửa chữa 7/2023, địa chỉ 48/13 Lương Thế Vinh Phường Tân Thế Hòa, Q.Tân Phú, nhà hẽm xe hơi lộ giới 5m, lắp đặt hệ thống phòng cháy chữa cháy 9/20', '06c570f7-8eee-4cb0-b3ea-3feafcb20f16', '0f530ebf-a297-4cad-a5ae-1556440c6d2a', '28d1e315-fc9b-48fa-8553-1648c7eda99f', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('5a0a21a6-28a6-47f0-86c3-e87436fe6015', 'Khai Trương Căn Hộ Mới Xây có Gác Ngay Tại Hoàng Hoa Thám - Cộng Hoà', '0', 'EEJ0', 'Địa chỉ: Đường Cộng Hòa, Phường 13, Quận Tân Bình, Hồ Chí Minh', '912069f9-2dc7-4f63-976c-7036b78f0ede', 'CTCH', '[\"¥ Căn hộ Xây mới Đầy đủ tiện nghi Đảm bảo An ninh, sạch sẽ ngay tại Hoàng Hoa Thám - Cộng Hoà - Tân Bình\",\"• Từ 3tr9 - 4tr5\",\"• Vị trí: Sát ngay Cộng Hoà, gần Vincom Plaza Cộng Hoà, CĐ Y Dược Phạm Ngọc Thạch, Gần Sân bay, Trường Chinh\",\"• Nội thất FULL ', '0a3ce0e3-d29d-4f7e-bd1d-051edd160d04', '5c7a91a4-1eeb-4708-bf79-cc152f0cc822', '5329e4fc-c895-4d89-89a6-43c371259a06', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5ab8ac57-a5ef-4b93-8e17-07ec6da1976a', 'Cho thuê nhà nguyên căn tiện kinh doanh ngay mặt tiền đường 3/2, phường 14, Quận 10', '2', 'DGT0', 'Địa chỉ: Đường số 3/2, Phường 14, Quận 10, Hồ Chí Minh', 'fcf8c3f7-5e86-4c95-952e-1d5582a9bfc6', 'CTMB', '[\"Chính chủ cần cho thuê nhà nguyên căn mặt tiền đường 3/2, Q10. Thông tin chi tiết nhà cụ thể như hình:\",\"- Diện tích đất : 4x16 (64m2). Tổng diện tích sử dụng: 192m2.\",\"- Vị trí: Mặt tiền đường 3/2, Quận 10 (cách ngã tư Ngô Quyền chỉ 10m), vị trí đắc đị', 'a46ac66c-2b96-46be-9085-2409da14eb86', 'b432950e-0cc4-4dd7-8ce0-3c7043513497', '43b17665-fb5e-4814-975a-17b400852764', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('5c95d049-4975-4fcf-b1ac-c08352dcd5b3', 'Cho thuê phòng CÓ BAN CÔNG trong chung cư Tara Residence', '0', 'OXD3', 'Địa chỉ: Phố Tạ Quang Bửu, Phường 6, Quận 8, Hồ Chí Minh', 'a97b4a99-d3ad-4be1-b5c9-f732a7a0c0b5', 'CTCH', '[\"Chính chủ cho thuê phòng FULL BAN CÔNG trong chung cư TARA PRESIDENT đối diện Bến Xe Quận 8.\",\"Phòng cực mát mẻ, view đẹp...\",\"Có sẵn tủ quần áo, rèm\",\"Khu vực chung có tủ lạnh, máy giặt...\",\"Giá phòng 4,5tr; điện, nước, phí chung cư 350k/người\",\"Chi ti', '6e9264eb-90c7-44fa-811d-bf6970f6eec4', '7ec7e15a-1105-4086-ad99-644db473a9ce', '2a579fc1-f58b-4f26-afbe-6f0baa5c3e34', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('5f3fdb17-b693-4998-9482-625d73002397', 'KTX Sinh Viên HUTECH,sinh viên Đại Học Giao Thông Vận Tải.', '5', 'QEY0', 'Địa chỉ: 69/38/11 Đường Nguyễn Gia Trí, Phường 25, Quận Bình Thạnh, Hồ Chí Minh', 'dd5e244f-c0c4-4f6d-9a2f-4df8039cc6fd', 'CTPT', '[\"VỊ TRÍ:\",\"+ Cách đại học Hutech 200m.\",\"+ Cách đại học Ngoại Thương 300m.\",\"+ Cách Đại học Giao Thông Vận Tải 350m.\",\"+ Cách đại học Hồng Bàng, Đại Học UEF 500m.\",\"Giá Thuê: 1.800.000 (trọn gói không phát sinh).\",\"Mỗi Phòng bao gồm:\",\"1, Phòng máy lạnh ', '9589f1d3-dfdf-4de6-bd69-82862795e727', '7dd75dd8-a57f-4912-a5dc-099cd3b7e311', '404aff4b-0e74-464f-9570-4e139c4796db', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('63c4de80-f332-4650-9442-9d9d92f8b5c1', 'Chính chủ cho thuê phòng đầy đủ tiện nghi như hình chụp trong nhà mặt tiền gần sở thú, đài truyền hình, bờ kè giá 4 tr', '4', 'ZOK2', 'Địa chỉ: 1 Nguyễn Đình Chiểu, Phường Đa Kao, Quận 1, Hồ Chí Minh', 'a6a40702-b602-44e8-aa45-ac21d14628ab', 'CTPT', '[\"Mình chính chủ cần cho thuê phòng 20m2 giá 4tr tiện nghi đầy đủ như hình tại nhà mặt tiền 1A3 Nguyễn Đình Chiểu, P Dakao, quận 1.. Gửi mọi người tham khảo.\",\"Có nội thất như hình giường, nệm, tủ áo, tủ lạnh, máy lạnh, kệ bếp, wc riêng trong phòng, chổ đ', '4930b295-0c07-4f5b-853b-32e981e912fb', '52dfe8d1-b8f7-4d65-abb9-53591b62ab31', '4fd6ea05-e9d3-4ce6-a28c-0b29fa68433d', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('678a5d8b-2ffd-435f-b8f7-90eba8f6589b', 'Chung cư Ruby Garden Nguyễn Sỹ Sách, P15,TB: 130m2 3PN 2WC 11tr5', '0', 'JHA4', 'Địa chỉ: Nguyễn Sỹ Sách, Phường 15, Quận Tân Bình, Hồ Chí Minh', 'ff21697c-7ff7-4631-a871-d85fa82ebba9', 'CTCH', '[\"Chung cư Ruby Garden Nguyễn Sỹ Sách, P15,TB: 130m2 3PN 2WC 11tr5\",\"Vị trí chung cư Ruby Garden 02 Nguyễn Sỹ Sách, P15, Tân Bình\",\"Kết cấu có 3p ngủ, 2wc, bếp thiết kế hiện đại, phòng khách rộng dễ sinh hoạt\",\"Rộng 120m2 căn góc, có ban công thông thoáng', 'fca001e1-84e2-4393-8efe-5c00f8e68f61', '83ab4a5e-f21c-4cc9-993e-07c36359274c', '79bc73be-d8b3-4c0a-af01-47a9a90ef1ed', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('6d59daa6-f729-47f5-bb8c-9add7363d9aa', 'Cho thuê rẻ nhà vị trí đẹp 4 x 17.5m Điện Biên Phủ Quận 3 thành phố Hồ Chí Minh.', '0', 'SPS4', 'Địa chỉ: Đường Điện Biên Phủ, Phường 6, Quận 3, Hồ Chí Minh', '5eb11a47-3861-48e5-aa36-7f90c9e8a9d0', 'CTMB', '[\"- Cần cho thuê rẻ nhà phố xinh mặt tiền Điện Biên Phủ phường 6 Quận 3 trung tâm thành phố Hồ Chí Minh, khu cao ốc văn phòng, hoạt động nhiều lĩnh vực.\",\"- Giao thông thuận tiện, mất 3 phút cho mọi điểm đến: ăn uống – học hành – giải trí, gần công viên, ', '3b2e0ab0-f86e-416d-ad9c-05f5853bc0f6', 'bc353ffc-2b9a-48e0-9cce-8aada6a21a29', '3af461c9-9b3b-498a-ab1b-1c622a5ebe78', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('6e1d643a-a096-4b85-a176-554927a33118', 'QUÁ RẺ. CHO THUÊ NHÀ MĂT TIỀN, DT 70M2 X 2TẦNG. ĐƯỜNG 7,5 M - NGAY TÔ HỮU - GIÁ 12 TRIÊU.', '0', 'SVA2', 'Địa chỉ: Đường Tố Hữu, Phường Hòa Cường Nam, Quận Hải Châu, Đà Nẵng', '0002b1f0-9062-44f1-9099-e7a759a08cb9', 'NCT', '[\"GÓC CHO THUÊ.\",\"Cho thuê nhà măt tiền đường ngay Tố Hữu&nbsp;\",\"70M2 Đ x 2, 5 tâng\",\"đường qh trải nhưạ 7,5 m\",\"vị trí kinh doanh\",\"giá 12 triêu.\",\"-----------------------------------------------------------------------\",\"MÔ TẢ.\",\"Mặt tiền đường qh 7,5m', 'd5efa77b-9250-4110-9144-01de3c68ed20', 'e8ae2b52-6421-48e4-96fd-fd2745b3d544', '2887247e-2a6f-4c4a-8948-b750f6ac4391', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('6e844e48-0e2e-4513-8290-6a748a02de30', 'TRỌ CHÍNH CHỦ CÁCH ĐẠI HỌC VĂN HIẾN 10 PHÚT, GIỜ GIẤC TỰ DO', '4', 'LBZ8', 'Địa chỉ: 449/17 Đường Trường Chinh, Phường 14, Quận Tân Bình, Hồ Chí Minh', '10d8f757-2a3f-4ed6-9099-a7334cff11dd', 'CTPT', '[\"- Trọ không chung chủ, giờ giấc tự do\",\"- Gần sân bay Tân Sơn Nhất, các trục đường lớn: Trường Chinh, Cộng Hòa, Hoàng Hoa Thám,… thuận tiện di chuyển vào trung tâm\",\"- Gần ĐH Công Thương, ĐH Văn Hiến các bạn sinh viên đi học gần trường hơn\",\"*Tiện ích:\"', '19fde379-7bcf-416f-8946-cb8b8f899c3b', '410329f7-90e2-4a14-95de-cffadd7cc4a0', '2df56ab2-8428-4907-981c-fbc0a5537a16', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('6e994a2c-f09b-4881-9c0e-0fb867a69aa4', 'Cho thuê MBKD quận bình thạnh chuyên làm caffee', '0', 'NXU9', 'Địa chỉ: Đường Bình Quới, Phường 28, Quận Bình Thạnh, Hồ Chí Minh', '7625bf44-c281-4d75-844c-0517c73a5934', 'CTMB', '[\"MBKD Bình Quới, Phường 28, Quận Bình Thạnh\",\"25X40m trệt lối đi riêng 5WC\",\"Kinh doanh tự do\",\"Liên hệ: 0968261479 ( Vĩnh An )\"]', '13c6099d-3a5f-41ee-9cd2-c1c018b227ee', 'f7bd7a31-8f2e-4d78-9e74-d14704eaa56b', '3ab800ea-d325-4487-9d37-f623df71475d', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('75123ad9-f9ff-4600-a77c-bccca9994008', 'Cho thuê phòng trọ có ban công, máy lạnh, thang máy giá 3.2tr tại P15, Q Tân Bình. Liên hệ: 0918180057', '5', 'KKL7', 'Địa chỉ: 346 Đường Phạm Văn Bạch, Phường 15, Quận Tân Bình, Hồ Chí Minh', 'a646416c-b021-4eef-946a-46e7ebce65f0', 'CTPT', '[\"- Phòng trọ đẹp. Nằm trên trục đường chính số 346 PHẠM VĂN BẠCH, Phía sau Sân Bay Tân Sơn Nhất, gần eTown Công hòa , thuận tiện đi tất cả các Quận ... Gần Chợ Phạm Văn Bạch...\",\"- Phòng có CỬA SỔ, BAN CÔNG, CÓ GIƯỜNG NGỦ, TỦ QUẦN ÁO, MÁY LẠNH, đặc biệt ', 'e7f00764-e68a-4200-b97e-1e9ef840813b', 'ddbeba3d-6ede-4e00-9b09-f230812df4f6', 'd174af9d-fd76-4f0a-8de8-039643977f85', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('77703ecf-13d6-4f56-84e2-081603a357a3', 'Chính chủ cho thuê căn hộ dịch vụ ngay trung tâm q1, sát bên Sở PCCC và Công an TP', '2', 'WGJ3', 'Địa chỉ: 258/107 Đường Trần Hưng Đạo, Phường Nguyễn Cư Trinh, Quận 1, Hồ Chí Minh', '474b28e0-3ecd-41e3-a791-0e055f688360', 'CTCH', '[\"An ninh, đầy đủ tiện ích chỉ cần xách vali tới ở. Dọn phòng 1 lần/ tuần, free máy giặt, wifi, chỗ đỗ xe.\",\"Phòng : 8.000.000\",\"Điện: 4k/ kí\",\"Nước: 100k/ người\",\"Ngoài ra không phát sinh gì thêm.\",\"Liên hệ trực tiếp qua FB cá nhân của mình hoặc qua số đ', 'cd1e1773-24d2-427e-8d7c-a9d333fb4f8a', 'dc05a86f-c7e0-4960-8944-39362481d801', 'fd9e7179-5341-406f-a29f-2ea18f96743f', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('7add8c11-8c6f-481a-9d78-8890b0caf3d8', 'Cho thuê nhà mặt tiền Lê Ngọc Hân, TP VT', '0', 'XSY5', 'Địa chỉ: 19 Lê Ngọc Hân, Phường 1, Thành Phố Vũng Tàu, Bà Rịa - Vũng Tàu', 'aaff4355-6f31-4687-a5b9-9725de29ef32', 'NCT', '[\"Cho thuê nhà mặt tiền Lê Ngọc Hân, TP VT\",\"Diện tích sử dụng: 180m2\",\"Bao gồm 1 trệt, 2 lầu, 4 phòng ngủ, có phòng vệ sinh riêng trong phòng ngủ.\",\"Sân thượng thoáng mát, nội thất và tiện nghi đầy đủ\",\"Giá thuê: 12tr\",\"LH:&nbsp;0355386726\"]', '14c73687-76c3-4580-b7b4-5a99ad5bec59', '4a50651c-9e4e-4ffe-a7d2-e74744c995d8', '81b791f5-6ce2-4e22-9157-0704c484a3f3', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('87eee022-c943-42e3-bf42-a4b53a579a68', 'Cho thuê nhà riêng 3 triệu VND tại Phường Mỹ Xá,Thành phố Nam Định. Tổng diện tích sân vườn 400m', '0', 'SZB5', 'Địa chỉ: Mỹ Xá, Thành Phố Nam Định, Nam Định', '0e8c8c33-3199-4754-8143-4982bcca8714', 'NCT', '[\"- Do gia đình không có nhu cầu sử dụng. Con cái đều sinh sống xa nhà nên gia đình lâu không ở tới muốn cho thuê lại căn nhà riêng trong ngõ tại Thành phố Nam định.\",\"+&gt; Thông tin cơ bản:\",\"+ Nhà mái bằng: 1 tầng\",\"+ Rộng ngõ: 2m\",\"+ Có 3 phòng chính:', 'b6d13186-bffd-4e22-bb94-f9e78ceba077', 'bbb8d28b-0495-42d2-a244-fdd567216931', '2904f974-f7d4-47be-8316-d84ba7b1de3b', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('8998c690-f26c-4474-a7f2-1edd3b664675', 'CHO THUÊ MẶT BẰNG - KINH DOANH - VỊ TRÍ ĐẮC ĐỊA : LH 093 250 1428', '0', 'PUU7', 'Địa chỉ: Đường Hoàng Quốc Việt, Phường Phú Thuận, Quận 7, Hồ Chí Minh', '1c461580-c20d-450c-b4eb-a1683d4fe1bb', 'CTMB', '[\"CHO THUÊ MẶT BẰNG - KINH DOANH - VỊ TRÍ ĐẮC ĐỊA\",\"* Đường Hoàng Quốc Việt, Phường Phú Thuận, Quận 7\",\"* Giá thuê : 20 triệu\",\"* Tiền cọc : 40 triệu\",\"* DT : 150 m2 ( 7,5m x 20 m )\",\"* Sân 40 m2\",\"* 2 sãnh lớn 110 m2\",\"* 2 toilet\",\"Mô tả chi tiết\",\"* Toà', 'e4c903d1-0328-4cd8-9d62-980d39aaeeb1', '2003b9fe-fad4-4899-bd21-45c3a368e422', '9777c1dd-49aa-4f6c-bb03-a9415d686ded', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('8c8a6639-5461-49b1-bae4-2d0d1d0e90b7', 'NHÀ TRỌ AN NINH-AN TOÀN- SẠCH SẼ - CHẤT NHƯ CAFE.', '4', 'RRO4', 'Địa chỉ: Đường số 8, Phường Hiệp Bình Phước, Quận Thủ Đức, Hồ Chí Minh', 'ca9fa37d-e4a9-4b8d-bbe8-d8c637acb9f0', 'CTPT', '[\"Nhà trọ An Ninh - An Toàn- Sạch Sẽ - Thoáng. \",\"Bạn chán cảnh nhà trọ ẨM THẤP vào mù mưa, NÓNG CHẢY MỠ vào mùa nắng. Không gian BÍT BÙNG .\",\"Bạn luôn cảm thấy ko AN TOÀN -LO LẮNG khi rời khỏi nhà ko biết ăn trộm có thể bẻ khóa bất cứ lúc nào.\",\"Bạn luôn', 'f58ac95d-b84c-42a3-aca7-a5f299888618', '8c0b7e41-b1b2-474b-82fe-d3725c1be950', 'cf645a3a-0ea0-48ac-978d-0705813307e9', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('8d01de60-967b-4e15-8c43-b58a03cf67da', 'Cho thuê phòng mới diện tích 35m2, giá 6tr/tháng full nội thất', '5', 'OLR2', 'Địa chỉ: Đường số 61, Phường Thạnh Mỹ Lợi, Quận 2, Hồ Chí Minh', '318f548a-52d9-403a-ac88-3d1b158d450b', 'CTPT', '[\"Mình cần cho thuê phòng mới diện tích 32m2, giá 6tr/tháng có sẵn nội thất cơ bản\",\"Địa chỉ: 17 Đường số 61, Phường Thạnh Mỹ Lợi, Quận 2, Hồ Chí Minh\",\"- Giá cho thuê: 6tr/tháng\",\"- Full nội thất: Giường, Tủ, máy lạnh, máy giặt, tủ lạnh, máy giặt, máy nc', 'd1d03ee5-95a8-4b8f-956f-3e973774a0c1', '73e714cf-7f76-470c-b025-ff086245eed6', 'd48b86e7-0dab-4452-b9cb-36414d7d58e4', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('8e9ef019-a58e-4f34-b836-b4d61ba68212', 'Cho thuê nhà chính chủ 5 tầng ngay đầu ngõ 142 đường Kim Giang – miễn trung gian', '0', 'JPK8', 'Địa chỉ: Ngõ 142 Đường Kim Giang, Phường Đại Kim, Quận Hoàng Mai, Hà Nội', '19679f3e-7568-40c4-a81a-5b79ad791d19', 'NCT', '[\"Cho thuê nhà 5 tầng chính chủ ngay đầu ngõ 142 đường Kim Giang phường Đại Kim (miễn trung gian). Ngõ rộng, gần chợ, gần trường học nhà cách đường Kim Giang 30m, điện nước dùng theo giá nhà nước. Các phòng ngủ, nhà tắm đều có lắp điều hòa, bình nóng lạnh', 'dc907434-d100-463d-bad9-c9f02b52636b', '3d207bf9-69b2-4b1a-907d-dec33fd2a39d', '3f3b3db0-8f53-4866-8213-b8a6ccc9b331', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('95705e49-152f-404f-b656-f9044547a995', 'SIÊU RẺ. CHO THUÊ NHÀ NGUYÊN CĂN VỊ TRÍ KINH DOANH, ĐƯỜNG BÙI TRANG CHƯỚC _ GIÁ 12, 5 TRIỆU.', '0', 'AIA8', 'Địa chỉ: 139 Đường Bùi Trang Chước, Phường Hòa Xuân, Quận Cẩm Lệ, Đà Nẵng', '6de773e5-d189-449f-8df2-96c425a6e3ae', 'NCT', '[\"GÓC CHO THUÊ.\",\"HÒA XUÂN, CẨM LỆ. MẶT TIỀN Đ10,5M, 100M2 ( NGANG 5 M ) x 2 TẦNG\",\"VỊ TRÍ KD\",\"2PN - GIÁ 12. 5 TRIỆU.\",\"______________________________________________\",\"MÔ TẢ.\",\"Nhà mặt tiền 2 tầng.\",\"Đường 10,5m. Vỉa hè 5m.\",\"Dtđ: 1️⃣0️⃣0️⃣ m2 ( 5 × 20 ', '76d8f622-0599-48eb-a258-1586341feb5e', 'a099d5af-1bf0-4fca-97c6-93dd37916068', '32849e0b-52b6-4a9f-a50b-0e37603a724a', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('a11b6f3d-43f1-4aba-a099-514d1f5b5dae', 'Nhà nguyên căn 6,000,000 Võ Duy Ninh, Q.Bình Thạnh', '0', 'OZR4', 'Địa chỉ: 108/27 Võ Duy Ninh, Phường 22, Quận Bình Thạnh, Hồ Chí Minh', '4ac548d0-ea3c-4882-852c-d1b0075de86c', 'NCT', '[\"Nhà 1 trệt 1 lầu, phù hợp gia đình, sinh viên, KD Online, dân văn phòng. Xem hình tầng trệt, video ở tầng trên lầu nha.\",\"Hẻm xe ba gác chở vào được, bếp + nhà vệ sinh dưới trệt, điện/nước giá chính.\",\"Cọc 1/thanh toán 1 - Thiện chí mời đến xem mình giả', '7622e642-57dc-4f2e-a670-ea6428d93db0', 'e4631b1c-0b7d-455b-9cc5-293bc183a5ef', '5ea3488e-3c6b-4206-9cd5-32d5566280c3', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('a5223d45-752c-4356-965c-35f7a124bc12', 'CHO THUÊ 2 PHÒNG NGỦ ĐẦY ĐỦ NỘI THẤT GIÁ RẺ NGAY CỘNG HOÀ', '0', 'QVV6', 'Địa chỉ: Đường Cộng Hòa, Phường 13, Quận Tân Bình, Hồ Chí Minh', 'cbb7327c-8bc3-486f-9a38-7cf03c60beb8', 'CTCH', '[\"CĂN HỘ 2 PHÒNG NGỦ Ở CỘNG HOÀ - ETOWN CỘNG HOÀ - ĐẠI HỌC CÔNG THƯƠNG - CAO ĐẲNG Y KHOA PHẠM NGỌC THẠCH\",\"- Toà nhà trang bị thang máy - đầy đủ nội thất - hầm xe lớn - thang máy - bảo vệ\",\"Diện tích căn hộ: 45m2\",\"Giá thuê: 8tr\",\"Liên hệ:&nbsp;0789784783', '2901a5e2-760a-485c-bf42-004daab19a13', '1f43dd34-a598-479f-9b90-a468c5d4eb15', '1200298e-030c-418f-971a-7a0a7250b18b', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('a68eb969-17e9-425d-8ea3-6419fccf76fc', 'CHÍNH CHỦ CHO THUÊ MẶT BẰNG KINH DOANH 6,5 TRIỆU Q.1 - CÒN THƯƠNG LƯỢNG', '0', 'PFM7', 'Địa chỉ: 153/5 Đường Nguyễn Thị Minh Khai, Phường Phạm Ngũ Lão, Quận 1, Hồ Chí Minh', 'c2244c7e-c6a0-45f7-8e3a-7cfe61f17753', 'CTMB', '[\"Diện tích: Ngang 3,25m x Dài 11,85m\",\"Kinh doanh đa dạng ngành nghề, hợp đồng dài hạn không tăng giá.\",\"Mặt bằng kinh doanh tự do, không chung chủ, điện/nước tự thanh toán giá chính.\",\"Cọc 2 / thanh toán 1\",\"Thiện chí đến xem mình thương lượng giá cho a', '98de5e4e-36ec-4a2a-92f2-ec650e19f823', 'c2587449-f921-434f-af64-80bbfb7762d6', 'aba3536a-2c54-46f5-b020-bf63c95ef1f6', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('a7866047-231e-40a3-b430-a8343aa0b863', 'Mặt bằng cho thuê Trần Tử Bình, Tân Thông Hội, Củ Chi.', '0', 'JQY8', 'Địa chỉ: 60 Trần Tử Bình, Xã Tân Thông Hội, Huyện Củ Chi, Hồ Chí Minh', 'aaa1882b-e82a-4b00-b819-62bafaa2a518', 'CTMB', '[\"Mặt bằng cho thuê 60 Trần Tử Bình, Tân Thông Hội, Củ Chi.\",\"Diện tích: 5.5m x 25m\",\"Vị trí: Mặt tiền đường, đông dân cư\",\"Tiện ích: ngay chợ Việt Kiều, gần trường học.\",\"Anh Chị quan tâm vui lòng liên hệ zalo để xem trực tiếp\"]', '3a713466-25c3-4c9c-8ae3-803a7f0ebc0e', 'a1293daa-5fae-49c1-b798-26c690434193', '2dac9219-cae3-431f-91ef-82d9329758a8', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('aa469d01-04e9-45c5-a606-3fc18370461a', 'Chính chủ cho thuê nhà nguyên căn mới, giá rẻ - gần chợ Hoàng Hoa Thám', '0', 'ETB7', 'Địa chỉ: Đường Đồng Xoài, Phường 13, Quận Tân Bình, Hồ Chí Minh', '6e0c0026-2b4d-43cf-a9d7-6f8937a75a58', 'NCT', '[\"Cho thuê nhà nguyên căn mới (chính chủ) gần chợ Hoàng Hoa Thám – đường Đồng Xoài – P.13 – Q. Tân Bình.\",\"NHÀ CHÍNH CHỦ, MIỄN QUA TRUNG GIAN.\",\"Nhà trong hẻm rộng, chỉ để ở, không kinh doanh.\",\"Diện tích: 4m x 10m, tổng diện tích: 90 m2.\",\"Nhà gồm: 1 trệ', '6499d60c-a409-4e22-8e60-766c12e3c178', 'c4475599-0c57-417f-bcd0-967628d17b38', '62a53b58-c864-4a77-9be1-443328da6d1b', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('aaaf4177-a0c9-41f0-adb3-66756413b4f0', 'CĂN HỘ MINI KHAI TRƯƠNG BANCON TẠI Q7 gần LOTTE, TDTU, CẦU KÊNH TẺ', '2', 'ITJ4', 'Địa chỉ: Đường Lâm Văn Bền, Phường Tân Quy, Quận 7, Hồ Chí Minh', 'b4723c07-5b20-4dcc-bae9-4a1702958ba5', 'CTCH', '[\"Phòng đẹp còn hot bancon\",\"—————\",\"Địa chỉ : Lâm Văn Bền Q7\",\"+ Full nội thất\",\"+ Trang bị hệ thống thang máy dễ dàng lên xuống\",\"+ Hẻm ô tô vào đến tận cửa\",\"+ Khu an ninh, có lắp đặt hệ thống camera quan sát xe\",\"+ Giờ giấc tự do\",', 'ccae67a7-71de-4e05-8ba3-57d58177ff5c', 'bdc7a3db-217a-45f1-bf3e-5b7c6cd0500e', '139ce6d2-6bc7-4f5d-a7bd-125be5e58655', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('b5c5640f-26f0-4537-805f-0944cd37424b', 'Cho thuê nhà nhỏ NC, tr DTSD 36 m đường TX13, P.Thạnh Xuân, Q.12', '0', 'BFZ1', 'Địa chỉ: 84/11 D6 Đường số 13, Phường Thạnh Xuân, Quận 12, Hồ Chí Minh', '90df5702-3f3f-4060-9438-bd4843c2aaa4', 'NCT', '[\"Cho thuê nhà NC có 1 trệt, 1 lửng, 1 lầu, bancon. DT đất 3 x 4,4 =13,2m, DTSD 36m, luôn thoáng mát. Nhà gần chợ TX21 và chợ Minh Phát, gần bến xe buýt, Phường Thạnh Xuân, Q.12. QL1A chân cầu Bến Cát 2 quẹo đường TX13 100m. Đồng hồ điện nước riêng, giá c', '895314e9-dbfb-4be7-ac9c-af6ae1e52347', '9544f64a-d0e8-4df6-aea5-2c0489f9ca97', '098d94f9-b3a9-4d59-b81d-802378dc4705', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('b62b7739-d935-4de7-b832-3daf785a18a8', 'Cho thuê nhà nguyên căn làm kho xưởng/văn phòng 220m2 Tam Phú Thủ Đức', '2', 'BTZ3', 'Địa chỉ: 25 Đường số 7, Phường Tam Phú, Thủ Đức, Hồ Chí Minh', '0cf60e76-ba57-46c0-9132-b8796c596cca', 'CTMB', '[\"Chính chủ cho thuê nhà nguyên căn làm văn phòng hoặc kho xưởng\",\"Diện tích 5.5*31m (1 trệt 1 lửng)\",\"Đường trước nhà 8m (2 ô tô đi thoải mái) cách Tô Ngọc Vân 100m, gần chùa, trường học, mẫu giáo, chợ, bệnh viện...\",\"Điện nước riêng\",\"Giá thuê: 15 tr/th', 'e742d01d-829c-4052-a2b5-897b7b180bb7', 'd58f2b2b-fd2e-4b83-8b50-2b97fff883de', '86b4703c-c5ca-4002-918f-c05315d05771', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('b9d09070-1435-4760-8705-6e2a4031eb6d', 'Cho thuê nhà 2 tầng 45m2 siêu xinh - Full nội thất - đường Trần Khánh Dư', '2', 'PCH9', 'Địa chỉ: Trần Khánh Dư, Phường Mỹ An, Quận Ngũ Hành Sơn, Đà Nẵng', 'eaabfca6-97dd-420e-b467-270fa38d277e', 'NCT', '[\"Cho thuê nhà gần khu du lịch An Thượng\",\"Nhà đầy đủ tiện nghi, đi bộ 10p ra biển, gần chợ, siêu thị, trường học cấp 1,2,3, đại học. Khu an ninh tốt\",\"* 2 tầng x 45m2\",\"* Thiết kế gồm 2 phòng ngủ, 2 vệ sinh\",\"* Phòng khách, bếp\",\"* Nhà trang bị đầy đủ nộ', 'd6f7a536-342a-4769-ab1b-6c96e3ed8b8d', '8c3bfb13-0f24-4832-a1f1-0fc7625555e9', '86de272f-a303-403a-b195-fa44e0452ea8', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('baddd6b7-7eb1-4a96-9647-31e48dc72934', 'cho thuê mặt bằng tầng trệt 4*10m hẻm 220 Nguyễn Oanh P17 GV TPHCM làm văn phòng, cửa tiệm', '0', 'DOF9', 'Địa chỉ: Hẻm 220 Đường Nguyễn Oanh, Phường 17, Quận Gò Vấp, Hồ Chí Minh', 'ddae0bed-c964-4976-825a-e0803642145b', 'CTMB', '[\"Đường 12m thẳng tắp ra Nguyễn Oanh (y hình)\",\"nhà hướng Bắc, cọc 8tr, nội thất y hình chụp\",\"Khu vực rất yên tĩnh an ninh ,dân cư dân trí cao\",\"Hẻm thông ra chợ căn cứ 26, thông Lê Đức Thọ, Dương Quảng Hàm, Phan Văn Trị\",\"Có Toilet (nhà tắm) riêng rộng ', '56972f3b-5dcb-4aba-9af7-1f806d6de9d2', '5818a1b6-fc23-4c32-bbe0-f0bba82625b8', 'f0b9f5af-094c-4b78-a542-876b4660a9bc', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('bb8b25f3-3dcf-400e-af73-78508ccaeac2', 'Nhà 4x17m, DTSD 110m2 có gác lửng 40m2. Gần chùa linh sơn.Hẻm thông nở hậu, khu an ninh. Trần cao 5m', '0', 'YVF3', 'Địa chỉ: Đường Đông Hưng Thuận 6, Phường Tân Hưng Thuận, Quận 12, Hồ Chí Minh', 'f3f4579c-1d42-4908-bf47-76c51170017b', 'NCT', '[\"Nhà 4x17m, DTSD 110m2 có gác lửng 40m2. Gần chùa linh sơn.Hẻm thông nở hậu, khu an ninh. Trần cao 5m thoáng mát, có sân, có giếng trời, có phòng tắm, bếp, phòng khách rộng rãi, sạch sẽ.\",\"Giá 6.7tr, đặt cọc 1 tháng.\",\"Không qua môi giới. Ưu tiên người t', 'dd2454fc-e7d1-4ff3-9d8f-58372e7a77b9', 'c8bfe4e0-7044-4ce4-9976-004641024937', '8ce511cb-efa8-494c-a5ca-5fd1c35d92b9', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('c89d9d3c-eed7-4662-8e69-b9244f41a21d', 'Phòng trọ dạng căn hộ mini cao cấp tại 796 Lê Đức Thọ, P.15, Quận Gò Vấp', '5', 'VQQ4', 'Địa chỉ: 796 Đường Lê Đức Thọ, Phường 15, Quận Gò Vấp, Hồ Chí Minh', 'a9be21da-8bb6-4cf9-a8ab-00f9227280d0', 'CTPT', '[\"Cho thuê căn hộ mini cao cấp tại&nbsp;796 Lê Đức Thọ, Phường 15, Quận Gò Vấp, Tp. Hồ Chí Minh.\",\"Diện tích 30m2, giá 3 triệu/tháng.\",\"Có hầm giữ xe, có thang máy, giờ tự do, có bảo vệ 24/24.\",\"Wifi cực mạnh, máy nước nóng, trường hình cáp, sân tập thể d', '9c40945d-df2e-425c-990c-a16a6907e658', '6dae3c23-d4fb-40a0-a7ce-3209cee6794d', 'a4ebfc09-21d4-494d-bf46-b64cf8478c35', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('c99f256f-7b13-4c7e-a1e8-83130db344ee', 'cho thuê Nhà nguyên căn, nhà mới, 4 ngủ, vs khép kín, có thể ở ngay, 16tr', '0', 'HBK5', 'Địa chỉ: ngõ 146 Hoàng Mai, Phường Hoàng Văn Thụ, Quận Hoàng Mai, Hà Nội', '0156abf6-37a5-4c49-8ba9-8ec3663549dc', 'NCT', '[\"Nhà nguyên căn, nhà mới, 4 ngủ, vệ sinh khép kín. Tum có mái che, diện tích 30m2, có thể ở ngay\",\"Nội thất: điều hòa, nóng lạnh.\",\"Ngõ 146 đường Hoàng Mai. Gần chợ, gần đường ô tô đi vào.\",\"Sđt liên hệ: 0973861614\",\"Ưu tiên hộ gia đình\"]', '7eaf044f-af81-4508-b808-d62a54148824', 'f53cad6f-27c7-404a-8556-89aa633331b6', '34b9f7fd-914c-46a1-9080-f8f04a9226ad', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('cc9bc933-ce03-4635-bafc-906a7938e74a', 'Cho thuê CHDV theo ngày, tháng tại 88 Mai Hắc Đế, HBT. Giá đang giảm mạnh chỉ từ 750k', '4', 'NNS8', 'Địa chỉ: 88 Phố Mai Hắc Đế, Phường Bùi Thị Xuân, Quận Hai Bà Trưng, Hà Nội', '1da38389-da0d-4582-8544-72543136fad9', 'CTCH', '[\"Cho thuê CHDV Red Hotel Building theo ngày, tháng tại 88 Phố Mai Hắc Đế, Phường Bùi Thị Xuân, Hai Bà Trưng, Hà Nội\",\"Hiện tại bên mình đang có chương trình chiết khấu giảm giá lên đến 50%\",\"Nằm cách Tràng Tiền Plaza 10 phút đi bộ ở Hà Nội, Red Building ', '582860d5-6640-48c5-829f-d1b28cf1c4b6', 'f6c08b90-3de6-4f8a-81c6-2207f86e0a47', 'fcddd680-6dac-4470-8369-05ab19c1b889', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('cea0def0-cc59-47a9-95ff-57707b3da420', 'Cho thuê nhà mới nguyên căn 1745 Huỳnh Tấn Phát TT Nhà Bè đối diện chợ phú xuân giá 4,5tr', '0', 'ZTV3', 'Địa chỉ: Đường Huỳnh Tấn Phát, Thị trấn Nhà Bè, Huyện Nhà Bè, Hồ Chí Minh', '920c52e4-9765-4efb-a576-60c42790b8ec', 'NCT', '[\"Cho thuê nhà mặt tiền bên hông cầu phú xuân Kp4, thị trấn Nhà Bè giáp Q7, ngay cầu Phú Xuân 2\",\"Nhà mới trệt lầu bao gồm 2 phòng ngủ , gắn 1 điều hoà phòng ngủ lơn, kho chứa đồ, ban công, 2 toilet trên dưới, bếp phòng khách, sân để xe\",\"Khu vực đông đối', '09c33db6-b2c2-4b06-b5f8-994742bf3168', '43873b60-4fc1-4f83-9594-25e69e786202', '3858db3c-eea4-4e9e-945d-439b295bac8b', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('d322375c-7f2f-4b04-989a-1a114f66a02e', 'Căn Hộ Studio Ban Công tách bếp máy giặt riêng ngay Lạc Long Quận - Lý Thường Kiệt', '0', 'GLO8', 'Địa chỉ: Đường Lạc Long Quân, Phường 11, Quận Tân Bình, Hồ Chí Minh', '8f784134-7994-4873-90ab-669c9800ed42', 'CTCH', '[\"Căn Hộ Studio Ban Công tách bếp máy giặt riêng ngay Lạc Long Quận - Lý Thường Kiệt\",\"Thuận tiện: Đại Học Văn Hiến - Đại Học Công Thương - Khu Bàu Cát - Đại Học Kinh Tế\",\"Giờ giấc tự do - không chung chủ - camera 24/7 - khoá vân tay\",\"Liên Hệ / Zalo: 078', '436c4448-e5e8-414e-92c3-810e875def8c', '218a8ae4-65a1-4edf-9d7c-4e6e7cbfebaf', 'cdd59d34-c6f7-4b19-9744-68f28b6ae7a4', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('d37792d5-2870-48e0-8fbd-6692c007fc12', 'Cho thuê nhà mặt tiền 30 Nguyễn Văn Dung, phường 6, quận Gò Vấp', '0', 'ZOG2', 'Địa chỉ: 30 Nguyễn Văn Dung, Phường 6, Quận Gò Vấp, Hồ Chí Minh', '74e64b98-5451-4b12-b0ed-22d66a4e3d8e', 'CTMB', '[\"Cho thuê nhà mặt tiền 30 Nguyễn Văn Dung, phường 6, quận Gò Vấp (đối diện Chung cư Splendor và Felix Homes, trường Cao đẳng Nguyễn Trường Tộ).\",\"- Khu dân cư đông đúc phù hợp buôn bán, hair salon,...\",\"- không giới hạn ngành nghề.\",\"- Diện tích: 4mx8, c', 'fa29746e-4b33-482a-ba8f-cbc6f1ff3d80', '5bb2d607-09d8-45e1-8fba-af26aa24f977', '796c5975-f825-4b2d-875a-d173c1716085', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('d562e28a-3447-462a-acad-0e64ce74cd88', 'Cho Thuê Mặt Bằng 30m2 Mặt Tiền Đường Bàu Cát - Tân Bình', '0', 'KYE0', 'Địa chỉ: 50 Đường Bàu Cát, Phường 14, Quận Tân Bình, Hồ Chí Minh', 'dcdc2862-c6fa-479d-aa76-c8a2bac40975', 'CTMB', '[\"Cho Thuê Mặt Bằng 30m2 Mặt Tiền Đường Bàu Cát - Tân Bình\",\"- nằm tại vị trí đắc địa, khu dân cư đông đúc, thuận tiện kinh doanh các mặt hàng tuỳ thích, không giới hạn\",\"- hợp đồng dài hạn từ 3-4 năm, khỏi lo tăng giá, cam kết đền hợp đồng nếu chủ nhà lấ', 'e0964ce3-f661-401d-9665-d09ce4f2e52a', '06015824-3adf-45df-b065-c30a3c151faa', '5303ee81-70f3-4c8c-bb24-581c98301db3', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('d832052d-c36d-43b3-8d13-eea75bb63ea4', 'Chính chủ cho thuê CHDV giá siêu tốt tại 1502 Huỳnh Tấn Phát, Phường Phú Mỹ, Quận 7', '5', 'XUI8', 'Địa chỉ: 1502 Huỳnh Tấn Phát, Phường Phú Mỹ, Quận 7, Hồ Chí Minh', '9f16671d-3d6f-42a3-b229-baec8b2d3118', 'CTPT', '[\"Chính chủ cho thuê CHDV giá siêu tốt tại 1502 Huỳnh Tấn Phát, Phường Phú Mỹ, Quận 7\",\"10/10 trống:\",\"p421: 3tr9 (2 ng ở)\",\"p303:4tr8 ( duplex 3nguoi)\",\"405: 4tr9 (duplex 3 nguoi ở)\",\"505: 4tr9 ( duplex 3 ng ở)\",\"g18: 3tr9 (2 ng ở)\",\"810:4tr5 (2 ng ở)\",\"', 'bd36bb5b-6dff-48a9-936b-9f44a6cc443a', '275a0327-a9ba-499c-93b7-86fc3244ca89', 'c125e6c7-98d1-4acd-858c-42a5c77f3fd6', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('da08cd96-2f37-498a-8ad4-8d330962e4e0', 'Cho thuê phòng có thang máy : 248/33/13 Nguyễn Thái Bình, P.12, Q.Tân Bình -cuối đường C18-Đường A4.', '4', 'GBS4', 'Địa chỉ: 248/33/13 Nguyễn Thái Bình, Phường 12, Quận Tân Bình, Hồ Chí Minh', '2245e44c-7e2b-4d0f-9aa0-8c47eb06c1a1', 'CTPT', '[\"Khu K300 đường Công Hòa đi vô đường A4 hoăc đường C18; hoặc đi hẻm 248 Nguyễn Thái Bình.\",\"Gần các địa điểm ăn uống và mua sắm, tòa văn phòng tổng công ty 319, trung tâm thương mại Pico Plaza Cộng Hòa, Học viện hàng không CS2, Gần văn phòng Etown Cộng H', 'abe65fbd-02a4-48c9-9b5b-41b86c6c9683', 'e0e117ef-0f5a-4681-b540-f384cc277110', '606cf122-5df7-4666-a13e-097e7c1b953f', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('da6554c3-51b7-492b-807e-ecb22cf08ae8', 'Cho thuê nhà + mặt bằng căn nhà số 68 Đoàn Giỏi, Phường Sơn Kỳ, Quận Tân Phú', '0', 'XPK7', 'Địa chỉ: 68 Đường Đoàn Giỏi, Phường Sơn Kỳ, Quận Tân Phú, Hồ Chí Minh', 'f55d46cc-f151-4f17-83eb-10fa1001ef66', 'CTMB', '[\"Nhà diện tích 36m2, ngang 4m dài 9m, có gác.\",\"Vị trí nhà mặt tiền đường Đoàn Giỏi.\",\"Gần trung tâm mua sắm AEON MALL Tân Phú.\",\"Giá cho thuê : thoả thuận\",\"SDT liên hệ : 038 775 9066 (gặp Thu Trang)\"]', 'da2173a2-5249-44b5-b033-e8a96859fe35', 'd9d2f746-ccbe-4996-8a63-42facb1acee7', 'af9e9fa8-162b-47bc-b98b-e727fa7b5892', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('db85475e-859b-4c88-8358-94f1a47136e9', 'KTX Đại Học Công Nghiệp 4 Gò Vấp free điện nước chỉ 1tr3', '5', 'RMN7', 'Địa chỉ: 60 Đường Huỳnh Khương An, Phường 5, Quận Gò Vấp, Hồ Chí Minh', 'd94db8ec-a05c-4564-bb12-7f8ee0f0155a', 'CTPT', '[\"Địa chỉ: 60/18A Huỳnh Khương An, p. 15,\",\"Gò Vấp.\",\"Không gian rộng, có cửa sổ.\",\"Trang bị giường, nệm và drap mới.\",\"Máy lạnh.\",\"Nhà vệ sinh riêng.\",\"Có bếp nấu ăn riêng trong phòng.\",\"Wifi nhanh như máy bay.\",\"Trang bị máy giặt và nơi phơi đồ.\",\"Không', 'e4ba5dd0-f5fa-404d-8ced-f04c91660ee2', '906b52b0-5f50-44fb-98f6-6cd03be4f3b5', '9ba5df9c-e0b7-4f10-9a03-cbfd3f549b08', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('e65c5cd2-e52e-45ec-bf72-9fca41f81099', 'Căn Hộ Cao Cấp Mới Xây Đầy đủ tiện nghi, An ninh, Sạch sẽ Ngay tại Khuông Việt - Quận 11 - Tân Phú', '0', 'QHK0', 'Địa chỉ: Đường Khuông Việt, Phường 5, Quận 11, Hồ Chí Minh', 'c5e6a0c5-a242-40f8-8f58-d4a58182bcb0', 'CTCH', '[\"¥ Căn Hộ Mới xây 100% Sạch sẽ, thoáng mát Ngay tại Khuông Việt - Tân Phú - Quận 11\",\"• 5.500.000\",\"• Vị trí: Gần Đầm Sen, ĐH Văn Hiến, Hoà Bình, Luỹ Bán Bích, Lạc Long Quân, AEON Mall Tân Phú.\",\"• An ninh: Camera 24/7, Bảo mật vân tay, Thang máy, Bãi gi', '3ec18917-809d-46f2-84ee-1b632769af39', '5f4e9465-20a3-4380-ab17-b432e9a52c90', '79c67a20-f207-4dce-bbd1-bd2badc2a002', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('e6a8edf4-c30b-4518-aad9-1dbc66d8e055', 'Căn Hộ Gác Lửng Xinh Xắn Ngay CoopMart Lữ Gia, Quận 11, Giá Cực Tốt', '0', 'MVM0', 'Địa chỉ: Lữ Gia, Phường 15, Quận 11, Hồ Chí Minh', 'b9c4810b-0ebd-4687-bbe3-070e3a8af359', 'CTCH', '[\"Địa chỉ: Lữ Gia, Phường 15, Quận 11.\",\"️ Gần đại học Kinh Tế TP HCM, Bách Khoa TP HCM, Y Dược, giao thông thuận tiện, gần chợ trạm xe bus.\",\"️Vị trí trung tâm thành phố giáp ngay Quận 1, Quận 3, Tân Bình, Phú Nhuận.\",\"️ Mặt tiền nhà đẹp, hẻm trước nhà 8', 'f7845a06-6618-4825-a236-de5959ef9665', 'c2a1bdfa-80b7-41a0-b80b-01ca593b4bb3', 'd42bacb8-8c26-4cf0-992f-16ca13bd5b64', '2024-10-29 18:47:35', '2024-10-29 18:47:35');
INSERT INTO `posts` (`id`, `title`, `star`, `labelCode`, `address`, `attributesId`, `categoryCode`, `description`, `userId`, `overviewId`, `imagesId`, `createdAt`, `updatedAt`) VALUES
('e7d0fd19-bacd-4a25-a08d-dd5becfdcd12', 'Cho thuê nhà mặt tiền 114m2 Huỳnh Tấn Phát', '0', 'KLF8', 'Địa chỉ: Huỳnh Tấn Phát, Xã Phú Xuân, Huyện Nhà Bè, Hồ Chí Minh', 'bd10d4b6-3b1d-4ce3-b90f-7de44287d03c', 'NCT', '[\"CHO THUÊ NHÀ NGUYÊN CĂN MẶT TIỀN\",\"đường Huỳnh Tấn Phát, ,Nhà Bè\",\"(gần Phà Bình Khánh, chùa Bà Châu Đốc 2)\",\"Diện tích 114m2\",\"Ngang 6m x dài 19m.\",\"Kết cấu: 01trệt + 01 gác\",\"Nhà mới sữa chữa, rộng, thoáng mát, sạch sẽ\",\"Thuận tiện kinh doanh, làm kho', '49e2cb98-771c-467f-aa1e-49987be09985', '68299adb-2b71-4f59-9f21-b6e179f2ef10', 'ded7dcb9-ba51-4c60-8966-442fd183181e', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('e84af234-3dd3-4734-a27f-9588dcdeece5', 'Nhà nguyên căn MT Quận 3 – 4 tầng – 4PN – giá 1xtr', '0', 'BSP9', 'Địa chỉ: Trần Văn Đang, Phường 9, Quận 3, Hồ Chí Minh', '627a9ea1-85be-4cc9-b875-10c89bf05021', 'NCT', '[\"Nhà nguyên căn MT Quận 3 – 45m2 - 4 tầng – 4PN – giá 1xtr\",\"- Kết cấu : 1 trệt, 2 lầu, Sân Thượng thoáng, 4PN, WC trong phòng\",\"- Nhà MT thích hợp kinh doanh spa, mở văn phòng… trừ ăn uống\",\"- Nhà còn mới, tiện ích xung quanh đầy đủ không thiếu gì\",\"Giá', 'dc5bd26e-5005-4c6e-b2ee-91c51a18862f', 'c8747159-d5cf-458d-868f-ae9d95a5b76d', 'f881b031-266c-44d9-a693-4736d231bff2', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('ebeb92bb-14c6-4eea-86f8-f308083e137a', 'Phòng trọ ngay Thành Thái, trung tâm Quận 10, đẹp, trang bị đầy đủ nội thất', '5', 'TBE7', 'Địa chỉ: 43/3 Đường Thành Thái, Phường 14, Quận 10, Hồ Chí Minh', '2951a50d-6fa9-499e-883f-2e0f91e0cf3c', 'CTPT', '[\"Cho thuê phòng trọ ngay trung tâm Quận 10, gần ngay Vạn Hạnh Mall, trường đại học Bách Khoa, Huflit (5 phút đi bộ là tới), trường Đại học Y Dược Phạm Ngọc Thạch (bước qua đường là tới) Đại học Hoa Sen, trường Quốc Tế Việt Úc, bệnh viện 115, Nhi Đồng...c', '3eaf55c3-3af9-4adc-addf-6c7c5c5fa84d', 'cc589c1f-3d31-4d34-b769-b35ab2be2c4d', '43980a31-ae34-44c4-bb2b-debf6cb0dc73', '2024-10-29 18:59:20', '2024-10-29 18:59:20'),
('ee0e56fe-1a2e-4df6-8b4d-227b766f79c1', 'Cho thuê nhà nguyên căn mặt tiền đường Trương Văn Bang Quận 2', '0', 'XLG6', 'Địa chỉ: 291 Đường Trương Văn Bang, Phường Thạnh Mỹ Lợi, Quận 2, Hồ Chí Minh', '65a3543d-9490-43fa-93ed-758da222cad3', 'NCT', '[\"Cho thuê nhà nguyên căn\",\"Cần cho thuê nhà Nguyên Căn Quận 2 mặt tiền đường Trương Văn Bang gần Ủy Ban Nhân Dân TP Thủ Đức\",\"- Nhà mới chưa nội thất.\",\"- Diện tích nhà: 5m x 15m = 75 m2\",\"- Tổng Diện tích SD: 265 m2\",\"- Kết cấu nhà 1 trệt, 2lầu, 1 sân t', 'e6ba4f48-b106-4bd8-af00-bcce73315195', 'b48d2266-b259-4640-a1d8-9be522f84650', 'd749f7bf-62de-4053-9622-fc244d313f33', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('f464862d-5640-435c-ac27-5571388f8ef3', 'Cho thuê mặt bằng chữa bệnh, dạy học, ở trọ', '0', 'BSF4', 'Địa chỉ: 750/17A Đường Điện Biên Phủ, Phường 10, Quận 10, Hồ Chí Minh', '7f700733-a146-44b4-8e5a-33476e2879d2', 'CTMB', '[\"Cho thuê tầng trệt và lầu 1\",\"Tầng trệt dt 4×12 có 1 phòng và phòng khách + sân , lầu 1 dt 4×15 có 3 phòng\",\"Tổng cộng 2 tầng có 4 phòng mỗi phòng đều có toilet riêng và 1 phòng khách 4×8\",\"Giá 20tr/tháng\",\"ĐC : 750/17A Điện Biên Phủ, P.10, Q.10, gần vò', '3b443b7c-f632-4633-aa56-d618e9e89c25', '5097b584-8fc0-4f12-a848-d399f831ec9d', '8d08c4e2-70ab-4a54-95b9-4946f6eb1f82', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('f54500b4-0019-465f-af32-2b56ba0f9002', '[ KĐT Vạn Phúc city Thủ Đức] Cho Thuê Văn phòng - Giá từ 10tr', '0', 'BTZ5', 'Địa chỉ: Quốc Lộ 13, Phường Hiệp Bình Phước, Thủ Đức, Hồ Chí Minh', '61fe072b-7c95-4a56-9293-c24c6e5c913e', 'CTMB', '[\"Chuyên cho thuê Tại Khu Đô Thị Vạn Phúc City Tp Thủ Đức Hồ Chí Minh\",\"Hotline : 0937 587845 ( M.r Hải)\",\"Một số văn phòng cho thuê tiêu biểu:\",\"Cho thuê văn phòng tầng trệt Full Nội thất, DT: 7x20m đường 10 Vạn Phúc [Giá 10 tr/ tháng]\",\"Cho Thuê Văn Phò', '19bb8634-0be7-4c06-9f51-32f6a79a0cca', '2d4e4d8b-39b8-4a1a-a726-d3d9975fcc09', '6fdd611a-721f-4fda-8bfb-2774fde9d7c7', '2024-10-29 18:54:47', '2024-10-29 18:54:47'),
('fab6d44f-7831-4cfc-96e0-d63b7896bb05', '4.8tr/tháng PHÒNG FULL NỘI THẤT ĐẸP GIÁ RẺ CHÍNH CHỦ LẠC LONG QUÂN TÂN BÌNH', '5', 'SOL1', 'Địa chỉ: Đường Lạc Long Quân, Phường 9, Quận Tân Bình, Hồ Chí Minh', '0325aed2-e79f-4846-b3eb-25aa6671662a', 'CTPT', '[\"Chính chủ cho thuê phòng đẹp CÓ BAN CÔNG - CỬA SỔ THOÁNG MÁT - NHÀ 2 MẶT TIỀN ĐƯỜNG XE TẢ.I. Phòng mình trang bị đầy đủ nội thất:\",\"Máy lạnh Inverter tiết kiệm điện\",\"Tủ lạnh\",\"Giường/Nệm lớn\",\"Kệ bếp\",\"Tủ bếp\",\"Tủ quần áo lớn\",\"Toilet nước nóng lạnh, v', 'a636d8bc-a627-4696-8ec6-39a970d61231', 'a77e984c-dbd7-4a24-afb9-d5f8963e5924', 'dbc53572-8024-42a3-88da-2b1531f85e80', '2024-10-29 18:59:20', '2024-10-29 18:59:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('create-attribute.js'),
('create-category.js'),
('create-image.js'),
('create-label.js'),
('create-overview.js'),
('create-post.js'),
('create-user.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `zalo` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `phone`, `zalo`, `createdAt`, `updatedAt`) VALUES
('043e20ee-70ba-4d94-89c7-cd5ff8d5b0c4', 'Văn Vinh', '$2b$12$G9zVcua8jUuhxpGumLOchuoPGU8CCDfaaAfQsfwAaUfMHpMyu4IBq', '0357180769', '0357180769', '2024-10-29 18:54:51', '2024-10-29 18:54:51'),
('06c570f7-8eee-4cb0-b3ea-3feafcb20f16', 'Cường Phạm', '$2b$12$aPXNcK6zAotvJwneb73FdOPDveVv4cXMp8bd5YEHQVOMpwe9x6AUu', '0938864405', '0938864405', '2024-10-29 18:59:21', '2024-10-29 18:59:21'),
('09c33db6-b2c2-4b06-b5f8-994742bf3168', 'Long Richome', '$2b$12$etsEYhHj46PEZthUxqBTleX4peXqDTeShWFUW/CYN68W7ooJwcrd2', '0766802468', '0766802468', '2024-10-29 19:00:01', '2024-10-29 19:00:01'),
('0a3ce0e3-d29d-4f7e-bd1d-051edd160d04', 'Đặng Minh Đức', '$2b$12$9im3q4sSsfzCt4XNST6FmeH.hGfpS41YUmS4.tOJWbcDSFDMyOJBK', '0902441352', '0902441352', '2024-10-29 18:47:38', '2024-10-29 18:47:38'),
('0b4f72a1-538a-4b6d-bfb6-041851f9a660', 'Phước Sang', '$2b$12$X1dvBXjxKdGfP5jOO8pPHOM.RuFxMrAHjpjuY8JAeVNJ.JMQBFjQW', '0964561452', '0964561452', '2024-10-29 18:47:39', '2024-10-29 18:47:39'),
('0e91fdd6-9899-4a06-aa02-b0cfb7cd0558', 'Trần Long', '$2b$12$zgMOsvtoMARVq2mrfLgqjOtrT6uwXxDD3zbwAyjVgzOC3ea1WGK9G', '0909603121', '0909603121', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('0f2e5398-f419-4973-8817-bfe64a8874c2', 'Anh Sơn', '$2b$12$TMOIsiEufHe.Q6NcJmh42eMshhRJzYUc/0sSpXFkza.VcfnOC0.kS', '0817409696', '0817409696', '2024-10-29 18:54:48', '2024-10-29 18:54:48'),
('13c6099d-3a5f-41ee-9cd2-c1c018b227ee', 'Vĩnh An', '$2b$12$q7Oa3rtHQesR3zC5zZWySOPdQS6.n2/Yop5cQfk1XDuds/A7XDGam', '0968261479', '0968261479', '2024-10-29 18:54:49', '2024-10-29 18:54:49'),
('14c73687-76c3-4580-b7b4-5a99ad5bec59', 'Trần Hoàng Anh', '$2b$12$zT5pe4w6ywjnk1DcokRzcuANnCfL5M7A80P0GvUB.c10xpg8.2Gv.', '0355386726', '0355386726', '2024-10-29 19:00:00', '2024-10-29 19:00:00'),
('15b760ee-396f-4063-bf7b-6e4f38a734c0', 'Thúy Hằng', '$2b$12$trG.QFItI5ZG5W/md0b4juPTA4JZ6CPa.BZKGaFYG4OD1OvJspmO6', '0356149763', '0356149763', '2024-10-29 18:47:36', '2024-10-29 18:47:36'),
('173f8135-d5ee-4444-bf19-9d5c2ad3fe03', 'Đỗ Tiến Tùng', '$2b$12$iz5M/HBSTHqJZwc7/RVvyu.r6BvxHYtef/75LnXfZMXQJ6f7Vc.qS', '0963682544', '0963682544', '2024-10-29 18:54:48', '2024-10-29 18:54:48'),
('19bb8634-0be7-4c06-9f51-32f6a79a0cca', 'hai nguyen', '$2b$12$XZro4vih9fX9IWukd.0/Zu8nHillTTMopL4LU/8geoIg80wfFXdEq', '0937587845', '0937587845', '2024-10-29 18:54:51', '2024-10-29 18:54:51'),
('19fde379-7bcf-416f-8946-cb8b8f899c3b', 'Phương Nhung', '$2b$12$JI1mRshV1WGihvWlKMt6LuzmK/Pik7.XkQtcA05WK.fsG6HXG8rZO', '0847201199', '0847201199', '2024-10-29 18:59:24', '2024-10-29 18:59:24'),
('2600faf8-3b8c-4982-b123-b3a50e34f297', 'van528 (*)', '$2b$12$K8x.FL7cllm7MOluiLyXo.ucOBYCsKxZogX3/gH0Qf7npwdzwayHu', '0919990528', '0919990528', '2024-10-29 18:59:24', '2024-10-29 18:59:24'),
('275d1921-d692-41fd-9ea6-29da3dc089c8', 'Pham nguyen quynh hoa', '$2b$12$/4yQMYreEL06bTVPbI8LGuy6RksWWhJXFiw4Vjr701V03jYJeoJva', '0941208076', '0941208076', '2024-10-29 18:47:39', '2024-10-29 18:47:39'),
('2901a5e2-760a-485c-bf42-004daab19a13', 'Trần Gia Bảo', '$2b$12$VUbmN9vKLAMqpEMVfq5w0uNn5QeyUecrZMq.53.3I.nwszJ/dhtHK', '0789784783', '0789784783', '2024-10-29 18:47:39', '2024-10-29 18:47:39'),
('351dcca7-1ef4-4e94-b762-d1dc173786af', 'f', '$2b$12$0D4zsTUXVXF1Bq/EpDb1W.Qfkimomn3eO5URQBQVL7LkF76rMV9s6', '12312423432', NULL, '2024-10-29 20:20:34', '2024-10-29 20:20:34'),
('3a713466-25c3-4c9c-8ae3-803a7f0ebc0e', 'Lê Hoàng Quân', '$2b$12$sHSenAcXC.xuMVvGYj9VX.2k5Q5la/.nqV6ZJvp2DOhYfw.pRvq2S', '0938069819', '0938069819', '2024-10-29 18:54:49', '2024-10-29 18:54:49'),
('3b2e0ab0-f86e-416d-ad9c-05f5853bc0f6', 'Anh Sơn', '$2b$12$4PJnulD.rEq1Z6yL/8xdCuIeegiTJTcVr2uidGE7/FtCRmMz/LQfK', '0817409696', '0817409696', '2024-10-29 18:54:52', '2024-10-29 18:54:52'),
('3b443b7c-f632-4633-aa56-d618e9e89c25', 'thuthuy', '$2b$12$YsNd6q9du1JLTtw07Bw9UesvGQksABfyFHXYtSPxVboXXF2pSXgfG', '0932683625', '0932683625', '2024-10-29 18:54:51', '2024-10-29 18:54:51'),
('3eaf55c3-3af9-4adc-addf-6c7c5c5fa84d', 'Việt 275 (*)', '$2b$12$FHYpCASLEYmxZCAB8Ng/FOXsMTz.TmaSL8IVcsBlmAKveMTMsGtxC', '0938297275', '0938297275', '2024-10-29 18:59:23', '2024-10-29 18:59:23'),
('3ec18917-809d-46f2-84ee-1b632769af39', 'Đặng Minh Đức', '$2b$12$CPDjF550UiPy.PWpa0x8guvgISiBk0PzHD2vCxejLVPvXZHW3MecG', '0902441352', '0902441352', '2024-10-29 18:47:38', '2024-10-29 18:47:38'),
('4100242c-73ca-49c2-8a32-ce4bcc30a451', 'Huỳnh Tấn Phát', '$2b$12$8ibNXJI0D/iucPYUO.6HYeoOy9Ypq9DtnvHuo1GF36wcY2OfUUdZy', '0336996907', '0336996907', '2024-10-29 18:47:36', '2024-10-29 18:47:36'),
('41c8748d-81d7-45c1-b394-83846b4ac779', 'Lê Thị Phương Liên', '$2b$12$9oDotfLAR8K0h7X6eOnWeOmcXkqUSjLUCrNR71REAh00a.tJxGTNO', '0858922064', '0858922064', '2024-10-29 18:54:49', '2024-10-29 18:54:49'),
('436c4448-e5e8-414e-92c3-810e875def8c', 'Trần Gia Bảo', '$2b$12$FgWpUwFeo8sAIywQ/HqYf.q856vsIqmuH3td8Ucr3jaqLOxL6NYPy', '0789784783', '0789784783', '2024-10-29 18:47:38', '2024-10-29 18:47:38'),
('4930b295-0c07-4f5b-853b-32e981e912fb', 'vtthoai_han', '$2b$12$pOk1AuU5M8LT9Pa/rHZdMO0PWCkFlB0FxsSrj0k9e2MqvCg5h8URO', '0946427788', '0946427788', '2024-10-29 18:59:22', '2024-10-29 18:59:22'),
('49e2cb98-771c-467f-aa1e-49987be09985', 'Tran nguyen phi anh', '$2b$12$BfY/qO66x66tcIPk94orru1MAkgmaDuA5/oj6cUUjKvtwIA2lSZEy', '0765830527', '0765830527', '2024-10-29 18:59:59', '2024-10-29 18:59:59'),
('56972f3b-5dcb-4aba-9af7-1f806d6de9d2', 'Huỳnh thị Ngọc Lam', '$2b$12$.mfrNSpFdDQa4eJObLz4AuBp65jg2NI8MpRtupds/twEFdOcy7R76', '0946966343', '0946966343', '2024-10-29 18:54:51', '2024-10-29 18:54:51'),
('56c1261a-a015-4122-9355-922f11da99c0', 'hoangle2706', '$2b$12$zNH.GgG2Ynxs.0zO4/Pr7eyPuwvU264obvR0em7vU9vo5zizuRDQq', '0937554570', '0937554570', '2024-10-29 18:54:48', '2024-10-29 18:54:48'),
('582860d5-6640-48c5-829f-d1b28cf1c4b6', 'Chị Linh', '$2b$12$7b7DZEHBwh4ONKbySOuiTOeXxJ4O1WxjSrkM14Evqulffg9Y/IYSO', '0936366958', '0936366958', '2024-10-29 18:47:35', '2024-10-29 18:47:35'),
('63d74e3f-1eaf-44b3-a377-0194d334990f', 'qwd', '$2b$12$v/6CdYBdxxlr5b.VTp6IC./dOocYKwSMm6Wo7nYB0KvMVbOhzCj1m', '096798773011', NULL, '2024-10-29 19:48:31', '2024-10-29 19:48:31'),
('6499d60c-a409-4e22-8e60-766c12e3c178', 'Tu Ngoc Yen', '$2b$12$/hTYJ9uP9RFvsmH41xdEJ./q/o4a0D0MRAcXyPQQFmEMkH1zMsBD.', '0984164831', '0984164831', '2024-10-29 19:00:02', '2024-10-29 19:00:02'),
('6e9264eb-90c7-44fa-811d-bf6970f6eec4', 'NGUYỄN VĂN BÌNH', '$2b$12$gTsEJ/DnnLpQ3796j7OLiOqiDpW3lsi9Jj2J/rz9yAikMPRCsORwu', '0909673345', '0909673345', '2024-10-29 18:47:37', '2024-10-29 18:47:37'),
('7622e642-57dc-4f2e-a670-ea6428d93db0', 'Kim Khánh', '$2b$12$y9lDfAacd6WTfbAw/jXxdOfR7Gxd.LChd2/DAPVgc7RZrz42S2FOS', '0789836236', '0789836236', '2024-10-29 19:00:01', '2024-10-29 19:00:01'),
('76d8f622-0599-48eb-a258-1586341feb5e', 'Nguyễn Sư Tân', '$2b$12$rXcj7S5wHLD9d1H/I9yHbeBhK2ctKRrKN4asUrYsAG1NLwxzjM4l2', '0911919139', '0911919139', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('779233f0-7f03-4451-b488-dae9306ca9a7', 'Phương Nhung', '$2b$12$6T17Y/yS5QSAvFPNrypzM.Cl8UfNEQWIF0bCGgzq8DL.S8vnruEe.', '0847201199', '0847201199', '2024-10-29 18:59:23', '2024-10-29 18:59:23'),
('7b99a67c-32ad-476c-8f19-9cdaff006fca', 'Green House Sài Gòn', '$2b$12$yXvWgLxzRoAJ3Rh7LPqTN.l6AGUMtj.YYXl2p8ww.nk2nNV5PdMRC', '0379892830', '0379892830', '2024-10-29 18:47:40', '2024-10-29 18:47:40'),
('7eaf044f-af81-4508-b808-d62a54148824', 'Hương', '$2b$12$DY9RbOsjoKsK/kC/9H5MO.od4d0LeT3tIYLc9R6ASaMOCRvCn2Xee', '0973861614', '0973861614', '2024-10-29 18:59:59', '2024-10-29 18:59:59'),
('821b3f27-1505-48a2-888c-5dd854ac69f6', 'dfaf', '$2b$12$GfcbtUGsGAQLX7k8lV1srexEu/QkE6X811c.qDdUAJcZXxUYQ8Zze', '14341413', NULL, '2024-10-30 08:17:12', '2024-10-30 08:17:12'),
('895314e9-dbfb-4be7-ac9c-af6ae1e52347', 'phanthiha', '$2b$12$1k3/0fK6G1xLov4alntXfuYgQIa3Hnbs90PaCk.PVqoCSkZS6NH1W', '0795833623', '0795833623', '2024-10-29 19:00:00', '2024-10-29 19:00:00'),
('90ede7b5-a630-45dc-b4d3-cf275fc3bcac', 'Lê Thuỷ Trúc', '$2b$12$42fiPuBICRp.9kI1y.Qomu79IgCgj5ST6Zee3cwKUUWQFsZ9NjVmO', '0902859675', '0902859675', '2024-10-29 18:47:37', '2024-10-29 18:47:37'),
('9589f1d3-dfdf-4de6-bd69-82862795e727', 'Be Home', '$2b$12$YNlzDP0cCjokq9lXQPO/.O/vFla8.SB1sK0WCc.XwuRe5AbyhLpeK', '0974188183', '0974188183', '2024-10-29 18:59:23', '2024-10-29 18:59:23'),
('98de5e4e-36ec-4a2a-92f2-ec650e19f823', 'Kim Khánh', '$2b$12$X6usbLMEtcKfML5e.vV8JOeC5ZPeMjN50u8M6xNT79blheqKRJC1m', '0789836236', '0789836236', '2024-10-29 18:54:49', '2024-10-29 18:54:49'),
('9c40945d-df2e-425c-990c-a16a6907e658', 'Chị Giang', '$2b$12$IHcOZwY2p7Cgq9y7ZyIWdO6V2dDZHaMcvB0hW6cx7Pk1R7Q.i0hVe', '0328837249', '0328837249', '2024-10-29 18:59:25', '2024-10-29 18:59:25'),
('a1037dd4-e397-43a0-a2e1-c012f17edb5e', 'Be Home', '$2b$12$okhCMfrgEj.N80KgynMOCem82W1xIamVPiXTyFz1sxOleIEb/EWYe', '0974188183', '0974188183', '2024-10-29 18:59:24', '2024-10-29 18:59:24'),
('a4425063-917a-4604-a256-8f420281817f', 'THANH VU', '$2b$12$fYG9xKQME5xx7EWi7bCv6eZreUXStyC7saem5b2d6ZOdNaop63npC', '0365459999', '0365459999', '2024-10-29 18:47:36', '2024-10-29 18:47:36'),
('a46ac66c-2b96-46be-9085-2409da14eb86', 'Cường Phạm', '$2b$12$51mB5YsthSTGUV38l0E.Met5Grz.nztOLkZiW/tqPaB1YFWZ7zaSK', '0938864405', '0938864405', '2024-10-29 18:54:51', '2024-10-29 18:54:51'),
('a513f0ee-419d-44b6-b9f1-2a2bcf40af5c', 'Lê văn phúc', '$2b$12$k//5fIXsxXn/vI87BoWso.lAyFZYOBhzULRaHLzVAqZUtYHkHPa9e', '0327001418', '0327001418', '2024-10-29 19:00:02', '2024-10-29 19:00:02'),
('a5a5ab67-2e29-41c2-8536-7b4024108d29', 'Billhanh', '$2b$12$8SABzpkwmwKReC0qgGL/hO1dywyNUnyr5ufOr2V32xJ3w47CFh5S2', '0932115711', '0932115711', '2024-10-29 18:59:24', '2024-10-29 18:59:24'),
('a636d8bc-a627-4696-8ec6-39a970d61231', 'Hisaigon', '$2b$12$XZm8Pali0suupMwr/gxHoeg8FCm8ln7AG.dg9k2d/x65JRII732sa', '0938802805', '0938802805', '2024-10-29 18:59:21', '2024-10-29 18:59:21'),
('a6ee8d80-c742-458b-b311-98102695f91f', 'qq', '$2b$12$80g2R7QMA2rhfICrstOIfOLMEVrPd6VhyQf6EuV7XVa2MuvpoZlWa', '12321321', NULL, '2024-10-29 20:20:06', '2024-10-29 20:20:06'),
('a742972b-1074-4564-9a40-1777802df93a', 'VNAHOMES', '$2b$12$68BxSMxgr3x6TrLZhSFynuFqYITo2hDpBVaAX5.9LZEuW4Q1mgCLm', '0843883838', '0843883838', '2024-10-29 18:47:36', '2024-10-29 18:47:36'),
('abe65fbd-02a4-48c9-9b5b-41b86c6c9683', 'Billhanh', '$2b$12$JVUpmPC4.a8cbDdaUNZ.g.fUDJu3tF8f7F84VwxFiAwC0wLfaCFKe', '0932115711', '0932115711', '2024-10-29 18:59:25', '2024-10-29 18:59:25'),
('b082f582-125b-4f68-b8f9-18977df5516e', 'Ruby_anny83', '$2b$12$ZBA1mfFm2vMLwcLozV.hmuqg1f1UEhXzzkuKYSj.NlrETYA2LC8f.', '0936571569', '0936571569', '2024-10-29 19:00:02', '2024-10-29 19:00:02'),
('b35d38ff-cc9b-4ca7-9395-c957bb636f81', 'thang', '$2b$12$K/yq8uiAzKUMWzCYaGam1Od/zeMvsAor5TJMannCGdlglVskyEyXu', '23432432432', NULL, '2024-10-30 03:34:35', '2024-10-30 03:34:35'),
('b3b21807-a6ec-44d4-8990-654fd88f6227', 'Be Home', '$2b$12$xRwUvVGISz3y9fJpEsnRBOdoSkpThM8knnTwaes9jr40GryY7lc7C', '0974188183', '0974188183', '2024-10-29 18:59:21', '2024-10-29 18:59:21'),
('b6d13186-bffd-4e22-bb94-f9e78ceba077', 'Cường Lê', '$2b$12$KrfP4YNglEjsXGZ78AIDwe6XAyZoXpFTDR..ehnIfCLOsqsKwHX6C', '0987763095', '0987763095', '2024-10-29 18:59:59', '2024-10-29 18:59:59'),
('bd36bb5b-6dff-48a9-936b-9f44a6cc443a', 'ta thi thu thuy', '$2b$12$rBli8eq1.cOFkjehGsvmmOQDWoI58kiBZ3aoRpBiMgDjZi2iC1vHu', '0912866886', '0912866886', '2024-10-29 18:59:21', '2024-10-29 18:59:21'),
('c730b6eb-4a0d-4242-bed3-f0301613b792', '0967987730', '$2b$12$Mmu9fYvLibAUpbOMCOdAIeYM7ZoRa5Hm.5ivZXYaMB4WC5aKr3K6C', '0967987730', NULL, '2024-10-29 19:30:13', '2024-10-29 19:30:13'),
('ccae67a7-71de-4e05-8ba3-57d58177ff5c', 'Trần Thị Huế', '$2b$12$JBIzDvOGzZgJ4zUHIX0CCOGwtes3.nNCTxdExh5QemT09ldIPRYVy', '0388093244', '0388093244', '2024-10-29 18:47:40', '2024-10-29 18:47:40'),
('cd1e1773-24d2-427e-8d7c-a9d333fb4f8a', 'VÕ THỊ PHƯƠNG TRINH', '$2b$12$DAj/6D4purHsmkm8OyRGq.6Ff4kSbCIzzjyOnm7GwnlGVvTi.p0l.', '0346967904', '0346967904', '2024-10-29 18:47:39', '2024-10-29 18:47:39'),
('cf1e8762-e3f7-4785-9cf3-33f059efcd75', 'NHÀ TRỌ SẠCH SẼ', '$2b$12$MIDwLgXJnYGrs6kv3p/zi.Acr6UnX46jvP4vvLqhl2TNDPZ6e0o66', '0827372737', '0827372737', '2024-10-29 18:59:24', '2024-10-29 18:59:24'),
('d1d03ee5-95a8-4b8f-956f-3e973774a0c1', 'Khánh', '$2b$12$63c7vl4Q8oPdEsLrxdkP4OUVrPhUkDJDJkndwgmOGa.kBDgPwSlrq', '0989997054', '0989997054', '2024-10-29 18:59:21', '2024-10-29 18:59:21'),
('d5efa77b-9250-4110-9144-01de3c68ed20', 'Nguyễn Sư Tân', '$2b$12$7e26hQq45KWw8DobgrES7eJ6RyTgMwi8aEGc.OXRl/OTQspDY2zu6', '0911919139', '0911919139', '2024-10-29 19:00:01', '2024-10-29 19:00:01'),
('d6f7a536-342a-4769-ab1b-6c96e3ed8b8d', 'Vân Anh', '$2b$12$SSTi95EV9n5PyIGB7KRsve89w6UN9oNavoS4BjKwdx1zCNcuuDbSm', '0914842123', '0914842123', '2024-10-29 18:59:58', '2024-10-29 18:59:58'),
('da2173a2-5249-44b5-b033-e8a96859fe35', 'Thu Trang', '$2b$12$rWwsoxIJOTURJt7Mpw5.wemLQfctKQvdC8m7LVqdsyeoIQoc506Hm', '0387759066', '0387759066', '2024-10-29 18:54:52', '2024-10-29 18:54:52'),
('da37bb5a-c2f7-4775-a321-06f184f65ede', 'Nguyễn Ngọc Huy', '$2b$12$6mF9IlsfPvsIXaNTKCZnx.iBIeuNGzFiYg6jNXVv6HHUJN6A1dPYS', '0775463230', '0775463230', '2024-10-29 18:47:37', '2024-10-29 18:47:37'),
('dc5bd26e-5005-4c6e-b2ee-91c51a18862f', 'Nguyễn Thắm', '$2b$12$L//9w/OrJM.7L97sNYMAxeI2zVoxMAi78iHIkkGre8DrHq0yJKtge', '0334432212', '0334432212', '2024-10-29 19:00:00', '2024-10-29 19:00:00'),
('dc907434-d100-463d-bad9-c9f02b52636b', 'Tinhthuycong', '$2b$12$5fshFgOu3MtXQa78bNR9Kuk0O0Q62zWOgKBj5nRCWsA08dHzquL6i', '0983845483', '0983845483', '2024-10-29 18:59:59', '2024-10-29 18:59:59'),
('dd2454fc-e7d1-4ff3-9d8f-58372e7a77b9', 'Pearl', '$2b$12$rugk0eB1pUzBahHeF8E2Bea98zp/wOxoK0peT8jZJV3a.CM6DrqWS', '0914398413', '0914398413', '2024-10-29 19:00:02', '2024-10-29 19:00:02'),
('e0964ce3-f661-401d-9665-d09ce4f2e52a', 'Green House Sài Gòn', '$2b$12$KC2HsBfgIguGGcq14Cn1huw6Y7.4TeqVUkeDMAHdennpiHWufcjYy', '0379892830', '0379892830', '2024-10-29 18:54:50', '2024-10-29 18:54:50'),
('e4ba5dd0-f5fa-404d-8ced-f04c91660ee2', 'Be Home', '$2b$12$rTA/PGe4KXJPNVBMlEbcO.YWsYQ/Wk19qG64egheXgbhUanEY4Uya', '0974188183', '0974188183', '2024-10-29 18:59:22', '2024-10-29 18:59:22'),
('e4c903d1-0328-4cd8-9d62-980d39aaeeb1', 'Nguyễn Anh Tuấn', '$2b$12$77vgL8TQCEvZDREUEXULUu5KSX4.kw/oAMZvzs7cvKugW5TGpYflG', '0932501428', '0932501428', '2024-10-29 18:54:50', '2024-10-29 18:54:50'),
('e6ba4f48-b106-4bd8-af00-bcce73315195', 'Dao Nguyen', '$2b$12$EK2eMYrzTXxMnAeN6yE4Q.XqSOHTuwyuV6tGoEviuulBV1.URtuQe', '0909600930', '0909600930', '2024-10-29 19:00:01', '2024-10-29 19:00:01'),
('e742d01d-829c-4052-a2b5-897b7b180bb7', 'Nguyễn Hoàng Thu', '$2b$12$xXsgpWwJPxEE6uwN8Tuqqe4UUYlP7owCxYxuYyhib7.Ox/pQx8GWC', '0929055670', '0929055670', '2024-10-29 18:54:48', '2024-10-29 18:54:48'),
('e7f00764-e68a-4200-b97e-1e9ef840813b', 'hieuthanh2006 (*)', '$2b$12$F8cGlAwhL0IkH6nQiayjx..QitQuLRAjpCAPDwewSI4BePmTHInTa', '0918180057', '0918180057', '2024-10-29 18:59:22', '2024-10-29 18:59:22'),
('ee0d6fc7-3037-4d8b-a126-2510882969c2', 'Green House Sài Gòn', '$2b$12$nzpoLAbDyett76BiUZ/vhO7qGgIEO4/2PSABdY5n7.g5dt45N.LEa', '0379892830', '0379892830', '2024-10-29 18:47:37', '2024-10-29 18:47:37'),
('ee9a1a22-d780-4c3a-b12c-ab19a271e562', 'Tmakey.com', '$2b$12$QFtSHosvUd05P2OqnUplmuaTkXiuIWKEgu1HiENEt2yx.foI4rANi', '0774588836', '0774588836', '2024-10-29 18:54:49', '2024-10-29 18:54:49'),
('f1dfd553-d7f7-4cdb-9fdb-fb4ba4fc9056', 'qwd', '$2b$12$rTWet.xP7.z2rAtV.QJmKOWpbfQAzX7xSMG2cgwdukzsuQ4728AZO', '1111', NULL, '2024-10-29 20:06:24', '2024-10-29 20:06:24'),
('f3191198-fc3f-4e10-929e-3b6939835b57', 'Long Richome', '$2b$12$f9cy.aKPVFQO5mHtNWUp9O2D7pTttL2kPtHeH8cG1GKTXQBXBgbaG', '0766802468', '0766802468', '2024-10-29 19:00:00', '2024-10-29 19:00:00'),
('f58ac95d-b84c-42a3-aca7-a5f299888618', 'NGUYEN QUYNH ANH', '$2b$12$Zre/uMg2gmN1tsDQxljigu0nONfyYuoSG.BgpLv2MlCaj2nQ3wHU2', '0931337008', '0931337008', '2024-10-29 18:59:23', '2024-10-29 18:59:23'),
('f62bc5dc-b0ce-49a4-a15b-9d15057a1fc8', 'Lê văn phúc', '$2b$12$O9UsEwil1IQUhQdcylVhHuxqT/nPs/KWst.2zC/7QBIEDtB3wGQYm', '0327001418', '0327001418', '2024-10-29 19:00:00', '2024-10-29 19:00:00'),
('f7845a06-6618-4825-a236-de5959ef9665', 'Nguyễn Giang', '$2b$12$tEc18iYj7kpR1dQu9cnCCeUv4zPqZCnIenTZF.tpW2gPSS0XY14lu', '0334394525', '0334394525', '2024-10-29 18:47:38', '2024-10-29 18:47:38'),
('fa29746e-4b33-482a-ba8f-cbc6f1ff3d80', 'thao2p', '$2b$12$A8/kM2cMO2336art1Z2WWuuThdevZ6.mahoEvzUvFRkEkvWY.u6YK', '0913844197', '0913844197', '2024-10-29 18:54:50', '2024-10-29 18:54:50'),
('fca001e1-84e2-4393-8efe-5c00f8e68f61', 'Lê Thị Lan', '$2b$12$tuo3kII5LQO/kAHETnrfIu.p8cWXDr.cU.vaRO/M1PX1Jwk0L9UN.', '0762408434', '0762408434', '2024-10-29 18:47:39', '2024-10-29 18:47:39'),
('ff042684-5528-4590-942c-5f1396d0bdc2', 'Chú Hùng (*)', '$2b$12$jG4HrtefcR4UWgp8SDqvxOhxjxSSkuO796ybvPPzlllxmVm8uliCC', '0943773920', '0943773920', '2024-10-29 18:59:22', '2024-10-29 18:59:22'),
('ff80675d-671b-4cf7-a559-60ec6d0122e3', 'Trâm Hằng', '$2b$12$Cwh4MT2XNLOzSiuJMljacuXtSPwm8hdhE5lMzAj/OOMCaNmxb5lva', '0988265942', '0988265942', '2024-10-29 18:54:50', '2024-10-29 18:54:50');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `overviews`
--
ALTER TABLE `overviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `labels`
--
ALTER TABLE `labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
