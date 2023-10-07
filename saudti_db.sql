-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2023 at 08:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saudti_db`
--
CREATE DATABASE IF NOT EXISTS `saudti_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `saudti_db`;

-- --------------------------------------------------------

--
-- Table structure for table `member_tb`
--

CREATE TABLE `member_tb` (
  `memid` int(11) NOT NULL,
  `memFullname` varchar(50) NOT NULL,
  `memEmail` varchar(50) NOT NULL,
  `memPhone` varchar(20) NOT NULL,
  `memPassword` varchar(20) NOT NULL,
  `memRegisDateTime` datetime NOT NULL,
  `memModifyDateTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_tb`
--

INSERT INTO `member_tb` (`memid`, `memFullname`, `memEmail`, `memPhone`, `memPassword`, `memRegisDateTime`, `memModifyDateTime`) VALUES
(1, 'สมชาย', 'nickisgods@gmail.com', '0123456789', '000000', '2023-08-25 13:20:45', '2023-10-07 03:42:43'),
(2, 'สมคิด', 'nickisgodss@gmail.com', '0234567890', '111111', '2023-08-25 13:20:45', '2023-10-07 03:42:43'),
(3, 'สมศรี', 'nickisgodsss@gmail.com', '0345678901', '111111', '2023-08-25 13:20:45', '2023-10-07 03:42:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member_tb`
--
ALTER TABLE `member_tb`
  ADD PRIMARY KEY (`memid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member_tb`
--
ALTER TABLE `member_tb`
  MODIFY `memid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
