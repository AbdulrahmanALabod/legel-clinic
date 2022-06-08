-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 01, 2022 at 08:48 AM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legal`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `adminname`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `company_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`company_name`)),
  `company_address` varchar(255) DEFAULT NULL,
  `company_activity` varchar(255) DEFAULT NULL,
  `capital_value` int(11) NOT NULL,
  `capital_share` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_type`, `company_name`, `company_address`, `company_activity`, `capital_value`, `capital_share`, `user_id`) VALUES
(1, 'JointStockIncorporation', '[\"ascva\",\"cvasvas\"]', 'asas', 'vassas', 31544, 22, 1),
(2, 'JointStockIncorporation', '[\"dscvsvcs\",\"vdsvsdvd\"]', 'dvsdv', 'sddsvsdvssdvdvs', 4534154, 1, 3),
(3, 'JointStockIncorporation', '[\"cACAS\",\"CSCSACS\"]', 'CASS', 'CSASCS', 88, 88, 6),
(4, 'JointStockIncorporation', '[\"csaccsac\",\"cscascs\"]', 'klkjkj', 'csascca', 0, 9999, 11),
(5, '', '[\"\",\"\"]', '', '', 0, 0, 12),
(6, 'SoleEntity', '[\"Gwjjsjsndjdj\",\"Bhsbsjsh\"]', 'Wjjsndjdj', 'Bdjsndjdijd', 50000000, 12000, 0),
(7, 'JointStockIncorporation', '[\"test\",\"test\"]', 'test', 'test', 534, 544, 26),
(8, 'JointStockIncorporation', '[\"test\",\"test\"]', 'test', 'test', 212, 21, 27),
(9, 'LimitedLiabilityCompany', '[\"legal clinic\",\"the legal clinic\"]', '10 ابراج عثمان المعادي', 'تجارة الكترونية', 100000, 1000, 0),
(10, 'JointStockIncorporation', '[\"legal clinic\",\"the legal clinic\"]', '10 ابراج عثمان المعادي', 'تجارة الكترونية', 100000, 1000, 0),
(11, 'Generalpartnership', '[\"legal clinic\",\"legal clinic\"]', ';aa;', 'lal', 1000, 100, 0),
(12, 'LimitedPartnership', '[\"legal clinic\",\"legal clinic\"]', ';aa;', 'lal', 1000, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(10) NOT NULL,
  `manager_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `manager_nationality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `manager_personal_id` varchar(255) DEFAULT NULL,
  `perm1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `perm2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `perm3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `manager_type` varchar(255) DEFAULT NULL,
  `company_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `manager_name`, `manager_nationality`, `manager_personal_id`, `perm1`, `perm2`, `perm3`, `manager_type`, `company_id`) VALUES
(1, 'csasca', 'scasac', '0Qsw9JUJoevimage001.png', '1', '1', '1', '', 1),
(2, 'csac', 'ssca', '1OwR7P93K2BR (1).jfif', '1', '1', '1', '', 1),
(3, 'csaccsasca', 'csaas', '2rIMdJeJaSjphoto-1529429617124-95b109e86bb8.jfif', '1', '1', '', '', 1),
(4, 'scasacscs', 'saccsacsass', '0MQsy6E7rXzphoto-1529429617124-95b109e86bb8.jfif', '1', '1', '1', '', 2),
(5, 'saccsasa', 'csacsa', '1WPSe39l4ygR (1).jfif', '1', '1', '1', '', 2),
(6, 'csccscssc', 'csaacs', '246IvZgZSBtOIP.jfif', '1', '', '', '', 2),
(7, 'CASCSA', 'CSCSA', '02pDFghbjB1R (1).jfif', '1', '1', '1', 'ceo', 3),
(8, 'CSC', 'SCC', '1ny8akzsv3lphoto-1529429617124-95b109e86bb8.jfif', '1', '1', '1', 'director_member', 3),
(9, 'csacssa', 'scasccs', '0pjQYNM8CCpimage001.png', '1', '1', '1', 'ceo', 4),
(10, 'csssc', 'csaccscca', '1xSaWTmd5VAR.jfif', '1', '1', '1', 'director_member', 4),
(11, 'casc', 'csasc', '2S2SUcsQ0HZR (1).jfif', '1', '1', '', 'director_manager', 4),
(12, '', '', '', '', '', '', '', 5),
(13, 'Rpeem', 'Dhvhbh', '0a4KdMuwI4q16509188545909206651857044791339.jpg', '1', '1', '1', '', 5),
(14, '', '', '', '', '', '', '', 6),
(15, 'Jekdjdnxjjx', 'Sjsjsjsnk', '0sVWxovt4H91650974274380447996864396491530.jpg', '1', '1', '1', '', 6),
(16, 'test1', 'test1', '0Ce60cTHlVCphoto-1529429617124-95b109e86bb8.jfif', '1', '1', '1', 'ceo', 7),
(17, 'test2', 'test3', '1EiHjKe0m9MR (1).jfif', '1', '1', '1', 'director_member', 7),
(18, 'test3', 'test3', '2CF47eX7Al0R.jfif', '', '1', '1', 'director_manager', 7),
(19, 'test1', 'test1', '0VHhmrp8YyiOIP.jfif', '1', '1', '1', 'ceo', 8),
(20, 'test2', 'test2', '1WY0rx5kxb7image001.png', '1', '1', '1', 'director_member', 8),
(21, 'test3', 'test3', '2ySUsSDMiJBR (1).jfif', '1', '1', '1', 'director_manager', 8),
(22, '', '', '0fNUB1fBZiobaggr (1) (1).png', '', '', '', '', 9),
(23, 'احمد سامر', 'مصري', '0wlC3TBZWkXbaggr (1) (1).png', '1', '1', '1', '', 9),
(24, '', '', '02VkaUEfXhubaggr (1) (1).png', '', '', '', '', 10),
(25, 'احمد سامر', 'مصري', '0GksLiBu8libaggr (1) (1).png', '1', '1', '1', 'ceo', 10),
(26, '', '', '047l9SAZsMYbaggr (1) (1).png', '', '', '', '', 11),
(27, 'احمد سامر', 'lwvd', '00A30OiQrMJbaggr (1) (1).png', '1', '1', '1', '', 11),
(28, '', '', '01XnmxBR86gbaggr (1) (1).png', '', '', '', '', 12),
(29, 'احمد سامر', 'مصري', '0l9p45BFXlnbaggr (1) (1).png', '1', '1', '1', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `shareholders`
--

CREATE TABLE `shareholders` (
  `id` int(10) UNSIGNED NOT NULL,
  `shareholder_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `shareholder_nationality` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `shareholder_percenatage` int(10) DEFAULT NULL,
  `shareholder_personal_id` varchar(500) DEFAULT NULL,
  `company_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shareholders`
--

INSERT INTO `shareholders` (`id`, `shareholder_name`, `shareholder_nationality`, `shareholder_percenatage`, `shareholder_personal_id`, `company_id`) VALUES
(1, 'assasddas', 'sasdaadsa', 10, '0Qsw9JUJoevimage001.png', 1),
(2, 'csasca', 'scasac', 5, '1OwR7P93K2BR (1).jfif', 1),
(3, 'csac', 'ssca', 44, '2rIMdJeJaSjphoto-1529429617124-95b109e86bb8.jfif', 1),
(4, 'scasacscs', 'saccsacsass', 5, '0MQsy6E7rXzphoto-1529429617124-95b109e86bb8.jfif', 2),
(5, 'csacsa', 'cssa', 5, '1WPSe39l4ygR (1).jfif', 2),
(6, 'saccsasa', 'csacsa', 100, '246IvZgZSBtOIP.jfif', 2),
(7, 'CASCSA', 'CSCSA', 8, '02pDFghbjB1R (1).jfif', 3),
(8, 'CSC', 'SCC', 9, '1ny8akzsv3lphoto-1529429617124-95b109e86bb8.jfif', 3),
(9, 'CSCC', 'CCS', 99, '23BNWQjxqJGR.jfif', 3),
(10, 'csacssa', 'scasccs', 0, '0pjQYNM8CCpimage001.png', 4),
(11, 'csssc', 'csaccscca', 99, '1xSaWTmd5VAR.jfif', 4),
(12, 'casc', 'csasc', 88, '2S2SUcsQ0HZR (1).jfif', 4),
(13, 'test1', 'test1', 12, '0Ce60cTHlVCphoto-1529429617124-95b109e86bb8.jfif', 7),
(14, 'test2', 'test3', 13, '1EiHjKe0m9MR (1).jfif', 7),
(15, 'test3', 'test3', 12, '2CF47eX7Al0R.jfif', 7),
(16, 'test1', 'test1', 12, '0VHhmrp8YyiOIP.jfif', 8),
(17, 'test2', 'test2', 45, '1WY0rx5kxb7image001.png', 8),
(18, 'test3', 'test3', 45, '2ySUsSDMiJBR (1).jfif', 8),
(19, 'شريف ', 'مصري', 50, '0fNUB1fBZiobaggr (1) (1).png', 9),
(20, 'شرين', 'مصري', 50, '1HlI0Bzs1Mebaggr (1) (1).png', 9),
(21, 'شريف ', 'مصري', 30, '02VkaUEfXhubaggr (1) (1).png', 10),
(22, 'شرين', 'مصري', 30, '1koqjeLTtXRbaggr (1) (1).png', 10),
(23, 'شوقي', 'مصري', 40, '2HeqPNesyqLbaggr (1) (1).png', 10),
(24, 's', 's', 50, '047l9SAZsMYbaggr (1) (1).png', 11),
(25, 'شريف ', 's', 50, '1971PQxjUa7baggr (1) (1).png', 11),
(26, 'سين', 'مصري', 10, '01XnmxBR86gbaggr (1) (1).png', 12),
(27, 'سين', 'مصري', 80, '1DQ3W3xPb8tbaggr (1) (1).png', 12),
(28, 'سين', 'مصريي', 10, '24oW679X5RQbaggr (1) (1).png', 12);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL DEFAULT current_timestamp(),
  `signdate` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `date`, `signdate`) VALUES
(1, 'samir', 'samir@gmail.com', '+48 1148630595', '2022-04-24 03:02:07', 'April 28, 2022'),
(3, 'mohamed amin', 'amin@samir.com', '31313135435454', '2022-04-24 03:16:42', 'April 28, 2022'),
(6, 'hello test', 'hello@test.com', '+20 1148630595', '2022-04-24 12:04:58', 'April 28, 2022'),
(9, 'abeer', 'abeer.omar@gmail.com', '+201098841727', '2022-04-24 12:49:56', NULL),
(11, 'hello world', 'hellso@wosrld.com', '+20 8792374832943', '2022-04-24 13:50:00', 'April 28, 2022'),
(12, 'Reem Bannis ', 'rimbanis@yahoo.com', '+20 01026115116', '2022-04-25 20:31:02', NULL),
(17, 'ibrahim raslan', 'raslan@bab-rizq.com', '+20 01025474171', '2022-04-26 10:47:05', NULL),
(26, 'test', 'test@test.com', '+20 1148630595', '2022-04-26 13:12:57', 'April 28, 2022'),
(27, 'test', 'test@test.com', '+20 1148630595', '2022-04-26 13:15:30', 'April 29, 2022'),
(28, 'Omar Hamed ', 'ohamed@thelegalclinics.com', '+20 1204441380', '2022-04-26 13:26:04', NULL),
(29, 'ibrahim raslan', 'raslan@bab-rizq.com', '+20 01025474171', '2022-04-26 14:31:16', NULL),
(30, 'Van', 'ibrahimmohammedraslan1234@gmail.com', '01066244499', '2022-04-26 14:32:16', NULL),
(31, 'Omar Hamed', 'ohamed@thelegalclinics.com', '+20 1204441380', '2022-04-26 14:36:47', NULL),
(32, 'Omar Hamed', 'ohamed@thelegalclinics.com', '+20 1204441380', '2022-04-26 14:58:34', NULL),
(33, 'mohamed samir ', 'mosamircs@gmail.com', '12345678910', '2022-04-27 07:09:36', NULL),
(34, 'mohamed samir ', 'mosamircs@gmail.com', '12345678910', '2022-04-27 07:11:19', NULL),
(35, 'ahmed alaa', 'ahmed.alaa.khalafallah@gmail.com', '+20 01149609713', '2022-04-27 09:26:09', NULL),
(36, 'ibrahim raslan', 'raslan@bab-rizq.com', '+20 01025474171', '2022-04-27 10:38:25', NULL),
(37, 'imr.raslan@gmail.com', 'imr.raslan@gmail.com', '+20 01025474171', '2022-04-27 10:40:30', NULL),
(38, 'sherif', 'samgad@thelegalclinics.com', '+20 1141910304', '2022-04-27 11:44:40', NULL),
(39, 'sherifs', 'sherifamgad560@gmail.com', '+1 ', '2022-04-28 09:42:15', NULL),
(40, 'sherifs', 'sherifamgad560@gmail.com', '+201141910304', '2022-04-28 09:42:29', NULL),
(41, 'sherifs', 'sherifamgad560@gmail.com', '+201141910304', '2022-04-28 09:49:56', NULL),
(42, 'شريف', 'sherifamgad560@gmail.com', '+201149190304', '2022-04-28 09:56:46', NULL),
(43, 'شريف', 'sherifamgad560@gmail.com', '+201141910304', '2022-04-28 10:01:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shareholders`
--
ALTER TABLE `shareholders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `shareholders`
--
ALTER TABLE `shareholders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
