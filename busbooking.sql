-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 12:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seat`
--

CREATE TABLE `tbl_seat` (
  `id` int(11) NOT NULL,
  `seat` varchar(255) DEFAULT NULL,
  `reserve_status` int(11) NOT NULL DEFAULT 0,
  `category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_seat`
--

INSERT INTO `tbl_seat` (`id`, `seat`, `reserve_status`, `category`) VALUES
(1, 'seat 1', 1, 'row1'),
(2, 'seat 2', 1, 'row1'),
(3, 'seat 3', 1, 'row1'),
(4, 'seat 4', 1, 'row1'),
(5, 'seat 5', 1, 'row1'),
(6, 'seat 6', 1, 'row1'),
(7, 'seat 7', 1, 'row1'),
(8, 'seat 8', 1, 'row2'),
(9, 'seat 9', 1, 'row2'),
(10, 'seat 10', 1, 'row2'),
(11, 'seat 11', 1, 'row2'),
(12, 'seat 12', 1, 'row2'),
(13, 'seat 13', 1, 'row2'),
(14, 'seat 14', 0, 'row2'),
(15, 'seat 15', 1, 'row3'),
(16, 'seat 16', 1, 'row3'),
(17, 'seat 17', 1, 'row3'),
(18, 'seat 18', 1, 'row3'),
(19, 'seat 19', 1, 'row3'),
(20, 'seat 20', 1, 'row3'),
(21, 'seat 21', 1, 'row3'),
(22, 'seat 22', 0, 'row4'),
(23, 'seat 23', 0, 'row4'),
(24, 'seat 24', 1, 'row4'),
(25, 'seat 25', 1, 'row4'),
(26, 'seat 26', 1, 'row4'),
(27, 'seat 27', 1, 'row4'),
(28, 'seat 28', 1, 'row4'),
(29, 'seat 29', 0, 'row5'),
(30, 'seat 30', 0, 'row5'),
(31, 'seat 31', 0, 'row5'),
(32, 'seat 32', 0, 'row5'),
(33, 'seat 33', 0, 'row5'),
(34, 'seat 34', 0, 'row5'),
(35, 'seat 35', 0, 'row5'),
(36, 'seat 36', 0, 'row6'),
(37, 'seat 37', 0, 'row6'),
(38, 'seat 38', 0, 'row6'),
(39, 'seat 39', 0, 'row6'),
(40, 'seat 40', 0, 'row6'),
(41, 'seat 41', 0, 'row6'),
(42, 'seat 42', 0, 'row6'),
(43, 'seat 43', 0, 'row7'),
(44, 'seat 44', 0, 'row7'),
(45, 'seat 45', 0, 'row7'),
(46, 'seat 46', 0, 'row7'),
(47, 'seat 47', 0, 'row7'),
(48, 'seat 48', 0, 'row7'),
(49, 'seat 49', 0, 'row7'),
(50, 'seat 50', 0, 'row8'),
(51, 'seat 51', 0, 'row8'),
(52, 'seat 52', 0, 'row8'),
(53, 'seat 53', 0, 'row8'),
(54, 'seat 54', 0, 'row8'),
(55, 'seat 55', 0, 'row8'),
(56, 'seat 56', 0, 'row8'),
(57, 'seat 57', 0, 'row9'),
(58, 'seat 58', 0, 'row9'),
(59, 'seat 59', 0, 'row9'),
(60, 'seat 60', 0, 'row9'),
(61, 'seat 61', 0, 'row9'),
(62, 'seat 62', 0, 'row9'),
(63, 'seat 63', 0, 'row9'),
(64, 'seat 64', 0, 'row10'),
(65, 'seat 65', 0, 'row10'),
(66, 'seat 66', 0, 'row10'),
(67, 'seat 67', 0, 'row10'),
(68, 'seat 68', 0, 'row10'),
(69, 'seat 69', 0, 'row10'),
(70, 'seat 70', 0, 'row10'),
(71, 'seat 71', 1, 'row11'),
(72, 'seat 72', 1, 'row11'),
(73, 'seat 73', 1, 'row11'),
(74, 'seat 74', 1, 'row11'),
(75, 'seat 75', 1, 'row11'),
(76, 'seat 76', 1, 'row11'),
(77, 'seat 77', 1, 'row11'),
(78, 'seat 78', 1, 'row12'),
(79, 'seat 79', 1, 'row12'),
(80, 'seat 80', 1, 'row12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_seat`
--
ALTER TABLE `tbl_seat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`),
  ADD KEY `reserve_status` (`reserve_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_seat`
--
ALTER TABLE `tbl_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
