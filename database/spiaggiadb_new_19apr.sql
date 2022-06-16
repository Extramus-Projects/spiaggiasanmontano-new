-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 19, 2021 at 11:03 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spiaggiadb_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `bigmapmappings`
--

CREATE TABLE `bigmapmappings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordsLS` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordsSS` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bigmapmappings`
--

INSERT INTO `bigmapmappings` (`id`, `map_name`, `coordsLS`, `coordsSS`, `created_at`, `updated_at`) VALUES
(1, 'Sectors', '67,392,61,269,62,195,79,181,114,179,165,177,212,174,268,170,286,177,293,199,301,293,309,386,249,392,185,397,125,401,80,402', '26,252,119,244,111,119,105,114,29,116,23,122', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_no_of_guest` int(11) NOT NULL,
  `user_no_of_babies` int(11) NOT NULL,
  `guest_surname1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_checkin` date NOT NULL,
  `user_checkout` date NOT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '0',
  `user_promo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_booking_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_ammount` double(8,2) DEFAULT NULL,
  `creator_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_27_093310_create_bigmapmappings_table', 1),
(7, '2021_03_27_135026_create_places_table', 3),
(10, '2021_03_28_175317_create_temp_bookings_table', 6),
(11, '2021_03_30_172340_create_promo_codes_table', 7),
(12, '2021_03_30_185902_create_trans_table', 8),
(17, '2021_03_28_172839_create_bookings_table', 13),
(18, '2021_03_31_195632_create_tempbooking_cards_table', 13),
(19, '2021_03_27_134455_create_setting_admins_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co_xl` int(11) NOT NULL,
  `co_yl` int(11) NOT NULL,
  `co_xs` int(11) DEFAULT NULL,
  `co_ys` int(11) DEFAULT NULL,
  `place_description` text COLLATE utf8mb4_unicode_ci,
  `status` smallint(6) NOT NULL DEFAULT '0',
  `price1` double NOT NULL,
  `price2` double NOT NULL,
  `price3` double NOT NULL,
  `price4` double NOT NULL,
  `currency_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `place_id`, `place_name`, `map_name`, `co_xl`, `co_yl`, `co_xs`, `co_ys`, `place_description`, `status`, `price1`, `price2`, `price3`, `price4`, `currency_type`, `created_at`, `updated_at`) VALUES
(5, 'Q11', 'Q11', 'Sectors', 80, 278, 30, 165, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-13 20:58:51', '2021-04-17 09:03:08'),
(6, 'Q12', 'Q12', 'Sectors', 108, 280, 39, 165, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-13 22:04:52', '2021-04-17 09:03:14'),
(7, 'Q13', 'Q13', 'Sectors', 135, 277, 53, 169, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 07:35:40', '2021-04-16 07:35:40'),
(8, 'Q14', 'Q14', 'Sectors', 165, 272, 58, 159, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 07:52:38', '2021-04-16 07:52:38'),
(9, 'Q21', 'Q21', 'Sectors', 84, 303, 30, 175, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:53:37', '2021-04-16 07:53:37'),
(10, 'Q22', 'Q22', 'Sectors', 110, 304, 40, 176, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:54:18', '2021-04-16 07:54:18'),
(11, 'Q23', 'Q23', 'Sectors', 140, 301, 53, 176, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:54:47', '2021-04-16 07:54:47'),
(12, 'Q24', 'Q24', 'Sectors', 167, 303, 62, 174, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:55:17', '2021-04-16 07:55:17'),
(13, 'Q31', 'Q31', 'Sectors', 90, 338, 34, 194, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:56:14', '2021-04-16 07:56:14'),
(14, 'Q32', 'Q32', 'Sectors', 115, 341, 45, 193, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:56:52', '2021-04-16 07:56:52'),
(15, 'Q33', 'Q33', 'Sectors', 143, 338, 55, 191, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:57:25', '2021-04-19 06:47:38'),
(16, 'Q34', 'Q34', 'Sectors', 168, 335, 65, 196, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:57:58', '2021-04-16 07:57:58'),
(17, 'Q41', 'Q41', 'Sectors', 91, 376, 33, 215, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 07:58:23', '2021-04-16 07:58:23'),
(18, 'Q42', 'Q42', 'Sectors', 118, 372, 44, 216, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:01', '2021-04-16 08:01:01'),
(19, 'Q43', 'Q43', 'Sectors', 150, 367, 56, 212, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:31', '2021-04-16 08:01:31'),
(20, 'Q44', 'Q44', 'Sectors', 171, 368, 65, 213, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:55', '2021-04-16 08:01:55'),
(21, 'R11', 'R11', 'Sectors', 195, 272, 71, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:03:12', '2021-04-16 08:03:12'),
(22, 'R12', 'R12', 'Sectors', 223, 272, 86, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:08:49', '2021-04-19 06:35:59'),
(23, 'S11', 'S11', 'Sectors', 321, 262, 121, 152, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:09:01', '2021-04-16 08:09:01'),
(24, 'S12', 'S12', 'Sectors', 351, 260, 133, 149, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:09:46', '2021-04-16 08:09:46'),
(26, 'S13', 'S13', 'Sectors', 382, 255, 143, 147, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:10:21', '2021-04-16 08:10:21'),
(27, 'S14', 'S14', 'Sectors', 410, 255, 154, 145, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:10:43', '2021-04-16 08:10:43'),
(28, 'S21', 'S21', 'Sectors', 326, 289, 123, 165, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:11:44', '2021-04-16 08:11:44'),
(29, 'S22', 'S22', 'Sectors', 355, 285, 134, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:07', '2021-04-16 08:12:07'),
(30, 'R13', 'R13', 'Sectors', 254, 272, 94, 158, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:27', '2021-04-19 06:35:01'),
(31, 'S23', 'S23', 'Sectors', 384, 280, 146, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:45', '2021-04-16 08:12:45'),
(32, 'S24', 'S24', 'Sectors', 412, 277, 157, 159, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:13:06', '2021-04-16 08:13:06'),
(33, 'S31', 'S31', 'Sectors', 328, 326, 124, 187, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:13:50', '2021-04-16 08:13:50'),
(34, 'S32', 'S32', 'Sectors', 353, 323, 135, 186, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:09', '2021-04-16 08:27:38'),
(35, 'R14', 'R14', 'Sectors', 280, 267, 104, 158, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:14:39', '2021-04-16 08:14:39'),
(36, 'S33', 'S33', 'Sectors', 391, 321, 148, 182, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:39', '2021-04-16 08:14:39'),
(37, 'S34', 'S34', 'Sectors', 418, 316, 158, 183, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:59', '2021-04-16 08:14:59'),
(38, 'S41', 'S41', 'Sectors', 333, 359, 125, 208, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:15:20', '2021-04-16 08:15:20'),
(39, 'S42', 'S42', 'Sectors', 360, 356, 185, 193, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:15:45', '2021-04-16 08:15:45'),
(40, 'S43', 'S43', 'Sectors', 394, 345, 149, 200, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:16:20', '2021-04-16 08:16:20'),
(41, 'R21', 'R21', 'Sectors', 193, 302, 72, 179, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:16:29', '2021-04-16 08:16:29'),
(42, 'S44', 'S44', 'Sectors', 421, 343, 160, 198, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:16:46', '2021-04-16 08:16:46'),
(43, 'V11', 'V11', 'Sectors', 557, 224, 210, 127, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:18:04', '2021-04-16 08:18:04'),
(44, 'R22', 'R22', 'Sectors', 222, 298, 81, 176, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:18:27', '2021-04-16 08:18:27'),
(45, 'V12', 'V12', 'Sectors', 581, 215, 220, 121, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:18:32', '2021-04-16 08:18:32'),
(46, 'V13', 'V13', 'Sectors', 607, 203, 229, 117, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:19:11', '2021-04-16 08:19:11'),
(47, 'R23', 'R23', 'Sectors', 258, 297, 95, 175, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:19:23', '2021-04-19 06:37:10'),
(48, 'V14', 'V14', 'Sectors', 636, 196, 239, 113, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:19:32', '2021-04-16 08:19:32'),
(49, 'V21', 'V21', 'Sectors', 561, 244, 211, 138, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:20:11', '2021-04-16 08:21:30'),
(50, 'R24', 'R24', 'Sectors', 285, 297, 106, 174, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:20:28', '2021-04-19 06:38:30'),
(51, 'V22', 'V22', 'Sectors', 589, 234, 223, 133, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:20:34', '2021-04-16 08:21:58'),
(52, 'V23', 'V23', 'Sectors', 619, 229, 234, 128, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:22:39', '2021-04-16 08:22:39'),
(53, 'R31', 'R31', 'Sectors', 198, 337, 72, 196, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:22:49', '2021-04-19 06:49:11'),
(54, 'V24', 'V24', 'Sectors', 646, 217, 243, 123, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:23:01', '2021-04-16 08:23:01'),
(55, 'V31', 'V31', 'Sectors', 574, 278, 216, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:23:25', '2021-04-16 08:23:25'),
(56, 'V32', 'V32', 'Sectors', 604, 269, 226, 157, 'none', 0, 1050, 1300, 1550, 1750, 'EUR', '2021-04-16 08:23:47', '2021-04-16 08:23:47'),
(57, 'V33', 'V33', 'Sectors', 631, 262, 239, 148, 'none', 0, 1050, 1300, 1550, 1750, 'EUR', '2021-04-16 08:24:07', '2021-04-16 08:24:07'),
(58, 'R32', 'R32', 'Sectors', 226, 338, 82, 197, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:24:30', '2021-04-19 06:49:33'),
(59, 'V34', 'V34', 'Sectors', 657, 251, 249, 142, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:24:33', '2021-04-16 08:24:33'),
(60, 'V41', 'V41', 'Sectors', 582, 312, 219, 178, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:24:59', '2021-04-16 08:24:59'),
(61, 'V42', 'V42', 'Sectors', 605, 301, 230, 172, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:25:20', '2021-04-16 08:25:20'),
(62, 'V43', 'V43', 'Sectors', 641, 291, 244, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:25:57', '2021-04-16 08:25:57'),
(63, 'R33', 'R33', 'Sectors', 257, 335, 95, 196, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:25:58', '2021-04-16 08:25:58'),
(64, 'V44', 'V44', 'Sectors', 669, 279, 255, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:26:15', '2021-04-16 08:26:15'),
(65, 'R34', 'R34', 'Sectors', 287, 329, 107, 193, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:27:18', '2021-04-16 08:28:02'),
(66, 'R41', 'R41', 'Sectors', 198, 368, 73, 216, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:28:56', '2021-04-16 08:30:14'),
(67, 'R42', 'R42', 'Sectors', 224, 366, 83, 215, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:29:58', '2021-04-16 08:29:58'),
(68, 'R43', 'R43', 'Sectors', 261, 365, 98, 214, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:31:01', '2021-04-16 08:31:01'),
(69, 'R44', 'R44', 'Sectors', 290, 364, 108, 214, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:31:52', '2021-04-16 08:31:52'),
(70, 'T11', 'T11', 'Sectors', 443, 245, 165, 145, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:33:46', '2021-04-16 08:33:46'),
(71, 'T12', 'T12', 'Sectors', 470, 244, 176, 143, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:34:34', '2021-04-16 08:34:34'),
(72, 'T13', 'T13', 'Sectors', 497, 237, 186, 139, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:36:11', '2021-04-16 08:36:11'),
(73, 'T14', 'T14', 'Sectors', 523, 228, 197, 135, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:37:09', '2021-04-16 08:37:09'),
(74, 'T21', 'T21', 'Sectors', 448, 273, 168, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:38:19', '2021-04-16 08:38:19'),
(75, 'T22', 'T22', 'Sectors', 476, 266, 179, 158, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:39:08', '2021-04-16 08:39:08'),
(76, 'T23', 'T23', 'Sectors', 505, 261, 189, 155, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:40:06', '2021-04-16 08:40:06'),
(77, 'T24', 'T24', 'Sectors', 531, 255, 200, 150, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:41:19', '2021-04-16 08:41:19'),
(78, 'T31', 'T31', 'Sectors', 459, 312, 169, 182, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:42:45', '2021-04-16 08:42:45'),
(79, 'T32', 'T32', 'Sectors', 483, 304, 179, 181, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:43:49', '2021-04-16 08:43:49'),
(80, 'T33', 'T33', 'Sectors', 513, 299, 193, 176, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:44:51', '2021-04-16 08:44:51'),
(81, 'T34', 'T34', 'Sectors', 537, 291, 202, 173, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:45:53', '2021-04-16 08:45:53'),
(82, 'T41', 'T41', 'Sectors', 460, 340, 172, 198, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:46:52', '2021-04-16 08:46:52'),
(83, 'T42', 'T42', 'Sectors', 486, 334, 183, 197, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:47:38', '2021-04-16 08:47:38'),
(84, 'T43', 'T43', 'Sectors', 519, 327, 194, 191, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:48:22', '2021-04-16 08:48:22'),
(85, 'T44', 'T44', 'Sectors', 546, 320, 204, 189, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:49:07', '2021-04-16 08:49:07'),
(86, 'X11', 'X11', 'Sectors', 659, 183, 248, 109, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:50:36', '2021-04-16 08:50:36'),
(87, 'X12', 'X12', 'Sectors', 687, 171, 257, 101, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:51:28', '2021-04-16 08:51:28'),
(88, 'X13', 'X13', 'Sectors', 712, 160, 267, 96, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:52:11', '2021-04-16 08:52:11'),
(89, 'X14', 'X14', 'Sectors', 737, 145, 278, 90, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:52:48', '2021-04-16 08:52:48'),
(90, 'X21', 'X21', 'Sectors', 671, 205, 251, 122, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:53:57', '2021-04-16 08:53:57'),
(91, 'X22', 'X22', 'Sectors', 696, 192, 259, 116, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:54:32', '2021-04-16 08:54:32'),
(92, 'X23', 'X23', 'Sectors', 725, 178, 282, 100, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:55:08', '2021-04-16 08:55:08'),
(93, 'X24', 'X24', 'Sectors', 752, 167, 282, 101, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:55:58', '2021-04-16 08:55:58'),
(94, 'X31', 'X31', 'Sectors', 687, 240, 258, 144, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:57:38', '2021-04-16 08:57:38'),
(95, 'X32', 'X32', 'Sectors', 714, 231, 268, 136, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:58:43', '2021-04-16 08:58:43'),
(96, 'X33', 'X33', 'Sectors', 744, 216, 280, 128, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:59:27', '2021-04-16 08:59:27'),
(97, 'X34', 'X34', 'Sectors', 769, 201, 289, 121, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 09:00:02', '2021-04-16 09:00:02'),
(98, 'X41', 'X41', 'Sectors', 697, 270, 261, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:01:21', '2021-04-16 09:01:21'),
(99, 'X42', 'X42', 'Sectors', 723, 257, 270, 152, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:02:08', '2021-04-16 09:02:08'),
(100, 'X43', 'X43', 'Sectors', 759, 243, 286, 144, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:02:43', '2021-04-16 09:02:43'),
(101, 'X44', 'X44', 'Sectors', 784, 229, 295, 137, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:03:16', '2021-04-16 09:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `map_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promocode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promo_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberofuse` int(11) NOT NULL DEFAULT '5',
  `discount` double(8,2) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `setting_admins`
--

CREATE TABLE `setting_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_no_days` int(11) NOT NULL,
  `booking_email_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` time NOT NULL,
  `booking_start` datetime NOT NULL,
  `booking_end` datetime NOT NULL,
  `daily_fee` double(8,2) NOT NULL,
  `season_start` date NOT NULL,
  `season_end` date NOT NULL,
  `status_daily_fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_admins`
--

INSERT INTO `setting_admins` (`id`, `max_no_days`, `booking_email_content`, `closing_time`, `booking_start`, `booking_end`, `daily_fee`, `season_start`, `season_end`, `status_daily_fee`, `created_at`, `updated_at`) VALUES
(1, 10, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo.</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Full Name:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Phone:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Number of Adults:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Number of Babies:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Payment Type:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Total Amount: </strong>[total_amount]&nbsp;&euro;<br />\r\n			<strong>Paid Amount: </strong>[paid_amount]&nbsp;&euro;<br />\r\n			<strong>Remaining Amount: </strong>[remaining_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			<strong>Map Name:</strong> [map_name]<br />\r\n			<strong>Place Description:&nbsp;</strong>[place_description]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Spiaggia San Montano</strong> Admin.</p>', '17:30:00', '2021-04-17 10:00:00', '2021-07-20 17:00:00', 10.00, '2021-06-12', '2021-09-30', 1, NULL, '2021-04-19 06:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `tempbooking_cards`
--

CREATE TABLE `tempbooking_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_no_of_guest` int(11) NOT NULL,
  `user_no_of_babies` int(11) NOT NULL,
  `guest_surname1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_surname3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baby_surname4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_checkin` date NOT NULL,
  `user_checkout` date NOT NULL,
  `is_approved` smallint(6) NOT NULL DEFAULT '0',
  `user_promo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_booking_tracking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_card_paymentid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_ammount` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_bookings`
--

CREATE TABLE `temp_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_checkin` date NOT NULL,
  `cookie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE `trans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Programmer', 'shaykhsiddiqee@gmail.com', 'admin', NULL, '$2y$10$MbbL3YBMdasgYNNdPsSYietjNZpeBMSrTzDtheXG4hFZc7EAPInCC', 'O6HHCzJuilT6VdcushdvNDuKTzYdwJzyUN27qTsXhltjwLWk4CwIAkELQ0Et', '2020-07-01 20:05:59', '2020-08-04 01:32:33'),
(12, 'Mario Angelo Iannotta', 'marioiannotta@virgilio.it', 'admin', NULL, '$2y$10$Puk9lMdAwMBRinbBeEp5Ru4/ZO9pL8DZ1WYprC7fabfY//nw5QkXK', 'xc7KHynbea0gtU2KgpyRZFhKHlgnJS2Ii7OZ3Usd9CsWK7xo1UsBdxOaKbwf', '2020-07-19 11:17:45', '2020-07-19 11:17:45'),
(14, 'Gabriella Pilato', 'backoffice@negombo.it', 'admin', NULL, '$2y$10$Svyt3B0y6uIyL6hsLwtDpuAWpswFUNejw/UD.DolBBhYtR/sMBwWi', 'JIhO4W0VRSkFPOJG5EF4sxZLorq0wMtGujcrGngmTGuQ2lNQr7U7lwaTw3MV', '2020-07-19 11:20:01', '2020-07-25 19:29:58'),
(15, 'Antonella Cantaressi', 'negombo@negombo.it', 'staff', NULL, '$2y$10$KGdAWA5JjMq/CcRlde3vwOx/1MTs/IK2V8mjXl8PgSKzI.KKUCBPC', NULL, '2020-07-19 11:21:19', '2020-07-19 11:21:19'),
(17, 'Antonio Gallo', '83antoniogallo@gmail.com', 'admin', NULL, '$2y$10$exRpAuXOdthKJ5allOjK8ODsprUnxQTSxonSD1RRwtR8AqAn98cHa', 'Ekt2oVdXkSkO6IiuFC3wJ13N54s3gYfxmQEzFqStWvAd7ANQuweYoFf30Qd8', '2020-07-25 18:41:34', '2020-07-25 20:17:25'),
(18, 'test entrance', 'teststuff@exmpl.com', 'staff', NULL, '$2y$10$0htfigguuqCdLO2c6.TpCeI08DFjkD4IsL4ujMG6JtUX54ZpQTWK2', NULL, '2020-08-02 13:32:29', '2020-08-02 13:32:29'),
(20, 'Bruno Cernigliaro', 'brc2005@libero.it', 'admin', NULL, '$2y$10$9JCL6HhBjomokgbPXZDDMOdy9t0b7PWufs20jVgcr4xjtCbd2a8lS', NULL, '2020-08-05 23:53:55', '2020-08-05 23:53:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bigmapmappings`
--
ALTER TABLE `bigmapmappings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bigmapmappings_map_name_unique` (`map_name`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_place_id_foreign` (`place_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `places_place_id_unique` (`place_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `promo_codes_promocode_unique` (`promocode`);

--
-- Indexes for table `setting_admins`
--
ALTER TABLE `setting_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempbooking_cards`
--
ALTER TABLE `tempbooking_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans`
--
ALTER TABLE `trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bigmapmappings`
--
ALTER TABLE `bigmapmappings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_admins`
--
ALTER TABLE `setting_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tempbooking_cards`
--
ALTER TABLE `tempbooking_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`place_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
