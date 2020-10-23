-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 12:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanvemaybay`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyenbay`
--

CREATE TABLE `chuyenbay` (
  `macb` int(11) NOT NULL,
  `mamb` int(11) NOT NULL,
  `masb` int(11) NOT NULL,
  `diemdi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diemden` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `thoigiandi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `thoigianden` timestamp NOT NULL DEFAULT current_timestamp(),
  `khoangthoigian` double NOT NULL,
  `gia` double NOT NULL,
  `makm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenbay`
--

INSERT INTO `chuyenbay` (`macb`, `mamb`, `masb`, `diemdi`, `diemden`, `thoigiandi`, `thoigianden`, `khoangthoigian`, `gia`, `makm`) VALUES
(1, 1, 1, 'Hà Nội', 'Quy Nhơn', '2020-11-20 10:00:00', '2020-11-20 11:20:00', 80, 300000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ghe`
--

CREATE TABLE `ghe` (
  `maghe` int(11) NOT NULL,
  `mamb` int(11) NOT NULL,
  `loaighe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ghe`
--

INSERT INTO `ghe` (`maghe`, `mamb`, `loaighe`, `tinhtrang`) VALUES
(1, 1, 'thường', 1),
(2, 1, 'thường', 1),
(3, 1, 'thường', 1),
(4, 1, 'thường', 1),
(5, 1, 'thường', 1),
(6, 1, 'thường', 1),
(7, 1, 'thường', 1),
(8, 1, 'thường', 1),
(9, 1, 'thường', 1),
(10, 1, 'thường', 1),
(11, 1, 'thường', 1),
(12, 1, 'thường', 1),
(13, 1, 'thường', 1),
(14, 1, 'thường', 1),
(15, 1, 'thường', 1),
(16, 1, 'thường', 1),
(17, 1, 'thường', 1),
(18, 1, 'thường', 1),
(19, 1, 'thường', 1),
(20, 1, 'thường', 1),
(21, 1, 'thượng lưu', 1),
(22, 1, 'thượng lưu', 1),
(23, 1, 'thượng lưu', 1),
(24, 1, 'thượng lưu', 1),
(25, 1, 'thượng lưu', 1),
(26, 1, 'trung lưu', 1),
(27, 1, 'trung lưu', 1),
(28, 1, 'trung lưu', 1),
(29, 1, 'trung lưu', 1),
(30, 1, 'trung lưu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahd` int(11) NOT NULL,
  `makh` int(11) NOT NULL,
  `soluongve` int(11) NOT NULL,
  `dongia` double NOT NULL,
  `hinhthucthanhtoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngayhd` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `makh` int(11) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaikh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diem` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`makh`, `hoten`, `email`, `diachi`, `sdt`, `loaikh`, `username`, `diem`) VALUES
(1, 'linh', NULL, NULL, NULL, 'đồng', 'linhmy', 0),
(2, 'nhi', NULL, NULL, NULL, 'đồng', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `makm` int(11) NOT NULL,
  `phantramkm` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`makm`, `phantramkm`, `tinhtrang`) VALUES
(1, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `maybay`
--

CREATE TABLE `maybay` (
  `mamb` int(11) NOT NULL,
  `tenmb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hangmb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `soghe` int(11) NOT NULL,
  `soghetrong` int(11) NOT NULL,
  `tinhtrang` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `maybay`
--

INSERT INTO `maybay` (`mamb`, `tenmb`, `hangmb`, `soghe`, `soghetrong`, `tinhtrang`) VALUES
(1, 'JK', 'Bamboo', 30, 30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanbay`
--

CREATE TABLE `sanbay` (
  `masb` int(11) NOT NULL,
  `tensb` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diadiem` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanbay`
--

INSERT INTO `sanbay` (`masb`, `tensb`, `diadiem`) VALUES
(1, 'Nội Bài', 'Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`username`, `password`, `quyen`) VALUES
('admin', 'admin', 1),
('linhmy', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ve`
--

CREATE TABLE `ve` (
  `mave` int(11) NOT NULL,
  `mahd` int(11) NOT NULL,
  `macb` int(11) NOT NULL,
  `maghe` int(11) NOT NULL,
  `giave` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Triggers `ve`
--
DELIMITER $$
CREATE TRIGGER `after_insert_ve` AFTER INSERT ON `ve` FOR EACH ROW begin 
 		UPDATE ghe
 		SET tinhtrang = 0
 		where maghe = new.maghe;
        UPDATE maybay INNER JOIN ghe on maybay.mamb=ghe.mamb
        SET soghetrong = soghetrong - 1
        WHERE maghe = new.maghe;
	end
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD PRIMARY KEY (`macb`),
  ADD KEY `mamb` (`mamb`),
  ADD KEY `makm` (`makm`),
  ADD KEY `masb` (`masb`);

--
-- Indexes for table `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`maghe`),
  ADD KEY `mamb` (`mamb`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`),
  ADD KEY `makh` (`makh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`makh`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`makm`);

--
-- Indexes for table `maybay`
--
ALTER TABLE `maybay`
  ADD PRIMARY KEY (`mamb`);

--
-- Indexes for table `sanbay`
--
ALTER TABLE `sanbay`
  ADD PRIMARY KEY (`masb`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`mave`),
  ADD KEY `mahd` (`mahd`),
  ADD KEY `macb` (`macb`),
  ADD KEY `maghe` (`maghe`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  MODIFY `macb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ghe`
--
ALTER TABLE `ghe`
  MODIFY `maghe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `makh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `makm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maybay`
--
ALTER TABLE `maybay`
  MODIFY `mamb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanbay`
--
ALTER TABLE `sanbay`
  MODIFY `masb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ve`
--
ALTER TABLE `ve`
  MODIFY `mave` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chuyenbay`
--
ALTER TABLE `chuyenbay`
  ADD CONSTRAINT `chuyenbay_ibfk_1` FOREIGN KEY (`mamb`) REFERENCES `maybay` (`mamb`),
  ADD CONSTRAINT `chuyenbay_ibfk_2` FOREIGN KEY (`makm`) REFERENCES `khuyenmai` (`makm`),
  ADD CONSTRAINT `chuyenbay_ibfk_3` FOREIGN KEY (`masb`) REFERENCES `sanbay` (`masb`);

--
-- Constraints for table `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `ghe_ibfk_1` FOREIGN KEY (`mamb`) REFERENCES `maybay` (`mamb`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `taikhoan` (`username`);

--
-- Constraints for table `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`mahd`) REFERENCES `hoadon` (`mahd`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`macb`) REFERENCES `chuyenbay` (`macb`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`maghe`) REFERENCES `ghe` (`maghe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
