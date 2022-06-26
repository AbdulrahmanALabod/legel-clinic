-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 01:45 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tlc_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` text NOT NULL,
  `price` double NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `expire_date` date NOT NULL,
  `contact_id` int(11) UNSIGNED NOT NULL,
  `plan_id` int(10) UNSIGNED NOT NULL,
  `payload` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `currency` varchar(255) NOT NULL,
  `per` varchar(255) NOT NULL,
  `privilege` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_recomended` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `description`, `currency`, `per`, `privilege`, `created_at`, `updated_at`, `is_recomended`) VALUES
(1, '365', 12500, 'Terms and Conditions', 'EG', 'year', '{\"0\":\"IP registration\"}', '2022-05-24 07:43:09', '2022-05-24 07:43:13', 0),
(2, 'online co-operations', 5000, 'Terms and Conditions', 'EG', 'year', '{\"0\":\"IP registration\"}', '2022-05-24 07:43:09', '2022-05-24 07:43:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblactivity_log`
--

CREATE TABLE `tblactivity_log` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `date` datetime NOT NULL,
  `staffid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblactivity_log`
--

INSERT INTO `tblactivity_log` (`id`, `description`, `date`, `staffid`) VALUES
(1, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 102.188.23.127]', '2022-05-15 10:57:53', 'Ahmed Galal'),
(2, 'Non Existing User Tried to Login [Email: qbizns@yahoo.com, Is Staff Member: No, IP: 102.188.23.127]', '2022-05-15 10:58:26', NULL),
(3, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:10', 'Ahmed Galal'),
(4, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:10', 'Ahmed Galal'),
(5, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(6, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(7, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(8, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(9, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(10, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:11', 'Ahmed Galal'),
(11, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:12', 'Ahmed Galal'),
(12, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:12', 'Ahmed Galal'),
(13, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:12', 'Ahmed Galal'),
(14, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:12', 'Ahmed Galal'),
(15, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:13', 'Ahmed Galal'),
(16, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:13', 'Ahmed Galal'),
(17, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:13', 'Ahmed Galal'),
(18, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:13', 'Ahmed Galal'),
(19, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:13', 'Ahmed Galal'),
(20, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:14', 'Ahmed Galal'),
(21, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:14', 'Ahmed Galal'),
(22, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:14', 'Ahmed Galal'),
(23, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:16', 'Ahmed Galal'),
(24, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:16', 'Ahmed Galal'),
(25, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:16', 'Ahmed Galal'),
(26, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:16', 'Ahmed Galal'),
(27, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:16', 'Ahmed Galal'),
(28, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:17', 'Ahmed Galal'),
(29, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:17', 'Ahmed Galal'),
(30, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:17', 'Ahmed Galal'),
(31, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:18', 'Ahmed Galal'),
(32, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:18', 'Ahmed Galal'),
(33, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:19', 'Ahmed Galal'),
(34, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:19', 'Ahmed Galal'),
(35, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:19', 'Ahmed Galal'),
(36, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:19', 'Ahmed Galal'),
(37, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:20', 'Ahmed Galal'),
(38, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:20', 'Ahmed Galal'),
(39, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:20', 'Ahmed Galal'),
(40, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:21', 'Ahmed Galal'),
(41, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:21', 'Ahmed Galal'),
(42, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:21', 'Ahmed Galal'),
(43, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:22', 'Ahmed Galal'),
(44, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:22', 'Ahmed Galal'),
(45, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:22', 'Ahmed Galal'),
(46, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:23', 'Ahmed Galal'),
(47, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:23', 'Ahmed Galal'),
(48, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:23', 'Ahmed Galal'),
(49, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:24', 'Ahmed Galal'),
(50, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:24', 'Ahmed Galal'),
(51, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:24', 'Ahmed Galal'),
(52, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:25', 'Ahmed Galal'),
(53, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:18:25', 'Ahmed Galal'),
(54, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:07', 'Ahmed Galal'),
(55, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:07', 'Ahmed Galal'),
(56, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:07', 'Ahmed Galal'),
(57, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:07', 'Ahmed Galal'),
(58, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:07', 'Ahmed Galal'),
(59, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:08', 'Ahmed Galal'),
(60, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:08', 'Ahmed Galal'),
(61, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:08', 'Ahmed Galal'),
(62, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:08', 'Ahmed Galal'),
(63, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:09', 'Ahmed Galal'),
(64, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:09', 'Ahmed Galal'),
(65, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:09', 'Ahmed Galal'),
(66, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:09', 'Ahmed Galal'),
(67, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:09', 'Ahmed Galal'),
(68, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:10', 'Ahmed Galal'),
(69, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:10', 'Ahmed Galal'),
(70, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:10', 'Ahmed Galal'),
(71, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:10', 'Ahmed Galal'),
(72, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:10', 'Ahmed Galal'),
(73, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:11', 'Ahmed Galal'),
(74, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:12', 'Ahmed Galal'),
(75, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:12', 'Ahmed Galal'),
(76, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:13', 'Ahmed Galal'),
(77, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:13', 'Ahmed Galal'),
(78, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:13', 'Ahmed Galal'),
(79, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:13', 'Ahmed Galal'),
(80, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:14', 'Ahmed Galal'),
(81, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:14', 'Ahmed Galal'),
(82, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:14', 'Ahmed Galal'),
(83, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:14', 'Ahmed Galal'),
(84, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:14', 'Ahmed Galal'),
(85, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:21:15', 'Ahmed Galal'),
(86, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:05', 'Ahmed Galal'),
(87, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:05', 'Ahmed Galal'),
(88, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(89, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(90, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(91, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(92, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(93, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:06', 'Ahmed Galal'),
(94, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:07', 'Ahmed Galal'),
(95, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:07', 'Ahmed Galal'),
(96, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:07', 'Ahmed Galal'),
(97, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:07', 'Ahmed Galal'),
(98, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:07', 'Ahmed Galal'),
(99, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(100, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(101, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(102, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(103, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(104, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:08', 'Ahmed Galal'),
(105, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:09', 'Ahmed Galal'),
(106, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:10', 'Ahmed Galal'),
(107, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(108, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(109, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(110, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(111, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(112, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:11', 'Ahmed Galal'),
(113, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:12', 'Ahmed Galal'),
(114, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:12', 'Ahmed Galal'),
(115, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:12', 'Ahmed Galal'),
(116, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:12', 'Ahmed Galal'),
(117, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:12', 'Ahmed Galal'),
(118, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(119, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(120, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(121, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(122, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(123, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:13', 'Ahmed Galal'),
(124, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:14', 'Ahmed Galal'),
(125, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:14', 'Ahmed Galal'),
(126, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:19', 'Ahmed Galal'),
(127, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:19', 'Ahmed Galal'),
(128, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:19', 'Ahmed Galal'),
(129, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:20', 'Ahmed Galal'),
(130, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:20', 'Ahmed Galal'),
(131, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:20', 'Ahmed Galal'),
(132, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:20', 'Ahmed Galal'),
(133, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:20', 'Ahmed Galal'),
(134, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:21', 'Ahmed Galal'),
(135, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:21', 'Ahmed Galal'),
(136, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:21', 'Ahmed Galal'),
(137, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:21', 'Ahmed Galal'),
(138, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:21', 'Ahmed Galal'),
(139, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(140, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(141, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(142, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(143, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(144, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:22', 'Ahmed Galal'),
(145, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:23', 'Ahmed Galal'),
(146, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:53', 'Ahmed Galal'),
(147, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:54', 'Ahmed Galal'),
(148, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:54', 'Ahmed Galal'),
(149, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:54', 'Ahmed Galal'),
(150, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:54', 'Ahmed Galal'),
(151, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:54', 'Ahmed Galal'),
(152, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:55', 'Ahmed Galal'),
(153, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:55', 'Ahmed Galal'),
(154, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:55', 'Ahmed Galal'),
(155, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:55', 'Ahmed Galal'),
(156, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:56', 'Ahmed Galal'),
(157, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:56', 'Ahmed Galal'),
(158, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:56', 'Ahmed Galal'),
(159, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:56', 'Ahmed Galal'),
(160, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:56', 'Ahmed Galal'),
(161, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:57', 'Ahmed Galal'),
(162, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:57', 'Ahmed Galal'),
(163, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:57', 'Ahmed Galal'),
(164, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:57', 'Ahmed Galal'),
(165, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:22:57', 'Ahmed Galal'),
(166, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:58', 'Ahmed Galal'),
(167, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:58', 'Ahmed Galal'),
(168, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:58', 'Ahmed Galal'),
(169, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:58', 'Ahmed Galal'),
(170, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:58', 'Ahmed Galal'),
(171, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:59', 'Ahmed Galal'),
(172, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:59', 'Ahmed Galal'),
(173, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:59', 'Ahmed Galal'),
(174, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:59', 'Ahmed Galal'),
(175, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:23:59', 'Ahmed Galal'),
(176, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:00', 'Ahmed Galal'),
(177, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:00', 'Ahmed Galal'),
(178, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:00', 'Ahmed Galal'),
(179, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:00', 'Ahmed Galal'),
(180, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:00', 'Ahmed Galal'),
(181, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:01', 'Ahmed Galal'),
(182, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:01', 'Ahmed Galal'),
(183, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:01', 'Ahmed Galal'),
(184, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:01', 'Ahmed Galal'),
(185, 'Tried to access page where don\'t have permission [Api]', '2022-05-15 12:24:01', 'Ahmed Galal'),
(186, 'New User Added [ID: 1, Name: ahmed]', '2022-05-15 12:25:29', 'Ahmed Galal'),
(187, 'New Client Created [ID: 1]', '2022-05-15 13:10:16', NULL),
(188, 'Contact Created [ID: 1]', '2022-05-15 13:13:10', NULL),
(189, 'New Client Created [ID: 2]', '2022-05-15 13:13:10', NULL),
(190, 'User Successfully Logged In [User Id: 1, Is Staff Member: No, IP: 102.188.23.127]', '2022-05-15 13:13:10', 'ahmed Galal'),
(191, 'Client Deleted [ID: 2]', '2022-05-15 13:16:08', 'Ahmed Galal'),
(192, 'Client Deleted [ID: 1]', '2022-05-15 13:16:08', 'Ahmed Galal'),
(193, 'New Client Created [ID: 3]', '2022-05-15 13:16:20', NULL),
(194, 'New Client Created [ID: 4]', '2022-05-15 13:19:08', NULL),
(195, 'Client Deleted [ID: 4]', '2022-05-15 13:19:39', 'Ahmed Galal'),
(196, 'Contact Created [ID: 2]', '2022-05-15 13:19:58', NULL),
(197, 'Contact Created [ID: 3]', '2022-05-15 13:20:53', NULL),
(198, 'Client Deleted [ID: 3]', '2022-05-15 13:23:53', 'Ahmed Galal'),
(199, 'New Client Created [ID: 5, From Staff: 1]', '2022-05-15 13:44:55', 'Ahmed Galal'),
(200, 'Client Deleted [ID: 5]', '2022-05-15 13:45:14', 'Ahmed Galal'),
(201, 'New Client Created [ID: 6, From Staff: 1]', '2022-05-15 14:02:05', 'Ahmed Galal'),
(202, 'Contact Created [ID: 4]', '2022-05-15 14:02:06', 'Ahmed Galal'),
(203, 'Client Deleted [ID: 6]', '2022-05-15 14:03:21', 'Ahmed Galal'),
(204, 'New Client Created [ID: 7, From Staff: 1]', '2022-05-15 14:03:55', 'Ahmed Galal'),
(205, 'Contact Created [ID: 5]', '2022-05-15 14:03:55', 'Ahmed Galal'),
(206, 'User Successfully Logged In [User Id: 5, Is Staff Member: No, IP: 102.188.23.127]', '2022-05-15 14:09:32', 'ahmed Galal'),
(207, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 102.188.23.127]', '2022-05-15 14:41:39', 'Ahmed Galal'),
(208, 'User Successfully Logged In [User Id: 5, Is Staff Member: No, IP: 102.188.23.127]', '2022-05-15 14:48:56', 'ahmed Galal'),
(209, 'User Successfully Logged In [User Id: 5, Is Staff Member: No, IP: 102.188.23.127]', '2022-05-15 15:01:30', 'ahmed Galal'),
(210, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 154.181.129.28]', '2022-05-25 16:42:44', 'Ahmed Galal'),
(211, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 154.182.58.179]', '2022-05-26 09:29:56', 'Ahmed Galal'),
(212, 'Non Existing User Tried to Login [Email: qbizns@yahoo.com, Is Staff Member: No, IP: 154.182.58.179]', '2022-05-26 09:43:19', 'Ahmed Galal'),
(213, 'Non Existing User Tried to Login [Email: qbizns@yahoo.com, Is Staff Member: No, IP: 154.182.58.179]', '2022-05-26 09:44:36', 'Ahmed Galal'),
(214, 'Contact Created [ID: 6]', '2022-05-26 09:45:13', 'Ahmed Galal'),
(215, 'New Client Created [ID: 8, From Staff: 1]', '2022-05-26 09:45:13', 'Ahmed Galal'),
(216, 'User Successfully Logged In [User Id: 6, Is Staff Member: No, IP: 154.182.58.179]', '2022-05-26 09:45:13', 'qbizns svfs'),
(217, 'User Successfully Logged In [User Id: 6, Is Staff Member: No, IP: 154.182.58.179]', '2022-05-26 09:47:31', 'qbizns svfs'),
(218, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: 154.182.58.179]', '2022-05-26 09:52:36', 'Ahmed Galal'),
(219, 'Contact Created [ID: 7]', '2022-05-26 11:47:52', NULL),
(220, 'New Client Created [ID: 9]', '2022-05-26 11:47:52', NULL),
(221, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 41.69.238.15]', '2022-05-26 11:47:52', 'Merrill Sharpe'),
(222, 'Non Existing User Tried to Login [Email: test@test.com, Is Staff Member: No, IP: 156.213.56.217]', '2022-05-29 15:22:14', NULL),
(223, 'Non Existing User Tried to Login [Email: test@test.com, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 15:41:31', NULL),
(224, 'Non Existing User Tried to Login [Email: test@test.com, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 15:55:46', NULL),
(225, 'Non Existing User Tried to Login [Email: test@test.com, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 16:54:22', NULL),
(226, 'Non Existing User Tried to Login [Email: abdo@gmail.com, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 16:55:12', NULL),
(227, 'Non Existing User Tried to Login [Email: test@test.com, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 17:06:18', NULL),
(228, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.186.163.50]', '2022-05-29 17:27:06', 'Merrill Sharpe'),
(229, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 156.213.56.217]', '2022-05-30 09:40:18', 'Merrill Sharpe'),
(230, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 09:59:15', 'Merrill Sharpe'),
(231, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 09:59:37', 'Merrill Sharpe'),
(232, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:00:00', 'Merrill Sharpe'),
(233, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:00:26', 'Merrill Sharpe'),
(234, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:01:29', 'Merrill Sharpe'),
(235, 'Failed Login Attempt [Email: client@client.com, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:02:48', NULL),
(236, 'Failed Login Attempt [Email: client@client.com, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:04:22', NULL),
(237, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:14:00', 'Merrill Sharpe'),
(238, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:26:50', 'Merrill Sharpe'),
(239, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:27:22', 'Merrill Sharpe'),
(240, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:28:07', 'Merrill Sharpe'),
(241, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 102.184.113.70]', '2022-05-30 10:31:21', 'Merrill Sharpe'),
(242, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 11:14:48', 'Merrill Sharpe'),
(243, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 11:17:46', 'Merrill Sharpe'),
(244, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 11:18:36', 'Merrill Sharpe'),
(245, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 11:44:08', 'Merrill Sharpe'),
(246, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 11:45:56', 'Merrill Sharpe'),
(247, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 12:04:40', 'Merrill Sharpe'),
(248, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 12:05:47', 'Merrill Sharpe'),
(249, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: 197.47.212.108]', '2022-05-30 12:06:30', 'Merrill Sharpe'),
(250, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-05-30 16:04:52', 'Merrill Sharpe'),
(251, 'Failed Login Attempt [Email: client@client.com, Is Staff Member: No, IP: ::1]', '2022-06-01 15:46:48', NULL),
(252, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-01 15:46:57', 'Merrill Sharpe'),
(253, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-01 15:49:38', 'Merrill Sharpe'),
(254, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-01 15:50:09', 'Merrill Sharpe'),
(255, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-05 11:15:40', 'Merrill Sharpe'),
(256, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-06 09:32:43', 'Merrill Sharpe'),
(257, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-06 12:13:53', 'Merrill Sharpe'),
(258, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-07 13:04:37', 'Merrill Sharpe'),
(259, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-07 14:28:02', 'Merrill Sharpe'),
(260, 'User Successfully Logged In [User Id: 7, Is Staff Member: No, IP: ::1]', '2022-06-07 16:22:48', 'Merrill Sharpe'),
(261, 'Non Existing User Tried to Login [Email: admin@test.com, Is Staff Member: Yes, IP: ::1]', '2022-06-08 11:05:19', NULL),
(262, 'User Successfully Logged In [User Id: 1, Is Staff Member: Yes, IP: ::1]', '2022-06-08 11:07:11', 'Ahmed Galal');

-- --------------------------------------------------------

--
-- Table structure for table `tblannouncements`
--

CREATE TABLE `tblannouncements` (
  `announcementid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `showtousers` int(11) NOT NULL,
  `showtostaff` int(11) NOT NULL,
  `showname` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `userid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblclients`
--

CREATE TABLE `tblclients` (
  `userid` int(11) NOT NULL,
  `company` varchar(191) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(15) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `leadid` int(11) DEFAULT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT 0,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT 0,
  `longitude` varchar(191) DEFAULT NULL,
  `latitude` varchar(191) DEFAULT NULL,
  `default_language` varchar(40) DEFAULT NULL,
  `default_currency` int(11) NOT NULL DEFAULT 0,
  `show_primary_contact` int(11) NOT NULL DEFAULT 0,
  `stripe_id` varchar(40) DEFAULT NULL,
  `registration_confirmed` int(11) NOT NULL DEFAULT 1,
  `addedfrom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblclients`
--

INSERT INTO `tblclients` (`userid`, `company`, `vat`, `phonenumber`, `country`, `city`, `zip`, `state`, `address`, `website`, `datecreated`, `active`, `leadid`, `billing_street`, `billing_city`, `billing_state`, `billing_zip`, `billing_country`, `shipping_street`, `shipping_city`, `shipping_state`, `shipping_zip`, `shipping_country`, `longitude`, `latitude`, `default_language`, `default_currency`, `show_primary_contact`, `stripe_id`, `registration_confirmed`, `addedfrom`) VALUES
(7, 'amouxmedia', '', '', 0, '', '', '', '', '', '2022-05-15 14:03:55', 1, NULL, '', '', '', '', 0, '', '', '', '', 0, NULL, NULL, '', 0, 0, NULL, 1, 1),
(8, '', '', '', 236, ';m;m', '22332', 'Minnesota', 'dfsvdmfvblkm', '', '2022-05-26 09:45:13', 1, NULL, 'dfsvdmfvblkm', ';m;m', 'Minnesota', '22332', 236, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'english', 0, 0, NULL, 1, 1),
(9, 'Randolph and Ortega Inc', '', '+1 (991) 209-8152', 124, 'Eaque nisi nesciunt', '28921', 'Suscipit ut pariatur', 'Ab enim impedit off', 'https://www.mutiz.cc', '2022-05-26 11:47:52', 1, NULL, 'Ab enim impedit off', 'Eaque nisi nesciunt', 'Suscipit ut pariatur', '28921', 124, NULL, NULL, NULL, NULL, 0, NULL, NULL, 'english', 0, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblconsents`
--

CREATE TABLE `tblconsents` (
  `id` int(11) NOT NULL,
  `action` varchar(10) NOT NULL,
  `date` datetime NOT NULL,
  `ip` varchar(40) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `opt_in_purpose_description` text DEFAULT NULL,
  `purpose_id` int(11) NOT NULL,
  `staff_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblconsent_purposes`
--

CREATE TABLE `tblconsent_purposes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `last_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontacts`
--

CREATE TABLE `tblcontacts` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `is_primary` int(11) NOT NULL DEFAULT 1,
  `firstname` varchar(191) NOT NULL,
  `lastname` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_key` varchar(32) DEFAULT NULL,
  `email_verification_sent_at` datetime DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `profile_image` varchar(191) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `invoice_emails` tinyint(1) NOT NULL DEFAULT 1,
  `estimate_emails` tinyint(1) NOT NULL DEFAULT 1,
  `credit_note_emails` tinyint(1) NOT NULL DEFAULT 1,
  `contract_emails` tinyint(1) NOT NULL DEFAULT 1,
  `task_emails` tinyint(1) NOT NULL DEFAULT 1,
  `project_emails` tinyint(1) NOT NULL DEFAULT 1,
  `ticket_emails` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontacts`
--

INSERT INTO `tblcontacts` (`id`, `userid`, `is_primary`, `firstname`, `lastname`, `email`, `phonenumber`, `title`, `datecreated`, `password`, `new_pass_key`, `new_pass_key_requested`, `email_verified_at`, `email_verification_key`, `email_verification_sent_at`, `last_ip`, `last_login`, `last_password_change`, `active`, `profile_image`, `direction`, `invoice_emails`, `estimate_emails`, `credit_note_emails`, `contract_emails`, `task_emails`, `project_emails`, `ticket_emails`) VALUES
(5, 7, 1, 'ahmed', 'Galal', 'qbizns@gmail.com', '01002948785', NULL, '2022-05-15 14:03:55', '$2a$08$KFnC0Oeehp3l70dlroqzMebRr326b/DSImxFoxqCmuFerMVmZ4U.K', NULL, NULL, '2022-05-15 14:03:55', NULL, NULL, '102.188.23.127', '2022-05-15 15:01:30', NULL, 1, NULL, NULL, 0, 0, 0, 0, 0, 0, 0),
(6, 8, 1, 'qbizns', 'svfs', 'qbizns@ddd.com', '+19565132132', '', '2022-05-26 09:45:13', '$2a$08$4qfxjiCvAC0WGRNUE9i1b.fYaBlsM0CV5IokUIVDBHSEavIFBgUsS', NULL, NULL, NULL, '6c57be5ca3c985efc9d6778d9bf9bce5', NULL, '154.182.58.179', '2022-05-26 09:47:31', NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1),
(7, 9, 1, 'Merrill', 'Sharpe', 'client@client.com', '+231+1 (848) 304-7694', 'Qui possimus ipsa ', '2022-05-26 11:47:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '5fadbdec6524075e1a987babbd4f7314', NULL, '::1', '2022-06-07 16:22:48', NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact_permissions`
--

CREATE TABLE `tblcontact_permissions` (
  `id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcontact_permissions`
--

INSERT INTO `tblcontact_permissions` (`id`, `permission_id`, `userid`) VALUES
(7, 1, 6),
(8, 2, 6),
(9, 3, 6),
(10, 4, 6),
(11, 5, 6),
(12, 6, 6),
(13, 1, 7),
(14, 2, 7),
(15, 3, 7),
(16, 4, 7),
(17, 5, 7),
(18, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts`
--

CREATE TABLE `tblcontracts` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `client` int(11) NOT NULL,
  `datestart` date DEFAULT NULL,
  `dateend` date DEFAULT NULL,
  `contract_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `isexpirynotified` int(11) NOT NULL DEFAULT 0,
  `contract_value` decimal(15,2) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `not_visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `signed` tinyint(1) NOT NULL DEFAULT 0,
  `signature` varchar(40) DEFAULT NULL,
  `marked_as_signed` tinyint(1) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontracts_types`
--

CREATE TABLE `tblcontracts_types` (
  `id` int(11) NOT NULL,
  `name` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_comments`
--

CREATE TABLE `tblcontract_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `contract_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcontract_renewals`
--

CREATE TABLE `tblcontract_renewals` (
  `id` int(11) NOT NULL,
  `contractid` int(11) NOT NULL,
  `old_start_date` date NOT NULL,
  `new_start_date` date NOT NULL,
  `old_end_date` date DEFAULT NULL,
  `new_end_date` date DEFAULT NULL,
  `old_value` decimal(15,2) DEFAULT NULL,
  `new_value` decimal(15,2) DEFAULT NULL,
  `date_renewed` datetime NOT NULL,
  `renewed_by` varchar(100) NOT NULL,
  `renewed_by_staff_id` int(11) NOT NULL DEFAULT 0,
  `is_on_old_expiry_notified` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcountries`
--

CREATE TABLE `tblcountries` (
  `country_id` int(11) NOT NULL,
  `iso2` char(2) DEFAULT NULL,
  `short_name` varchar(80) NOT NULL DEFAULT '',
  `long_name` varchar(80) NOT NULL DEFAULT '',
  `iso3` char(3) DEFAULT NULL,
  `numcode` varchar(6) DEFAULT NULL,
  `un_member` varchar(12) DEFAULT NULL,
  `calling_code` varchar(8) DEFAULT NULL,
  `cctld` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcountries`
--

INSERT INTO `tblcountries` (`country_id`, `iso2`, `short_name`, `long_name`, `iso3`, `numcode`, `un_member`, `calling_code`, `cctld`) VALUES
(1, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', '004', 'yes', '93', '.af'),
(2, 'AX', 'Aland Islands', '&Aring;land Islands', 'ALA', '248', 'no', '358', '.ax'),
(3, 'AL', 'Albania', 'Republic of Albania', 'ALB', '008', 'yes', '355', '.al'),
(4, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', '012', 'yes', '213', '.dz'),
(5, 'AS', 'American Samoa', 'American Samoa', 'ASM', '016', 'no', '1+684', '.as'),
(6, 'AD', 'Andorra', 'Principality of Andorra', 'AND', '020', 'yes', '376', '.ad'),
(7, 'AO', 'Angola', 'Republic of Angola', 'AGO', '024', 'yes', '244', '.ao'),
(8, 'AI', 'Anguilla', 'Anguilla', 'AIA', '660', 'no', '1+264', '.ai'),
(9, 'AQ', 'Antarctica', 'Antarctica', 'ATA', '010', 'no', '672', '.aq'),
(10, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', '028', 'yes', '1+268', '.ag'),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', '032', 'yes', '54', '.ar'),
(12, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', '051', 'yes', '374', '.am'),
(13, 'AW', 'Aruba', 'Aruba', 'ABW', '533', 'no', '297', '.aw'),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', '036', 'yes', '61', '.au'),
(15, 'AT', 'Austria', 'Republic of Austria', 'AUT', '040', 'yes', '43', '.at'),
(16, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', '031', 'yes', '994', '.az'),
(17, 'BS', 'Bahamas', 'Commonwealth of The Bahamas', 'BHS', '044', 'yes', '1+242', '.bs'),
(18, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', '048', 'yes', '973', '.bh'),
(19, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', '050', 'yes', '880', '.bd'),
(20, 'BB', 'Barbados', 'Barbados', 'BRB', '052', 'yes', '1+246', '.bb'),
(21, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', '112', 'yes', '375', '.by'),
(22, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', '056', 'yes', '32', '.be'),
(23, 'BZ', 'Belize', 'Belize', 'BLZ', '084', 'yes', '501', '.bz'),
(24, 'BJ', 'Benin', 'Republic of Benin', 'BEN', '204', 'yes', '229', '.bj'),
(25, 'BM', 'Bermuda', 'Bermuda Islands', 'BMU', '060', 'no', '1+441', '.bm'),
(26, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', '064', 'yes', '975', '.bt'),
(27, 'BO', 'Bolivia', 'Plurinational State of Bolivia', 'BOL', '068', 'yes', '591', '.bo'),
(28, 'BQ', 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', 'no', '599', '.bq'),
(29, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', '070', 'yes', '387', '.ba'),
(30, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', '072', 'yes', '267', '.bw'),
(31, 'BV', 'Bouvet Island', 'Bouvet Island', 'BVT', '074', 'no', 'NONE', '.bv'),
(32, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', '076', 'yes', '55', '.br'),
(33, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'IOT', '086', 'no', '246', '.io'),
(34, 'BN', 'Brunei', 'Brunei Darussalam', 'BRN', '096', 'yes', '673', '.bn'),
(35, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', '100', 'yes', '359', '.bg'),
(36, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', '854', 'yes', '226', '.bf'),
(37, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', '108', 'yes', '257', '.bi'),
(38, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', '116', 'yes', '855', '.kh'),
(39, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', '120', 'yes', '237', '.cm'),
(40, 'CA', 'Canada', 'Canada', 'CAN', '124', 'yes', '1', '.ca'),
(41, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', '132', 'yes', '238', '.cv'),
(42, 'KY', 'Cayman Islands', 'The Cayman Islands', 'CYM', '136', 'no', '1+345', '.ky'),
(43, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', '140', 'yes', '236', '.cf'),
(44, 'TD', 'Chad', 'Republic of Chad', 'TCD', '148', 'yes', '235', '.td'),
(45, 'CL', 'Chile', 'Republic of Chile', 'CHL', '152', 'yes', '56', '.cl'),
(46, 'CN', 'China', 'People\'s Republic of China', 'CHN', '156', 'yes', '86', '.cn'),
(47, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', '162', 'no', '61', '.cx'),
(48, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', '166', 'no', '61', '.cc'),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', '170', 'yes', '57', '.co'),
(50, 'KM', 'Comoros', 'Union of the Comoros', 'COM', '174', 'yes', '269', '.km'),
(51, 'CG', 'Congo', 'Republic of the Congo', 'COG', '178', 'yes', '242', '.cg'),
(52, 'CK', 'Cook Islands', 'Cook Islands', 'COK', '184', 'some', '682', '.ck'),
(53, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', '188', 'yes', '506', '.cr'),
(54, 'CI', 'Cote d\'ivoire (Ivory Coast)', 'Republic of C&ocirc;te D\'Ivoire (Ivory Coast)', 'CIV', '384', 'yes', '225', '.ci'),
(55, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', '191', 'yes', '385', '.hr'),
(56, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', '192', 'yes', '53', '.cu'),
(57, 'CW', 'Curacao', 'Cura&ccedil;ao', 'CUW', '531', 'no', '599', '.cw'),
(58, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', '196', 'yes', '357', '.cy'),
(59, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', '203', 'yes', '420', '.cz'),
(60, 'CD', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', 'COD', '180', 'yes', '243', '.cd'),
(61, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', '208', 'yes', '45', '.dk'),
(62, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', '262', 'yes', '253', '.dj'),
(63, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', '212', 'yes', '1+767', '.dm'),
(64, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', '214', 'yes', '1+809, 8', '.do'),
(65, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', '218', 'yes', '593', '.ec'),
(66, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', '818', 'yes', '20', '.eg'),
(67, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', '222', 'yes', '503', '.sv'),
(68, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', '226', 'yes', '240', '.gq'),
(69, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', '232', 'yes', '291', '.er'),
(70, 'EE', 'Estonia', 'Republic of Estonia', 'EST', '233', 'yes', '372', '.ee'),
(71, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', '231', 'yes', '251', '.et'),
(72, 'FK', 'Falkland Islands (Malvinas)', 'The Falkland Islands (Malvinas)', 'FLK', '238', 'no', '500', '.fk'),
(73, 'FO', 'Faroe Islands', 'The Faroe Islands', 'FRO', '234', 'no', '298', '.fo'),
(74, 'FJ', 'Fiji', 'Republic of Fiji', 'FJI', '242', 'yes', '679', '.fj'),
(75, 'FI', 'Finland', 'Republic of Finland', 'FIN', '246', 'yes', '358', '.fi'),
(76, 'FR', 'France', 'French Republic', 'FRA', '250', 'yes', '33', '.fr'),
(77, 'GF', 'French Guiana', 'French Guiana', 'GUF', '254', 'no', '594', '.gf'),
(78, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', '258', 'no', '689', '.pf'),
(79, 'TF', 'French Southern Territories', 'French Southern Territories', 'ATF', '260', 'no', NULL, '.tf'),
(80, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', '266', 'yes', '241', '.ga'),
(81, 'GM', 'Gambia', 'Republic of The Gambia', 'GMB', '270', 'yes', '220', '.gm'),
(82, 'GE', 'Georgia', 'Georgia', 'GEO', '268', 'yes', '995', '.ge'),
(83, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', '276', 'yes', '49', '.de'),
(84, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', '288', 'yes', '233', '.gh'),
(85, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', '292', 'no', '350', '.gi'),
(86, 'GR', 'Greece', 'Hellenic Republic', 'GRC', '300', 'yes', '30', '.gr'),
(87, 'GL', 'Greenland', 'Greenland', 'GRL', '304', 'no', '299', '.gl'),
(88, 'GD', 'Grenada', 'Grenada', 'GRD', '308', 'yes', '1+473', '.gd'),
(89, 'GP', 'Guadaloupe', 'Guadeloupe', 'GLP', '312', 'no', '590', '.gp'),
(90, 'GU', 'Guam', 'Guam', 'GUM', '316', 'no', '1+671', '.gu'),
(91, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', '320', 'yes', '502', '.gt'),
(92, 'GG', 'Guernsey', 'Guernsey', 'GGY', '831', 'no', '44', '.gg'),
(93, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', '324', 'yes', '224', '.gn'),
(94, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', '624', 'yes', '245', '.gw'),
(95, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', '328', 'yes', '592', '.gy'),
(96, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', '332', 'yes', '509', '.ht'),
(97, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', '334', 'no', 'NONE', '.hm'),
(98, 'HN', 'Honduras', 'Republic of Honduras', 'HND', '340', 'yes', '504', '.hn'),
(99, 'HK', 'Hong Kong', 'Hong Kong', 'HKG', '344', 'no', '852', '.hk'),
(100, 'HU', 'Hungary', 'Hungary', 'HUN', '348', 'yes', '36', '.hu'),
(101, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', '352', 'yes', '354', '.is'),
(102, 'IN', 'India', 'Republic of India', 'IND', '356', 'yes', '91', '.in'),
(103, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', '360', 'yes', '62', '.id'),
(104, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', '364', 'yes', '98', '.ir'),
(105, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', '368', 'yes', '964', '.iq'),
(106, 'IE', 'Ireland', 'Ireland', 'IRL', '372', 'yes', '353', '.ie'),
(107, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', '833', 'no', '44', '.im'),
(108, 'IL', 'Israel', 'State of Israel', 'ISR', '376', 'yes', '972', '.il'),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', '380', 'yes', '39', '.jm'),
(110, 'JM', 'Jamaica', 'Jamaica', 'JAM', '388', 'yes', '1+876', '.jm'),
(111, 'JP', 'Japan', 'Japan', 'JPN', '392', 'yes', '81', '.jp'),
(112, 'JE', 'Jersey', 'The Bailiwick of Jersey', 'JEY', '832', 'no', '44', '.je'),
(113, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', '400', 'yes', '962', '.jo'),
(114, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', '398', 'yes', '7', '.kz'),
(115, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', '404', 'yes', '254', '.ke'),
(116, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', '296', 'yes', '686', '.ki'),
(117, 'XK', 'Kosovo', 'Republic of Kosovo', '---', '---', 'some', '381', ''),
(118, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', '414', 'yes', '965', '.kw'),
(119, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', '417', 'yes', '996', '.kg'),
(120, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', '418', 'yes', '856', '.la'),
(121, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', '428', 'yes', '371', '.lv'),
(122, 'LB', 'Lebanon', 'Republic of Lebanon', 'LBN', '422', 'yes', '961', '.lb'),
(123, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', '426', 'yes', '266', '.ls'),
(124, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', '430', 'yes', '231', '.lr'),
(125, 'LY', 'Libya', 'Libya', 'LBY', '434', 'yes', '218', '.ly'),
(126, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', '438', 'yes', '423', '.li'),
(127, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', '440', 'yes', '370', '.lt'),
(128, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', '442', 'yes', '352', '.lu'),
(129, 'MO', 'Macao', 'The Macao Special Administrative Region', 'MAC', '446', 'no', '853', '.mo'),
(130, 'MK', 'North Macedonia', 'Republic of North Macedonia', 'MKD', '807', 'yes', '389', '.mk'),
(131, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', '450', 'yes', '261', '.mg'),
(132, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', '454', 'yes', '265', '.mw'),
(133, 'MY', 'Malaysia', 'Malaysia', 'MYS', '458', 'yes', '60', '.my'),
(134, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', '462', 'yes', '960', '.mv'),
(135, 'ML', 'Mali', 'Republic of Mali', 'MLI', '466', 'yes', '223', '.ml'),
(136, 'MT', 'Malta', 'Republic of Malta', 'MLT', '470', 'yes', '356', '.mt'),
(137, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', '584', 'yes', '692', '.mh'),
(138, 'MQ', 'Martinique', 'Martinique', 'MTQ', '474', 'no', '596', '.mq'),
(139, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', '478', 'yes', '222', '.mr'),
(140, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', '480', 'yes', '230', '.mu'),
(141, 'YT', 'Mayotte', 'Mayotte', 'MYT', '175', 'no', '262', '.yt'),
(142, 'MX', 'Mexico', 'United Mexican States', 'MEX', '484', 'yes', '52', '.mx'),
(143, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', '583', 'yes', '691', '.fm'),
(144, 'MD', 'Moldava', 'Republic of Moldova', 'MDA', '498', 'yes', '373', '.md'),
(145, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', '492', 'yes', '377', '.mc'),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', '496', 'yes', '976', '.mn'),
(147, 'ME', 'Montenegro', 'Montenegro', 'MNE', '499', 'yes', '382', '.me'),
(148, 'MS', 'Montserrat', 'Montserrat', 'MSR', '500', 'no', '1+664', '.ms'),
(149, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', '504', 'yes', '212', '.ma'),
(150, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', '508', 'yes', '258', '.mz'),
(151, 'MM', 'Myanmar (Burma)', 'Republic of the Union of Myanmar', 'MMR', '104', 'yes', '95', '.mm'),
(152, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', '516', 'yes', '264', '.na'),
(153, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', '520', 'yes', '674', '.nr'),
(154, 'NP', 'Nepal', 'Federal Democratic Republic of Nepal', 'NPL', '524', 'yes', '977', '.np'),
(155, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', '528', 'yes', '31', '.nl'),
(156, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', '540', 'no', '687', '.nc'),
(157, 'NZ', 'New Zealand', 'New Zealand', 'NZL', '554', 'yes', '64', '.nz'),
(158, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', '558', 'yes', '505', '.ni'),
(159, 'NE', 'Niger', 'Republic of Niger', 'NER', '562', 'yes', '227', '.ne'),
(160, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', '566', 'yes', '234', '.ng'),
(161, 'NU', 'Niue', 'Niue', 'NIU', '570', 'some', '683', '.nu'),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', '574', 'no', '672', '.nf'),
(163, 'KP', 'North Korea', 'Democratic People\'s Republic of Korea', 'PRK', '408', 'yes', '850', '.kp'),
(164, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', 'MNP', '580', 'no', '1+670', '.mp'),
(165, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', '578', 'yes', '47', '.no'),
(166, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', '512', 'yes', '968', '.om'),
(167, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', '586', 'yes', '92', '.pk'),
(168, 'PW', 'Palau', 'Republic of Palau', 'PLW', '585', 'yes', '680', '.pw'),
(169, 'PS', 'Palestine', 'State of Palestine (or Occupied Palestinian Territory)', 'PSE', '275', 'some', '970', '.ps'),
(170, 'PA', 'Panama', 'Republic of Panama', 'PAN', '591', 'yes', '507', '.pa'),
(171, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', '598', 'yes', '675', '.pg'),
(172, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', '600', 'yes', '595', '.py'),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', '604', 'yes', '51', '.pe'),
(174, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', '608', 'yes', '63', '.ph'),
(175, 'PN', 'Pitcairn', 'Pitcairn', 'PCN', '612', 'no', 'NONE', '.pn'),
(176, 'PL', 'Poland', 'Republic of Poland', 'POL', '616', 'yes', '48', '.pl'),
(177, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', '620', 'yes', '351', '.pt'),
(178, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', '630', 'no', '1+939', '.pr'),
(179, 'QA', 'Qatar', 'State of Qatar', 'QAT', '634', 'yes', '974', '.qa'),
(180, 'RE', 'Reunion', 'R&eacute;union', 'REU', '638', 'no', '262', '.re'),
(181, 'RO', 'Romania', 'Romania', 'ROU', '642', 'yes', '40', '.ro'),
(182, 'RU', 'Russia', 'Russian Federation', 'RUS', '643', 'yes', '7', '.ru'),
(183, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', '646', 'yes', '250', '.rw'),
(184, 'BL', 'Saint Barthelemy', 'Saint Barth&eacute;lemy', 'BLM', '652', 'no', '590', '.bl'),
(185, 'SH', 'Saint Helena', 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', '654', 'no', '290', '.sh'),
(186, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Christopher and Nevis', 'KNA', '659', 'yes', '1+869', '.kn'),
(187, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', '662', 'yes', '1+758', '.lc'),
(188, 'MF', 'Saint Martin', 'Saint Martin', 'MAF', '663', 'no', '590', '.mf'),
(189, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', '666', 'no', '508', '.pm'),
(190, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', '670', 'yes', '1+784', '.vc'),
(191, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', '882', 'yes', '685', '.ws'),
(192, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', '674', 'yes', '378', '.sm'),
(193, 'ST', 'Sao Tome and Principe', 'Democratic Republic of S&atilde;o Tom&eacute; and Pr&iacute;ncipe', 'STP', '678', 'yes', '239', '.st'),
(194, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', '682', 'yes', '966', '.sa'),
(195, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', '686', 'yes', '221', '.sn'),
(196, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', '688', 'yes', '381', '.rs'),
(197, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', '690', 'yes', '248', '.sc'),
(198, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', '694', 'yes', '232', '.sl'),
(199, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', '702', 'yes', '65', '.sg'),
(200, 'SX', 'Sint Maarten', 'Sint Maarten', 'SXM', '534', 'no', '1+721', '.sx'),
(201, 'SK', 'Slovakia', 'Slovak Republic', 'SVK', '703', 'yes', '421', '.sk'),
(202, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', '705', 'yes', '386', '.si'),
(203, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', '090', 'yes', '677', '.sb'),
(204, 'SO', 'Somalia', 'Somali Republic', 'SOM', '706', 'yes', '252', '.so'),
(205, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', '710', 'yes', '27', '.za'),
(206, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', '239', 'no', '500', '.gs'),
(207, 'KR', 'South Korea', 'Republic of Korea', 'KOR', '410', 'yes', '82', '.kr'),
(208, 'SS', 'South Sudan', 'Republic of South Sudan', 'SSD', '728', 'yes', '211', '.ss'),
(209, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', '724', 'yes', '34', '.es'),
(210, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', '144', 'yes', '94', '.lk'),
(211, 'SD', 'Sudan', 'Republic of the Sudan', 'SDN', '729', 'yes', '249', '.sd'),
(212, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', '740', 'yes', '597', '.sr'),
(213, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'SJM', '744', 'no', '47', '.sj'),
(214, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', '748', 'yes', '268', '.sz'),
(215, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', '752', 'yes', '46', '.se'),
(216, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', '756', 'yes', '41', '.ch'),
(217, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', '760', 'yes', '963', '.sy'),
(218, 'TW', 'Taiwan', 'Republic of China (Taiwan)', 'TWN', '158', 'former', '886', '.tw'),
(219, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', '762', 'yes', '992', '.tj'),
(220, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', '834', 'yes', '255', '.tz'),
(221, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', '764', 'yes', '66', '.th'),
(222, 'TL', 'Timor-Leste (East Timor)', 'Democratic Republic of Timor-Leste', 'TLS', '626', 'yes', '670', '.tl'),
(223, 'TG', 'Togo', 'Togolese Republic', 'TGO', '768', 'yes', '228', '.tg'),
(224, 'TK', 'Tokelau', 'Tokelau', 'TKL', '772', 'no', '690', '.tk'),
(225, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', '776', 'yes', '676', '.to'),
(226, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', '780', 'yes', '1+868', '.tt'),
(227, 'TN', 'Tunisia', 'Republic of Tunisia', 'TUN', '788', 'yes', '216', '.tn'),
(228, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', '792', 'yes', '90', '.tr'),
(229, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', '795', 'yes', '993', '.tm'),
(230, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', '796', 'no', '1+649', '.tc'),
(231, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', '798', 'yes', '688', '.tv'),
(232, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', '800', 'yes', '256', '.ug'),
(233, 'UA', 'Ukraine', 'Ukraine', 'UKR', '804', 'yes', '380', '.ua'),
(234, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', '784', 'yes', '971', '.ae'),
(235, 'GB', 'United Kingdom', 'United Kingdom of Great Britain and Nothern Ireland', 'GBR', '826', 'yes', '44', '.uk'),
(236, 'US', 'United States', 'United States of America', 'USA', '840', 'yes', '1', '.us'),
(237, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', '581', 'no', 'NONE', 'NONE'),
(238, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', '858', 'yes', '598', '.uy'),
(239, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', '860', 'yes', '998', '.uz'),
(240, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', '548', 'yes', '678', '.vu'),
(241, 'VA', 'Vatican City', 'State of the Vatican City', 'VAT', '336', 'no', '39', '.va'),
(242, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', '862', 'yes', '58', '.ve'),
(243, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', '704', 'yes', '84', '.vn'),
(244, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', '092', 'no', '1+284', '.vg'),
(245, 'VI', 'Virgin Islands, US', 'Virgin Islands of the United States', 'VIR', '850', 'no', '1+340', '.vi'),
(246, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'WLF', '876', 'no', '681', '.wf'),
(247, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', '732', 'no', '212', '.eh'),
(248, 'YE', 'Yemen', 'Republic of Yemen', 'YEM', '887', 'yes', '967', '.ye'),
(249, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', '894', 'yes', '260', '.zm'),
(250, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', '716', 'yes', '263', '.zw');

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnotes`
--

CREATE TABLE `tblcreditnotes` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 1,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `adminnote` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `clientnote` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_credit_note` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `reference_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcreditnote_refunds`
--

CREATE TABLE `tblcreditnote_refunds` (
  `id` int(11) NOT NULL,
  `credit_note_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `refunded_on` date NOT NULL,
  `payment_mode` varchar(40) NOT NULL,
  `note` text DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcredits`
--

CREATE TABLE `tblcredits` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `credit_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_applied` datetime NOT NULL,
  `amount` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcurrencies`
--

CREATE TABLE `tblcurrencies` (
  `id` int(11) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `decimal_separator` varchar(5) DEFAULT NULL,
  `thousand_separator` varchar(5) DEFAULT NULL,
  `placement` varchar(10) DEFAULT NULL,
  `isdefault` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcurrencies`
--

INSERT INTO `tblcurrencies` (`id`, `symbol`, `name`, `decimal_separator`, `thousand_separator`, `placement`, `isdefault`) VALUES
(1, '$', 'USD', '.', ',', 'before', 1),
(2, '€', 'EUR', ',', '.', 'before', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers_groups`
--

CREATE TABLE `tblcustomers_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_admins`
--

CREATE TABLE `tblcustomer_admins` (
  `staff_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date_assigned` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer_groups`
--

CREATE TABLE `tblcustomer_groups` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfields`
--

CREATE TABLE `tblcustomfields` (
  `id` int(11) NOT NULL,
  `fieldto` varchar(30) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `type` varchar(20) NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `display_inline` tinyint(1) NOT NULL DEFAULT 0,
  `field_order` int(11) DEFAULT 0,
  `active` int(11) NOT NULL DEFAULT 1,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `show_on_ticket_form` tinyint(1) NOT NULL DEFAULT 0,
  `only_admin` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_table` tinyint(1) NOT NULL DEFAULT 0,
  `show_on_client_portal` int(11) NOT NULL DEFAULT 0,
  `disalow_client_to_edit` int(11) NOT NULL DEFAULT 0,
  `bs_column` int(11) NOT NULL DEFAULT 12,
  `default_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomfieldsvalues`
--

CREATE TABLE `tblcustomfieldsvalues` (
  `id` int(11) NOT NULL,
  `relid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  `fieldto` varchar(15) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `departmentid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imap_username` varchar(191) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_from_header` tinyint(1) NOT NULL DEFAULT 0,
  `host` varchar(150) DEFAULT NULL,
  `password` mediumtext DEFAULT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(191) NOT NULL DEFAULT 'INBOX',
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `calendar_id` mediumtext DEFAULT NULL,
  `hidefromclient` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbldismissed_announcements`
--

CREATE TABLE `tbldismissed_announcements` (
  `dismissedannouncementid` int(11) NOT NULL,
  `announcementid` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblemailtemplates`
--

CREATE TABLE `tblemailtemplates` (
  `emailtemplateid` int(11) NOT NULL,
  `type` mediumtext NOT NULL,
  `slug` varchar(100) NOT NULL,
  `language` varchar(40) DEFAULT NULL,
  `name` mediumtext NOT NULL,
  `subject` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `fromname` mediumtext NOT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `plaintext` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(4) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblemailtemplates`
--

INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(1, 'client', 'new-client-created', 'english', 'New Contact Added/Registered (Welcome Email)', 'Welcome aboard', 'Dear {contact_firstname} {contact_lastname}<br /><br />Thank you for registering on the <strong>{companyname}</strong> CRM System.<br /><br />We just wanted to say welcome.<br /><br />Please contact us if you need any help.<br /><br />Click here to view your profile: <a href=\"{crm_url}\">{crm_url}</a><br /><br />Kind Regards, <br />{email_signature}<br /><br />(This is an automated email, so please don\'t reply to this email address)', '{companyname} | CRM', '', 0, 1, 0),
(2, 'invoice', 'invoice-send-to-client', 'english', 'Send Invoice to Customer', 'Invoice with number {invoice_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">We have prepared the following invoice for you: <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Invoice status</strong>: {invoice_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(3, 'ticket', 'new-ticket-opened-admin', 'english', 'New Ticket Opened (Opened by Staff, Sent to Customer)', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department:</strong> {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a><br /><br />Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(4, 'ticket', 'ticket-reply', 'english', 'Ticket Reply (Sent to Customer)', 'New Ticket Reply', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">You have a new ticket reply to ticket <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket Subject:</strong> {ticket_subject}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(5, 'ticket', 'ticket-autoresponse', 'english', 'New Ticket Opened - Autoresponse', 'New Support Ticket Opened', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Thank you for contacting our support team. A support ticket has now been opened for your request. You will be notified when a response is made by email.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_public_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(6, 'invoice', 'invoice-payment-recorded', 'english', 'Invoice Payment Recorded (Sent to Customer)', 'Invoice Payment Recorded', '<span style=\"font-size: 12pt;\">Hello {contact_firstname}&nbsp;{contact_lastname}<br /><br /></span>Thank you for the payment. Find the payment details below:<br /><br />-------------------------------------------------<br /><br />Amount:&nbsp;<strong>{payment_total}<br /></strong>Date:&nbsp;<strong>{payment_date}</strong><br />Invoice number:&nbsp;<span style=\"font-size: 12pt;\"><strong># {invoice_number}<br /><br /></strong></span>-------------------------------------------------<br /><br />You can always view the invoice for this payment at the following link:&nbsp;<a href=\"{invoice_link}\"><span style=\"font-size: 12pt;\">{invoice_number}</span></a><br /><br />We are looking forward working with you.<br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(7, 'invoice', 'invoice-overdue-notice', 'english', 'Invoice Overdue Notice', 'Invoice Overdue Notice - {invoice_number}', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">This is an overdue notice for invoice <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">This invoice was due: {invoice_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(8, 'invoice', 'invoice-already-send', 'english', 'Invoice Already Sent to Customer', 'Invoice # {invoice_number} ', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">At your request, here is the invoice with number <strong># {invoice_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(9, 'ticket', 'new-ticket-created-staff', 'english', 'New Ticket Created (Opened by Customer, Sent to Staff Members)', 'New Ticket Created', '<p><span style=\"font-size: 12pt;\">A new support ticket has been opened.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}<br /></span><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(10, 'estimate', 'estimate-send-to-client', 'english', 'Send Estimate to Customer', 'Estimate # {estimate_number} created', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the attached estimate <strong># {estimate_number}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Estimate status:</strong> {estimate_status}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">We look forward to your communication.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}<br /></span>', '{companyname} | CRM', '', 0, 1, 0),
(11, 'ticket', 'ticket-reply-to-admin', 'english', 'Ticket Reply (Sent to Staff)', 'New Support Ticket Reply', '<span style=\"font-size: 12pt;\">A new support ticket reply from {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(12, 'estimate', 'estimate-already-send', 'english', 'Estimate Already Sent to Customer', 'Estimate # {estimate_number} ', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank you for your estimate request.</span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(13, 'contract', 'contract-expiration', 'english', 'Contract Expiration Reminder (Sent to Customer Contacts)', 'Contract Expiration Reminder', '<span style=\"font-size: 12pt;\">Dear {client_company}</span><br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(14, 'tasks', 'task-assigned', 'english', 'New Task Assigned (Sent to Staff)', 'New Task Assigned to You - {task_name}', '<span style=\"font-size: 12pt;\">Dear {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\">You have been assigned to a new task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}<br /></span><strong>Start Date:</strong> {task_startdate}<br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {task_priority}<br /><br /></span><span style=\"font-size: 12pt;\"><span>You can view the task on the following link</span>: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(15, 'tasks', 'task-added-as-follower', 'english', 'Staff Member Added as Follower on Task (Sent to Staff)', 'You are added as follower on task - {task_name}', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}<br /></span><br /><span style=\"font-size: 12pt;\">You have been added as follower on the following task:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Start date:</strong> {task_startdate}</span><br /><br /><span>You can view the task on the following link</span><span>: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(16, 'tasks', 'task-commented', 'english', 'New Comment on Task (Sent to Staff)', 'New Comment on Task - {task_name}', 'Dear {staff_firstname}<br /><br />A comment has been made on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><strong>Comment:</strong> {task_comment}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(17, 'tasks', 'task-added-attachment', 'english', 'New Attachment(s) on Task (Sent to Staff)', 'New Attachment on Task - {task_name}', 'Hi {staff_firstname}<br /><br /><strong>{task_user_take_action}</strong> added an attachment on the following task:<br /><br /><strong>Name:</strong> {task_name}<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(18, 'estimate', 'estimate-declined-to-staff', 'english', 'Estimate Declined (Sent to Staff)', 'Customer Declined Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) declined estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(19, 'estimate', 'estimate-accepted-to-staff', 'english', 'Estimate Accepted (Sent to Staff)', 'Customer Accepted Estimate', '<span style=\"font-size: 12pt;\">Hi</span><br /> <br /><span style=\"font-size: 12pt;\">Customer ({client_company}) accepted estimate with number <strong># {estimate_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(20, 'proposals', 'proposal-client-accepted', 'english', 'Customer Action - Accepted (Sent to Staff)', 'Customer Accepted Proposal', '<div>Hi<br /> <br />Client <strong>{proposal_proposal_to}</strong> accepted the following proposal:<br /> <br /><strong>Number:</strong> {proposal_number}<br /><strong>Subject</strong>: {proposal_subject}<br /><strong>Total</strong>: {proposal_total}<br /> <br />View the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>', '{companyname} | CRM', '', 0, 1, 0),
(21, 'proposals', 'proposal-send-to-customer', 'english', 'Send Proposal to Customer', 'Proposal With Number {proposal_number} Created', 'Dear {proposal_proposal_to}<br /><br />Please find our attached proposal.<br /><br />This proposal is valid until: {proposal_open_till}<br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Please don\'t hesitate to comment online if you have any questions.<br /><br />We look forward to your communication.<br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(22, 'proposals', 'proposal-client-declined', 'english', 'Customer Action - Declined (Sent to Staff)', 'Client Declined Proposal', 'Hi<br /> <br />Customer <strong>{proposal_proposal_to}</strong> declined the proposal <strong>{proposal_subject}</strong><br /> <br />View the proposal on the following link <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(23, 'proposals', 'proposal-client-thank-you', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting proposal', 'Dear {proposal_proposal_to}<br /> <br />Thank for for accepting the proposal.<br /> <br />We look forward to doing business with you.<br /> <br />We will contact you as soon as possible<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(24, 'proposals', 'proposal-comment-to-client', 'english', 'New Comment  (Sent to Customer/Lead)', 'New Proposal Comment', 'Dear {proposal_proposal_to}<br /> <br />A new comment has been made on the following proposal: <strong>{proposal_number}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(25, 'proposals', 'proposal-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Proposal Comment', 'Hi<br /> <br />A new comment has been made to the proposal <strong>{proposal_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{proposal_link}\">{proposal_number}</a>&nbsp;or from the admin area.<br /> <br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(26, 'estimate', 'estimate-thank-you-to-customer', 'english', 'Thank You Email (Sent to Customer After Accept)', 'Thank for you accepting estimate', '<span style=\"font-size: 12pt;\">Dear {contact_firstname} {contact_lastname}</span><br /> <br /><span style=\"font-size: 12pt;\">Thank for for accepting the estimate.</span><br /> <br /><span style=\"font-size: 12pt;\">We look forward to doing business with you.</span><br /> <br /><span style=\"font-size: 12pt;\">We will contact you as soon as possible.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(27, 'tasks', 'task-deadline-notification', 'english', 'Task Deadline Reminder - Sent to Assigned Members', 'Task Deadline Reminder', 'Hi {staff_firstname}&nbsp;{staff_lastname}<br /><br />This is an automated email from {companyname}.<br /><br />The task <strong>{task_name}</strong> deadline is on <strong>{task_duedate}</strong>. <br />This task is still not finished.<br /><br />You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a><br /><br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(28, 'contract', 'send-contract', 'english', 'Send Contract to Customer', 'Contract - {contract_subject}', '<p><span style=\"font-size: 12pt;\">Hi&nbsp;{contact_firstname}&nbsp;{contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Please find the <a href=\"{contract_link}\">{contract_subject}</a> attached.<br /><br />Description: {contract_description}<br /><br /></span><span style=\"font-size: 12pt;\">Looking forward to hear from you.</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(29, 'invoice', 'invoice-payment-recorded-to-staff', 'english', 'Invoice Payment Recorded (Sent to Staff)', 'New Invoice Payment', '<span style=\"font-size: 12pt;\">Hi</span><br /><br /><span style=\"font-size: 12pt;\">Customer recorded payment for invoice <strong># {invoice_number}</strong></span><br /> <br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(30, 'ticket', 'auto-close-ticket', 'english', 'Auto Close Ticket', 'Ticket Auto Closed', '<p><span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">Ticket {ticket_subject} has been auto close due to inactivity.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket #</strong>: <a href=\"{ticket_public_url}\">{ticket_id}</a></span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority:</strong> {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(31, 'project', 'new-project-discussion-created-to-staff', 'english', 'New Project Discussion (Sent to Project Members)', 'New Project Discussion Created - {project_name}', '<p>Hi {staff_firstname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(32, 'project', 'new-project-discussion-created-to-customer', 'english', 'New Project Discussion (Sent to Customer Contacts)', 'New Project Discussion Created - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project discussion created from <strong>{discussion_creator}</strong><br /><br /><strong>Subject:</strong> {discussion_subject}<br /><strong>Description:</strong> {discussion_description}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(33, 'project', 'new-project-file-uploaded-to-customer', 'english', 'New Project File(s) Uploaded (Sent to Customer Contacts)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello {contact_firstname} {contact_lastname}<br /><br />New project file is uploaded on <strong>{project_name}</strong> from <strong>{file_creator}</strong><br /><br />You can view the project on the following link: <a href=\"{project_link}\">{project_name}</a><br /><br />To view the file in our CRM you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(34, 'project', 'new-project-file-uploaded-to-staff', 'english', 'New Project File(s) Uploaded (Sent to Project Members)', 'New Project File(s) Uploaded - {project_name}', '<p>Hello&nbsp;{staff_firstname}</p>\r\n<p>New project&nbsp;file is uploaded on&nbsp;<strong>{project_name}</strong> from&nbsp;<strong>{file_creator}</strong></p>\r\n<p>You can view the project on the following link: <a href=\"{project_link}\">{project_name}<br /></a><br />To view&nbsp;the file you can click on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></p>\r\n<p>Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(35, 'project', 'new-project-discussion-comment-to-customer', 'english', 'New Discussion Comment  (Sent to Customer Contacts)', 'New Discussion Comment', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Discussion subject:</strong> {discussion_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Comment</strong>: {discussion_comment}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(36, 'project', 'new-project-discussion-comment-to-staff', 'english', 'New Discussion Comment (Sent to Project Members)', 'New Discussion Comment', '<p>Hi {staff_firstname}<br /><br />New discussion comment has been made on <strong>{discussion_subject}</strong> from <strong>{comment_creator}</strong><br /><br /><strong>Discussion subject:</strong> {discussion_subject}<br /><strong>Comment:</strong> {discussion_comment}<br /><br />You can view the discussion on the following link: <a href=\"{discussion_link}\">{discussion_subject}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(37, 'project', 'staff-added-as-project-member', 'english', 'Staff Added as Project Member', 'New project assigned to you', '<p>Hi {staff_firstname}<br /><br />New project has been assigned to you.<br /><br />You can view the project on the following link <a href=\"{project_link}\">{project_name}</a><br /><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(38, 'estimate', 'estimate-expiry-reminder', 'english', 'Estimate Expiration Reminder', 'Estimate Expiration Reminder', '<p><span style=\"font-size: 12pt;\">Hello {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\">The estimate with <strong># {estimate_number}</strong> will expire on <strong>{estimate_expirydate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the estimate on the following link: <a href=\"{estimate_link}\">{estimate_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(39, 'proposals', 'proposal-expiry-reminder', 'english', 'Proposal Expiration Reminder', 'Proposal Expiration Reminder', '<p>Hello {proposal_proposal_to}<br /><br />The proposal {proposal_number}&nbsp;will expire on <strong>{proposal_open_till}</strong><br /><br />You can view the proposal on the following link: <a href=\"{proposal_link}\">{proposal_number}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(40, 'staff', 'new-staff-created', 'english', 'New Staff Created (Welcome Email)', 'You are added as staff member', 'Hi {staff_firstname}<br /><br />You are added as member on our CRM.<br /><br />Please use the following logic credentials:<br /><br /><strong>Email:</strong> {staff_email}<br /><strong>Password:</strong> {password}<br /><br />Click <a href=\"{admin_url}\">here </a>to login in the dashboard.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(41, 'client', 'contact-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2>Create a new password</h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a {companyname}&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(42, 'client', 'contact-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<strong><span style=\"font-size: 14pt;\">You have changed your password.</span><br /></strong><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {contact_email}<br /><br />If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(43, 'client', 'contact-set-password', 'english', 'Set New Password', 'Set new password on {companyname} ', '<h2><span style=\"font-size: 14pt;\">Setup your new password on {companyname}</span></h2>\r\nPlease use the following link to set up your new password:<br /><br /><a href=\"{set_password_url}\">Set new password</a><br /><br />Keep it in your records so you don\'t forget it.<br /><br />Please set your new password in <strong>48 hours</strong>. After that, you won\'t be able to set your password because this link will expire.<br /><br />You can login at: <a href=\"{crm_url}\">{crm_url}</a><br />Your email address for login: {contact_email}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(44, 'staff', 'staff-forgot-password', 'english', 'Forgot Password', 'Create New Password', '<h2><span style=\"font-size: 14pt;\">Create a new password</span></h2>\r\nForgot your password?<br /> To create a new password, just follow this link:<br /> <br /><a href=\"{reset_password_url}\">Reset Password</a><br /> <br /> You received this email, because it was requested by a <strong>{companyname}</strong>&nbsp;user. This is part of the procedure to create a new password on the system. If you DID NOT request a new password then please ignore this email and your password will remain the same. <br /><br /> {email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(45, 'staff', 'staff-password-reseted', 'english', 'Password Reset - Confirmation', 'Your password has been changed', '<span style=\"font-size: 14pt;\"><strong>You have changed your password.<br /></strong></span><br /> Please, keep it in your records so you don\'t forget it.<br /> <br /> Your email address for login is: {staff_email}<br /><br /> If this wasnt you, please contact us.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(46, 'project', 'assigned-to-project', 'english', 'New Project Created (Sent to Customer Contacts)', 'New Project Created', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>New project is assigned to your company.<br /><br /><strong>Project Name:</strong>&nbsp;{project_name}<br /><strong>Project Start Date:</strong>&nbsp;{project_start_date}</p>\r\n<p>You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>We are looking forward hearing from you.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(47, 'tasks', 'task-added-attachment-to-contacts', 'english', 'New Attachment(s) on Task (Sent to Customer Contacts)', 'New Attachment on Task - {task_name}', '<span>Hi {contact_firstname} {contact_lastname}</span><br /><br /><strong>{task_user_take_action}</strong><span> added an attachment on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(48, 'tasks', 'task-commented-to-contacts', 'english', 'New Comment on Task (Sent to Customer Contacts)', 'New Comment on Task - {task_name}', '<span>Dear {contact_firstname} {contact_lastname}</span><br /><br /><span>A comment has been made on the following task:</span><br /><br /><strong>Name:</strong><span> {task_name}</span><br /><strong>Comment:</strong><span> {task_comment}</span><br /><br /><span>You can view the task on the following link: </span><a href=\"{task_link}\">{task_name}</a><br /><br /><span>Kind Regards,</span><br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(49, 'leads', 'new-lead-assigned', 'english', 'New Lead Assigned to Staff Member', 'New lead assigned to you', '<p>Hello {lead_assigned}<br /><br />New lead is assigned to you.<br /><br /><strong>Lead Name:</strong>&nbsp;{lead_name}<br /><strong>Lead Email:</strong>&nbsp;{lead_email}<br /><br />You can view the lead on the following link: <a href=\"{lead_link}\">{lead_name}</a><br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(50, 'client', 'client-statement', 'english', 'Statement - Account Summary', 'Account Statement from {statement_from} to {statement_to}', 'Dear {contact_firstname} {contact_lastname}, <br /><br />Its been a great experience working with you.<br /><br />Attached with this email is a list of all transactions for the period between {statement_from} to {statement_to}<br /><br />For your information your account balance due is total:&nbsp;{statement_balance_due}<br /><br />Please contact us if you need more information.<br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(51, 'ticket', 'ticket-assigned-to-admin', 'english', 'New Ticket Assigned (Sent to Staff)', 'New support ticket has been assigned to you', '<p><span style=\"font-size: 12pt;\">Hi</span></p>\r\n<p><span style=\"font-size: 12pt;\">A new support ticket&nbsp;has been assigned to you.</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject</strong>: {ticket_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Department</strong>: {ticket_department}</span><br /><span style=\"font-size: 12pt;\"><strong>Priority</strong>: {ticket_priority}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Ticket message:</strong></span><br /><span style=\"font-size: 12pt;\">{ticket_message}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the ticket on the following link: <a href=\"{ticket_url}\">#{ticket_id}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span></p>', '{companyname} | CRM', '', 0, 1, 0),
(52, 'client', 'new-client-registered-to-admin', 'english', 'New Customer Registration (Sent to admins)', 'New Customer Registration', 'Hello.<br /><br />New customer registration on your customer portal:<br /><br /><strong>Firstname:</strong>&nbsp;{contact_firstname}<br /><strong>Lastname:</strong>&nbsp;{contact_lastname}<br /><strong>Company:</strong>&nbsp;{client_company}<br /><strong>Email:</strong>&nbsp;{contact_email}<br /><br />Best Regards', '{companyname} | CRM', '', 0, 1, 0),
(53, 'leads', 'new-web-to-lead-form-submitted', 'english', 'Web to lead form submitted - Sent to lead', '{lead_name} - We Received Your Request', 'Hello {lead_name}.<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(54, 'staff', 'two-factor-authentication', 'english', 'Two Factor Authentication', 'Confirm Your Login', '<p>Hi {staff_firstname}</p>\r\n<p style=\"text-align: left;\">You received this email because you have enabled two factor authentication in your account.<br />Use the following code to confirm your login:</p>\r\n<p style=\"text-align: left;\"><span style=\"font-size: 18pt;\"><strong>{two_factor_auth_code}<br /><br /></strong><span style=\"font-size: 12pt;\">{email_signature}</span><strong><br /><br /><br /><br /></strong></span></p>', '{companyname} | CRM', '', 0, 1, 0),
(55, 'project', 'project-finished-to-customer', 'english', 'Project Marked as Finished (Sent to Customer Contacts)', 'Project Marked as Finished', '<p>Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}</p>\r\n<p>You are receiving this email because project&nbsp;<strong>{project_name}</strong> has been marked as finished. This project is assigned under your company and we just wanted to keep you up to date.<br /><br />You can view the project on the following link:&nbsp;<a href=\"{project_link}\">{project_name}</a></p>\r\n<p>If you have any questions don\'t hesitate to contact us.<br /><br />Kind Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(56, 'credit_note', 'credit-note-send-to-client', 'english', 'Send Credit Note To Email', 'Credit Note With Number #{credit_note_number} Created', 'Dear&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have attached the credit note with number <strong>#{credit_note_number} </strong>for your reference.<br /><br /><strong>Date:</strong>&nbsp;{credit_note_date}<br /><strong>Total Amount:</strong>&nbsp;{credit_note_total}<br /><br /><span style=\"font-size: 12pt;\">Please contact us for more information.</span><br /> <br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(57, 'tasks', 'task-status-change-to-staff', 'english', 'Task Status Changed (Sent to Staff)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {staff_firstname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(58, 'tasks', 'task-status-change-to-contacts', 'english', 'Task Status Changed (Sent to Customer Contacts)', 'Task Status Changed', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}</span><br /><br /><span style=\"font-size: 12pt;\"><strong>{task_user_take_action}</strong> marked task as <strong>{task_status}</strong></span><br /><br /><span style=\"font-size: 12pt;\"><strong>Name:</strong> {task_name}</span><br /><span style=\"font-size: 12pt;\"><strong>Due date:</strong> {task_duedate}</span><br /><br /><span style=\"font-size: 12pt;\">You can view the task on the following link: <a href=\"{task_link}\">{task_name}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(59, 'staff', 'reminder-email-staff', 'english', 'Staff Reminder Email', 'You Have a New Reminder!', '<p>Hello&nbsp;{staff_firstname}<br /><br /><strong>You have a new reminder&nbsp;linked to&nbsp;{staff_reminder_relation_name}!<br /><br />Reminder description:</strong><br />{staff_reminder_description}<br /><br />Click <a href=\"{staff_reminder_relation_link}\">here</a> to view&nbsp;<a href=\"{staff_reminder_relation_link}\">{staff_reminder_relation_name}</a><br /><br />Best Regards<br /><br /></p>', '{companyname} | CRM', '', 0, 1, 0),
(60, 'contract', 'contract-comment-to-client', 'english', 'New Comment  (Sent to Customer Contacts)', 'New Contract Comment', 'Dear {contact_firstname} {contact_lastname}<br /> <br />A new comment has been made on the following contract: <strong>{contract_subject}</strong><br /> <br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a><br /> <br />Kind Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(61, 'contract', 'contract-comment-to-admin', 'english', 'New Comment (Sent to Staff) ', 'New Contract Comment', 'Hi {staff_firstname}<br /><br />A new comment has been made to the contract&nbsp;<strong>{contract_subject}</strong><br /><br />You can view and reply to the comment on the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(62, 'subscriptions', 'send-subscription', 'english', 'Send Subscription to Customer', 'Subscription Created', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />We have prepared the subscription&nbsp;<strong>{subscription_name}</strong> for your company.<br /><br />Click <a href=\"{subscription_link}\">here</a> to review the subscription and subscribe.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(63, 'subscriptions', 'subscription-payment-failed', 'english', 'Subscription Payment Failed', 'Your most recent invoice payment failed', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br br=\"\" />Unfortunately, your most recent invoice payment for&nbsp;<strong>{subscription_name}</strong> was declined.<br /><br />This could be due to a change in your card number, your card expiring,<br />cancellation of your credit card, or the card issuer not recognizing the<br />payment and therefore taking action to prevent it.<br /><br />Please update your payment information as soon as possible by logging in here:<br /><a href=\"{crm_url}/login\">{crm_url}/login</a><br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(64, 'subscriptions', 'subscription-canceled', 'english', 'Subscription Canceled (Sent to customer primary contact)', 'Your subscription has been canceled', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />Your subscription&nbsp;<strong>{subscription_name} </strong>has been canceled, if you have any questions don\'t hesitate to contact us.<br /><br />It was a pleasure doing business with you.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(65, 'subscriptions', 'subscription-payment-succeeded', 'english', 'Subscription Payment Succeeded (Sent to customer primary contact)', 'Subscription  Payment Receipt - {subscription_name}', 'Hello&nbsp;{contact_firstname}&nbsp;{contact_lastname}<br /><br />This email is to let you know that we received your payment for subscription&nbsp;<strong>{subscription_name}&nbsp;</strong>of&nbsp;<strong><span>{payment_total}<br /><br /></span></strong>The invoice associated with it is now with status&nbsp;<strong>{invoice_status}<br /></strong><br />Thank you for your confidence.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(66, 'contract', 'contract-expiration-to-staff', 'english', 'Contract Expiration Reminder (Sent to Staff)', 'Contract Expiration Reminder', 'Hi {staff_firstname}<br /><br /><span style=\"font-size: 12pt;\">This is a reminder that the following contract will expire soon:</span><br /><br /><span style=\"font-size: 12pt;\"><strong>Subject:</strong> {contract_subject}</span><br /><span style=\"font-size: 12pt;\"><strong>Description:</strong> {contract_description}</span><br /><span style=\"font-size: 12pt;\"><strong>Date Start:</strong> {contract_datestart}</span><br /><span style=\"font-size: 12pt;\"><strong>Date End:</strong> {contract_dateend}</span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(67, 'gdpr', 'gdpr-removal-request', 'english', 'Removal Request From Contact (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by&nbsp;{contact_firstname} {contact_lastname}<br /><br />You can review this request and take proper actions directly from the admin area.', '{companyname} | CRM', '', 0, 1, 0),
(68, 'gdpr', 'gdpr-removal-request-lead', 'english', 'Removal Request From Lead (Sent to administrators)', 'Data Removal Request Received', 'Hello&nbsp;{staff_firstname}&nbsp;{staff_lastname}<br /><br />Data removal has been requested by {lead_name}<br /><br />You can review this request and take proper actions directly from the admin area.<br /><br />To view the lead inside the admin area click here:&nbsp;<a href=\"{lead_link}\">{lead_link}</a>', '{companyname} | CRM', '', 0, 1, 0),
(69, 'client', 'client-registration-confirmed', 'english', 'Customer Registration Confirmed', 'Your registration is confirmed', '<p>Dear {contact_firstname} {contact_lastname}<br /><br />We just wanted to let you know that your registration at&nbsp;{companyname} is successfully confirmed and your account is now active.<br /><br />You can login at&nbsp;<a href=\"{crm_url}\">{crm_url}</a> with the email and password you provided during registration.<br /><br />Please contact us if you need any help.<br /><br />Kind Regards, <br />{email_signature}</p>\r\n<p><br />(This is an automated email, so please don\'t reply to this email address)</p>', '{companyname} | CRM', '', 0, 1, 0),
(70, 'contract', 'contract-signed-to-staff', 'english', 'Contract Signed (Sent to Staff)', 'Customer Signed a Contract', 'Hi {staff_firstname}<br /><br />A contract with subject&nbsp;<strong>{contract_subject} </strong>has been successfully signed by the customer.<br /><br />You can view the contract at the following link: <a href=\"{contract_link}\">{contract_subject}</a>&nbsp;or from the admin area.<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(71, 'subscriptions', 'customer-subscribed-to-staff', 'english', 'Customer Subscribed to a Subscription (Sent to administrators and subscription creator)', 'Customer Subscribed to a Subscription', 'The customer <strong>{client_company}</strong> subscribed to a subscription with name&nbsp;<strong>{subscription_name}</strong><br /><br /><strong>ID</strong>:&nbsp;{subscription_id}<br /><strong>Subscription name</strong>:&nbsp;{subscription_name}<br /><strong>Subscription description</strong>:&nbsp;{subscription_description}<br /><br />You can view the subscription by clicking <a href=\"{subscription_link}\">here</a><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 10pt;\">&nbsp;</span></div>\r\nBest Regards,<br />{email_signature}<br /><br /><span style=\"font-size: 10pt;\"><span style=\"color: #999999;\">You are receiving this email because you are either administrator or you are creator of the subscription.</span></span>', '{companyname} | CRM', '', 0, 1, 0),
(72, 'client', 'contact-verification-email', 'english', 'Email Verification (Sent to Contact After Registration)', 'Verify Email Address', '<p>Hello&nbsp;{contact_firstname}<br /><br />Please click the button below to verify your email address.<br /><br /><a href=\"{email_verification_url}\">Verify Email Address</a><br /><br />If you did not create an account, no further action is required</p>\r\n<p><br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0),
(73, 'client', 'new-customer-profile-file-uploaded-to-staff', 'english', 'New Customer Profile File(s) Uploaded (Sent to Staff)', 'Customer Uploaded New File(s) in Profile', 'Hi!<br /><br />New file(s) is uploaded into the customer ({client_company}) profile by&nbsp;{contact_firstname}<br /><br />You can check the uploaded files into the admin area by clicking <a href=\"{customer_profile_files_admin_link}\">here</a> or at the following link:&nbsp;{customer_profile_files_admin_link}<br /><br />{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(74, 'staff', 'event-notification-to-staff', 'english', 'Event Notification (Calendar)', 'Upcoming Event - {event_title}', 'Hi {staff_firstname}! <br /><br />This is a reminder for event <a href=\\\"{event_link}\\\">{event_title}</a> scheduled at {event_start_date}. <br /><br />Regards.', '', '', 0, 1, 0),
(75, 'subscriptions', 'subscription-payment-requires-action', 'english', 'Credit Card Authorization Required - SCA', 'Important: Confirm your subscription {subscription_name} payment', '<p>Hello {contact_firstname}</p>\r\n<p><strong>Your bank sometimes requires an additional step to make sure an online transaction was authorized.</strong><br /><br />Because of European regulation to protect consumers, many online payments now require two-factor authentication. Your bank ultimately decides when authentication is required to confirm a payment, but you may notice this step when you start paying for a service or when the cost changes.<br /><br />In order to pay the subscription <strong>{subscription_name}</strong>, you will need to&nbsp;confirm your payment by clicking on the follow link: <strong><a href=\"{subscription_authorize_payment_link}\">{subscription_authorize_payment_link}</a></strong><br /><br />To view the subscription, please click at the following link: <a href=\"{subscription_link}\"><span>{subscription_link}</span></a><br />or you can login in our dedicated area here: <a href=\"{crm_url}/login\">{crm_url}/login</a> in case you want to update your credit card or view the subscriptions you are subscribed.<br /><br />Best Regards,<br />{email_signature}</p>', '{companyname} | CRM', '', 0, 1, 0);
INSERT INTO `tblemailtemplates` (`emailtemplateid`, `type`, `slug`, `language`, `name`, `subject`, `message`, `fromname`, `fromemail`, `plaintext`, `active`, `order`) VALUES
(76, 'invoice', 'invoice-due-notice', 'english', 'Invoice Due Notice', 'Your {invoice_number} will be due soon', '<span style=\"font-size: 12pt;\">Hi {contact_firstname} {contact_lastname}<br /><br /></span>You invoice <span style=\"font-size: 12pt;\"><strong># {invoice_number} </strong>will be due on <strong>{invoice_duedate}</strong></span><br /><br /><span style=\"font-size: 12pt;\">You can view the invoice on the following link: <a href=\"{invoice_link}\">{invoice_number}</a></span><br /><br /><span style=\"font-size: 12pt;\">Kind Regards,</span><br /><span style=\"font-size: 12pt;\">{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(77, 'estimate_request', 'estimate-request-submitted-to-staff', 'english', 'Estimate Request Submitted (Sent to Staff)', 'New Estimate Request Submitted', '<span> Hello,&nbsp;</span><br /><br />{estimate_request_email} submitted an estimate request via the {estimate_request_form_name} form.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />==<br /><br />{estimate_request_submitted_data}<br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(78, 'estimate_request', 'estimate-request-assigned', 'english', 'Estimate Request Assigned (Sent to Staff)', 'New Estimate Request Assigned', '<span> Hello {estimate_request_assigned},&nbsp;</span><br /><br />Estimate request #{estimate_request_id} has been assigned to you.<br /><br />You can view the request at the following link: <a href=\"{estimate_request_link}\">{estimate_request_link}</a><br /><br />Kind Regards,<br /><span>{email_signature}</span>', '{companyname} | CRM', '', 0, 1, 0),
(79, 'estimate_request', 'estimate-request-received-to-user', 'english', 'Estimate Request Received (Sent to User)', 'Estimate Request Received', 'Hello,<br /><br /><strong>Your request has been received.</strong><br /><br />This email is to let you know that we received your request and we will get back to you as soon as possible with more information.<br /><br />Best Regards,<br />{email_signature}', '{companyname} | CRM', '', 0, 0, 0),
(80, 'notifications', 'non-billed-tasks-reminder', 'english', 'Non-billed tasks reminder (sent to selected staff members)', 'Action required: Completed tasks are not billed', 'Hello {staff_firstname}<br><br>The following tasks are marked as complete but not yet billed:<br><br>{unbilled_tasks_list}<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0),
(81, 'invoice', 'invoices-batch-payments', 'english', 'Invoices Payments Recorded in Batch (Sent to Customer)', 'We have received your payments', 'Hello {contact_firstname} {contact_lastname}<br><br>Thank you for the payments. Please find the payments details below:<br><br>{batch_payments_list}<br><br>We are looking forward working with you.<br><br>Kind Regards,<br><br>{email_signature}', '{companyname} | CRM', '', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblestimates`
--

CREATE TABLE `tblestimates` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) DEFAULT NULL,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `expirydate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `invoiced_date` datetime DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `reference_no` varchar(100) DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_estimate` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_requests`
--

CREATE TABLE `tblestimate_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `submission` longtext NOT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `date_estimated` datetime DEFAULT NULL,
  `from_form_id` int(11) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `default_language` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_forms`
--

CREATE TABLE `tblestimate_request_forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext DEFAULT NULL,
  `recaptcha` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `submit_btn_name` varchar(100) DEFAULT NULL,
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `success_submit_msg` text DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `submit_redirect_url` mediumtext DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `notify_type` varchar(100) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `notify_request_submitted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblestimate_request_status`
--

CREATE TABLE `tblestimate_request_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL,
  `flag` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblestimate_request_status`
--

INSERT INTO `tblestimate_request_status` (`id`, `name`, `statusorder`, `color`, `flag`) VALUES
(1, 'Cancelled', 1, '#808080', 'cancelled'),
(2, 'Processing', 2, '#007bff', 'processing'),
(3, 'Completed', 3, '#28a745', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `eventid` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `public` int(11) NOT NULL DEFAULT 0,
  `color` varchar(10) DEFAULT NULL,
  `isstartnotified` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_before` int(11) NOT NULL DEFAULT 0,
  `reminder_before_type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses`
--

CREATE TABLE `tblexpenses` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `currency` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) NOT NULL DEFAULT 0,
  `reference_no` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `expense_name` varchar(191) DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `billable` int(11) DEFAULT 0,
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` int(11) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `create_invoice_billable` tinyint(1) DEFAULT NULL,
  `send_invoice_to_customer` tinyint(1) NOT NULL,
  `recurring_from` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblexpenses_categories`
--

CREATE TABLE `tblexpenses_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblfiles`
--

CREATE TABLE `tblfiles` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(40) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `attachment_key` varchar(32) DEFAULT NULL,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL COMMENT 'For external usage',
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `task_comment_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_questions`
--

CREATE TABLE `tblform_questions` (
  `questionid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `question` mediumtext NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `question_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box`
--

CREATE TABLE `tblform_question_box` (
  `boxid` int(11) NOT NULL,
  `boxtype` varchar(10) NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_question_box_description`
--

CREATE TABLE `tblform_question_box_description` (
  `questionboxdescriptionid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `boxid` mediumtext NOT NULL,
  `questionid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_results`
--

CREATE TABLE `tblform_results` (
  `resultid` int(11) NOT NULL,
  `boxid` int(11) NOT NULL,
  `boxdescriptionid` int(11) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `questionid` int(11) NOT NULL,
  `answer` text DEFAULT NULL,
  `resultsetid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblgdpr_requests`
--

CREATE TABLE `tblgdpr_requests` (
  `id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `lead_id` int(11) NOT NULL DEFAULT 0,
  `request_type` varchar(191) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_from` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoicepaymentrecords`
--

CREATE TABLE `tblinvoicepaymentrecords` (
  `id` int(11) NOT NULL,
  `invoiceid` int(11) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `paymentmode` varchar(40) DEFAULT NULL,
  `paymentmethod` varchar(191) DEFAULT NULL,
  `date` date NOT NULL,
  `daterecorded` datetime NOT NULL,
  `note` text NOT NULL,
  `transactionid` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoices`
--

CREATE TABLE `tblinvoices` (
  `id` int(11) NOT NULL,
  `sent` tinyint(1) NOT NULL DEFAULT 0,
  `datesend` datetime DEFAULT NULL,
  `clientid` int(11) NOT NULL,
  `deleted_customer_name` varchar(100) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `prefix` varchar(50) DEFAULT NULL,
  `number_format` int(11) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `date` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(15,2) NOT NULL,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `status` int(11) DEFAULT 1,
  `clientnote` text DEFAULT NULL,
  `adminnote` text DEFAULT NULL,
  `last_overdue_reminder` date DEFAULT NULL,
  `last_due_reminder` date DEFAULT NULL,
  `cancel_overdue_reminders` int(11) NOT NULL DEFAULT 0,
  `allowed_payment_modes` mediumtext DEFAULT NULL,
  `token` mediumtext DEFAULT NULL,
  `discount_percent` decimal(15,2) DEFAULT 0.00,
  `discount_total` decimal(15,2) DEFAULT 0.00,
  `discount_type` varchar(30) NOT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `sale_agent` int(11) NOT NULL DEFAULT 0,
  `billing_street` varchar(200) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(100) DEFAULT NULL,
  `billing_country` int(11) DEFAULT NULL,
  `shipping_street` varchar(200) DEFAULT NULL,
  `shipping_city` varchar(100) DEFAULT NULL,
  `shipping_state` varchar(100) DEFAULT NULL,
  `shipping_zip` varchar(100) DEFAULT NULL,
  `shipping_country` int(11) DEFAULT NULL,
  `include_shipping` tinyint(1) NOT NULL,
  `show_shipping_on_invoice` tinyint(1) NOT NULL DEFAULT 1,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) DEFAULT 0,
  `subscription_id` int(11) NOT NULL DEFAULT 0,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitemable`
--

CREATE TABLE `tblitemable` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` mediumtext DEFAULT NULL,
  `qty` decimal(15,2) NOT NULL,
  `rate` decimal(15,2) NOT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitems`
--

CREATE TABLE `tblitems` (
  `id` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `long_description` text DEFAULT NULL,
  `rate` decimal(15,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `tax2` int(11) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `group_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitems_groups`
--

CREATE TABLE `tblitems_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblitem_tax`
--

CREATE TABLE `tblitem_tax` (
  `id` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL,
  `taxname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowedge_base_article_feedback`
--

CREATE TABLE `tblknowedge_base_article_feedback` (
  `articleanswerid` int(11) NOT NULL,
  `articleid` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base`
--

CREATE TABLE `tblknowledge_base` (
  `articleid` int(11) NOT NULL,
  `articlegroup` int(11) NOT NULL,
  `subject` mediumtext NOT NULL,
  `description` text NOT NULL,
  `slug` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL,
  `datecreated` datetime NOT NULL,
  `article_order` int(11) NOT NULL DEFAULT 0,
  `staff_article` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblknowledge_base_groups`
--

CREATE TABLE `tblknowledge_base_groups` (
  `groupid` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `group_slug` text DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `active` tinyint(4) NOT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `group_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads`
--

CREATE TABLE `tblleads` (
  `id` int(11) NOT NULL,
  `hash` varchar(65) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `company` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(15) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `from_form_id` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `lastcontact` datetime DEFAULT NULL,
  `dateassigned` date DEFAULT NULL,
  `last_status_change` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `leadorder` int(11) DEFAULT 1,
  `phonenumber` varchar(50) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `lost` tinyint(1) NOT NULL DEFAULT 0,
  `junk` int(11) NOT NULL DEFAULT 0,
  `last_lead_status` int(11) NOT NULL DEFAULT 0,
  `is_imported_from_email_integration` tinyint(1) NOT NULL DEFAULT 0,
  `email_integration_uid` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `default_language` varchar(40) DEFAULT NULL,
  `client_id` int(11) NOT NULL DEFAULT 0,
  `lead_value` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_email_integration`
--

CREATE TABLE `tblleads_email_integration` (
  `id` int(11) NOT NULL COMMENT 'the ID always must be 1',
  `active` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `imap_server` varchar(100) NOT NULL,
  `password` mediumtext NOT NULL,
  `check_every` int(11) NOT NULL DEFAULT 5,
  `responsible` int(11) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `encryption` varchar(3) DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `last_run` varchar(50) DEFAULT NULL,
  `notify_lead_imported` tinyint(1) NOT NULL DEFAULT 1,
  `notify_lead_contact_more_times` tinyint(1) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `only_loop_on_unseen_emails` tinyint(1) NOT NULL DEFAULT 1,
  `delete_after_import` int(11) NOT NULL DEFAULT 0,
  `create_task_if_customer` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_email_integration`
--

INSERT INTO `tblleads_email_integration` (`id`, `active`, `email`, `imap_server`, `password`, `check_every`, `responsible`, `lead_source`, `lead_status`, `encryption`, `folder`, `last_run`, `notify_lead_imported`, `notify_lead_contact_more_times`, `notify_type`, `notify_ids`, `mark_public`, `only_loop_on_unseen_emails`, `delete_after_import`, `create_task_if_customer`) VALUES
(1, 0, '', '', '', 10, 0, 0, 0, 'tls', 'INBOX', '', 1, 1, 'assigned', '', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_sources`
--

CREATE TABLE `tblleads_sources` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_sources`
--

INSERT INTO `tblleads_sources` (`id`, `name`) VALUES
(2, 'Facebook'),
(1, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `tblleads_status`
--

CREATE TABLE `tblleads_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statusorder` int(11) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#28B8DA',
  `isdefault` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblleads_status`
--

INSERT INTO `tblleads_status` (`id`, `name`, `statusorder`, `color`, `isdefault`) VALUES
(1, 'Customer', 1000, '#7cb342', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_activity_log`
--

CREATE TABLE `tbllead_activity_log` (
  `id` int(11) NOT NULL,
  `leadid` int(11) NOT NULL,
  `description` mediumtext NOT NULL,
  `additional_data` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `staffid` int(11) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `custom_activity` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbllead_integration_emails`
--

CREATE TABLE `tbllead_integration_emails` (
  `id` int(11) NOT NULL,
  `subject` mediumtext DEFAULT NULL,
  `body` mediumtext DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `leadid` int(11) NOT NULL,
  `emailid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmail_queue`
--

CREATE TABLE `tblmail_queue` (
  `id` int(11) NOT NULL,
  `engine` varchar(40) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `cc` text DEFAULT NULL,
  `bcc` text DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `alt_message` mediumtext DEFAULT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL,
  `attachments` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmigrations`
--

CREATE TABLE `tblmigrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmigrations`
--

INSERT INTO `tblmigrations` (`version`) VALUES
(294);

-- --------------------------------------------------------

--
-- Table structure for table `tblmilestones`
--

CREATE TABLE `tblmilestones` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_visible_to_customer` tinyint(1) DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `project_id` int(11) NOT NULL,
  `color` varchar(10) DEFAULT NULL,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `datecreated` date NOT NULL,
  `hide_from_customer` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblmodules`
--

CREATE TABLE `tblmodules` (
  `id` int(11) NOT NULL,
  `module_name` varchar(55) NOT NULL,
  `installed_version` varchar(11) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmodules`
--

INSERT INTO `tblmodules` (`id`, `module_name`, `installed_version`, `active`) VALUES
(1, 'perfex_office_theme', '1.2.2', 1),
(2, 'api', '1.0.3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_comment_likes`
--

CREATE TABLE `tblnewsfeed_comment_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_posts`
--

CREATE TABLE `tblnewsfeed_posts` (
  `postid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `visibility` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `pinned` int(11) NOT NULL,
  `datepinned` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_comments`
--

CREATE TABLE `tblnewsfeed_post_comments` (
  `id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnewsfeed_post_likes`
--

CREATE TABLE `tblnewsfeed_post_likes` (
  `id` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateliked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `date_contacted` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblnotifications`
--

CREATE TABLE `tblnotifications` (
  `id` int(11) NOT NULL,
  `isread` int(11) NOT NULL DEFAULT 0,
  `isread_inline` tinyint(1) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL,
  `description` text NOT NULL,
  `fromuserid` int(11) NOT NULL,
  `fromclientid` int(11) NOT NULL DEFAULT 0,
  `from_fullname` varchar(100) NOT NULL,
  `touserid` int(11) NOT NULL,
  `fromcompany` int(11) DEFAULT NULL,
  `link` mediumtext DEFAULT NULL,
  `additional_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbloptions`
--

CREATE TABLE `tbloptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` longtext NOT NULL,
  `autoload` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbloptions`
--

INSERT INTO `tbloptions` (`id`, `name`, `value`, `autoload`) VALUES
(1, 'dateformat', 'Y-m-d|%Y-%m-%d', 1),
(2, 'companyname', '', 1),
(3, 'services', '1', 1),
(4, 'maximum_allowed_ticket_attachments', '4', 1),
(5, 'ticket_attachments_file_extensions', '.jpg,.png,.pdf,.doc,.zip,.rar', 1),
(6, 'staff_access_only_assigned_departments', '1', 1),
(7, 'use_knowledge_base', '1', 1),
(8, 'smtp_email', '', 1),
(9, 'smtp_password', '', 1),
(10, 'company_info_format', '{company_name}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(11, 'smtp_port', '', 1),
(12, 'smtp_host', '', 1),
(13, 'smtp_email_charset', 'utf-8', 1),
(14, 'default_timezone', 'Africa/Cairo', 1),
(15, 'clients_default_theme', 'perfex', 1),
(16, 'company_logo', '', 1),
(17, 'tables_pagination_limit', '25', 1),
(18, 'main_domain', '', 1),
(19, 'allow_registration', '1', 1),
(20, 'knowledge_base_without_registration', '1', 1),
(21, 'email_signature', '', 1),
(22, 'default_staff_role', '1', 1),
(23, 'newsfeed_maximum_files_upload', '10', 1),
(24, 'contract_expiration_before', '4', 1),
(25, 'invoice_prefix', 'INV-', 1),
(26, 'decimal_separator', '.', 1),
(27, 'thousand_separator', ',', 1),
(28, 'invoice_company_name', '', 1),
(29, 'invoice_company_address', '', 1),
(30, 'invoice_company_city', '', 1),
(31, 'invoice_company_country_code', '', 1),
(32, 'invoice_company_postal_code', '', 1),
(33, 'invoice_company_phonenumber', '', 1),
(34, 'view_invoice_only_logged_in', '0', 1),
(35, 'invoice_number_format', '1', 1),
(36, 'next_invoice_number', '1', 0),
(37, 'active_language', 'english', 1),
(38, 'invoice_number_decrement_on_delete', '1', 1),
(39, 'automatically_send_invoice_overdue_reminder_after', '1', 1),
(40, 'automatically_resend_invoice_overdue_reminder_after', '3', 1),
(41, 'expenses_auto_operations_hour', '21', 1),
(42, 'delete_only_on_last_invoice', '1', 1),
(43, 'delete_only_on_last_estimate', '1', 1),
(44, 'create_invoice_from_recurring_only_on_paid_invoices', '0', 1),
(45, 'allow_payment_amount_to_be_modified', '1', 1),
(46, 'rtl_support_client', '0', 1),
(47, 'limit_top_search_bar_results_to', '10', 1),
(48, 'estimate_prefix', 'EST-', 1),
(49, 'next_estimate_number', '1', 0),
(50, 'estimate_number_decrement_on_delete', '1', 1),
(51, 'estimate_number_format', '1', 1),
(52, 'estimate_auto_convert_to_invoice_on_client_accept', '1', 1),
(53, 'exclude_estimate_from_client_area_with_draft_status', '1', 1),
(54, 'rtl_support_admin', '0', 1),
(55, 'last_cron_run', '', 1),
(56, 'show_sale_agent_on_estimates', '1', 1),
(57, 'show_sale_agent_on_invoices', '1', 1),
(58, 'predefined_terms_invoice', '', 1),
(59, 'predefined_terms_estimate', '', 1),
(60, 'default_task_priority', '2', 1),
(61, 'dropbox_app_key', '', 1),
(62, 'show_expense_reminders_on_calendar', '1', 1),
(63, 'only_show_contact_tickets', '1', 1),
(64, 'predefined_clientnote_invoice', '', 1),
(65, 'predefined_clientnote_estimate', '', 1),
(66, 'custom_pdf_logo_image_url', '', 1),
(67, 'favicon', '', 1),
(68, 'invoice_due_after', '30', 1),
(69, 'google_api_key', '', 1),
(70, 'google_calendar_main_calendar', '', 1),
(71, 'default_tax', 'a:0:{}', 1),
(72, 'show_invoices_on_calendar', '1', 1),
(73, 'show_estimates_on_calendar', '1', 1),
(74, 'show_contracts_on_calendar', '1', 1),
(75, 'show_tasks_on_calendar', '1', 1),
(76, 'show_customer_reminders_on_calendar', '1', 1),
(77, 'output_client_pdfs_from_admin_area_in_client_language', '0', 1),
(78, 'show_lead_reminders_on_calendar', '1', 1),
(79, 'send_estimate_expiry_reminder_before', '4', 1),
(80, 'leads_default_source', '', 1),
(81, 'leads_default_status', '', 1),
(82, 'proposal_expiry_reminder_enabled', '1', 1),
(83, 'send_proposal_expiry_reminder_before', '4', 1),
(84, 'default_contact_permissions', 'a:6:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";}', 1),
(85, 'pdf_logo_width', '150', 1),
(86, 'access_tickets_to_none_staff_members', '0', 1),
(87, 'customer_default_country', '66', 1),
(88, 'view_estimate_only_logged_in', '0', 1),
(89, 'show_status_on_pdf_ei', '1', 1),
(90, 'email_piping_only_replies', '0', 1),
(91, 'email_piping_only_registered', '0', 1),
(92, 'default_view_calendar', 'dayGridMonth', 1),
(93, 'email_piping_default_priority', '2', 1),
(94, 'total_to_words_lowercase', '0', 1),
(95, 'show_tax_per_item', '1', 1),
(96, 'total_to_words_enabled', '0', 1),
(97, 'receive_notification_on_new_ticket', '1', 0),
(98, 'autoclose_tickets_after', '0', 1),
(99, 'media_max_file_size_upload', '10', 1),
(100, 'client_staff_add_edit_delete_task_comments_first_hour', '0', 1),
(101, 'show_projects_on_calendar', '1', 1),
(102, 'leads_kanban_limit', '50', 1),
(103, 'tasks_reminder_notification_before', '2', 1),
(104, 'pdf_font', 'freesans', 1),
(105, 'pdf_table_heading_color', '#323a45', 1),
(106, 'pdf_table_heading_text_color', '#ffffff', 1),
(107, 'pdf_font_size', '10', 1),
(108, 'default_leads_kanban_sort', 'leadorder', 1),
(109, 'default_leads_kanban_sort_type', 'asc', 1),
(110, 'allowed_files', '.png,.jpg,.pdf,.doc,.docx,.xls,.xlsx,.zip,.rar,.txt', 1),
(111, 'show_all_tasks_for_project_member', '1', 1),
(112, 'email_protocol', 'smtp', 1),
(113, 'calendar_first_day', '0', 1),
(114, 'recaptcha_secret_key', '', 1),
(115, 'show_help_on_setup_menu', '1', 1),
(116, 'show_proposals_on_calendar', '1', 1),
(117, 'smtp_encryption', '', 1),
(118, 'recaptcha_site_key', '', 1),
(119, 'smtp_username', '', 1),
(120, 'auto_stop_tasks_timers_on_new_timer', '1', 1),
(121, 'notification_when_customer_pay_invoice', '1', 1),
(122, 'calendar_invoice_color', '#FF6F00', 1),
(123, 'calendar_estimate_color', '#FF6F00', 1),
(124, 'calendar_proposal_color', '#84c529', 1),
(125, 'new_task_auto_assign_current_member', '1', 1),
(126, 'calendar_reminder_color', '#03A9F4', 1),
(127, 'calendar_contract_color', '#B72974', 1),
(128, 'calendar_project_color', '#B72974', 1),
(129, 'update_info_message', '', 1),
(130, 'show_estimate_reminders_on_calendar', '1', 1),
(131, 'show_invoice_reminders_on_calendar', '1', 1),
(132, 'show_proposal_reminders_on_calendar', '1', 1),
(133, 'proposal_due_after', '7', 1),
(134, 'allow_customer_to_change_ticket_status', '0', 1),
(135, 'lead_lock_after_convert_to_customer', '0', 1),
(136, 'default_proposals_pipeline_sort', 'pipeline_order', 1),
(137, 'default_proposals_pipeline_sort_type', 'asc', 1),
(138, 'default_estimates_pipeline_sort', 'pipeline_order', 1),
(139, 'default_estimates_pipeline_sort_type', 'asc', 1),
(140, 'use_recaptcha_customers_area', '0', 1),
(141, 'remove_decimals_on_zero', '0', 1),
(142, 'remove_tax_name_from_item_table', '0', 1),
(143, 'pdf_format_invoice', 'A4-PORTRAIT', 1),
(144, 'pdf_format_estimate', 'A4-PORTRAIT', 1),
(145, 'pdf_format_proposal', 'A4-PORTRAIT', 1),
(146, 'pdf_format_payment', 'A4-PORTRAIT', 1),
(147, 'pdf_format_contract', 'A4-PORTRAIT', 1),
(148, 'swap_pdf_info', '0', 1),
(149, 'exclude_invoice_from_client_area_with_draft_status', '1', 1),
(150, 'cron_has_run_from_cli', '0', 1),
(151, 'hide_cron_is_required_message', '0', 0),
(152, 'auto_assign_customer_admin_after_lead_convert', '1', 1),
(153, 'show_transactions_on_invoice_pdf', '1', 1),
(154, 'show_pay_link_to_invoice_pdf', '1', 1),
(155, 'tasks_kanban_limit', '50', 1),
(156, 'purchase_key', '', 1),
(157, 'estimates_pipeline_limit', '50', 1),
(158, 'proposals_pipeline_limit', '50', 1),
(159, 'proposal_number_prefix', 'PRO-', 1),
(160, 'number_padding_prefixes', '6', 1),
(161, 'show_page_number_on_pdf', '0', 1),
(162, 'calendar_events_limit', '4', 1),
(163, 'show_setup_menu_item_only_on_hover', '0', 1),
(164, 'company_requires_vat_number_field', '0', 1),
(165, 'company_is_required', '0', 1),
(166, 'allow_contact_to_delete_files', '1', 1),
(167, 'company_vat', '', 1),
(168, 'di', '1652604989', 1),
(169, 'invoice_auto_operations_hour', '21', 1),
(170, 'use_minified_files', '1', 1),
(171, 'only_own_files_contacts', '1', 1),
(172, 'allow_primary_contact_to_view_edit_billing_and_shipping', '1', 1),
(173, 'estimate_due_after', '7', 1),
(174, 'staff_members_open_tickets_to_all_contacts', '1', 1),
(175, 'time_format', '24', 1),
(176, 'delete_activity_log_older_then', '1', 1),
(177, 'disable_language', '1', 1),
(178, 'company_state', '', 1),
(179, 'email_header', '<!doctype html>\r\n                            <html>\r\n                            <head>\r\n                              <meta name=\"viewport\" content=\"width=device-width\" />\r\n                              <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n                              <style>\r\n                                body {\r\n                                 background-color: #f6f6f6;\r\n                                 font-family: sans-serif;\r\n                                 -webkit-font-smoothing: antialiased;\r\n                                 font-size: 14px;\r\n                                 line-height: 1.4;\r\n                                 margin: 0;\r\n                                 padding: 0;\r\n                                 -ms-text-size-adjust: 100%;\r\n                                 -webkit-text-size-adjust: 100%;\r\n                               }\r\n                               table {\r\n                                 border-collapse: separate;\r\n                                 mso-table-lspace: 0pt;\r\n                                 mso-table-rspace: 0pt;\r\n                                 width: 100%;\r\n                               }\r\n                               table td {\r\n                                 font-family: sans-serif;\r\n                                 font-size: 14px;\r\n                                 vertical-align: top;\r\n                               }\r\n                                   /* -------------------------------------\r\n                                     BODY & CONTAINER\r\n                                     ------------------------------------- */\r\n                                     .body {\r\n                                       background-color: #f6f6f6;\r\n                                       width: 100%;\r\n                                     }\r\n                                     /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n\r\n                                     .container {\r\n                                       display: block;\r\n                                       margin: 0 auto !important;\r\n                                       /* makes it centered */\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                       width: 680px;\r\n                                     }\r\n                                     /* This should also be a block element, so that it will fill 100% of the .container */\r\n\r\n                                     .content {\r\n                                       box-sizing: border-box;\r\n                                       display: block;\r\n                                       margin: 0 auto;\r\n                                       max-width: 680px;\r\n                                       padding: 10px;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     HEADER, FOOTER, MAIN\r\n                                     ------------------------------------- */\r\n\r\n                                     .main {\r\n                                       background: #fff;\r\n                                       border-radius: 3px;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .wrapper {\r\n                                       box-sizing: border-box;\r\n                                       padding: 20px;\r\n                                     }\r\n                                     .footer {\r\n                                       clear: both;\r\n                                       padding-top: 10px;\r\n                                       text-align: center;\r\n                                       width: 100%;\r\n                                     }\r\n                                     .footer td,\r\n                                     .footer p,\r\n                                     .footer span,\r\n                                     .footer a {\r\n                                       color: #999999;\r\n                                       font-size: 12px;\r\n                                       text-align: center;\r\n                                     }\r\n                                     hr {\r\n                                       border: 0;\r\n                                       border-bottom: 1px solid #f6f6f6;\r\n                                       margin: 20px 0;\r\n                                     }\r\n                                   /* -------------------------------------\r\n                                     RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n                                     ------------------------------------- */\r\n\r\n                                     @media only screen and (max-width: 620px) {\r\n                                       table[class=body] .content {\r\n                                         padding: 0 !important;\r\n                                       }\r\n                                       table[class=body] .container {\r\n                                         padding: 0 !important;\r\n                                         width: 100% !important;\r\n                                       }\r\n                                       table[class=body] .main {\r\n                                         border-left-width: 0 !important;\r\n                                         border-radius: 0 !important;\r\n                                         border-right-width: 0 !important;\r\n                                       }\r\n                                     }\r\n                                   </style>\r\n                                 </head>\r\n                                 <body class=\"\">\r\n                                  <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n                                    <tr>\r\n                                     <td>&nbsp;</td>\r\n                                     <td class=\"container\">\r\n                                      <div class=\"content\">\r\n                                        <!-- START CENTERED WHITE CONTAINER -->\r\n                                        <table class=\"main\">\r\n                                          <!-- START MAIN CONTENT AREA -->\r\n                                          <tr>\r\n                                           <td class=\"wrapper\">\r\n                                            <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                                              <tr>\r\n                                               <td>', 1),
(180, 'show_pdf_signature_invoice', '1', 0),
(181, 'show_pdf_signature_estimate', '1', 0),
(182, 'signature_image', '', 0),
(183, 'email_footer', '</td>\r\n                             </tr>\r\n                           </table>\r\n                         </td>\r\n                       </tr>\r\n                       <!-- END MAIN CONTENT AREA -->\r\n                     </table>\r\n                     <!-- START FOOTER -->\r\n                     <div class=\"footer\">\r\n                      <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                        <tr>\r\n                          <td class=\"content-block\">\r\n                            <span>{companyname}</span>\r\n                          </td>\r\n                        </tr>\r\n                      </table>\r\n                    </div>\r\n                    <!-- END FOOTER -->\r\n                    <!-- END CENTERED WHITE CONTAINER -->\r\n                  </div>\r\n                </td>\r\n                <td>&nbsp;</td>\r\n              </tr>\r\n            </table>\r\n            </body>\r\n            </html>', 1),
(184, 'exclude_proposal_from_client_area_with_draft_status', '1', 1),
(185, 'pusher_app_key', '', 1),
(186, 'pusher_app_secret', '', 1),
(187, 'pusher_app_id', '', 1),
(188, 'pusher_realtime_notifications', '0', 1),
(189, 'pdf_format_statement', 'A4-PORTRAIT', 1),
(190, 'pusher_cluster', '', 1),
(191, 'show_table_export_button', 'to_all', 1),
(192, 'allow_staff_view_proposals_assigned', '1', 1),
(193, 'show_cloudflare_notice', '1', 0),
(194, 'task_modal_class', 'modal-lg', 1),
(195, 'lead_modal_class', 'modal-lg', 1),
(196, 'show_timesheets_overview_all_members_notice_admins', '0', 1),
(197, 'desktop_notifications', '0', 1),
(198, 'hide_notified_reminders_from_calendar', '1', 0),
(199, 'customer_info_format', '{company_name}<br />\r\n{street}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{vat_number_with_label}', 0),
(200, 'timer_started_change_status_in_progress', '1', 0),
(201, 'default_ticket_reply_status', '3', 1),
(202, 'default_task_status', 'auto', 1),
(203, 'email_queue_skip_with_attachments', '1', 1),
(204, 'email_queue_enabled', '0', 1),
(205, 'last_email_queue_retry', '', 1),
(206, 'auto_dismiss_desktop_notifications_after', '0', 1),
(207, 'proposal_info_format', '{proposal_to}<br />\r\n{address}<br />\r\n{city} {state}<br />\r\n{country_code} {zip_code}<br />\r\n{phone}<br />\r\n{email}', 0),
(208, 'ticket_replies_order', 'asc', 1),
(209, 'new_recurring_invoice_action', 'generate_and_send', 0),
(210, 'bcc_emails', '', 0),
(211, 'email_templates_language_checks', '', 0),
(212, 'proposal_accept_identity_confirmation', '1', 0),
(213, 'estimate_accept_identity_confirmation', '1', 0),
(214, 'new_task_auto_follower_current_member', '0', 1),
(215, 'task_biillable_checked_on_creation', '1', 1),
(216, 'predefined_clientnote_credit_note', '', 1),
(217, 'predefined_terms_credit_note', '', 1),
(218, 'next_credit_note_number', '1', 1),
(219, 'credit_note_prefix', 'CN-', 1),
(220, 'credit_note_number_decrement_on_delete', '1', 1),
(221, 'pdf_format_credit_note', 'A4-PORTRAIT', 1),
(222, 'show_pdf_signature_credit_note', '1', 0),
(223, 'show_credit_note_reminders_on_calendar', '1', 1),
(224, 'show_amount_due_on_invoice', '1', 1),
(225, 'show_total_paid_on_invoice', '1', 1),
(226, 'show_credits_applied_on_invoice', '1', 1),
(227, 'staff_members_create_inline_lead_status', '1', 1),
(228, 'staff_members_create_inline_customer_groups', '1', 1),
(229, 'staff_members_create_inline_ticket_services', '1', 1),
(230, 'staff_members_save_tickets_predefined_replies', '1', 1),
(231, 'staff_members_create_inline_contract_types', '1', 1),
(232, 'staff_members_create_inline_expense_categories', '1', 1),
(233, 'show_project_on_credit_note', '1', 1),
(234, 'proposals_auto_operations_hour', '21', 1),
(235, 'estimates_auto_operations_hour', '21', 1),
(236, 'contracts_auto_operations_hour', '21', 1),
(237, 'credit_note_number_format', '1', 1),
(238, 'allow_non_admin_members_to_import_leads', '0', 1),
(239, 'e_sign_legal_text', 'By clicking on \"Sign\", I consent to be legally bound by this electronic representation of my signature.', 1),
(240, 'show_pdf_signature_contract', '1', 1),
(241, 'view_contract_only_logged_in', '0', 1),
(242, 'show_subscriptions_in_customers_area', '1', 1),
(243, 'calendar_only_assigned_tasks', '0', 1),
(244, 'after_subscription_payment_captured', 'send_invoice_and_receipt', 1),
(245, 'mail_engine', 'phpmailer', 1),
(246, 'gdpr_enable_terms_and_conditions', '0', 1),
(247, 'privacy_policy', '', 1),
(248, 'terms_and_conditions', '', 1),
(249, 'gdpr_enable_terms_and_conditions_lead_form', '0', 1),
(250, 'gdpr_enable_terms_and_conditions_ticket_form', '0', 1),
(251, 'gdpr_contact_enable_right_to_be_forgotten', '0', 1),
(252, 'show_gdpr_in_customers_menu', '1', 1),
(253, 'show_gdpr_link_in_footer', '1', 1),
(254, 'enable_gdpr', '0', 1),
(255, 'gdpr_on_forgotten_remove_invoices_credit_notes', '0', 1),
(256, 'gdpr_on_forgotten_remove_estimates', '0', 1),
(257, 'gdpr_enable_consent_for_contacts', '0', 1),
(258, 'gdpr_consent_public_page_top_block', '', 1),
(259, 'gdpr_page_top_information_block', '', 1),
(260, 'gdpr_enable_lead_public_form', '0', 1),
(261, 'gdpr_show_lead_custom_fields_on_public_form', '0', 1),
(262, 'gdpr_lead_attachments_on_public_form', '0', 1),
(263, 'gdpr_enable_consent_for_leads', '0', 1),
(264, 'gdpr_lead_enable_right_to_be_forgotten', '0', 1),
(265, 'allow_staff_view_invoices_assigned', '1', 1),
(266, 'gdpr_data_portability_leads', '0', 1),
(267, 'gdpr_lead_data_portability_allowed', '', 1),
(268, 'gdpr_contact_data_portability_allowed', '', 1),
(269, 'gdpr_data_portability_contacts', '0', 1),
(270, 'allow_staff_view_estimates_assigned', '1', 1),
(271, 'gdpr_after_lead_converted_delete', '0', 1),
(272, 'gdpr_show_terms_and_conditions_in_footer', '0', 1),
(273, 'save_last_order_for_tables', '0', 1),
(274, 'company_logo_dark', '', 1),
(275, 'customers_register_require_confirmation', '0', 1),
(276, 'allow_non_admin_staff_to_delete_ticket_attachments', '0', 1),
(277, 'receive_notification_on_new_ticket_replies', '1', 0),
(278, 'google_client_id', '', 1),
(279, 'enable_google_picker', '1', 1),
(280, 'show_ticket_reminders_on_calendar', '1', 1),
(281, 'ticket_import_reply_only', '0', 1),
(282, 'visible_customer_profile_tabs', 'a:19:{s:7:\"profile\";b:0;s:8:\"contacts\";b:0;s:5:\"notes\";b:1;s:9:\"statement\";b:1;s:8:\"invoices\";b:1;s:8:\"payments\";b:1;s:9:\"proposals\";b:1;s:12:\"credit_notes\";b:1;s:9:\"estimates\";b:1;s:13:\"subscriptions\";b:1;s:8:\"expenses\";b:1;s:9:\"contracts\";b:1;s:8:\"projects\";b:1;s:5:\"tasks\";b:1;s:7:\"tickets\";b:1;s:11:\"attachments\";b:1;s:5:\"vault\";b:1;s:9:\"reminders\";b:1;s:3:\"map\";b:1;}', 0),
(283, 'show_project_on_invoice', '1', 1),
(284, 'show_project_on_estimate', '1', 1),
(285, 'staff_members_create_inline_lead_source', '1', 1),
(286, 'lead_unique_validation', '[\"email\"]', 1),
(287, 'last_upgrade_copy_data', '', 1),
(288, 'custom_js_admin_scripts', '', 1),
(289, 'custom_js_customer_scripts', '0', 1),
(290, 'stripe_webhook_id', '', 1),
(291, 'stripe_webhook_signing_secret', '', 1),
(292, 'stripe_ideal_webhook_id', '', 1),
(293, 'stripe_ideal_webhook_signing_secret', '', 1),
(294, 'show_php_version_notice', '1', 0),
(295, 'recaptcha_ignore_ips', '', 1),
(296, 'show_task_reminders_on_calendar', '1', 1),
(297, 'customer_settings', 'true', 1),
(298, 'tasks_reminder_notification_hour', '21', 1),
(299, 'allow_primary_contact_to_manage_other_contacts', '1', 1),
(300, 'items_table_amounts_exclude_currency_symbol', '1', 1),
(301, 'round_off_task_timer_option', '0', 1),
(302, 'round_off_task_timer_time', '5', 1),
(303, 'bitly_access_token', '', 1),
(304, 'enable_support_menu_badges', '0', 1),
(305, 'attach_invoice_to_payment_receipt_email', '0', 1),
(306, 'invoice_due_notice_before', '2', 1),
(307, 'invoice_due_notice_resend_after', '0', 1),
(308, '_leads_settings', 'true', 1),
(309, 'show_estimate_request_in_customers_area', '0', 1),
(310, 'gdpr_enable_terms_and_conditions_estimate_request_form', '0', 1),
(311, 'upgraded_from_version', '', 0),
(312, 'identification_key', '114788222316526050736280c091458e3', 1),
(313, 'automatically_stop_task_timer_after_hours', '8', 1),
(314, 'automatically_assign_ticket_to_first_staff_responding', '0', 1),
(315, 'reminder_for_completed_but_not_billed_tasks', '0', 1),
(316, 'staff_notify_completed_but_not_billed_tasks', '', 1),
(317, 'reminder_for_completed_but_not_billed_tasks_days', '', 1),
(318, 'tasks_reminder_notification_last_notified_day', '', 1),
(319, 'staff_related_ticket_notification_to_assignee_only', '0', 1),
(320, 'show_pdf_signature_proposal', '1', 1),
(321, 'enable_honeypot_spam_validation', '1', 1),
(322, 'sms_clickatell_api_key', '', 1),
(323, 'sms_clickatell_active', '0', 1),
(324, 'sms_clickatell_initialized', '1', 1),
(325, 'sms_msg91_sender_id', '', 1),
(326, 'sms_msg91_api_type', 'api', 1),
(327, 'sms_msg91_auth_key', '', 1),
(328, 'sms_msg91_active', '0', 1),
(329, 'sms_msg91_initialized', '1', 1),
(330, 'sms_twilio_account_sid', '', 1),
(331, 'sms_twilio_auth_token', '', 1),
(332, 'sms_twilio_phone_number', '', 1),
(333, 'sms_twilio_sender_id', '', 1),
(334, 'sms_twilio_active', '0', 1),
(335, 'sms_twilio_initialized', '1', 1),
(336, 'paymentmethod_authorize_acceptjs_active', '0', 1),
(337, 'paymentmethod_authorize_acceptjs_label', 'Authorize.net Accept.js', 1),
(338, 'paymentmethod_authorize_acceptjs_public_key', '', 0),
(339, 'paymentmethod_authorize_acceptjs_api_login_id', '', 0),
(340, 'paymentmethod_authorize_acceptjs_api_transaction_key', '', 0),
(341, 'paymentmethod_authorize_acceptjs_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(342, 'paymentmethod_authorize_acceptjs_currencies', 'USD', 0),
(343, 'paymentmethod_authorize_acceptjs_test_mode_enabled', '0', 0),
(344, 'paymentmethod_authorize_acceptjs_default_selected', '1', 1),
(345, 'paymentmethod_authorize_acceptjs_initialized', '1', 1),
(346, 'paymentmethod_instamojo_active', '0', 1),
(347, 'paymentmethod_instamojo_label', 'Instamojo', 1),
(348, 'paymentmethod_instamojo_api_key', '', 0),
(349, 'paymentmethod_instamojo_auth_token', '', 0),
(350, 'paymentmethod_instamojo_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(351, 'paymentmethod_instamojo_currencies', 'INR', 0),
(352, 'paymentmethod_instamojo_test_mode_enabled', '1', 0),
(353, 'paymentmethod_instamojo_default_selected', '1', 1),
(354, 'paymentmethod_instamojo_initialized', '1', 1),
(355, 'paymentmethod_mollie_active', '0', 1),
(356, 'paymentmethod_mollie_label', 'Mollie', 1),
(357, 'paymentmethod_mollie_api_key', '', 0),
(358, 'paymentmethod_mollie_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(359, 'paymentmethod_mollie_currencies', 'EUR', 0),
(360, 'paymentmethod_mollie_test_mode_enabled', '1', 0),
(361, 'paymentmethod_mollie_default_selected', '1', 1),
(362, 'paymentmethod_mollie_initialized', '1', 1),
(363, 'paymentmethod_paypal_braintree_active', '0', 1),
(364, 'paymentmethod_paypal_braintree_label', 'Braintree', 1),
(365, 'paymentmethod_paypal_braintree_merchant_id', '', 0),
(366, 'paymentmethod_paypal_braintree_api_public_key', '', 0),
(367, 'paymentmethod_paypal_braintree_api_private_key', '', 0),
(368, 'paymentmethod_paypal_braintree_currencies', 'USD', 0),
(369, 'paymentmethod_paypal_braintree_paypal_enabled', '1', 0),
(370, 'paymentmethod_paypal_braintree_test_mode_enabled', '1', 0),
(371, 'paymentmethod_paypal_braintree_default_selected', '1', 1),
(372, 'paymentmethod_paypal_braintree_initialized', '1', 1),
(373, 'paymentmethod_paypal_checkout_active', '0', 1),
(374, 'paymentmethod_paypal_checkout_label', 'Paypal Smart Checkout', 1),
(375, 'paymentmethod_paypal_checkout_client_id', '', 0),
(376, 'paymentmethod_paypal_checkout_secret', '', 0),
(377, 'paymentmethod_paypal_checkout_payment_description', 'Payment for Invoice {invoice_number}', 0),
(378, 'paymentmethod_paypal_checkout_currencies', 'USD,CAD,EUR', 0),
(379, 'paymentmethod_paypal_checkout_test_mode_enabled', '1', 0),
(380, 'paymentmethod_paypal_checkout_default_selected', '1', 1),
(381, 'paymentmethod_paypal_checkout_initialized', '1', 1),
(382, 'paymentmethod_paypal_active', '0', 1),
(383, 'paymentmethod_paypal_label', 'Paypal', 1),
(384, 'paymentmethod_paypal_username', '', 0),
(385, 'paymentmethod_paypal_password', '', 0),
(386, 'paymentmethod_paypal_signature', '', 0),
(387, 'paymentmethod_paypal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(388, 'paymentmethod_paypal_currencies', 'EUR,USD', 0),
(389, 'paymentmethod_paypal_test_mode_enabled', '1', 0),
(390, 'paymentmethod_paypal_default_selected', '1', 1),
(391, 'paymentmethod_paypal_initialized', '1', 1),
(392, 'paymentmethod_payu_money_active', '0', 1),
(393, 'paymentmethod_payu_money_label', 'PayU Money', 1),
(394, 'paymentmethod_payu_money_key', '', 0),
(395, 'paymentmethod_payu_money_salt', '', 0),
(396, 'paymentmethod_payu_money_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(397, 'paymentmethod_payu_money_currencies', 'INR', 0),
(398, 'paymentmethod_payu_money_test_mode_enabled', '1', 0),
(399, 'paymentmethod_payu_money_default_selected', '1', 1),
(400, 'paymentmethod_payu_money_initialized', '1', 1),
(401, 'paymentmethod_stripe_active', '0', 1),
(402, 'paymentmethod_stripe_label', 'Stripe Checkout', 1),
(403, 'paymentmethod_stripe_api_publishable_key', '', 0),
(404, 'paymentmethod_stripe_api_secret_key', '', 0),
(405, 'paymentmethod_stripe_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(406, 'paymentmethod_stripe_currencies', 'USD,CAD', 0),
(407, 'paymentmethod_stripe_allow_primary_contact_to_update_credit_card', '1', 0),
(408, 'paymentmethod_stripe_default_selected', '1', 1),
(409, 'paymentmethod_stripe_initialized', '1', 1),
(410, 'paymentmethod_stripe_ideal_active', '0', 1),
(411, 'paymentmethod_stripe_ideal_label', 'Stripe iDEAL', 1),
(412, 'paymentmethod_stripe_ideal_api_secret_key', '', 0),
(413, 'paymentmethod_stripe_ideal_api_publishable_key', '', 0),
(414, 'paymentmethod_stripe_ideal_description_dashboard', 'Payment for Invoice {invoice_number}', 0),
(415, 'paymentmethod_stripe_ideal_statement_descriptor', 'Payment for Invoice {invoice_number}', 0),
(416, 'paymentmethod_stripe_ideal_currencies', 'EUR', 0),
(417, 'paymentmethod_stripe_ideal_default_selected', '1', 1),
(418, 'paymentmethod_stripe_ideal_initialized', '1', 1),
(419, 'paymentmethod_two_checkout_active', '0', 1),
(420, 'paymentmethod_two_checkout_label', '2Checkout', 1),
(421, 'paymentmethod_two_checkout_merchant_code', '', 0),
(422, 'paymentmethod_two_checkout_secret_key', '', 0),
(423, 'paymentmethod_two_checkout_description', 'Payment for Invoice {invoice_number}', 0),
(424, 'paymentmethod_two_checkout_currencies', 'USD, EUR, GBP', 0),
(425, 'paymentmethod_two_checkout_test_mode_enabled', '1', 0),
(426, 'paymentmethod_two_checkout_default_selected', '1', 1),
(427, 'paymentmethod_two_checkout_initialized', '1', 1),
(428, 'perfex_office_theme_customers', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment_modes`
--

CREATE TABLE `tblpayment_modes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `show_on_pdf` int(11) NOT NULL DEFAULT 0,
  `invoices_only` int(11) NOT NULL DEFAULT 0,
  `expenses_only` int(11) NOT NULL DEFAULT 0,
  `selected_by_default` int(11) NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblpayment_modes`
--

INSERT INTO `tblpayment_modes` (`id`, `name`, `description`, `show_on_pdf`, `invoices_only`, `expenses_only`, `selected_by_default`, `active`) VALUES
(1, 'Bank', NULL, 0, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpinned_projects`
--

CREATE TABLE `tblpinned_projects` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussioncomments`
--

CREATE TABLE `tblprojectdiscussioncomments` (
  `id` int(11) NOT NULL,
  `discussion_id` int(11) NOT NULL,
  `discussion_type` varchar(10) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL,
  `contact_id` int(11) DEFAULT 0,
  `fullname` varchar(191) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_mime_type` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojectdiscussions`
--

CREATE TABLE `tblprojectdiscussions` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `show_to_customer` tinyint(1) NOT NULL DEFAULT 0,
  `datecreated` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblprojects`
--

CREATE TABLE `tblprojects` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `billing_type` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date DEFAULT NULL,
  `project_created` date NOT NULL,
  `date_finished` datetime DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `progress_from_tasks` int(11) NOT NULL DEFAULT 1,
  `project_cost` decimal(15,2) DEFAULT NULL,
  `project_rate_per_hour` decimal(15,2) DEFAULT NULL,
  `estimated_hours` decimal(15,2) DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `contact_notification` int(11) DEFAULT 1,
  `notify_contacts` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_activity`
--

CREATE TABLE `tblproject_activity` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL DEFAULT 0,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(100) DEFAULT NULL,
  `visible_to_customer` int(11) NOT NULL DEFAULT 0,
  `description_key` varchar(191) NOT NULL COMMENT 'Language file key',
  `additional_data` text DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_files`
--

CREATE TABLE `tblproject_files` (
  `id` int(11) NOT NULL,
  `file_name` varchar(191) NOT NULL,
  `original_file_name` mediumtext DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `last_activity` datetime DEFAULT NULL,
  `project_id` int(11) NOT NULL,
  `visible_to_customer` tinyint(1) DEFAULT 0,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `external` varchar(40) DEFAULT NULL,
  `external_link` text DEFAULT NULL,
  `thumbnail_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_members`
--

CREATE TABLE `tblproject_members` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_notes`
--

CREATE TABLE `tblproject_notes` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproject_settings`
--

CREATE TABLE `tblproject_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproposals`
--

CREATE TABLE `tblproposals` (
  `id` int(11) NOT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `datecreated` datetime NOT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `subtotal` decimal(15,2) NOT NULL,
  `total_tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adjustment` decimal(15,2) DEFAULT NULL,
  `discount_percent` decimal(15,2) NOT NULL,
  `discount_total` decimal(15,2) NOT NULL,
  `discount_type` varchar(30) DEFAULT NULL,
  `show_quantity_as` int(11) NOT NULL DEFAULT 1,
  `currency` int(11) NOT NULL,
  `open_till` date DEFAULT NULL,
  `date` date NOT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(40) DEFAULT NULL,
  `assigned` int(11) DEFAULT NULL,
  `hash` varchar(32) NOT NULL,
  `proposal_to` varchar(191) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `country` int(11) NOT NULL DEFAULT 0,
  `zip` varchar(50) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL,
  `estimate_id` int(11) DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `date_converted` datetime DEFAULT NULL,
  `pipeline_order` int(11) DEFAULT 1,
  `is_expiry_notified` int(11) NOT NULL DEFAULT 0,
  `acceptance_firstname` varchar(50) DEFAULT NULL,
  `acceptance_lastname` varchar(50) DEFAULT NULL,
  `acceptance_email` varchar(100) DEFAULT NULL,
  `acceptance_date` datetime DEFAULT NULL,
  `acceptance_ip` varchar(40) DEFAULT NULL,
  `signature` varchar(40) DEFAULT NULL,
  `short_link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblproposal_comments`
--

CREATE TABLE `tblproposal_comments` (
  `id` int(11) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `proposalid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblrelated_items`
--

CREATE TABLE `tblrelated_items` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(30) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblreminders`
--

CREATE TABLE `tblreminders` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `isnotified` int(11) NOT NULL DEFAULT 0,
  `rel_id` int(11) NOT NULL,
  `staff` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `notify_by_email` int(11) NOT NULL DEFAULT 1,
  `creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblroles`
--

CREATE TABLE `tblroles` (
  `roleid` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblroles`
--

INSERT INTO `tblroles` (`roleid`, `name`, `permissions`) VALUES
(1, 'Employee', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsales_activity`
--

CREATE TABLE `tblsales_activity` (
  `id` int(11) NOT NULL,
  `rel_type` varchar(20) DEFAULT NULL,
  `rel_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `additional_data` text DEFAULT NULL,
  `staffid` varchar(11) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblscheduled_emails`
--

CREATE TABLE `tblscheduled_emails` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(15) NOT NULL,
  `scheduled_at` datetime NOT NULL,
  `contacts` varchar(197) NOT NULL,
  `cc` text DEFAULT NULL,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT 1,
  `template` varchar(197) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `serviceid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsessions`
--

CREATE TABLE `tblsessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsessions`
--

INSERT INTO `tblsessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('05t5nipdp803bcv10014rvchiis6jaoj', '102.188.23.127', 1652608450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630383435303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('0ms0m9b597s6l3mbtnsq153fv6fmq5ir', '102.188.23.127', 1652620951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632303935313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('0o7vbb2r4l3u4b0a20tcilbptkd7chst', '::1', 1654504133, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530343133333b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('0v11dnnvum605h3b3lh8sab0oc4nlafj', '197.47.212.108', 1653905060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333930353036303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('0v2f85k8viv0nki4mmot0ieakghbaih5', '::1', 1654682561, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638323536313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('1587jgtiqb8dc0e8kjibg9ka0gu5voii', '102.188.23.127', 1652616865, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363836353b),
('194vsgi9d7cioqtg6ruhbfh59n8073su', '102.188.23.127', 1652613248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333234383b),
('1bck181c12imhl3trddt7s8oi2h41hj4', '::1', 1654510476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343531303436363b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('1k93fhv2ltnmoopjvrfm0sv6sj9ik2k3', '::1', 1654680309, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638303330393b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('1q787f5h9cgpf977unr3d8a8srpqrpcl', '::1', 1654611774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343631313734303b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('1snc3fr9l6e5k3l55d8k2hog4fr6r9q9', '156.213.56.217', 1653896807, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839363830373b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('20oqk9c0q0o5fk762ggmlt6q1s26ui69', '::1', 1654510466, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343531303436363b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('2cvla0vk0htldj4461ar7q4bjaticoj7', '156.213.56.217', 1653897546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839373534363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('2i9s6tjq31pk7bacjht17c246cgjg3dn', '156.213.56.217', 1653896418, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839363431383b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('2l23hobg3t638esq5de8k6e6apa5fbpd', '::1', 1654510150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343531303135303b),
('2r6ta2hc057jdaei1igjfud46die5ic4', '102.188.23.127', 1652615031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631353033313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('2spr3a9anggf9pohvdlvmes4up6e5eg0', '::1', 1654425372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432353337323b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('32o31hbmi0gak100dvthiifsn36kct9r', '102.188.23.127', 1652621305, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313330353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('33usjc8ermb1rrtichnpnma6pqi3f4mn', '102.188.23.127', 1652616920, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363932303b),
('35mgn8elfcksg6r51jdjpqcf0utaf48a', '102.188.23.127', 1652605631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630353633313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b6d6573736167652d737563636573737c733a31363a2253657474696e67732055706461746564223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('36jtei8kt2p8m0rpfs56bnugmgj9lir2', '::1', 1654678498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343637383439383b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('3gk4375jjaiiiujt350kmjm414k18700', '102.188.23.127', 1652617248, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373234383b),
('3lvei0ijotjsqh7u45busafgp185vt8a', '102.188.23.127', 1652608882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630383838323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('3pa4drf4oqejaa0dk6d9vuo789lr1hr4', '::1', 1654434991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433343939313b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('3q37kaqu3foup2j74qpethgurvvos91o', '::1', 1654500573, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530303537333b),
('3rce09m5j0o3gl0eqnsj6f5rp50ck6sf', '102.188.23.127', 1652698022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323639383032323b),
('3s78gm7rcd7d4a8mspp5vbtrquvihfiv', '102.188.23.127', 1652608546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630383534363b),
('3tnmntndrohl6lgdu49hqc4dita771ug', '154.182.58.179', 1653550582, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535303538323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('3ucsd8qudebbmbmse0m7q16cpqq3s2c6', '154.182.58.179', 1653551563, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535313534323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('42m5hve785nj19ckedi6j9c6pvar3o8g', '154.181.129.28', 1653489800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333438393536353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('46skil1lnnovb0cuvd5ar0uuq9dnh44s', '102.188.23.127', 1652613126, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333132363b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('4brbj084hrig23v2i6ectjrlvh73rtn7', '102.188.23.127', 1652613005, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333030353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('59ka5v5ekultnfs85b6pffuq9kpv8o4f', '192.168.10.1', 1652093241, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323039333233313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a36333a22687474703a2f2f70657266657863726d2e746573742f636c69656e74732f70726f6a6563742f323f67726f75703d70726f6a6563745f70726f706f73616c73223b),
('5d2b07dj9icm1sk43ckoordot70crid5', '102.188.23.127', 1652623654, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632333635343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('5hfv8usb4cko6magpnf2mlc7mb4v2bfq', '102.186.163.50', 1653837948, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833373934383b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('5nrddqt1b3i1k7r575928d4ko17k8eto', '102.188.23.127', 1652620066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632303036363b),
('5pnssvhfnrd612lug7i4gvfmat8k2570', '::1', 1654440777, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434303737373b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('5tm3aubqeovcqen3fmlnpodv2jurdvp4', '::1', 1654436670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433363637303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('5vtuvcv1s0d6gfcifg8s3tiapscus8fc', '::1', 1654426611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432363631313b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('64infd5ob1k2jbsgsrp1vbrv9dcmbdhd', '102.188.23.127', 1652618490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383439303b7265645f75726c7c733a3133343a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f61646d696e2f6d6973632f7365745f73657475705f6d656e755f6f70656e3f637372665f746f6b656e5f6e616d653d3835646366643432643364626264383032306532636537313232356265336430223b),
('66kpbj3rka4d8jtjhc6401p4o0i3btgg', '197.40.239.13', 1653554748, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535343734383b),
('6ac7fdusv6d6k3lmp40451vo7eo82nj2', '102.186.163.50', 1653834184, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833343138343b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('6da77d9an646h8u17eh1fucfqu0ebhh6', '102.188.23.127', 1652695222, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323639353232323b),
('6lco138oc1nk3c335eebqvtpe0532s71', '::1', 1654431523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433313532333b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('6lf4qmj8lkvk86dtkq6ahaafikseln41', '::1', 1654683683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638333638333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('6tmqog2d4l782k6fpn3ftq9g6o1rn02i', '102.188.23.127', 1652611216, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631313231363b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b6d6573736167652d737563636573737c733a32343a2255736572206164646564207375636365737366756c6c792e223b5f5f63695f766172737c613a313a7b733a31353a226d6573736167652d73756363657373223b733a333a226f6c64223b7d),
('7fugfoga1bvbn730tsuc5nudi4sh12vg', '102.188.23.127', 1652613379, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333337393b),
('7m7uom6tsvejipgjqm8r9i858sqm311t', '::1', 1654091008, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039313030383b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('8d6cjnncage4mr0khi2num7vhrovtfr4', '102.188.23.127', 1652608517, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630383531373b7265645f75726c7c733a36323a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f636c69656e7473223b),
('8dtja94o33ne54bh8b0df5cts9n241gt', '::1', 1654444500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434343530303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('8fk6fgej5p05u06qko9vbr7hgth63qak', '41.69.238.15', 1653557693, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535373639333b7265645f75726c7c733a36303a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f61646d696e223b),
('8icovho69liiobnek6atdotk1v198979', '102.188.23.127', 1652619700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631393730303b),
('8oecqirv57fqen9klqd6nhccpl8ga5p8', '102.188.23.127', 1652622271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632323237313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('942gft2mroqhb0bnei5ks25301pb7cpd', '102.188.23.127', 1652616084, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363038343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('95ra2m0qpc3njd7svjrfd4ps6ktp743j', '::1', 1654611260, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343631313236303b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('9ojoki5hl617pcf1kjv115uh8cd5a6fl', '::1', 1654682213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638323231333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('9ondnn1juevvg6nns2823a92h86bms5p', '41.69.238.15', 1653559490, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535393439303b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('9pgj8vel21s3lt5e7dpvmn7797taclcn', '::1', 1654504751, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530343735313b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('9ug37lqncsgscndkahpehmps4fadiij8', '102.188.23.127', 1652614414, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631343431343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('a056ivhju50ted19i54traeg4qhkj143', '154.182.58.179', 1653550910, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535303931303b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('a19iilc7kfgrep313t41u4suud2kg8us', '102.188.23.127', 1652624314, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632343331343b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('a2o07nt83rr652sdn84k4o5u2qiskh56', '::1', 1653918076, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931383037363b7265645f75726c7c733a313a222f223b),
('a32fmrijnt7c993cdfdo5njpsqs2gk0t', '45.76.42.208', 1652618732, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383733323b),
('a3fj0ame0or04inschcdct9sp74gb83e', '::1', 1654608691, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343630383639313b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('a42kil30vfsisv5c47mn8k27dqc8ohqm', '::1', 1654427606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432373630363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('ag5fvg9lor8jdihdero3is0qalak2lq2', '102.186.163.50', 1653836099, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833363039393b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('anu0kkrg1bhb6jgbsr9hqq83mgi0j6dg', '102.188.23.127', 1652620370, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632303337303b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('aulsrfciuonca3h39upl8n81br7dk63m', '::1', 1654434611, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433343631313b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('b72umgluks7iebhsu1rllagg06l7rjpj', '::1', 1654438374, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433383337343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('b89bmnev1186eimo1ihr73il739t1g6s', '102.184.113.70', 1653898429, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839383432393b),
('bdcuj3pj72hnjodi8a4pm4aj5esf4n6b', '::1', 1654681235, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638313233353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('bedb13jh2slqrgni5dsl9nft7c4h3e8d', '102.186.163.50', 1653838301, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833383239353b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('bfob6gklfmiiflvv7k98ac7amlthck1p', '::1', 1654425814, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432353831343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('bkvr9nbnbhhlf5c9jv4kkhlptq240dgs', '102.188.23.127', 1652610067, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631303036373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('bls0hvnnfclouumi6eir3muj59u467jc', '102.188.23.127', 1652625717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632353731373b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('bmn0n6en28n6rm698d7etss8fada1mgp', '45.76.42.208', 1652618778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383737383b),
('bvme1gvmeror1gfn9s3nkt8f6m2h8h5q', '41.187.114.4', 1653489581, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333438393538313b),
('chq0d7m215g9m6t77ocf3q9l6t8dnbmm', '::1', 1654502585, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530323538353b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('co6rlvhd7qma335q3mqpma7oe5dovn3r', '::1', 1654507094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530373039343b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('co724u0ltk2lrkl9g24h8v6ikbicbs71', '::1', 1654432207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433323230373b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('d0pucsbjv0mnstm4btbugsdkaj8vt56s', '102.188.23.127', 1652622063, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313839343b),
('d18o078m65uj4dklqd61jf736f4ij3vu', '::1', 1654431196, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433313139363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('dbn2cmelb9rpbi3hu9u6ijcjf76vbug9', '102.188.23.127', 1652685147, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323638353036323b),
('ddtubuu5s2jdp4j0sli1jj9vg40lj8jb', '102.186.163.50', 1653832546, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833323534363b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('difudg7npv0fv4tvi1ut40sk8glj3tcm', '102.188.23.127', 1652605246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630353234363b),
('dmn2mmn38gk7m87ojm39g9sbnivjkbe8', '::1', 1654444501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434343530303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('dmu7pvl0088tg2jn2a6bmvurgtlpumt9', '::1', 1654506772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530363737323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('e4gbrg6dsvf0p9khl6asp2h5ng7e9k6q', '::1', 1654426912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432363931323b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('e57it080rb28km6of7gkrbhta4u18qj0', '::1', 1654444094, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434343039343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('e5jufgiup2c8960qr4qhsblof6uu4d5b', '102.186.163.50', 1653836407, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833363430373b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b6d6573736167652d64616e6765727c733a32383a22496e76616c696420757365726e616d65206f722070617373776f7264223b5f5f63695f766172737c613a313a7b733a31343a226d6573736167652d64616e676572223b733a333a226f6c64223b7d),
('ebsp42kun8rte8438u8fi4danrgigl5n', '::1', 1654172230, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343137323232393b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('efp7pacn64aatfp7vgc5muibcckspl4f', '::1', 1654431845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433313834353b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('emhk2mi27uousm7k6ov2p67le6mobate', '45.76.42.208', 1652618083, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383038333b),
('etoc8clirat3u9n51tif3skgjh7hev8p', '197.47.212.108', 1653905190, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333930353138373b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('f71rvdqvegltp73tc899hmrkl5svs3cq', '::1', 1654429716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432393731363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('fd00t2i5cr573786ivm78giq9ou15cq6', '102.184.113.70', 1653899200, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333839393230303b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('fot59mve5m3sjrl919ujir8h8ngt9v9h', '::1', 1654508356, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530383335363b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('frqa8u2fovm0cvar86f3446ckk2oi71t', '::1', 1654683700, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638333638333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('gjjuhamqdnjl8sufmptvv2oqdeq5asqg', '::1', 1654611716, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343631313638323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('gjuenccgqrjcfp35n28jbiglb7db56qk', '102.188.23.127', 1652621043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313034333b),
('gqf5eq1ckmvjtkpgrikh132idpi18hsb', '102.186.163.50', 1653835778, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833353737383b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('gvsl500ivmm8a09vbk21kqrc1i9bossb', '102.186.163.50', 1653831831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833313833313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('h365tf6bd50e9nua0ot932omp7rb4t2l', '102.184.113.70', 1653901834, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333930313833343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('h3bev0f35n0j6lb5nbq9oncld672rcl4', '::1', 1654091696, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039313430373b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('hgbtg0lh357un8l7cik0efs0h5muea5c', '102.188.23.127', 1652613351, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333335313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('hikn722jtfr4uovmi4h3aog2sb2km4lc', '102.188.23.127', 1652613655, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333635353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b),
('hk1s7684lp51fimdcchuf8qq2v5869vs', '102.188.23.127', 1652617256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373235363b),
('hps2659rsr16mcp99fukvv9hbd40a3c2', '::1', 1654604112, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343630343131323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('i0clcaatmadd6poqb204usb0kta5k5ca', '::1', 1653917457, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931373435373b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('ia4cfb20c0fne6f6rvjtbt3n01f0esfc', '41.69.238.15', 1653561965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333536313936353b),
('je8rvhlltgc58aapmp45ueug0b2hckr7', '45.76.42.208', 1652618775, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383737353b),
('jif5qf4skrhph5fligtb0gnvqbhlbilb', '::1', 1654441129, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434313132393b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('jpfjqhe7u37a89eovjq9ccvbndo6slnf', '::1', 1654437974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433373937343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('jqap58ookuhuhflkme6majqpef9lq021', '::1', 1654433595, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433333539353b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('jscru20v0tlgioa4esnuqo08k8780ad9', '102.188.23.127', 1652612579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631323537393b),
('k292r02qjk2bsab9eervjd2gq8db5c2q', '41.69.238.15', 1653558252, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535383235323b7265645f75726c7c733a36303a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f61646d696e223b),
('k2fp8dpgse0co0crjc3rshqveoj699dl', '197.47.212.108', 1653903831, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333930333833313b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('k38abvrtof2ami9jh4ii218qhkn8ata5', '41.187.114.4', 1652624058, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632343035383b),
('k9ldcj1gmk636oq08puh6sfd4c95eep0', '102.188.23.127', 1652616772, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363737323b),
('kh3t9catlv98id2rd27i4dp4q1sqvlj7', '197.47.212.108', 1653905066, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333930353036363b),
('kro2fip2u2blqb76j7c1b6p0g52ad729', '::1', 1653919382, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931393338323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('ku42j75473vm4ndiaa3oadvmedsa40j0', '::1', 1654434299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433343239393b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('kubjuelpil4sufr4hu3qq8qq0bgk1a1j', '102.188.23.127', 1652619420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631393432303b),
('l7iqtj74nshs24e276m9fi10qobagi5b', '197.40.239.13', 1653489749, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333438393537363b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('l7lp5taf648u5gj8h4jj5s8go0c58d0a', '::1', 1654437410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433373431303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('l8ejlim4g3pdu6ns089j2b9mffk256md', '::1', 1654436290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433363239303b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('labjlqkq91eh1abubqfgh35tsquic5bb', '102.188.23.127', 1652625717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632353731373b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('ljjjrp4g3eteisf5coqp63adv0r1mjen', '45.76.42.208', 1652618017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631383031373b),
('ljliddvso2o2sht2bpi26rh4vit0fkh5', '::1', 1654422404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432323430343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('lrv5gaucafm67p4smq4o05lrlpjk3unk', '154.182.58.179', 1653551542, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535313534323b636c69656e745f757365725f69647c733a313a2238223b636f6e746163745f757365725f69647c733a313a2236223b636c69656e745f6c6f676765645f696e7c623a313b),
('m494kjulrjqkqk2oahqvalnalitdgnsd', '::1', 1654091372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343039313337323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('m82q6kpr9958kqdbiidjs71sgr8ubvbc', '102.188.23.127', 1652612968, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631323936383b),
('mg7pog2t3b3kp56jpki3v7cmbssgh84n', '102.188.23.127', 1652778177, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323737383137373b),
('nodelpcua5s2jdnn8595c4jiks7ah38u', '::1', 1654611682, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343631313638323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('o0ntlsfv62g3ggnam96t5uqucuahm9ta', '::1', 1654681835, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638313833353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('o9dvf4derubt6s6nlkaso49ru0u8b63v', '::1', 1654427246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432373234363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('ojhs1o930k0qa44k0c6bpi9h75q9ejkr', '102.188.23.127', 1652605686, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630353638363b7265645f75726c7c733a36323a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f636c69656e7473223b),
('oo7j5fiq4a0kn86gnh120rrp8f6h18h8', '::1', 1654509688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530393638383b),
('oovt6oj3csd7esrjia033tf2nv39c9ge', '::1', 1654679118, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343637393131383b7265645f75726c7c733a34303a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f61646d696e223b),
('ou0e9jif3q4e29m6c7ger3s2gbtrpffv', '::1', 1654432975, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433323937353b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('p0gnpjhnfauff2tlcnvb0bsad3h3t6tl', '41.69.238.15', 1653561967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333536313936353b),
('p6nu8kqjfbntgf5lad8f1rpbqml8grgc', '102.188.23.127', 1652621621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313632313b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('ploogtbrbi0bndecvbck0a839670f8s7', '102.188.23.127', 1652613653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631333337393b),
('q0hjtn5o1evdrk5226bstjpqp7sp3ual', '::1', 1654507745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530373734353b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('q9k38c9968cvc4dsllmfen2925sqr76f', '102.188.23.127', 1652623137, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632333133373b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('qaphf2kevpg9ihcdfi19kbiv4bs66m8i', '::1', 1654605569, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343630353536393b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('qu6pt8ls20jfddabpmehdtb5vbhscmjo', '::1', 1654502232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530323233323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('r89v4blmkl4t4dqqtop55gq17tm4cunj', '45.76.42.208', 1652617389, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373338393b),
('rjombooaoockhftjhgl4ops7mnga0da6', '::1', 1654680675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343638303637353b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b),
('rofp8hhuhjfpj8aed9o8v1mk9tfe5mb0', '102.188.23.127', 1652609728, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630393732383b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b),
('rpc7qcb32q5pnoms09dglgpusq9sg4te', '102.188.23.127', 1652622271, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632323237313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('rseuop57hju9r2a3ahv25cvsii38mad5', '102.188.23.127', 1652617156, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373135363b),
('secani7mv6n5ev54sgh03qo3vnu2kv8u', '::1', 1654433276, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343433333237363b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('srh73rok5g31i8tqd9t5o5qdi5hqdk21', '102.188.23.127', 1652616844, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363834343b),
('sso5iuo1gef0835rfnp0dd9u1b2n2vdv', '::1', 1654506270, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343530363237303b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('t0snufdt5r9hd2lfidplas5pksn3fp7d', '::1', 1654605266, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343630353236363b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('t1l0vlgv22jhhcv6fld00e30grs4ejtb', '41.187.114.4', 1652623913, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632333931333b),
('t45v79ltgjglouie4c248sn5kghqmknq', '102.188.23.127', 1652623821, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632333635343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('ti2vs5uqsnb317co3g98lo2c1rbqlbqo', '102.188.23.127', 1652621944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323632313934343b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('tlamrpa8h0lpegoenu0rrmla8bdsaa0j', '102.188.23.127', 1652698022, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323639383032323b7265645f75726c7c733a39363a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f61646d696e2f73657474696e67733f67726f75703d61646d696e2d7468656d652d73657474696e6773223b),
('tu6tcg99nl166ft6f6ebcdtv4gmf9069', '41.69.238.15', 1653561512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333536313531323b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('u0ekc0levuvv5p3eduvi6cbcq65270n5', '156.213.56.217', 1653831500, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333833313530303b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('uev88pgig9f8lgnsp612kjk8kpu8itkk', '154.182.58.179', 1653551223, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333535313232333b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('ugmsh23itvsoqisatsl80c7lcmd2h6qg', '::1', 1654443764, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343434333736343b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('uicuirooop8tteh2dcss15buubig7crp', '::1', 1654426251, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432363235313b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('uth0hn4llff6rpgbobp1vml3o7pe7il6', '::1', 1654429368, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343432393336383b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('v87uii64viubgaad8jeia0slhk369snt', '::1', 1654604855, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635343630343835353b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('vdj0vkc0n2hn6t3ldbctk7fobe6eqf93', '::1', 1653919510, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635333931393338323b7265645f75726c7c733a33353a22687474703a2f2f6c6f63616c686f73742f6c6567656c2d666f726d2f706f7274616c2f223b636c69656e745f757365725f69647c733a313a2239223b636f6e746163745f757365725f69647c733a313a2237223b636c69656e745f6c6f676765645f696e7c623a313b),
('vqrhb35doe1su60cmpq3f12t9j2tthg0', '45.76.42.208', 1652617034, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631373033343b),
('vqupbdpfmh4f253mfhnd5juuttu18arr', '102.188.23.127', 1652616572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323631363537323b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c733a303a22223b7265645f75726c7c733a35353a2268747470733a2f2f756e727566666c65642d6875676c652e34352d37362d34322d3230382e706c65736b2e706167652f706f7274616c2f223b),
('vu4cnh2j4t0nia3opdidkhsscpsg0ib2', '102.188.23.127', 1652609424, 0x5f5f63695f6c6173745f726567656e65726174657c693a313635323630393432343b73746166665f757365725f69647c733a313a2231223b73746166665f6c6f676765645f696e7c623a313b73657475702d6d656e752d6f70656e7c623a313b);

-- --------------------------------------------------------

--
-- Table structure for table `tblshared_customer_files`
--

CREATE TABLE `tblshared_customer_files` (
  `file_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblspam_filters`
--

CREATE TABLE `tblspam_filters` (
  `id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `rel_type` varchar(10) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff`
--

CREATE TABLE `tblstaff` (
  `staffid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `facebook` mediumtext DEFAULT NULL,
  `linkedin` mediumtext DEFAULT NULL,
  `phonenumber` varchar(30) DEFAULT NULL,
  `skype` varchar(50) DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `datecreated` datetime NOT NULL,
  `profile_image` varchar(191) DEFAULT NULL,
  `last_ip` varchar(40) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `last_password_change` datetime DEFAULT NULL,
  `new_pass_key` varchar(32) DEFAULT NULL,
  `new_pass_key_requested` datetime DEFAULT NULL,
  `admin` int(11) NOT NULL DEFAULT 0,
  `role` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT 1,
  `default_language` varchar(40) DEFAULT NULL,
  `direction` varchar(3) DEFAULT NULL,
  `media_path_slug` varchar(191) DEFAULT NULL,
  `is_not_staff` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `two_factor_auth_enabled` tinyint(1) DEFAULT 0,
  `two_factor_auth_code` varchar(100) DEFAULT NULL,
  `two_factor_auth_code_requested` datetime DEFAULT NULL,
  `email_signature` text DEFAULT NULL,
  `google_auth_secret` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblstaff`
--

INSERT INTO `tblstaff` (`staffid`, `email`, `firstname`, `lastname`, `facebook`, `linkedin`, `phonenumber`, `skype`, `password`, `datecreated`, `profile_image`, `last_ip`, `last_login`, `last_activity`, `last_password_change`, `new_pass_key`, `new_pass_key_requested`, `admin`, `role`, `active`, `default_language`, `direction`, `media_path_slug`, `is_not_staff`, `hourly_rate`, `two_factor_auth_enabled`, `two_factor_auth_code`, `two_factor_auth_code_requested`, `email_signature`, `google_auth_secret`) VALUES
(1, 'qbizns@yahoo.com', 'Ahmed', 'Galal', NULL, NULL, NULL, NULL, '$2a$08$JU0Z1BE2rcfKHyc0Gtntie1EU/YmA0Qra7HmmuRprF3e/vie.j8j.', '2022-05-15 08:56:28', NULL, '::1', '2022-06-08 11:07:11', '2022-06-08 11:07:46', NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, 0, '0.00', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_departments`
--

CREATE TABLE `tblstaff_departments` (
  `staffdepartmentid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `departmentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstaff_permissions`
--

CREATE TABLE `tblstaff_permissions` (
  `staff_id` int(11) NOT NULL,
  `feature` varchar(40) NOT NULL,
  `capability` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriptions`
--

CREATE TABLE `tblsubscriptions` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` text DEFAULT NULL,
  `description_in_item` tinyint(1) NOT NULL DEFAULT 0,
  `clientid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `currency` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id` varchar(50) DEFAULT NULL,
  `tax_id_2` int(11) NOT NULL DEFAULT 0,
  `stripe_tax_id_2` varchar(50) DEFAULT NULL,
  `stripe_plan_id` text DEFAULT NULL,
  `stripe_subscription_id` text NOT NULL,
  `next_billing_cycle` bigint(20) DEFAULT NULL,
  `ends_at` bigint(20) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `hash` varchar(32) NOT NULL,
  `created` datetime NOT NULL,
  `created_from` int(11) NOT NULL,
  `date_subscribed` datetime DEFAULT NULL,
  `in_test_environment` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaggables`
--

CREATE TABLE `tbltaggables` (
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(20) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `tag_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltags`
--

CREATE TABLE `tbltags` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks`
--

CREATE TABLE `tbltasks` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `startdate` date NOT NULL,
  `duedate` date DEFAULT NULL,
  `datefinished` datetime DEFAULT NULL,
  `addedfrom` int(11) NOT NULL,
  `is_added_from_contact` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `recurring_type` varchar(10) DEFAULT NULL,
  `repeat_every` int(11) DEFAULT NULL,
  `recurring` int(11) NOT NULL DEFAULT 0,
  `is_recurring_from` int(11) DEFAULT NULL,
  `cycles` int(11) NOT NULL DEFAULT 0,
  `total_cycles` int(11) NOT NULL DEFAULT 0,
  `custom_recurring` tinyint(1) NOT NULL DEFAULT 0,
  `last_recurring_date` date DEFAULT NULL,
  `rel_id` int(11) DEFAULT NULL,
  `rel_type` varchar(30) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT 0,
  `billable` tinyint(1) NOT NULL DEFAULT 0,
  `billed` tinyint(1) NOT NULL DEFAULT 0,
  `invoice_id` int(11) NOT NULL DEFAULT 0,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `milestone` int(11) DEFAULT 0,
  `kanban_order` int(11) DEFAULT 1,
  `milestone_order` int(11) NOT NULL DEFAULT 0,
  `visible_to_client` tinyint(1) NOT NULL DEFAULT 0,
  `deadline_notified` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstimers`
--

CREATE TABLE `tbltaskstimers` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `start_time` varchar(64) NOT NULL,
  `end_time` varchar(64) DEFAULT NULL,
  `staff_id` int(11) NOT NULL,
  `hourly_rate` decimal(15,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltasks_checklist_templates`
--

CREATE TABLE `tbltasks_checklist_templates` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_assigned`
--

CREATE TABLE `tbltask_assigned` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `assigned_from` int(11) NOT NULL DEFAULT 0,
  `is_assigned_from_contact` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_checklist_items`
--

CREATE TABLE `tbltask_checklist_items` (
  `id` int(11) NOT NULL,
  `taskid` int(11) NOT NULL,
  `description` text NOT NULL,
  `finished` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `finished_from` int(11) DEFAULT 0,
  `list_order` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_comments`
--

CREATE TABLE `tbltask_comments` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `taskid` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL DEFAULT 0,
  `file_id` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask_followers`
--

CREATE TABLE `tbltask_followers` (
  `id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `taskid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaxes`
--

CREATE TABLE `tbltaxes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `taxrate` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltemplates`
--

CREATE TABLE `tbltemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(100) NOT NULL,
  `addedfrom` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets`
--

CREATE TABLE `tbltickets` (
  `ticketid` int(11) NOT NULL,
  `adminreplying` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `merged_ticket_id` int(11) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `department` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `service` int(11) DEFAULT NULL,
  `ticketkey` varchar(32) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `lastreply` datetime DEFAULT NULL,
  `clientread` int(11) NOT NULL DEFAULT 0,
  `adminread` int(11) NOT NULL DEFAULT 0,
  `assigned` int(11) NOT NULL DEFAULT 0,
  `staff_id_replying` int(11) DEFAULT NULL,
  `cc` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_pipe_log`
--

CREATE TABLE `tbltickets_pipe_log` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `email_to` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `message` mediumtext NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_predefined_replies`
--

CREATE TABLE `tbltickets_predefined_replies` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_priorities`
--

CREATE TABLE `tbltickets_priorities` (
  `priorityid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_priorities`
--

INSERT INTO `tbltickets_priorities` (`priorityid`, `name`) VALUES
(1, 'Low'),
(2, 'Medium'),
(3, 'High');

-- --------------------------------------------------------

--
-- Table structure for table `tbltickets_status`
--

CREATE TABLE `tbltickets_status` (
  `ticketstatusid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `isdefault` int(11) NOT NULL DEFAULT 0,
  `statuscolor` varchar(7) DEFAULT NULL,
  `statusorder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbltickets_status`
--

INSERT INTO `tbltickets_status` (`ticketstatusid`, `name`, `isdefault`, `statuscolor`, `statusorder`) VALUES
(1, 'Open', 1, '#ff2d42', 1),
(2, 'In progress', 1, '#84c529', 2),
(3, 'Answered', 1, '#0000ff', 3),
(4, 'On Hold', 1, '#c0c0c0', 4),
(5, 'Closed', 1, '#03a9f4', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_attachments`
--

CREATE TABLE `tblticket_attachments` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `replyid` int(11) DEFAULT NULL,
  `file_name` varchar(191) NOT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblticket_replies`
--

CREATE TABLE `tblticket_replies` (
  `id` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `userid` int(11) DEFAULT NULL,
  `contactid` int(11) NOT NULL DEFAULT 0,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `message` text DEFAULT NULL,
  `attachment` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltodos`
--

CREATE TABLE `tbltodos` (
  `todoid` int(11) NOT NULL,
  `description` text NOT NULL,
  `staffid` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `finished` tinyint(1) NOT NULL,
  `datefinished` datetime DEFAULT NULL,
  `item_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltracked_mails`
--

CREATE TABLE `tbltracked_mails` (
  `id` int(11) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `opened` tinyint(1) NOT NULL DEFAULT 0,
  `date_opened` datetime DEFAULT NULL,
  `subject` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbltwocheckout_log`
--

CREATE TABLE `tbltwocheckout_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` varchar(64) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_api`
--

CREATE TABLE `tbluser_api` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_api`
--

INSERT INTO `tbluser_api` (`id`, `user`, `name`, `token`, `expiration_date`) VALUES
(1, 'qbizns@yahoo.com', 'ahmed', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjoicWJpem5zQHlhaG9vLmNvbSIsIm5hbWUiOiJhaG1lZCIsIkFQSV9USU1FIjoxNjUyNjEwMzI5fQ.-Oz17lEVh8IB5cMSSpPdsNx36pwDFA5NOOow24jPsoA', '2028-05-11 12:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_auto_login`
--

CREATE TABLE `tbluser_auto_login` (
  `key_id` char(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(150) NOT NULL,
  `last_ip` varchar(40) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_auto_login`
--

INSERT INTO `tbluser_auto_login` (`key_id`, `user_id`, `user_agent`, `last_ip`, `last_login`, `staff`) VALUES
('942a379ef8283be3e25fb78864d3830e', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 OPR/86.0.4363.59', '::1', '2022-06-08 09:07:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser_meta`
--

CREATE TABLE `tbluser_meta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `client_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(191) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbluser_meta`
--

INSERT INTO `tbluser_meta` (`umeta_id`, `staff_id`, `client_id`, `contact_id`, `meta_key`, `meta_value`) VALUES
(5, 0, 0, 5, 'consent_key', '0e49005a217676f6dd30cdd8542a2082-e6a80c5bde23c176380e5e3d5d5eb8e2'),
(6, 0, 0, 6, 'consent_key', 'f062611d406222192083e44f62dba9f4-694eb0886414b0f109e05f93aa306c03'),
(7, 0, 0, 7, 'consent_key', 'cc55e550acdc490c8a8712f78262af33-d830f371aa15d7440fb29627638cae41');

-- --------------------------------------------------------

--
-- Table structure for table `tblvault`
--

CREATE TABLE `tblvault` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `server_address` varchar(191) NOT NULL,
  `port` int(11) DEFAULT NULL,
  `username` varchar(191) NOT NULL,
  `password` text NOT NULL,
  `description` text DEFAULT NULL,
  `creator` int(11) NOT NULL,
  `creator_name` varchar(100) DEFAULT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1,
  `share_in_projects` tinyint(1) NOT NULL DEFAULT 0,
  `last_updated` datetime DEFAULT NULL,
  `last_updated_from` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblviews_tracking`
--

CREATE TABLE `tblviews_tracking` (
  `id` int(11) NOT NULL,
  `rel_id` int(11) NOT NULL,
  `rel_type` varchar(40) NOT NULL,
  `date` datetime NOT NULL,
  `view_ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblweb_to_lead`
--

CREATE TABLE `tblweb_to_lead` (
  `id` int(11) NOT NULL,
  `form_key` varchar(32) NOT NULL,
  `lead_source` int(11) NOT NULL,
  `lead_status` int(11) NOT NULL,
  `notify_lead_imported` int(11) NOT NULL DEFAULT 1,
  `notify_type` varchar(20) DEFAULT NULL,
  `notify_ids` mediumtext DEFAULT NULL,
  `responsible` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) NOT NULL,
  `form_data` mediumtext DEFAULT NULL,
  `recaptcha` int(11) NOT NULL DEFAULT 0,
  `submit_btn_name` varchar(40) DEFAULT NULL,
  `submit_btn_text_color` varchar(10) DEFAULT '#ffffff',
  `submit_btn_bg_color` varchar(10) DEFAULT '#84c529',
  `success_submit_msg` text DEFAULT NULL,
  `submit_action` int(11) DEFAULT 0,
  `lead_name_prefix` varchar(255) DEFAULT NULL,
  `submit_redirect_url` mediumtext DEFAULT NULL,
  `language` varchar(40) DEFAULT NULL,
  `allow_duplicate` int(11) NOT NULL DEFAULT 1,
  `mark_public` int(11) NOT NULL DEFAULT 0,
  `track_duplicate_field` varchar(20) DEFAULT NULL,
  `track_duplicate_field_and` varchar(20) DEFAULT NULL,
  `create_task_on_duplicate` int(11) NOT NULL DEFAULT 0,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_contact_id_foreign` (`contact_id`) USING BTREE,
  ADD KEY `payment_plan_id_foreign` (`plan_id`) USING BTREE;

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  ADD PRIMARY KEY (`announcementid`);

--
-- Indexes for table `tblclients`
--
ALTER TABLE `tblclients`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `country` (`country`),
  ADD KEY `leadid` (`leadid`),
  ADD KEY `company` (`company`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `tblconsents`
--
ALTER TABLE `tblconsents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`),
  ADD KEY `email` (`email`),
  ADD KEY `is_primary` (`is_primary`);

--
-- Indexes for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client` (`client`),
  ADD KEY `contract_type` (`contract_type`);

--
-- Indexes for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcountries`
--
ALTER TABLE `tblcountries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcredits`
--
ALTER TABLE `tblcredits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblcustomer_admins`
--
ALTER TABLE `tblcustomer_admins`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groupid` (`groupid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `relid` (`relid`),
  ADD KEY `fieldto` (`fieldto`),
  ADD KEY `fieldid` (`fieldid`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`departmentid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  ADD PRIMARY KEY (`dismissedannouncementid`),
  ADD KEY `announcementid` (`announcementid`),
  ADD KEY `staff` (`staff`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  ADD PRIMARY KEY (`emailtemplateid`);

--
-- Indexes for table `tblestimates`
--
ALTER TABLE `tblestimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `category` (`category`),
  ADD KEY `currency` (`currency`);

--
-- Indexes for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfiles`
--
ALTER TABLE `tblfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  ADD PRIMARY KEY (`boxid`);

--
-- Indexes for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  ADD PRIMARY KEY (`questionboxdescriptionid`);

--
-- Indexes for table `tblform_results`
--
ALTER TABLE `tblform_results`
  ADD PRIMARY KEY (`resultid`);

--
-- Indexes for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoiceid` (`invoiceid`),
  ADD KEY `paymentmethod` (`paymentmethod`);

--
-- Indexes for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `currency` (`currency`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `sale_agent` (`sale_agent`),
  ADD KEY `total` (`total`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblitemable`
--
ALTER TABLE `tblitemable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `qty` (`qty`),
  ADD KEY `rate` (`rate`);

--
-- Indexes for table `tblitems`
--
ALTER TABLE `tblitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax` (`tax`),
  ADD KEY `tax2` (`tax2`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemid` (`itemid`),
  ADD KEY `rel_id` (`rel_id`);

--
-- Indexes for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  ADD PRIMARY KEY (`articleanswerid`);

--
-- Indexes for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  ADD PRIMARY KEY (`articleid`);

--
-- Indexes for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `tblleads`
--
ALTER TABLE `tblleads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `company` (`company`),
  ADD KEY `email` (`email`),
  ADD KEY `assigned` (`assigned`),
  ADD KEY `status` (`status`),
  ADD KEY `source` (`source`),
  ADD KEY `lastcontact` (`lastcontact`),
  ADD KEY `dateadded` (`dateadded`),
  ADD KEY `leadorder` (`leadorder`),
  ADD KEY `from_form_id` (`from_form_id`);

--
-- Indexes for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmodules`
--
ALTER TABLE `tblmodules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  ADD PRIMARY KEY (`postid`);

--
-- Indexes for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`);

--
-- Indexes for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbloptions`
--
ALTER TABLE `tbloptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprojects`
--
ALTER TABLE `tblprojects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `tblproposals`
--
ALTER TABLE `tblproposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreminders`
--
ALTER TABLE `tblreminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `staff` (`staff`);

--
-- Indexes for table `tblroles`
--
ALTER TABLE `tblroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `tblsessions`
--
ALTER TABLE `tblsessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstaff`
--
ALTER TABLE `tblstaff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `firstname` (`firstname`),
  ADD KEY `lastname` (`lastname`);

--
-- Indexes for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  ADD PRIMARY KEY (`staffdepartmentid`);

--
-- Indexes for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientid` (`clientid`),
  ADD KEY `currency` (`currency`),
  ADD KEY `tax_id` (`tax_id`);

--
-- Indexes for table `tbltaggables`
--
ALTER TABLE `tbltaggables`
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tbltags`
--
ALTER TABLE `tbltags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `tbltasks`
--
ALTER TABLE `tbltasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rel_id` (`rel_id`),
  ADD KEY `rel_type` (`rel_type`),
  ADD KEY `milestone` (`milestone`),
  ADD KEY `kanban_order` (`kanban_order`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `taskid` (`taskid`);

--
-- Indexes for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets`
--
ALTER TABLE `tbltickets`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `service` (`service`),
  ADD KEY `department` (`department`),
  ADD KEY `status` (`status`),
  ADD KEY `userid` (`userid`),
  ADD KEY `priority` (`priority`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  ADD PRIMARY KEY (`priorityid`);

--
-- Indexes for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  ADD PRIMARY KEY (`ticketstatusid`);

--
-- Indexes for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltodos`
--
ALTER TABLE `tbltodos`
  ADD PRIMARY KEY (`todoid`);

--
-- Indexes for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `tbluser_api`
--
ALTER TABLE `tbluser_api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  ADD PRIMARY KEY (`umeta_id`);

--
-- Indexes for table `tblvault`
--
ALTER TABLE `tblvault`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblactivity_log`
--
ALTER TABLE `tblactivity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `tblannouncements`
--
ALTER TABLE `tblannouncements`
  MODIFY `announcementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblclients`
--
ALTER TABLE `tblclients`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblconsents`
--
ALTER TABLE `tblconsents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblconsent_purposes`
--
ALTER TABLE `tblconsent_purposes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontacts`
--
ALTER TABLE `tblcontacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontact_permissions`
--
ALTER TABLE `tblcontact_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontracts`
--
ALTER TABLE `tblcontracts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontracts_types`
--
ALTER TABLE `tblcontracts_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_comments`
--
ALTER TABLE `tblcontract_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcontract_renewals`
--
ALTER TABLE `tblcontract_renewals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcountries`
--
ALTER TABLE `tblcountries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `tblcreditnotes`
--
ALTER TABLE `tblcreditnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcreditnote_refunds`
--
ALTER TABLE `tblcreditnote_refunds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcredits`
--
ALTER TABLE `tblcredits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcurrencies`
--
ALTER TABLE `tblcurrencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcustomers_groups`
--
ALTER TABLE `tblcustomers_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomer_groups`
--
ALTER TABLE `tblcustomer_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfields`
--
ALTER TABLE `tblcustomfields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomfieldsvalues`
--
ALTER TABLE `tblcustomfieldsvalues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `departmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldismissed_announcements`
--
ALTER TABLE `tbldismissed_announcements`
  MODIFY `dismissedannouncementid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblemailtemplates`
--
ALTER TABLE `tblemailtemplates`
  MODIFY `emailtemplateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tblestimates`
--
ALTER TABLE `tblestimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_requests`
--
ALTER TABLE `tblestimate_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_forms`
--
ALTER TABLE `tblestimate_request_forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblestimate_request_status`
--
ALTER TABLE `tblestimate_request_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `eventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses`
--
ALTER TABLE `tblexpenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblexpenses_categories`
--
ALTER TABLE `tblexpenses_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfiles`
--
ALTER TABLE `tblfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_questions`
--
ALTER TABLE `tblform_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box`
--
ALTER TABLE `tblform_question_box`
  MODIFY `boxid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_question_box_description`
--
ALTER TABLE `tblform_question_box_description`
  MODIFY `questionboxdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblform_results`
--
ALTER TABLE `tblform_results`
  MODIFY `resultid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblgdpr_requests`
--
ALTER TABLE `tblgdpr_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoicepaymentrecords`
--
ALTER TABLE `tblinvoicepaymentrecords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblinvoices`
--
ALTER TABLE `tblinvoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitemable`
--
ALTER TABLE `tblitemable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitems`
--
ALTER TABLE `tblitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitems_groups`
--
ALTER TABLE `tblitems_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblitem_tax`
--
ALTER TABLE `tblitem_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowedge_base_article_feedback`
--
ALTER TABLE `tblknowedge_base_article_feedback`
  MODIFY `articleanswerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base`
--
ALTER TABLE `tblknowledge_base`
  MODIFY `articleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblknowledge_base_groups`
--
ALTER TABLE `tblknowledge_base_groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads`
--
ALTER TABLE `tblleads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblleads_email_integration`
--
ALTER TABLE `tblleads_email_integration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'the ID always must be 1', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblleads_sources`
--
ALTER TABLE `tblleads_sources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblleads_status`
--
ALTER TABLE `tblleads_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbllead_activity_log`
--
ALTER TABLE `tbllead_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllead_integration_emails`
--
ALTER TABLE `tbllead_integration_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmail_queue`
--
ALTER TABLE `tblmail_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmilestones`
--
ALTER TABLE `tblmilestones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblmodules`
--
ALTER TABLE `tblmodules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblnewsfeed_comment_likes`
--
ALTER TABLE `tblnewsfeed_comment_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_posts`
--
ALTER TABLE `tblnewsfeed_posts`
  MODIFY `postid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_comments`
--
ALTER TABLE `tblnewsfeed_post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnewsfeed_post_likes`
--
ALTER TABLE `tblnewsfeed_post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblnotifications`
--
ALTER TABLE `tblnotifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbloptions`
--
ALTER TABLE `tbloptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `tblpayment_modes`
--
ALTER TABLE `tblpayment_modes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpinned_projects`
--
ALTER TABLE `tblpinned_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussioncomments`
--
ALTER TABLE `tblprojectdiscussioncomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojectdiscussions`
--
ALTER TABLE `tblprojectdiscussions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprojects`
--
ALTER TABLE `tblprojects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_activity`
--
ALTER TABLE `tblproject_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_files`
--
ALTER TABLE `tblproject_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_members`
--
ALTER TABLE `tblproject_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_notes`
--
ALTER TABLE `tblproject_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproject_settings`
--
ALTER TABLE `tblproject_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproposals`
--
ALTER TABLE `tblproposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblproposal_comments`
--
ALTER TABLE `tblproposal_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrelated_items`
--
ALTER TABLE `tblrelated_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreminders`
--
ALTER TABLE `tblreminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblroles`
--
ALTER TABLE `tblroles`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblsales_activity`
--
ALTER TABLE `tblsales_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblscheduled_emails`
--
ALTER TABLE `tblscheduled_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `serviceid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblspam_filters`
--
ALTER TABLE `tblspam_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstaff`
--
ALTER TABLE `tblstaff`
  MODIFY `staffid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblstaff_departments`
--
ALTER TABLE `tblstaff_departments`
  MODIFY `staffdepartmentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblsubscriptions`
--
ALTER TABLE `tblsubscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltags`
--
ALTER TABLE `tbltags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks`
--
ALTER TABLE `tbltasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstimers`
--
ALTER TABLE `tbltaskstimers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltasks_checklist_templates`
--
ALTER TABLE `tbltasks_checklist_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_assigned`
--
ALTER TABLE `tbltask_assigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_checklist_items`
--
ALTER TABLE `tbltask_checklist_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_comments`
--
ALTER TABLE `tbltask_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask_followers`
--
ALTER TABLE `tbltask_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaxes`
--
ALTER TABLE `tbltaxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltemplates`
--
ALTER TABLE `tbltemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets`
--
ALTER TABLE `tbltickets`
  MODIFY `ticketid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_pipe_log`
--
ALTER TABLE `tbltickets_pipe_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_predefined_replies`
--
ALTER TABLE `tbltickets_predefined_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltickets_priorities`
--
ALTER TABLE `tbltickets_priorities`
  MODIFY `priorityid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltickets_status`
--
ALTER TABLE `tbltickets_status`
  MODIFY `ticketstatusid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblticket_attachments`
--
ALTER TABLE `tblticket_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblticket_replies`
--
ALTER TABLE `tblticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltodos`
--
ALTER TABLE `tbltodos`
  MODIFY `todoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltracked_mails`
--
ALTER TABLE `tbltracked_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser_api`
--
ALTER TABLE `tbluser_api`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbluser_meta`
--
ALTER TABLE `tbluser_meta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblvault`
--
ALTER TABLE `tblvault`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblviews_tracking`
--
ALTER TABLE `tblviews_tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblweb_to_lead`
--
ALTER TABLE `tblweb_to_lead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbltwocheckout_log`
--
ALTER TABLE `tbltwocheckout_log`
  ADD CONSTRAINT `tbltwocheckout_log_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `tblinvoices` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
