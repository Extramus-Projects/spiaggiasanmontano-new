-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 15, 2021 at 08:48 AM
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
(1, 'Sector Q&R', '67,392,61,269,62,195,79,181,114,179,165,177,212,174,268,170,286,177,293,199,301,293,309,386,249,392,185,397,125,401,80,402', '26,252,119,244,111,119,105,114,29,116,23,122', NULL, NULL),
(2, 'Sector S&T', '322,384,314,380,311,370,303,279,297,196,294,173,304,165,314,163,337,160,372,154,415,148,476,135,506,129,517,135,523,145,528,164,534,190,541,220,551,259,561,295,571,335,547,346,491,359,434,370,380,378', '118,245,216,215,197,96,189,88,117,108,112,118', NULL, NULL),
(3, 'Sector V&X', '591,339,575,333,568,319,560,284,549,247,539,205,524,147,523,134,527,124,536,121,554,118,582,107,616,97,648,85,680,75,710,62,724,61,729,64,735,72,743,87,754,109,764,124,776,148,790,174,805,200,819,226,819,243,807,252,779,268,737,288,676,312', '218,212,265,190,311,151,278,47,268,41,202,80,199,90', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(8, '2021_03_27_134455_create_setting_admins_table', 4),
(10, '2021_03_28_175317_create_temp_bookings_table', 6),
(11, '2021_03_30_172340_create_promo_codes_table', 7),
(12, '2021_03_30_185902_create_trans_table', 8),
(14, '2021_03_28_172839_create_bookings_table', 10),
(15, '2021_03_31_195632_create_tempbooking_cards_table', 11);

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
(5, 'Q11', 'Q11', 'Sector Q&R', 80, 278, 30, 165, 'none', 0, 1950, 2250, 2350, 2450, 'EUR', '2021-04-14 02:58:51', '2021-04-14 02:58:51'),
(6, 'Q12', 'Q12', 'Sector Q&R', 108, 280, 39, 165, 'none', 0, 1950, 2250, 2300, 2700, 'EUR', '2021-04-14 04:04:52', '2021-04-14 04:06:27');

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

--
-- Dumping data for table `promo_codes`
--

INSERT INTO `promo_codes` (`id`, `map_name`, `promo_user`, `promocode`, `promo_type`, `numberofuse`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'For All', 'Shaykh Siddique', 'PROMO#TEST', 'F2', 10, 10.00, 1, '2021-03-31 13:00:04', '2021-03-31 13:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `setting_admins`
--

CREATE TABLE `setting_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_no_days` int(11) NOT NULL,
  `booking_email_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` time NOT NULL,
  `hiseason_start` date NOT NULL,
  `hiseason_end` date NOT NULL,
  `daily_fee` double(8,2) NOT NULL,
  `status_daily_fee` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_admins`
--

INSERT INTO `setting_admins` (`id`, `max_no_days`, `booking_email_content`, `closing_time`, `hiseason_start`, `hiseason_end`, `daily_fee`, `status_daily_fee`, `created_at`, `updated_at`) VALUES
(1, 365, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo.</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Full Name:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Phone:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Number of Adults:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Number of Babies:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Payment Type:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Total Amount: </strong>[total_amount]&nbsp;&euro;<br />\r\n			<strong>Paid Amount: </strong>[paid_amount]&nbsp;&euro;<br />\r\n			<strong>Remaining Amount: </strong>[remaining_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			<strong>Map Name:</strong> [map_name]<br />\r\n			<strong>Place Description:&nbsp;</strong>[place_description]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Negombo</strong> Admin.</p>', '17:30:00', '2021-06-12', '2021-08-31', 10.00, 1, NULL, '2021-04-09 17:18:07');

-- --------------------------------------------------------

--
-- Table structure for table `tempbooking_cards`
--

CREATE TABLE `tempbooking_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

--
-- Dumping data for table `tempbooking_cards`
--

INSERT INTO `tempbooking_cards` (`id`, `place_id`, `user_fullname`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `baby_surname4`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `user_card_paymentid`, `paid_ammount`, `created_at`, `updated_at`) VALUES
(1, 'Q11', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 4, NULL, NULL, NULL, 'affasd', 'sdfdsfs', 'dfgfgfg', 'fghgjhj', '2021-06-12', '2021-06-21', 0, NULL, 'Credit Card', 'negombo_607756ebc46bf9_47950045', '00104421063102742412', 750.00, '2021-04-14 16:56:13', '2021-04-14 16:56:13');

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

--
-- Dumping data for table `temp_bookings`
--

INSERT INTO `temp_bookings` (`id`, `client_ip`, `place_id`, `user_checkin`, `cookie`, `created`, `created_at`, `updated_at`) VALUES
(92, '127.0.0.1', 'Q11', '2021-06-12', 'negombo_607756d82d4b55.08323165', '2021-04-14 22:55:52', '2021-04-14 16:55:52', '2021-04-14 16:55:52'),
(93, '127.0.0.1', 'Q11', '2021-06-12', 'negombo_607759e54389d3.38790800', '2021-04-14 23:08:53', '2021-04-14 17:08:53', '2021-04-14 17:08:53'),
(94, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f75a7717d0.39988479', '2021-04-15 10:20:42', '2021-04-15 04:20:42', '2021-04-15 04:20:42'),
(95, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f907a20066.03803801', '2021-04-15 10:27:51', '2021-04-15 04:27:51', '2021-04-15 04:27:51'),
(96, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f92ae435f4.53322193', '2021-04-15 10:28:26', '2021-04-15 04:28:26', '2021-04-15 04:28:26'),
(97, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f942e86a47.38775140', '2021-04-15 10:28:50', '2021-04-15 04:28:50', '2021-04-15 04:28:50'),
(98, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f94a321640.68045299', '2021-04-15 10:28:58', '2021-04-15 04:28:58', '2021-04-15 04:28:58'),
(99, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f9d88bd5e5.50447957', '2021-04-15 10:31:20', '2021-04-15 04:31:20', '2021-04-15 04:31:20'),
(100, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077f9e71101d0.45255480', '2021-04-15 10:31:35', '2021-04-15 04:31:35', '2021-04-15 04:31:35'),
(101, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fb5f981da8.52972238', '2021-04-15 10:37:51', '2021-04-15 04:37:51', '2021-04-15 04:37:51'),
(102, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd28e946a7.79215809', '2021-04-15 10:45:28', '2021-04-15 04:45:28', '2021-04-15 04:45:28'),
(103, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd63731fa3.44939331', '2021-04-15 10:46:27', '2021-04-15 04:46:27', '2021-04-15 04:46:27'),
(104, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd7186d495.60647254', '2021-04-15 10:46:41', '2021-04-15 04:46:41', '2021-04-15 04:46:41'),
(105, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd817a4581.76363693', '2021-04-15 10:46:57', '2021-04-15 04:46:57', '2021-04-15 04:46:57'),
(106, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd8e374302.03652882', '2021-04-15 10:47:10', '2021-04-15 04:47:10', '2021-04-15 04:47:10'),
(107, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd905a8af3.90623988', '2021-04-15 10:47:12', '2021-04-15 04:47:12', '2021-04-15 04:47:12'),
(108, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd9575c643.49141927', '2021-04-15 10:47:17', '2021-04-15 04:47:17', '2021-04-15 04:47:17'),
(109, '127.0.0.1', 'Q12', '2021-06-12', 'negombo_6077fd973f7360.48942626', '2021-04-15 10:47:19', '2021-04-15 04:47:19', '2021-04-15 04:47:19');

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

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`id`, `booking_id`, `payid`, `payer_email`, `payer_name`, `amount`, `created_at`, `updated_at`) VALUES
(1, '1', 'PAYID-MBRXQEY4KV33297WG658984W', 'sb-z0naa2444364@personal.example.com', 'Shaykh Siddique', '1100.00', '2021-03-30 13:12:44', '2021-03-30 13:12:44'),
(2, '2', 'PAYID-MBRX3BA89K15553418111621', 'sb-z0naa2444364@personal.example.com', 'Shaykh Siddique', '2535.00', '2021-03-30 13:37:20', '2021-03-30 13:37:20'),
(3, '3', 'PAYID-MBSQIIY88C56087RK820520V', 'sb-z0naa2444364@personal.example.com', 'Shaykh Siddique', '950.00', '2021-03-31 17:22:44', '2021-03-31 17:22:44');

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
(2, 'Programmer', 'shaykhsiddiqee@gmail.com', 'admin', NULL, '$2y$10$MbbL3YBMdasgYNNdPsSYietjNZpeBMSrTzDtheXG4hFZc7EAPInCC', '3mRTtWkLAgrOjAoXfy7nYTXzhz3otQspWhoQ1LylfaC7YgPite6Wbv6YFA6r', '2020-07-01 20:05:59', '2020-08-04 01:32:33'),
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
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
