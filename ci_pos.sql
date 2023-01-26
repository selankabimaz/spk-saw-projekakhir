-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 12:14 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'a30f088fb7172753ba695d8e61326ad7', '2022-01-15 03:59:06'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ac554c0be883d8344105c83d2a5223bb', '2022-01-15 04:59:51'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '75adefde5e8ed758981e6815ded43382', '2022-01-15 05:11:24'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', '52ad155babba76b3cff3e2a42400c9ab', '2022-01-15 05:18:05'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'ba64f0181ecfe17c1b9e8982b09c4d89', '2022-01-15 05:23:46'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'd00d9adf19dcb1ef36ccdb2980568cf3', '2022-01-15 07:52:23'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.71 Safari/537.36', 'a8b5b7da19a078f9f8763e5e9303a986', '2022-01-19 03:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'aghnafidaroini', 1, '2022-01-15 01:47:33', 0),
(2, '::1', 'aghnafidaroini', NULL, '2022-01-15 02:47:57', 0),
(3, '::1', 'aghnafidaroini', 4, '2022-01-15 02:50:05', 0),
(4, '::1', 'aghnafidaroini', 4, '2022-01-15 02:50:39', 0),
(5, '::1', 'aghnafidaroini', 4, '2022-01-15 02:50:47', 0),
(6, '::1', 'aghnafidaroini', 5, '2022-01-15 03:58:35', 0),
(7, '::1', 'aghnafidaroini', 5, '2022-01-15 03:58:52', 0),
(8, '::1', 'aghnafidaroini104@gmail.com', 5, '2022-01-15 03:59:13', 1),
(9, '::1', 'aghnafidaroini', NULL, '2022-01-15 04:58:43', 0),
(10, '::1', 'aghnafidaroini104@gmail.com', 6, '2022-01-15 05:00:06', 1),
(11, '::1', 'aghnafidaroini104@gmail.com', 7, '2022-01-15 05:11:36', 1),
(12, '::1', 'aghnafidaroini104@gmail.com', 8, '2022-01-15 05:18:16', 1),
(13, '::1', 'aghnafidaroini', NULL, '2022-01-15 05:18:49', 0),
(14, '::1', 'aghnafidaroini104@gmail.com', 9, '2022-01-15 05:23:54', 1),
(15, '::1', 'aghnafidaroini104@gmail.com', 9, '2022-01-15 05:26:21', 1),
(16, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-15 07:52:32', 1),
(17, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-15 10:32:07', 1),
(18, '::1', 'aghnafidaroini', NULL, '2022-01-15 18:25:07', 0),
(19, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-15 18:25:15', 1),
(20, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 00:31:21', 1),
(21, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:16:22', 1),
(22, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:28:16', 1),
(23, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:32:59', 1),
(24, '::1', 'aghnafidaroini', NULL, '2022-01-16 02:36:33', 0),
(25, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:36:40', 1),
(26, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:52:56', 1),
(27, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:53:49', 1),
(28, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:54:11', 1),
(29, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:54:23', 1),
(30, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:54:49', 1),
(31, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:55:26', 1),
(32, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:55:52', 1),
(33, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:57:20', 1),
(34, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:57:47', 1),
(35, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:58:09', 1),
(36, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:58:20', 1),
(37, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:58:36', 1),
(38, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 02:59:11', 1),
(39, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 03:00:34', 1),
(40, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 03:02:44', 1),
(41, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 04:50:08', 1),
(42, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-16 23:53:03', 1),
(43, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-17 00:55:56', 1),
(44, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-17 00:56:06', 1),
(45, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-17 01:06:36', 1),
(46, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-17 22:47:49', 1),
(47, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 00:21:37', 1),
(48, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 06:50:36', 1),
(49, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 09:14:25', 1),
(50, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:04:05', 1),
(51, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:05:12', 1),
(52, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:09:35', 1),
(53, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:12:19', 1),
(54, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:15:08', 1),
(55, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:15:40', 1),
(56, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:16:27', 1),
(57, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-18 11:16:48', 1),
(58, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:07:16', 1),
(59, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:21:30', 1),
(60, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:22:18', 1),
(61, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:22:37', 1),
(62, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:23:10', 1),
(63, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:23:54', 1),
(64, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:24:15', 1),
(65, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:38:01', 1),
(66, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:42:17', 1),
(67, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 00:43:03', 1),
(68, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:11:38', 1),
(69, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:14:08', 1),
(70, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:14:25', 1),
(71, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:15:48', 1),
(72, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:16:08', 1),
(73, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:16:57', 1),
(74, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:17:59', 1),
(75, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:18:30', 1),
(76, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:19:07', 1),
(77, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:20:49', 1),
(78, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:24:28', 1),
(79, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 01:24:44', 1),
(80, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:14:25', 1),
(81, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:15:04', 1),
(82, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:22:56', 1),
(83, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:23:18', 1),
(84, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:23:34', 1),
(85, '::1', 'aghnafidaroini104@gmail.com', 10, '2022-01-19 02:24:30', 1),
(86, '::1', 'aghnafidaroini', 11, '2022-01-19 03:37:42', 0),
(87, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-19 03:38:44', 1),
(88, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-19 03:39:26', 1),
(89, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-19 03:48:18', 1),
(90, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-19 08:36:28', 1),
(91, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-20 23:10:03', 1),
(92, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-01-20 23:14:08', 1),
(93, '::1', 'aghnafidaroini', NULL, '2022-12-26 22:11:24', 0),
(94, '::1', 'aghnafidaroini', NULL, '2022-12-26 22:11:39', 0),
(95, '::1', 'aghnafidaroini', NULL, '2022-12-26 22:12:00', 0),
(96, '::1', 'aghnafidaroini', NULL, '2022-12-26 22:12:06', 0),
(97, '::1', 'aghnafidaroini10@gmail.com', NULL, '2022-12-26 22:16:13', 0),
(98, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:16:24', 0),
(99, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:16:32', 0),
(100, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:17:04', 0),
(101, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:17:26', 0),
(102, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:17:46', 0),
(103, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-26 22:19:47', 0),
(104, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-12-26 22:22:26', 1),
(105, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-12-26 22:24:11', 1),
(106, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-12-26 22:58:25', 1),
(107, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-12-27 10:13:31', 1),
(108, '::1', 'aghnafidaroini104@gmail.com', 11, '2022-12-27 16:24:16', 1),
(109, '::1', 'Rizky2909', 12, '2022-12-27 17:55:58', 0),
(110, '::1', 'rizkyanto54@gmail.com', 13, '2022-12-27 18:09:28', 1),
(111, '::1', 'userwebci4@gmail.com', 14, '2022-12-27 18:11:31', 1),
(112, '::1', 'userwebci4@gmail.com', 14, '2022-12-27 18:11:47', 1),
(113, '::1', 'aghnafidaroini', NULL, '2022-12-27 18:12:02', 0),
(114, '::1', 'userwebci4@gmail.com', 14, '2022-12-27 18:13:19', 1),
(115, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 08:45:57', 0),
(116, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 08:46:26', 0),
(117, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 08:46:37', 0),
(118, '::1', 'aghnafidaroini104@gmail.com', NULL, '2022-12-28 08:48:18', 0),
(119, '::1', 'Userwebci4', NULL, '2022-12-28 09:07:47', 0),
(120, '::1', 'Userwebci4', NULL, '2022-12-28 09:07:58', 0),
(121, '::1', 'Userwebci', NULL, '2022-12-28 09:08:32', 0),
(122, '::1', 'Userwebci', NULL, '2022-12-28 09:08:44', 0),
(123, '::1', 'Userwebci4', NULL, '2022-12-28 09:09:38', 0),
(124, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 09:09:59', 0),
(125, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 09:12:28', 0),
(126, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 09:12:57', 0),
(127, '::1', 'userwebci4@gmail.com', NULL, '2022-12-28 09:14:48', 0),
(128, '::1', 'Userwebci4', NULL, '2022-12-28 09:15:09', 0),
(129, '::1', 'Userwebci4', NULL, '2022-12-28 09:16:13', 0),
(130, '::1', 'userwebci4@gmail.com', 14, '2022-12-28 09:17:08', 1),
(131, '::1', 'userwebci4@gmail.com', 14, '2022-12-28 10:44:11', 1),
(132, '::1', 'userwebci4@gmail.com', 14, '2022-12-29 07:40:31', 1),
(133, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 00:52:04', 1),
(134, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 02:25:20', 1),
(135, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 02:25:50', 1),
(136, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 02:25:51', 1),
(137, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 02:26:28', 1),
(138, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 03:22:58', 1),
(139, '::1', 'userwebci4@gmail.com', 14, '2022-12-30 03:24:40', 1),
(140, '::1', 'userwebci4@gmail.com', 14, '2023-01-09 01:51:08', 1),
(141, '::1', 'userwebci4@gmail.com', 14, '2023-01-10 08:41:16', 1),
(142, '::1', 'userwebci4@gmail.com', 14, '2023-01-11 07:13:35', 1),
(143, '::1', 'userwebci4@gmail.com', 14, '2023-01-11 07:35:33', 1),
(144, '::1', 'userwebci4@gmail.com', 14, '2023-01-14 06:35:28', 1),
(145, '::1', 'userwebci4@gmail.com', 14, '2023-01-16 09:37:53', 1),
(146, '::1', 'userwebci4@gmail.com', 14, '2023-01-21 01:00:48', 1),
(147, '::1', 'userwebci4@gmail.com', 14, '2023-01-22 00:40:58', 1),
(148, '::1', 'userwebci4@gmail.com', 14, '2023-01-22 02:28:32', 1),
(149, '::1', 'userwebci4@gmail.com', 14, '2023-01-22 03:55:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diposisi`
--

CREATE TABLE `diposisi` (
  `nama_agenda` varchar(250) NOT NULL,
  `no_surat` int(20) NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_dari` varchar(250) NOT NULL,
  `surat_kepada` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diposisi`
--

INSERT INTO `diposisi` (`nama_agenda`, `no_surat`, `tgl_surat`, `surat_dari`, `surat_kepada`, `perihal`) VALUES
('Undangan', 1, '2023-01-11', 'Aziz', 'Kepala', 'Surat Lamaran'),
('Magang', 2, '2023-01-18', 'HRD', 'Calon Magang', 'Magang'),
('Undangan', 3, '2023-01-20', 'Aziz', 'Kepala', 'Surat Lamaran');

-- --------------------------------------------------------

--
-- Table structure for table `keluar`
--

CREATE TABLE `keluar` (
  `no_surat` int(20) NOT NULL,
  `tgl_surat` date NOT NULL,
  `surat_dari` varchar(250) NOT NULL,
  `surat_kepada` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keluar`
--

INSERT INTO `keluar` (`no_surat`, `tgl_surat`, `surat_dari`, `surat_kepada`, `perihal`) VALUES
(1, '2023-01-16', 'Aziz', 'Kepala', 'Surat Lamaran'),
(2, '2023-01-12', 'Aziz', 'Kepala', 'Surat Lamaran');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laporan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `gambar`, `nik`, `nama`, `laporan`) VALUES
(1, '1642515829_33ea61e9482439240b26.jpg', '202300050', 'Aghna Fida Roini', 'Komputer No. 15 pada Lab Komputer 3 sering mengalami eror'),
(2, '1642516110_89f711bc8558d062bc03.jpg', '202400025', 'Muhammad Rizkyanto', 'LCD di ruangan B1.3 tidak bisa digunakan'),
(3, '1642516218_71f1053ae8daac720a58.jpg', '202100013', 'Chelsie Island', 'Listrik di ruangan B1.1 sering mati sendiri'),
(4, '1642516324_a626a2193ad04a808eef.jpg', '201200067', 'Hafis Ramadhan', 'Saya kurang paham dalam penggunaan webiste stmik LMS'),
(5, '1642525655_0eb65babeb7712d52875.jpg', '202400015', 'Luna Maya', 'Akses parkir motor di dalam kehujanan'),
(6, '1642526085_013649ddb2f41fd4f11f.jpg', '1234', 'tidak tahu', 'tidak tahu'),
(7, '1642583526_a98cdeb07387f2123fe7.jpg', '203407789', 'Pipit', 'Saya merupakan mahasiswa baru');

-- --------------------------------------------------------

--
-- Table structure for table `masuk`
--

CREATE TABLE `masuk` (
  `no_surat` int(20) NOT NULL,
  `tgl_diterima` date NOT NULL,
  `surat_dari` varchar(250) NOT NULL,
  `surat_kepada` varchar(250) NOT NULL,
  `perihal` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masuk`
--

INSERT INTO `masuk` (`no_surat`, `tgl_diterima`, `surat_dari`, `surat_kepada`, `perihal`) VALUES
(1, '2023-01-15', 'Aziz', 'Kepala', 'Surat Lamaran'),
(2, '2023-01-16', 'Kepala Desa', 'Pemerintah', 'Jalan Rusak'),
(3, '2023-01-18', 'HRD', 'Calon Magang', 'Magang'),
(4, '2023-01-17', 'Ahmad', 'Kepala', 'Surat Lamaran');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1642231249, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 'userwebci4@gmail.com', 'Userwebci4', '$2y$10$p6BPFkxnx52g04K1CJA9g.wDaVNkYVNtl4NSuoqAOQ9WuLBApkcVm', NULL, NULL, NULL, '3d7923e9af1ae2f9323bbe786194a5c1', NULL, NULL, 1, 0, '2022-12-27 18:10:56', '2022-12-27 18:10:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `diposisi`
--
ALTER TABLE `diposisi`
  ADD PRIMARY KEY (`no_surat`);

--
-- Indexes for table `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`no_surat`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`no_surat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keluar`
--
ALTER TABLE `keluar`
  MODIFY `no_surat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `masuk`
--
ALTER TABLE `masuk`
  MODIFY `no_surat` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
