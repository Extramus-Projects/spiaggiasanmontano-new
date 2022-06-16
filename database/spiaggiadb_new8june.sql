-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2021 at 03:31 AM
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

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `place_id`, `user_fullname`, `payer_name`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `baby_surname4`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `paid_ammount`, `creator_name`, `created_at`, `updated_at`) VALUES
(99, 'S12', 'daniela volpe', 'daniela volpe', 'daniela volpe', 'da.volpe@libero.it', '3358419813', 2, 1, 'marco esposito', NULL, NULL, 'sabrina esposito', NULL, NULL, NULL, '2021-07-01', '2021-08-29', 1, NULL, 'Credit Card', 'negombo_60868f86305443_22526758', 2600.00, 'user', '2021-04-26 10:02:51', '2021-04-26 10:02:51'),
(100, 'V11', 'Teresa ambrosio', 'Teresa ambrosio', 'Teresa ambrosio', 'sisa.ambrosio@hotmail.com', '3391734858', 1, 2, NULL, NULL, NULL, 'Sergio maria gallone', 'Ruggiero gallone', NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868f8a9926f5_13503405', 2300.00, 'user', '2021-04-26 10:02:54', '2021-04-26 10:02:54'),
(102, 'X22', 'Germana De Gregorio', 'Germana De Gregorio Brasiello', 'Germana De Gregorio', 'germanadg@libero.it', '3479473605', 2, 2, 'Mirko Brasiello', NULL, NULL, 'Micol Brasiello', 'Paolo Brasiello', NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868fa7e6eb39_90486832', 2800.00, 'user', '2021-04-26 10:03:46', '2021-04-26 10:03:46'),
(103, 'T32', 'rosa barbato', 'Napoli', 'rosa barbato', 'rosabarbato@libero.it', '3296264098', 2, 0, 'chiara esposito', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868fbeca3b48_97074921', 2500.00, 'user', '2021-04-26 10:03:50', '2021-04-26 10:03:50'),
(104, 'V21', 'Erminia Flavia Rizzo', 'Giovan battista Riccio', 'Erminia Flavia Rizzo', 'gb.riccio@studiogbriccio.it', '3356252644', 3, 0, 'Francesco Riccio', 'Federica Riccio', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868fc48e1949_28328719', 3100.00, 'user', '2021-04-26 10:04:16', '2021-04-26 10:04:16'),
(105, 'V22', 'francesca febbraro', 'francesca febbraro', 'francesca febbraro', 'studiolegalefebbraro1@gmail.com', '3358248751', 3, 0, 'Giuseppe Febbraro', 'Matteo De Luca', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868f8b2e6cc3_20420703', 3100.00, 'user', '2021-04-26 10:04:20', '2021-04-26 10:04:20'),
(106, 'T24', 'Maria Flora Febbraro', 'Maria Flora Febbraro', 'Maria Flora Febbraro', 'studiolegalefebbraro1@gmail.com', '3358248751', 2, 0, 'Gilda Di Martino', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60869026b5e390_39759102', 2600.00, 'user', '2021-04-26 10:05:39', '2021-04-26 10:05:39'),
(107, 'X11', 'PEZZELLA GIOVANNI', 'GIOVANNI PEZZELLA', 'PEZZELLA GIOVANNI', 'avvocatogiovannipezzella@gmail.com', '3511827826', 2, 3, 'BELLO SIMONA', NULL, NULL, 'PEZZELLA LUDOVICA', 'PEZZELLA LORENZO', 'PEZZELLA LEONARDO', NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868fc95b4b25_35408516', 2900.00, 'user', '2021-04-26 10:05:47', '2021-04-26 10:05:47'),
(108, 'S13', 'Bardaro TERESA', 'Bardaro TERESA', 'Bardaro TERESA', 'caramella78@icloud.com', '3453181074', 2, 1, 'Cacace Navarro mario paolo', NULL, NULL, 'Cacace Navarro paolo', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868ff79ba671_66876672', 2600.00, 'user', '2021-04-26 10:05:53', '2021-04-26 10:05:53'),
(109, 'X23', 'Santoro', 'Paola Santoro', 'Santoro', 'p.santoro77@gmail.com', '3396797572', 2, 0, 'Santoro', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086900e76e628_39068389', 2800.00, 'user', '2021-04-26 10:06:05', '2021-04-26 10:06:05'),
(110, 'X43', 'Maria Giuseppina Gargiulo', 'Maria Giuseppina Gargiulo', 'Maria Giuseppina Gargiulo', 'ubaldonazzaro@hotmail.com', '3395433269', 3, 1, 'Ubaldo Nazzaro', 'Mariangela Capodiferro', NULL, 'Maya Nazzaro', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086901d6f7802_66991697', 3000.00, 'user', '2021-04-26 10:06:40', '2021-04-26 10:06:40'),
(111, 'S11', 'massimo cancemi', 'massimo cancemi', 'massimo cancemi', 'cancemidottmassimo@gmail.com', '3382103233', 3, 0, 'Giulia leone', 'teresa cancemi', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086907dc3cf85_29030737', 3000.00, 'user', '2021-04-26 10:07:05', '2021-04-26 10:07:05'),
(112, 'X24', 'Anna Vizioli', 'Luca Pecoraro', 'Anna Vizioli', 'carmine-anna@hotmail.com', '3934772414', 4, 0, 'Montescuro Carmine', 'Gianni Abbruzzese', 'Montescuro Grazia', NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60869034ee0e43_08821044', 3600.00, 'user', '2021-04-26 10:07:10', '2021-04-26 10:07:10'),
(113, 'S23', 'GIOVANNI CAPASSO', 'GIOVANNI CAPASSO', 'GIOVANNI CAPASSO', 'ulisse150@virgilio.it', '3930043578', 2, 0, 'MARILENA ROTA', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60868f76c0c4e4_74272171', 2500.00, 'user', '2021-04-26 10:07:27', '2021-04-26 10:07:27'),
(114, 'V13', 'Biondi Elvio', 'Elvio Biodni', 'Biondi Elvio', 'elvio.biondi@integrabs.it', '+393389253671', 2, 3, 'Fiorenza Annamaria', NULL, NULL, 'Biondi Fabiola', 'Biondi Errico', 'Biondi Luca', NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086908b15acc9_06491532', 2800.00, 'user', '2021-04-26 10:07:55', '2021-04-26 10:07:55'),
(115, 'v32', 'TOMMASO PATALANO', 'Antonio Gallo', 'TOMMASO PATALANO', '83antoniogallo@gmail.com', '+393388851460', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608690fe180060.83069166', 0.00, 'Antonio Gallo', '2021-04-26 10:07:58', '2021-04-26 10:07:58'),
(116, 'T31', 'Fabiana Toscano', 'Fabiana Toscano Zamparelli', 'Fabiana Toscano', 'fabytos@libero.it', '335220236', 4, 1, 'Sara De Crescenzo', 'Aurelio Martinez', 'Andreana Zamparelli', 'Daide Martinez', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608690910a2bf0_01512062', 3300.00, 'user', '2021-04-26 10:08:17', '2021-04-26 10:08:17'),
(117, 'S33', 'ornella santopaolo', 'Napoli', 'ornella santopaolo', 'rosabarbato@libero.it', '3296264098', 2, 0, 'renato santopaolo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608690b415e609_02896709', 2400.00, 'user', '2021-04-26 10:08:31', '2021-04-26 10:08:31'),
(118, 'S21', 'Massimo Torino', 'Massimo Torino', 'Massimo Torino', 'pellamitorino@virgilio.it', '3477426594', 3, 2, 'Uliano Rosaria', 'Minino Antonietta', NULL, 'Alice Torino', 'Antonia Torino', NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608690c4cab4f8_07723011', 2900.00, 'user', '2021-04-26 10:08:46', '2021-04-26 10:08:46'),
(119, 'q14', 'ANIELLO - MARRAZZO MARIA ROSARIA', 'Antonio Gallo', 'ANIELLO - MARRAZZO MARIA ROSARIA', '83antoniogallo@gmail.com', '+393388851460', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608691327d5aa5.75510241', 0.00, 'Antonio Gallo', '2021-04-26 10:08:50', '2021-04-26 10:08:50'),
(120, 'R24', 'Corvino Cristoforo', 'Caccioppoli Alessandra', 'Corvino Cristoforo', 'alessandra_caccioppoli@virgilio.it', '3203290373', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608690eb720018_09703378', 1900.00, 'user', '2021-04-26 10:09:07', '2021-04-26 10:09:07'),
(123, 'v12', 'VISCOGLIOSI GIUSEPPE / GERMANA', 'Antonio Gallo', 'VISCOGLIOSI GIUSEPPE / GERMANA', '83antoniogallo@gmail.com', '+393388851460', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608691f135ec10.60788720', 0.00, 'Antonio Gallo', '2021-04-26 10:12:01', '2021-04-26 10:12:01'),
(124, 'X12', 'laura preziosi', 'carmela alvemini', 'laura preziosi', 'laura.preziosi1978@gmail.com', '3428547979', 2, 2, 'alvemini carmela', NULL, NULL, 'gabriele ruocco', 'enrica ruocco', NULL, NULL, '2021-06-21', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608691b58663d3_59211761', 3383.00, 'user', '2021-04-26 10:12:15', '2021-04-26 10:12:15'),
(125, 'r23', 'VALLEFUOCO BIAGIO', 'Antonio Gallo', 'VALLEFUOCO BIAGIO', '83antoniogallo@gmail.com', '+393388851460', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608692547ca755.94953015', 0.00, 'Antonio Gallo', '2021-04-26 10:13:40', '2021-04-26 10:13:40'),
(127, 'V33', 'MOLIS MARIO', 'MARIO MOLIS', 'MOLIS MARIO', 'mario.molis4@gmail.com', '3476007678', 3, 1, 'DONATA BRUNETTI', 'ANTONIO MOLIS', NULL, 'MARTINA MOLIS', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086922dc56d15_01285526', 3000.00, 'user', '2021-04-26 10:15:22', '2021-04-26 10:15:22'),
(130, 'X13', 'De Muffutis', 'Gabriella Pilato', 'De Muffutis', 'gapilato@gmail.com', '3392492981', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608694ded8c0d4.75883444', 0.00, 'Gabriella Pilato', '2021-04-26 10:24:30', '2021-04-26 10:24:30'),
(131, 'X14', 'Musto Salvatore', 'Gabriella Pilato', 'Musto Salvatore', 'gapilato@gmail.com', '3392492981', 3, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608694f9170b40.92638942', 0.00, 'Gabriella Pilato', '2021-04-26 10:24:57', '2021-04-26 10:24:57'),
(132, 't33', 'CUCCURESE / ESPOSITO', 'Antonio Gallo', 'CUCCURESE / ESPOSITO', '83antoniogallo@gmail.com', '+393388851460', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Admin', 'negombo_6086952b03a9e8.38182184', 0.00, 'Antonio Gallo', '2021-04-26 10:25:47', '2021-04-26 10:25:47'),
(133, 'S24', 'Luisa Patalano', 'Gabriella Pilato', 'Luisa Patalano', 'gapilato@gmail.com', '3392492981', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 1, NULL, 'Admin', 'negombo_608695b3b47ce0.84375982', 0.00, 'Gabriella Pilato', '2021-04-26 10:28:03', '2021-04-26 10:28:03'),
(134, 'S22', 'Ciro Torino', 'Ciro Torino', 'Ciro Torino', 'pellamitorino@virgilio.it', '3478261066', 3, 1, 'Grazia Tarantino', 'Antonella Torino', NULL, 'Claudia Torino', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6086958bc39365_65935628', 2900.00, 'user', '2021-04-26 10:28:37', '2021-04-26 10:28:37'),
(135, 'R12', 'Claudia Gerig', 'Federico Lucke', 'Claudia Gerig', 'federico.lucke@gmail.com', '3358244053', 2, 0, 'Federico Lucke', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60869531e3d016_10732806', 2500.00, 'user', '2021-04-26 10:35:42', '2021-04-26 10:35:42'),
(136, 't23', 'CUCCURESE / ESPOSITO', 'Antonio Gallo', 'CUCCURESE / ESPOSITO', '83antoniogallo@gmail.com', '+393388851460', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_60869a82d4fa75.05001664', 0.00, 'Antonio Gallo', '2021-04-26 10:48:34', '2021-04-26 10:48:34'),
(138, 't12', 'Mazzella Isidoro - De Siano Michela', 'Antonio Gallo', 'Mazzella Isidoro - De Siano Michela', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 1, NULL, 'Admin', 'negombo_60869b042bc822.24785556', 0.00, 'Antonio Gallo', '2021-04-26 10:50:44', '2021-04-26 10:50:44'),
(139, 't11', 'Egidio Fermo - De Siano Lucia', 'Antonio Gallo', 'Egidio Fermo - De Siano Lucia', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_60869b402c8856.73947472', 0.00, 'Antonio Gallo', '2021-04-26 10:51:44', '2021-04-26 10:51:44'),
(140, 'R42', 'Romano Antonella', 'Gabriella Pilato', 'Romano Antonella', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a37d2c7188.26995759', 0.00, 'Gabriella Pilato', '2021-04-26 11:26:53', '2021-04-26 11:26:53'),
(141, 'V14', 'Masini 1', 'Gabriella Pilato', 'Masini 1', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a470c8bf57.80841686', 0.00, 'Gabriella Pilato', '2021-04-26 11:30:56', '2021-04-26 11:30:56'),
(142, 'V24', 'Masini 2', 'Gabriella Pilato', 'Masini 2', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a496bebc30.08331736', 0.00, 'Gabriella Pilato', '2021-04-26 11:31:34', '2021-04-26 11:31:34'),
(143, 'V23', 'Masini 3', 'Gabriella Pilato', 'Masini 3', 'backoffice@negombo.it', '081986152', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a4c55c59d4.06002446', 0.00, 'Gabriella Pilato', '2021-04-26 11:32:21', '2021-04-26 11:32:21'),
(144, 'S14', 'Barbato Fusco', 'Gabriella Pilato', 'Barbato Fusco', 'backoffice@negombo.it', '081986152', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a4f15bbba8.77050819', 0.00, 'Gabriella Pilato', '2021-04-26 11:33:05', '2021-04-26 11:33:05'),
(147, 'T12', 'Mangia - Gensini', 'Gabriella Pilato', 'Mangia - Gensini', 'backoffice@negombo.it', '081986152', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_6086a571402b11.73817685', 0.00, 'Gabriella Pilato', '2021-04-26 11:35:13', '2021-04-26 11:35:13'),
(148, 'T21', 'Cristoforo Corvino', 'Gabriella Pilato', 'Cristoforo Corvino', 'alessandra_caccioppoli@virgilio.it', '3203290373', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_6086b1059f6da2.15253826', 2100.00, 'Gabriella Pilato', '2021-04-26 12:24:37', '2021-04-26 12:24:37'),
(149, 'X15', 'Lacava Francesca', 'Gabriella Pilato', 'Lacava Francesca', 'francesca.lacava@studiolegalelacava.com', '3349502172', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_6086c6aa40c750.25685370', 1450.00, 'Gabriella Pilato', '2021-04-26 13:56:58', '2021-04-26 13:56:58'),
(150, 'X15', 'Brasiello', 'Gabriella Pilato', 'Brasiello', 'daniloaxe@hotmail.it', '3356575567', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_6086c717a24cc5.98131279', 1850.00, 'Gabriella Pilato', '2021-04-26 13:58:47', '2021-04-26 13:58:47'),
(151, 'X25', 'Brasiello', 'Gabriella Pilato', 'Brasiello', 'daniloaxe@hotmail.it', '3356575567', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_6086c735bbb0d0.51764995', 1800.00, 'Gabriella Pilato', '2021-04-26 13:59:17', '2021-04-26 13:59:17'),
(152, 'X35', 'Forzati Maurizio', 'Gabriella Pilato', 'Forzati Maurizio', 'maurizioforzati@gmail.com', '3355862569', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_6086c8953539b7.19832291', 2700.00, 'Gabriella Pilato', '2021-04-26 14:05:09', '2021-04-26 14:05:09'),
(154, 'T22', 'Brasiello Renata', 'Salvatore Scuotto', 'Brasiello Renata', 'slv.scuotto@gmail.com', '3383058910', 1, 1, NULL, NULL, NULL, 'Scuotto salvatore', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c4e5b4a0f8_19707615', 2100.00, 'user', '2021-04-27 08:03:19', '2021-04-27 08:03:19'),
(155, 'X34', 'Rita Vertechi Montefredini', 'Rita Vertechi Montefredini', 'Rita Vertechi Montefredini', 'paolo.montefredini@gmail.com', '3336634642', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c4f7be5124_05180385', 2200.00, 'user', '2021-04-27 08:03:25', '2021-04-27 08:03:25'),
(156, 'T34', 'Fernando De maria', 'Daniela Lombardo', 'Fernando De maria', 'danielalombardo@hotmail.it', '3496784423', 3, 0, 'Daniela Lombardo', 'Roberto De Maria', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c512c16113_08120110', 2900.00, 'user', '2021-04-27 08:04:11', '2021-04-27 08:04:11'),
(157, 'X32', 'Vaccaro raffaella', 'Vaccaro raffaella', 'Vaccaro raffaella', 'r.vaccaro82@gmail.com', '3319581101', 2, 2, 'Davide ferraioli', NULL, NULL, 'Ferraioli Maria pia', 'Ferraioli rosanna', NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c51d2324d0_62960356', 2700.00, 'user', '2021-04-27 08:04:17', '2021-04-27 08:04:17'),
(158, 'S32', 'Cimmino Gaetano', 'Francesca Cimmino', 'Cimmino Gaetano', 'dott.francescacimmino@gmail.com', '3338257211', 2, 1, 'Pascale Federica', NULL, NULL, 'Cimmino Luigi', NULL, NULL, NULL, '2021-07-01', '2021-08-30', 1, NULL, 'Credit Card', 'negombo_6087c517c4bd44_29937252', 2400.00, 'user', '2021-04-27 08:04:46', '2021-04-27 08:04:46'),
(159, 'R33', 'Ester Mocerino', 'Ester Mocerino', 'Ester Mocerino', 'ester.mocerino@tin.it', '3420539473', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-30', 1, NULL, 'Credit Card', 'negombo_6087c57496be77_38060573', 1800.00, 'user', '2021-04-27 08:06:05', '2021-04-27 08:06:05'),
(160, 'Q22', 'SIMONA ERRICO', 'SIMONA ERRICO', 'SIMONA ERRICO', 'BOCCONGELLIG@LIBERO.IT', '3806480598', 3, 0, 'GIANPAOLO BOCCONGELLI', 'RENATO BOCCONGELLI', NULL, NULL, NULL, NULL, NULL, '2021-07-02', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c58e9f0768_42209139', 2700.00, 'user', '2021-04-27 08:06:24', '2021-04-27 08:06:24'),
(161, 'S34', 'GREEN MARIA ROSARIA', 'GREEN MARIA ROSARIA', 'GREEN MARIA ROSARIA', 'mariarosariagreen@hotmail.com', '3889915345', 2, 1, 'MIRENGHI LAURA', NULL, NULL, 'MIRENGHI iRENE', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087c60662fb17_55248237', 2400.00, 'user', '2021-04-27 08:09:21', '2021-04-27 08:09:21'),
(166, 'Q13', 'Cigliano Olga', 'russo claudio', 'Cigliano Olga', 's.freud63@gmail.com', '3396929063', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087d148632321_33281092', 1900.00, 'user', '2021-04-27 08:58:12', '2021-04-27 08:58:12'),
(167, 'R34', 'Rosa Nocerino', 'Rosa Nocerino', 'Rosa Nocerino', 'Rosanocerino76@gmail.com', '3208971900', 2, 0, 'Rosalia Pennestri', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087d1bdbd2770_58374645', 2300.00, 'user', '2021-04-27 09:01:38', '2021-04-27 09:01:38'),
(168, 'V41', 'Ludovica Spinosa', 'Ludovica Spinosa', 'Ludovica Spinosa', 'STBRANCACCIO@LIBERO.IT', '+393398741709', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6087d70bccb888_17697014', 2000.00, 'user', '2021-04-27 09:21:11', '2021-04-27 09:21:11'),
(170, 'Q24', 'Restaino Giovanni', 'Gabriella Pilato', 'Restaino Giovanni', 'backoffice@negombo.it', '081986152', 2, 0, 'Ospite2', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-17', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608802678d16e7.07092462', 1725.00, 'Gabriella Pilato', '2021-04-27 12:24:07', '2021-04-27 12:24:07'),
(171, 'V31', 'Francesco Saverio iervolino', 'Raffaele iervolino', 'Francesco Saverio iervolino', 'riervolino77@gmail.com', '3405985505', 3, 1, 'Rosa Alba iervolino', 'Emma pellino', NULL, 'Andrea iervolino', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60883b400029b1_27271133', 3000.00, 'user', '2021-04-27 16:28:55', '2021-04-27 16:28:55'),
(172, 'X25', 'acunzo', 'acunzo raffaele', 'acunzo', 'r.acunzo@libero.it', '3335884307', 2, 0, 'stornaiuolo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_6088498d04b894_21257943', 2800.00, 'user', '2021-04-27 17:31:35', '2021-04-27 17:31:35'),
(173, 'X33', 'Lauria nancye', 'Auriola Raffaele', 'Lauria nancye', 'raffaeleauriola@gmail.com', '3441239006', 2, 1, 'Lauria Angela', NULL, NULL, 'Nicholas seccia', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60886799839d82_11786883', 2700.00, 'user', '2021-04-27 19:38:03', '2021-04-27 19:38:03'),
(174, 'R11', 'Carlo Iacovelli', 'Carlo Iacovelli', 'Carlo Iacovelli', 'carlo.giacovelli@gmail.com', '3393649352', 2, 1, 'Mollo Adele', NULL, NULL, 'Nicole perrotta', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6088f9dac384b3_35841382', 2500.00, 'user', '2021-04-28 06:01:32', '2021-04-28 06:01:32'),
(175, 'X31', 'Andrea De Matteis', 'Gabriella Pilato', 'Andrea De Matteis', 'dematteisandrea@libero.it', '3334991383', 3, 0, 'Claudia Rossi', 'Giovanni De Matteis', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_60890c5a781cd6.94292770', 1550.00, 'Gabriella Pilato', '2021-04-28 07:18:50', '2021-04-28 07:18:50'),
(176, 'X41', 'Francesco Rossi', 'Gabriella Pilato', 'Francesco Rossi', 'dematteisandrea@libero.it', '3334991383', 2, 0, 'Silvana Candiglioti', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_60890c8ad8c421.37175579', 1300.00, 'Gabriella Pilato', '2021-04-28 07:19:38', '2021-04-28 07:19:38'),
(177, 'T33', 'Dario Esente', 'Dario Esente', 'Dario Esente', 'darioesente@gmail.com', '3386474960', 2, 1, 'Alessia Pagliaro', NULL, NULL, 'Luca Enzo Esente', NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089275c69f000_95583806', 1250.00, 'user', '2021-04-28 09:15:29', '2021-04-28 09:15:29'),
(179, 'Q34', 'Hotel San Francesco', 'Gabriella Pilato', 'Hotel San Francesco', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608930b9d70c28.53832421', 0.00, 'Gabriella Pilato', '2021-04-28 09:54:01', '2021-04-28 09:54:01'),
(180, 'S42', 'Hotel San Francesco', 'Gabriella Pilato', 'Hotel San Francesco', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608930cf5d2d11.08032397', 0.00, 'Gabriella Pilato', '2021-04-28 09:54:23', '2021-04-28 09:54:23'),
(182, 'V44', 'LUCA DI FILIPPO', 'Luca Di Filippo', 'LUCA DI FILIPPO', 'luca.difilippo@studiolam.eu', '3472128448', 2, 0, 'Maria Federica D\'Avenia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089323d136055_75436245', 1250.00, 'user', '2021-04-28 10:00:59', '2021-04-28 10:00:59'),
(183, 'R21', 'Barba', 'Barba cristina', 'Barba', 'crispimici@gmail.com', '3388458928', 2, 0, 'Micillo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-24', '2021-08-29', 1, NULL, 'Credit Card', 'negombo_6089323f901ba4_64056984', 1520.00, 'user', '2021-04-28 10:01:23', '2021-04-28 10:01:23'),
(184, 'S31', 'Alberto D\'Agostino', 'Alberto D\'Agostino', 'Alberto D\'Agostino', 'cancemidottmassimo@gmail.com', '3382103233', 2, 0, 'Nicolina Galli', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089327d9194d6_44526832', 1200.00, 'user', '2021-04-28 10:02:07', '2021-04-28 10:02:07'),
(185, 'X44', 'loredana brancaccio', 'Loredana Brancaccio', 'loredana brancaccio', 'STBRANCACCIO@LIBERO.IT', '+393398741709', 2, 0, 'Gianpiero Vallefuoco', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089327b173940_89656456', 1300.00, 'user', '2021-04-28 10:02:32', '2021-04-28 10:02:32'),
(186, 'T42', 'Rosalba Campagnuolo', 'Rosalba Campagnuolo', 'Rosalba Campagnuolo', 'powner113@gmail.com', '3405328808', 2, 0, 'Vincenzo Del Piano', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089326ec32369_91164219', 1200.00, 'user', '2021-04-28 10:02:34', '2021-04-28 10:02:34'),
(187, 'Q11', 'maria barba', 'maria barba', 'maria barba', 'maria.barba@telecomitalia.it', '3316004162', 2, 0, 'giuseppe filacchione', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60893278403be4_80577186', 1200.00, 'user', '2021-04-28 10:02:42', '2021-04-28 10:02:42'),
(188, 'T43', 'PAOLO NAPOLI', 'SERENA SARNELLI', 'PAOLO NAPOLI', 'Serenasarnelli@tuscali.it', '3389734849', 4, 0, 'SERENA SARNELLI', 'ANDREA NAPOLI', 'FRANCESCA NAPOLI', NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089327d400641_18985442', 1600.00, 'user', '2021-04-28 10:02:48', '2021-04-28 10:02:48'),
(189, 'R31', 'Atorino Mario Gabriele', 'Mario Gabriele Atorino', 'Atorino Mario Gabriele', 'marioatorino@alice.it', '3385238336', 3, 2, 'D\'aniello Concetta', 'Atorino Giuseppina', NULL, 'Rainone Liliana', 'Rainone Gabriele', NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089329b1a47b2_12693151', 1350.00, 'user', '2021-04-28 10:03:06', '2021-04-28 10:03:06'),
(190, 'X42', 'paolo minichini', 'paolo minichini', 'paolo minichini', 'pernigotti1975@gmail.com', '3282758966', 2, 2, 'michela canzanella', NULL, NULL, 'luigi minichini', 'leonardo minichini', NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089329a957db7_31021180', 1300.00, 'user', '2021-04-28 10:03:10', '2021-04-28 10:03:10'),
(191, 'Q12', 'Quagliuolo giuseppina', 'Quagliuolo giuseppina', 'Quagliuolo giuseppina', 'quagliuolo@documents-solutions.it', '3332050607', 1, 1, NULL, NULL, NULL, 'Lorenzo coppola', NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_6089326ebe1f86_35534464', 950.00, 'user', '2021-04-28 10:03:22', '2021-04-28 10:03:22'),
(192, 'X31', 'Alessandro Manni', 'Alessandro Manni', 'Alessandro Manni', 'alessandromann@libero.it', '3356634846', 4, 1, 'Silvia Passalacqua', 'Luisa Di Meglio', 'Vincenzo Passalacqua', 'Viola Manni', NULL, NULL, NULL, '2021-07-06', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_60893291cab409_01288994', 1647.00, 'user', '2021-04-28 10:03:22', '2021-04-28 10:03:22'),
(193, 'R31', 'sergio d\'abundo', 'sergio d\'abundio', 'sergio d\'abundo', 'sergydab@gmail.com', '3386392816', 2, 1, 'NUNZIA', NULL, NULL, 'aurora d\'abundo', NULL, NULL, NULL, '2021-07-01', '2021-07-30', 1, NULL, 'Credit Card', 'negombo_608932663294e7_08756157', 1150.00, 'user', '2021-04-28 10:03:23', '2021-04-28 10:03:23'),
(194, 'V12', 'claudia cioffi', 'claudia cioffi', 'claudia cioffi', 'claudiacioffi@hotmail.com', '3397422918', 2, 2, 'maria tranchino', NULL, NULL, 'fabirizio florio', 'filippo florio', NULL, NULL, '2021-07-12', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_608932a5264f28_68812329', 1033.00, 'user', '2021-04-28 10:03:34', '2021-04-28 10:03:34'),
(195, 'S44', 'LUIGI RUGGIERO', 'LUIGI RUGGIERO', 'LUIGI RUGGIERO', 'ruggieroinvestigazioni@virgilio.it', '3397282092', 3, 0, 'NILIMA DI MARE', 'AURORA RUGGIERO', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608932cad500e5_51493356', 1350.00, 'user', '2021-04-28 10:03:51', '2021-04-28 10:03:51'),
(197, 'Q33', 'Gianna Galluzzo', 'Giorgio Menzani', 'Gianna Galluzzo', 'menzg@libero.it', '3498215830', 3, 0, 'Chiara Menzani', 'Francesca Menzani', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089329bcb7740_36220573', 1300.00, 'user', '2021-04-28 10:04:21', '2021-04-28 10:04:21'),
(198, 'Q11', 'Roberta Tavassi', 'Roberta Tavassi', 'Roberta Tavassi', 'roberta.tavassi@hotmail.it', '3480198802', 4, 1, 'Daniela Zincone', 'Edoardo Lombardi', 'Viola Di Nocera', 'Leone Lombardi', NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_608932bb7fb441_20786919', 1600.00, 'user', '2021-04-28 10:04:25', '2021-04-28 10:04:25'),
(200, 'V24', 'fabio arino', 'fabio arino', 'fabio arino', 'dott.fabioarino@gmail.com', '+393385339817', 2, 2, 'tremolaterra maria', NULL, NULL, 'errico arino', 'sofia arino', NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_608932dca9a990_30422163', 1350.00, 'user', '2021-04-28 10:05:50', '2021-04-28 10:05:50'),
(201, 'R14', 'Alessandro mele', 'Antonella aloschi', 'Alessandro mele', 'antonella@aloschibros.com', '3487713454', 2, 3, 'Miriam mele', NULL, NULL, 'Andrea monti', NULL, NULL, NULL, '2021-07-06', '2021-07-29', 1, NULL, 'Credit Card', 'negombo_6089330d7fa5e8_76677212', 1120.00, 'user', '2021-04-28 10:05:52', '2021-04-28 10:05:52'),
(202, 'Q23', 'Pasquale Scarano', 'Pasquale <<<<<<<<<scarano', 'Pasquale Scarano', 'scaranop16@gmail.com', '3387097698', 2, 0, 'Immacolata Delle Curti', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_608932ef1e4019_05566773', 1150.00, 'user', '2021-04-28 10:06:23', '2021-04-28 10:06:23'),
(203, 'V32', 'Marita Boe', 'Marita Boe', 'Marita Boe', 'maritaboe@gmail.com', '+41791389881', 2, 0, 'Hans-Petter Boe', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-09', 1, NULL, 'Credit Card', 'negombo_6089332eb5a935_30553583', 1690.00, 'user', '2021-04-28 10:06:40', '2021-04-28 10:06:40'),
(204, 'R22', 'Antonella Cassaniti', 'Diego Vittoria', 'Antonella Cassaniti', 'antonella_cassaniti@libero.it', '3921192591', 2, 0, 'Diego Vittoria', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_6089331f3f2404_48846558', 1200.00, 'user', '2021-04-28 10:07:02', '2021-04-28 10:07:02'),
(205, 'S41', 'FIORENZANO SERENA', 'Antonio FIORENZANO', 'FIORENZANO SERENA', 'fioantoa@libero.it', '3473856257', 3, 2, 'CHIARIELLO ANTIMO', 'MAGGIO MARIATERESA', NULL, 'CHIARIELLO AZZURRA', 'CHIARIELLO TOMMASSO', NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Credit Card', 'negombo_60893348337df1_67776604', 1350.00, 'user', '2021-04-28 10:07:08', '2021-04-28 10:07:08'),
(206, 'R32', 'giulia', 'giulia d\'abundo', 'giulia', 'giulia@medmarnavi.it', '3356758484', 3, 2, 'mariadonata', 'imma', NULL, 'paolo', 'giorgia', NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_6089338acc5553_00094106', 1350.00, 'user', '2021-04-28 10:07:21', '2021-04-28 10:07:21'),
(207, 'T23', 'valente lombardo simona', 'Marcello Lombardo di Cumia', 'valente lombardo simona', 'simona.valente@unicampania.it', '3333928020', 3, 1, 'Palombini Silvana', 'Marina Lombardo di Cumia', NULL, 'Giannandrea Lombardo di Cumia', NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Credit Card', 'negombo_60893394ec9676_78750159', 1500.00, 'user', '2021-04-28 10:07:41', '2021-04-28 10:07:41'),
(208, 'V23', 'Rossana letizia gigli', 'Rossana letizia gigli', 'Rossana letizia gigli', '4apr1996@alice.it', '3357447022', 2, 0, 'Letizia gigli', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-17', '2021-07-29', 1, NULL, 'Credit Card', 'negombo_6089340836ba46_33871667', 650.00, 'user', '2021-04-28 10:10:46', '2021-04-28 10:10:46'),
(210, 'R41', 'Hotel San Francesco', 'Gabriella Pilato', 'Hotel San Francesco', 'backoffice@negombo.it', '081986152', 4, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608943cead3bf4.39955309', 3000.00, 'Gabriella Pilato', '2021-04-28 11:15:26', '2021-04-28 11:15:26'),
(211, 'Q12', 'Raffaele Pisani', 'Gabriella Pilato', 'Raffaele Pisani', 'mariannaciaramaglia@yahoo.it', '3386856352', 2, 3, 'Marianna Ciaramaglia', NULL, NULL, 'Vincenzo Maria Pisani', 'Luigi Pisani', 'Chiara Pisani', NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_60899374b207a7.45219962', 1200.00, 'Gabriella Pilato', '2021-04-28 16:55:16', '2021-04-28 16:55:16'),
(212, 'Q31', 'Livio Pesce (1750)', 'Gabriella Pilato', 'Livio Pesce (1750)', 'livio.pesce@alice.it', '081986152', 3, 0, 'Anna Evangelista', 'Elisabetta Di Matteo', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a790b791403.17216148', 1300.00, 'Gabriella Pilato', '2021-04-29 09:14:51', '2021-04-29 09:14:51'),
(213, 'R32', 'Alfonso Piccirillo (1750)', 'Gabriella Pilato', 'Alfonso Piccirillo (1750)', 'atch.piccirillo@gmail.com', '081986152', 3, 0, 'Francesco Piccirillo', 'Mariarosaria Sbailo', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a7966a5a162.25043067', 1350.00, 'Gabriella Pilato', '2021-04-29 09:16:22', '2021-04-29 09:16:22'),
(214, 'Q43', 'Iacono Anna (1650)', 'Gabriella Pilato', 'Iacono Anna (1650)', 'backoffice@negombo.it', '081986152', 2, 0, 'Iacono Anna', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a7a0430f4a4.50924160', 2100.00, 'Gabriella Pilato', '2021-04-29 09:19:00', '2021-04-29 09:19:00'),
(216, 'T44', 'Chiara Carrozzo', 'Gabriella Pilato', 'Chiara Carrozzo', 'adriano.zeni@gmail.com', '3382619851', 2, 1, 'Silvia Ficarella', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a810a137dd7.92464586', 1200.00, 'Gabriella Pilato', '2021-04-29 09:48:58', '2021-04-29 09:48:58'),
(219, 'T14', 'Alessandro Banfi (1750)', 'Gabriella Pilato', 'Alessandro Banfi (1750)', 'robertabanfi@hotmail.it', '3282198311', 3, 0, 'Roberta Banfi', 'Maria Rosaria Salamati', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_608a8ba1943983.93946775', 1550.00, 'Gabriella Pilato', '2021-04-29 10:34:09', '2021-04-29 10:34:09'),
(220, 'T14', 'Alina Di Caprio (Picillo)', 'Gabriella Pilato', 'Alina Di Caprio (Picillo)', 'backoffice@negombo.it', '081986152', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a8bde289841.06647897', 1550.00, 'Gabriella Pilato', '2021-04-29 10:35:10', '2021-04-29 10:35:10'),
(221, 'V43', 'Vincenzo Nardelli (1650)', 'Gabriella Pilato', 'Vincenzo Nardelli (1650)', 'vin83nar@gmail.com', '3313347131', 2, 0, 'Nunzia Sammarco', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608a8e1d4a1943.79026791', 0.00, 'Gabriella Pilato', '2021-04-29 10:44:45', '2021-04-29 10:44:45'),
(222, 'Q32', 'Rosa Lanzetta (1650)', 'Gabriella Pilato', 'Rosa Lanzetta (1650)', 'rosa.lanzetta@unina.it', '3388099917', 2, 0, 'Luigi Serino', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608a9147ea1f83.94153194', 1100.00, 'Gabriella Pilato', '2021-04-29 10:58:15', '2021-04-29 10:58:15'),
(223, 'S24', 'Federica Barraco', 'Gabriella Pilato', 'Federica Barraco', 'lojodicefabrizio@libero.it', '081986152', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-08', '2021-08-27', 1, NULL, 'Entrance', 'negombo_608aa24cdb4164.89850998', 1000.00, 'Gabriella Pilato', '2021-04-29 12:10:52', '2021-04-29 12:10:52'),
(225, 'Q44', 'Italia Di Costanzo (1750)', 'Gabriella Pilato', 'Italia Di Costanzo (1750)', 'italiadicostanzo73@gmail.com', '081986152', 3, 0, 'Concetta di Costanzo', 'Giovanna Aloi - Nunzia di Meglio', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_608fb020be3606.38379277', 1250.00, 'Gabriella Pilato', '2021-05-03 08:11:12', '2021-05-03 08:11:12'),
(226, 'R44', 'Annalisa Santopaolo Franci (1750)', 'Gabriella Pilato', 'Annalisa Santopaolo Franci (1750)', 'trattoriavanvit2009@libero.it', '3387458084', 3, 0, 'Diego Franci', 'Marco Franci', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608fb0bc120ae4.25768081', 1300.00, 'Gabriella Pilato', '2021-05-03 08:13:48', '2021-05-03 08:13:48'),
(227, 'V42', 'Tiziana Monti (1750)', 'Gabriella Pilato', 'Tiziana Monti (1750)', 'avv.tizianamonti@libero.it', '081986152', 3, 0, 'Mariavittoria Griego', 'Annalisa Grieco', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_608fd502c3cd32.88132788', 1450.00, 'Gabriella Pilato', '2021-05-03 10:48:34', '2021-05-03 10:48:34'),
(228, 'V34', 'Walter Borriello', 'Gabriella Pilato', 'Walter Borriello', 'valentinapiro@virgilio.it', '3471865862', 2, 2, 'Valentina Piro', NULL, NULL, 'Borriello', 'Borriello', NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_608fdb5d0aeec5.75605171', 2600.00, 'Gabriella Pilato', '2021-05-03 11:15:41', '2021-05-03 11:15:41'),
(229, 'R13', 'Direzione', 'Gabriella Pilato', 'Direzione', 'backoffice@negombo.it', '0', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_608feb6ecd4e58.14836562', 0.00, 'Gabriella Pilato', '2021-05-03 12:24:14', '2021-05-03 12:24:14'),
(230, 'R22', 'Sgambati', 'Gabriella Pilato', 'Sgambati', 'backoffice@negombo.it', '081986152', 2, 2, 'Sgambati', NULL, NULL, 'Sgambati', 'Sgambati', NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_608fed13c5b278.96685126', 1200.00, 'Gabriella Pilato', '2021-05-03 12:31:15', '2021-05-03 12:31:15'),
(231, 'R14', 'D\'Amato Anzovino Annamaria', 'Gabriella Pilato', 'D\'Amato Anzovino Annamaria', 'annamariaanzovino@libero.it', '3335620771', 4, 0, 'D\'Amato Paolo', 'D\'Amato', 'D\'Amato', NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_609119132b1716.05577969', 1650.00, 'Gabriella Pilato', '2021-05-04 09:51:15', '2021-05-04 09:51:15'),
(233, 'T13', 'Mauro D\'Ambrosi', 'Gabriella Pilato', 'Mauro D\'Ambrosi', 'backoffice@negombo.it', '081986152', 4, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_60911b46668f81.91482510', 1750.00, 'Gabriella Pilato', '2021-05-04 10:00:38', '2021-05-04 10:00:38'),
(234, 'Q21', 'Forneris (1650)', 'Gabriella Pilato', 'Forneris (1650)', 'backoffice@negombo.it', '081986152', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 1, NULL, 'Entrance', 'negombo_60911ce48c9389.78684383', 1150.00, 'Gabriella Pilato', '2021-05-04 10:07:32', '2021-05-04 10:07:32'),
(235, 'T41', 'Carmine De Domenico  (1650)', 'Gabriella Pilato', 'Carmine De Domenico  (1650)', 'carminededomenico66@libero.it', '3384587190', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_60911e0caadb45.20720847', 1200.00, 'Gabriella Pilato', '2021-05-04 10:12:28', '2021-05-04 10:12:28'),
(236, 'S43', 'Maria Teresa Aversano (1750)', 'Gabriella Pilato', 'Maria Teresa Aversano (1750)', 'backoffice@negombo.it', '081986152', 3, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Entrance', 'negombo_609a4095425a13.77653610', 1350.00, 'Gabriella Pilato', '2021-05-11 08:30:13', '2021-05-11 08:30:13'),
(238, 'V32', 'Giorgia Riccardi (1180)', 'Gabriella Pilato', 'Giorgia Riccardi (1180)', 'giorgiariccardi.bmc@gmail.com', '081986152', 2, 0, 'Alessandro Consonni', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-10', '2021-07-31', 1, NULL, 'Entrance', 'negombo_609b8d58e9f4e3.91803316', 1063.00, 'Gabriella Pilato', '2021-05-12 08:10:00', '2021-05-12 08:10:00'),
(239, 'V42', 'Fulvio Marruocco (1850)', 'Gabriella Pilato', 'Fulvio Marruocco (1850)', 'fulmar2003@libero.it', '0', 4, 0, 'Marta Marruocco', 'Renata Di Maria', 'Antonia Sacchi', NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_609d06db0d68f0.07526487', 0.00, 'Gabriella Pilato', '2021-05-13 11:00:43', '2021-05-13 11:00:43'),
(240, 'Q44', 'Pasquale Pezzella (1650)', 'Gabriella Pilato', 'Pasquale Pezzella (1650)', 'ppezzella@libero.it', '0', 2, 0, 'Maria Iovene', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 1, NULL, 'Admin', 'negombo_609d0718c0fd83.06737849', 0.00, 'Gabriella Pilato', '2021-05-13 11:01:44', '2021-05-13 11:01:44'),
(263, 't13', 'Emmanuel Pinto - De Siano Maria (1650)', 'Antonio Gallo', 'Emmanuel Pinto - De Siano Maria (1650)', 'backoffice@negombo.it', '081986152', 2, 0, 'Maria De SIano', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-30', 1, NULL, 'Admin', 'negombo_60a249640ef388.28479772', 0.00, 'Antonio Gallo', '2021-05-17 10:45:56', '2021-05-17 10:45:56'),
(264, 'X12', 'Vittorio Granata', 'Vittorio Granata', 'Vittorio Granata', 'granata.v@gmail.com', '3463769552', 2, 0, 'Nicole Incocciati', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-22', '2021-05-22', 1, NULL, 'Credit Card', 'negombo_60a4d7b21644e0_50264141', 35.50, 'user', '2021-05-19 09:18:46', '2021-05-19 09:18:46'),
(266, 'Q13', 'Antonio Gallo', 'Antonio Gallo', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-24', '2021-05-24', 1, NULL, 'Entrance', 'negombo_60a62c0207c9c0.17886157', 28.00, 'Antonio Gallo', '2021-05-20 09:29:38', '2021-05-20 09:29:38'),
(268, 'T13', 'Giuseppe Scordio', 'Alessandra', 'Giuseppe Scordio', 'organizzazione@spazioterpulliano.it', '3401995410', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-23', 1, NULL, 'Entrance', 'negombo_60a7e1e8946713.69230770', 35.50, 'Alessandra', '2021-05-21 16:38:00', '2021-05-21 16:38:00'),
(269, 'V14', 'Francesca Lacava', 'Gabriella Pilato', 'Francesca Lacava', 'backoffice@negombo.it', '0', 2, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-20', '2021-07-01', 1, NULL, 'Admin', 'negombo_60b35e9baece72.32206261', 0.00, 'Gabriella Pilato', '2021-05-30 09:44:59', '2021-05-30 09:44:59'),
(270, 'V13', 'Maura Mirandanti', 'Maura mirandanti', 'Maura Mirandanti', 'miramaura.14@gmail.com', '3334424348', 2, 0, 'Pucci Duilio', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b505e5bb2f82_94406803', 35.50, 'user', '2021-05-31 15:54:00', '2021-05-31 15:54:00'),
(271, 'V14', 'Asprella LIBONATI Csrmela', 'Maura Mirandanti', 'Asprella LIBONATI Csrmela', 'miramaura.14@gmail.com', '3334424348', 2, 0, 'Caroselli Marco', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-06-02', 1, NULL, 'Credit Card', 'negombo_60b507110fba30_87101894', 35.50, 'user', '2021-05-31 15:57:09', '2021-05-31 15:57:09'),
(273, 'X15', 'Viviana Pacifico', 'Gabriella Pilato', 'Viviana Pacifico', 'viviana.pacifico@yahoo.it', '3343788280', 2, 0, 'Raffaella Cangiano', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-30', 1, NULL, 'Entrance', 'negombo_60b7c0bbb66401.05190244', 1065.00, 'Gabriella Pilato', '2021-06-02 17:32:43', '2021-06-02 17:32:43'),
(274, 'R11', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'lauralongo@hotmail.com', '3392086927', 3, 2, 'MARIO COZZARELLI', 'LUDOVICA COSENTINO', NULL, 'PAOLA COZZARELLI', 'MARIA FRANCESCA SABBATINO', NULL, NULL, '2021-06-04', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b8eb4a0dd248_27084123', 86.00, 'user', '2021-06-03 14:47:56', '2021-06-03 14:47:56'),
(275, 'V11', 'Maura Mirandanti', 'Maura mirandanti', 'Maura Mirandanti', 'miramaura.14@gmail.com', '3334424348', 2, 0, 'Pucci duilio', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b914b4708643_02161859', 35.50, 'user', '2021-06-03 17:44:44', '2021-06-03 17:44:44'),
(276, 'V12', 'Carmela Asprella', 'Maura mirandanti', 'Carmela Asprella', 'miramaura.14@gmail.com', '3334424348', 2, 0, 'Marco Caroselli', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 1, NULL, 'Credit Card', 'negombo_60b915c1c732e6_23754246', 35.50, 'user', '2021-06-03 17:48:37', '2021-06-03 17:48:37'),
(277, 'T14', 'Cristina Rosaria Fioravanti', 'Cristina R. Fioravanti', 'Cristina Rosaria Fioravanti', 'fioravan@nytimes.com', '39 329 6162640', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-06-06', 1, NULL, 'Credit Card', 'negombo_60ba466ecdf2b4_71872695', 28.00, 'user', '2021-06-04 15:29:12', '2021-06-04 15:29:12'),
(279, 'T14', 'Marella Riccardi', 'Gabriella Pilato', 'Marella Riccardi', 'backoffice@negombo.it', '081986152', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-29', '2021-06-30', 1, NULL, 'Admin', 'negombo_60bce98c7847e1.99386541', 0.00, 'Gabriella Pilato', '2021-06-06 15:28:12', '2021-06-06 15:28:12'),
(280, 's13', 'Loredana Cimmino (1050)', 'Gabriella Pilato', 'Loredana Cimmino (1050)', 'backoffice@negombo.it', '0', 1, 1, NULL, NULL, NULL, 'o', NULL, NULL, NULL, '2021-06-07', '2021-06-30', 1, NULL, 'Admin', 'negombo_60bceb4351ab26.72322737', 0.00, 'Gabriella Pilato', '2021-06-06 15:35:31', '2021-06-06 15:35:31');

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
(21, '2021_03_27_134455_create_setting_admins_table', 14);

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
(5, 'Q11', 'Q11', 'Sectors', 80, 275, 30, 165, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-13 20:58:51', '2021-05-25 06:45:14'),
(6, 'Q12', 'Q12', 'Sectors', 109, 276, 39, 165, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-13 22:04:52', '2021-05-25 06:45:51'),
(7, 'Q13', 'Q13', 'Sectors', 139, 274, 53, 169, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 07:35:40', '2021-05-25 06:46:57'),
(8, 'Q14', 'Q14', 'Sectors', 165, 274, 58, 159, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 07:52:38', '2021-05-25 06:47:15'),
(9, 'Q21', 'Q21', 'Sectors', 83, 302, 30, 175, 'none', -1, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:53:37', '2021-05-25 06:47:35'),
(10, 'Q22', 'Q22', 'Sectors', 110, 301, 40, 176, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:54:18', '2021-05-25 06:48:02'),
(11, 'Q23', 'Q23', 'Sectors', 139, 300, 53, 176, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:54:47', '2021-05-25 06:48:17'),
(12, 'Q24', 'Q24', 'Sectors', 165, 299, 62, 174, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 07:55:17', '2021-05-25 06:48:33'),
(13, 'Q31', 'Q31', 'Sectors', 86, 338, 34, 194, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:56:14', '2021-05-25 06:48:46'),
(14, 'Q32', 'Q32', 'Sectors', 113, 337, 45, 193, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:56:52', '2021-05-25 06:49:01'),
(15, 'Q33', 'Q33', 'Sectors', 141, 335, 55, 191, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:57:25', '2021-05-25 06:50:58'),
(16, 'Q34', 'Q34', 'Sectors', 165, 333, 65, 196, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 07:57:58', '2021-05-25 06:51:17'),
(17, 'Q41', 'Q41', 'Sectors', 88, 368, 33, 215, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 07:58:23', '2021-05-25 06:51:35'),
(18, 'Q42', 'Q42', 'Sectors', 115, 368, 44, 216, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:01', '2021-05-25 06:51:51'),
(19, 'Q43', 'Q43', 'Sectors', 146, 366, 56, 212, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:31', '2021-05-25 06:52:05'),
(20, 'Q44', 'Q44', 'Sectors', 170, 364, 65, 213, 'none', 0, 800, 1050, 1250, 1450, 'EUR', '2021-04-16 08:01:55', '2021-05-25 06:52:20'),
(21, 'R11', 'R11', 'Sectors', 195, 272, 71, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:03:12', '2021-04-16 08:03:12'),
(22, 'R12', 'R12', 'Sectors', 224, 269, 86, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:08:49', '2021-05-25 06:52:45'),
(23, 'S11', 'S11', 'Sectors', 321, 262, 121, 152, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:09:01', '2021-04-16 08:09:01'),
(24, 'S12', 'S12', 'Sectors', 351, 260, 133, 149, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:09:46', '2021-04-16 08:09:46'),
(26, 'S13', 'S13', 'Sectors', 380, 255, 143, 147, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:10:21', '2021-05-25 06:57:35'),
(27, 'S14', 'S14', 'Sectors', 409, 253, 154, 145, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:10:43', '2021-05-25 06:57:47'),
(28, 'S21', 'S21', 'Sectors', 326, 289, 123, 165, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:11:44', '2021-04-16 08:11:44'),
(29, 'S22', 'S22', 'Sectors', 355, 285, 134, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:07', '2021-04-16 08:12:07'),
(30, 'R13', 'R13', 'Sectors', 257, 270, 94, 158, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:27', '2021-05-25 06:52:58'),
(31, 'S23', 'S23', 'Sectors', 384, 280, 146, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:12:45', '2021-04-16 08:12:45'),
(32, 'S24', 'S24', 'Sectors', 410, 282, 157, 159, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:13:06', '2021-05-25 06:58:23'),
(33, 'S31', 'S31', 'Sectors', 328, 326, 124, 187, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:13:50', '2021-04-16 08:13:50'),
(34, 'S32', 'S32', 'Sectors', 353, 323, 135, 186, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:09', '2021-04-16 08:27:38'),
(35, 'R14', 'R14', 'Sectors', 280, 267, 104, 158, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:14:39', '2021-04-27 08:28:43'),
(36, 'S33', 'S33', 'Sectors', 383, 320, 148, 182, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:39', '2021-05-25 06:59:42'),
(37, 'S34', 'S34', 'Sectors', 414, 316, 158, 183, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:14:59', '2021-05-25 07:00:04'),
(38, 'S41', 'S41', 'Sectors', 330, 358, 125, 208, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:15:20', '2021-05-25 07:00:16'),
(39, 'S42', 'S42', 'Sectors', 359, 356, 185, 193, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:15:45', '2021-05-25 07:00:30'),
(40, 'S43', 'S43', 'Sectors', 390, 350, 149, 200, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:16:20', '2021-05-25 07:00:44'),
(41, 'R21', 'R21', 'Sectors', 193, 302, 72, 179, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:16:29', '2021-04-16 08:16:29'),
(42, 'S44', 'S44', 'Sectors', 419, 344, 160, 198, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:16:46', '2021-05-25 07:01:03'),
(43, 'V11', 'V11', 'Sectors', 557, 224, 210, 127, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:18:04', '2021-04-16 08:18:04'),
(44, 'R22', 'R22', 'Sectors', 227, 301, 81, 176, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:18:27', '2021-05-25 06:54:34'),
(45, 'V12', 'V12', 'Sectors', 581, 215, 220, 121, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:18:32', '2021-04-27 09:01:59'),
(46, 'V13', 'V13', 'Sectors', 607, 203, 229, 117, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:19:11', '2021-04-16 08:19:11'),
(47, 'R23', 'R23', 'Sectors', 258, 297, 95, 175, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:19:23', '2021-04-27 08:43:31'),
(48, 'V14', 'V14', 'Sectors', 636, 196, 239, 113, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:19:32', '2021-04-27 08:36:22'),
(49, 'V21', 'V21', 'Sectors', 561, 244, 211, 138, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:20:11', '2021-04-16 08:21:30'),
(50, 'R24', 'R24', 'Sectors', 285, 297, 106, 174, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:20:28', '2021-04-19 06:38:30'),
(51, 'V22', 'V22', 'Sectors', 585, 236, 223, 133, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:20:34', '2021-05-25 07:05:51'),
(52, 'V23', 'V23', 'Sectors', 619, 229, 234, 128, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:22:39', '2021-04-27 08:59:22'),
(53, 'R31', 'R31', 'Sectors', 198, 337, 72, 196, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:22:49', '2021-04-19 06:49:11'),
(54, 'V24', 'V24', 'Sectors', 641, 217, 243, 123, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:23:01', '2021-05-25 07:07:33'),
(55, 'V31', 'V31', 'Sectors', 571, 281, 216, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:23:25', '2021-05-25 07:07:50'),
(56, 'V32', 'V32', 'Sectors', 599, 273, 226, 157, 'none', 0, 1050, 1300, 1500, 1750, 'EUR', '2021-04-16 08:23:47', '2021-05-25 07:08:09'),
(57, 'V33', 'V33', 'Sectors', 628, 264, 239, 148, 'none', 0, 1050, 1300, 1500, 1750, 'EUR', '2021-04-16 08:24:07', '2021-05-25 07:08:45'),
(58, 'R32', 'R32', 'Sectors', 226, 338, 82, 197, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:24:30', '2021-04-19 06:49:33'),
(59, 'V34', 'V34', 'Sectors', 656, 254, 249, 142, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:24:33', '2021-05-25 07:09:05'),
(60, 'V41', 'V41', 'Sectors', 582, 312, 219, 178, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:24:59', '2021-04-16 08:24:59'),
(61, 'V42', 'V42', 'Sectors', 605, 301, 230, 172, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:25:20', '2021-04-16 08:25:20'),
(62, 'V43', 'V43', 'Sectors', 638, 294, 244, 163, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:25:57', '2021-05-25 07:09:34'),
(63, 'R33', 'R33', 'Sectors', 257, 335, 95, 196, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:25:58', '2021-04-16 08:25:58'),
(64, 'V44', 'V44', 'Sectors', 667, 285, 255, 162, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:26:15', '2021-05-25 07:09:54'),
(65, 'R34', 'R34', 'Sectors', 287, 329, 107, 193, 'none', 0, 900, 1150, 1350, 1550, 'EUR', '2021-04-16 08:27:18', '2021-04-16 08:28:02'),
(66, 'R41', 'R41', 'Sectors', 198, 368, 73, 216, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:28:56', '2021-04-16 08:30:14'),
(67, 'R42', 'R42', 'Sectors', 224, 366, 83, 215, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:29:58', '2021-04-27 08:44:15'),
(68, 'R43', 'R43', 'Sectors', 261, 365, 98, 214, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:31:01', '2021-04-16 08:31:01'),
(69, 'R44', 'R44', 'Sectors', 290, 364, 108, 214, 'none', 0, 850, 1100, 1300, 1500, 'EUR', '2021-04-16 08:31:52', '2021-04-16 08:31:52'),
(70, 'T11', 'T11', 'Sectors', 443, 245, 165, 145, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:33:46', '2021-04-27 08:48:48'),
(71, 'T12', 'T12', 'Sectors', 470, 244, 176, 143, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:34:34', '2021-04-27 08:50:28'),
(72, 'T13', 'T13', 'Sectors', 497, 237, 186, 139, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:36:11', '2021-04-27 09:04:41'),
(73, 'T14', 'T14', 'Sectors', 523, 228, 197, 135, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:37:09', '2021-04-27 09:04:02'),
(74, 'T21', 'T21', 'Sectors', 448, 273, 168, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:38:19', '2021-04-16 08:38:19'),
(75, 'T22', 'T22', 'Sectors', 476, 266, 179, 158, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:39:08', '2021-04-16 08:39:08'),
(76, 'T23', 'T23', 'Sectors', 505, 261, 189, 155, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:40:06', '2021-04-27 09:03:18'),
(77, 'T24', 'T24', 'Sectors', 531, 255, 200, 150, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 08:41:19', '2021-04-16 08:41:19'),
(78, 'T31', 'T31', 'Sectors', 459, 312, 169, 182, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:42:45', '2021-04-16 08:42:45'),
(79, 'T32', 'T32', 'Sectors', 483, 304, 179, 181, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:43:49', '2021-04-16 08:43:49'),
(80, 'T33', 'T33', 'Sectors', 513, 299, 193, 176, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:44:51', '2021-04-27 09:02:41'),
(81, 'T34', 'T34', 'Sectors', 537, 291, 202, 173, 'none', 0, 1000, 1250, 1450, 1650, 'EUR', '2021-04-16 08:45:53', '2021-04-16 08:45:53'),
(82, 'T41', 'T41', 'Sectors', 460, 340, 172, 198, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:46:52', '2021-04-16 08:46:52'),
(83, 'T42', 'T42', 'Sectors', 486, 334, 183, 197, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:47:38', '2021-04-16 08:47:38'),
(84, 'T43', 'T43', 'Sectors', 519, 327, 194, 191, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:48:22', '2021-04-16 08:48:22'),
(85, 'T44', 'T44', 'Sectors', 546, 320, 204, 189, 'none', 0, 950, 1200, 1400, 1600, 'EUR', '2021-04-16 08:49:07', '2021-04-16 08:49:07'),
(86, 'X11', 'X11', 'Sectors', 659, 183, 248, 109, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:50:36', '2021-04-16 08:50:36'),
(87, 'X12', 'X12', 'Sectors', 687, 171, 257, 101, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:51:28', '2021-04-16 08:51:28'),
(88, 'X13', 'X13', 'Sectors', 712, 160, 267, 96, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:52:11', '2021-04-27 08:56:29'),
(89, 'X14', 'X14', 'Sectors', 739, 148, 278, 90, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-16 08:52:48', '2021-05-25 07:11:42'),
(90, 'X21', 'X21', 'Sectors', 671, 205, 251, 122, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:53:57', '2021-04-16 08:53:57'),
(91, 'X22', 'X22', 'Sectors', 696, 192, 259, 116, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:54:32', '2021-04-16 08:54:32'),
(92, 'X23', 'X23', 'Sectors', 726, 180, 282, 100, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:55:08', '2021-05-25 07:12:25'),
(93, 'X24', 'X24', 'Sectors', 751, 168, 282, 101, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-16 08:55:58', '2021-05-25 07:12:42'),
(94, 'X31', 'X31', 'Sectors', 687, 240, 258, 144, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:57:38', '2021-04-28 07:20:17'),
(95, 'X32', 'X32', 'Sectors', 714, 231, 268, 136, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:58:43', '2021-04-16 08:58:43'),
(96, 'X33', 'X33', 'Sectors', 744, 216, 280, 128, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 08:59:27', '2021-04-16 08:59:27'),
(97, 'X34', 'X34', 'Sectors', 771, 209, 289, 121, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-16 09:00:02', '2021-05-25 07:14:19'),
(98, 'X41', 'X41', 'Sectors', 697, 270, 261, 160, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:01:21', '2021-04-28 07:20:21'),
(99, 'X42', 'X42', 'Sectors', 723, 257, 270, 152, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:02:08', '2021-04-16 09:02:08'),
(100, 'X43', 'X43', 'Sectors', 759, 243, 286, 144, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:02:43', '2021-04-16 09:02:43'),
(101, 'X44', 'X44', 'Sectors', 786, 234, 295, 137, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-16 09:03:16', '2021-05-25 07:15:10'),
(102, 'X15', 'X15', 'Sectors', 766, 136, 285, 86, 'none', 0, 1200, 1450, 1650, 1850, 'EUR', '2021-04-26 13:51:08', '2021-05-25 07:11:58'),
(104, 'X25', 'X25', 'Sectors', 775, 155, 291, 100, 'none', 0, 1150, 1400, 1600, 1800, 'EUR', '2021-04-26 13:52:20', '2021-05-25 07:12:57'),
(105, 'X35', 'X35', 'Sectors', 795, 192, 300, 115, 'none', 0, 1100, 1350, 1550, 1750, 'EUR', '2021-04-26 13:53:20', '2021-05-25 07:14:35'),
(106, 'X45', 'X45', 'Sectors', 811, 220, 301, 132, 'none', 0, 1050, 1300, 1500, 1700, 'EUR', '2021-04-26 13:53:47', '2021-05-25 07:15:23');

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
(3, 'For All', 'Albergo San Montano', 'smontanosmo74531', 'F2', -1, 100.00, 1, '2021-05-30 10:59:29', '2021-05-30 10:59:29'),
(4, 'For All', 'Villa Sirena', 'villasirenavsi44331', 'F2', -1, 100.00, 1, '2021-05-30 10:59:55', '2021-05-30 10:59:55'),
(5, 'For All', 'HOTEL SAN FRANCESCO', 'sfrancescofr74786', 'F2', -1, 100.00, 1, '2021-06-03 08:12:47', '2021-06-03 08:12:47');

-- --------------------------------------------------------

--
-- Table structure for table `setting_admins`
--

CREATE TABLE `setting_admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `max_no_days` int(11) NOT NULL,
  `min_no_days` int(11) NOT NULL,
  `booking_email_content` varchar(10000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_time` time NOT NULL,
  `booking_start` datetime NOT NULL,
  `booking_end` datetime NOT NULL,
  `daily_fee` double(8,2) NOT NULL,
  `season_start` date NOT NULL,
  `season_end` date NOT NULL,
  `status_daily_fee` int(11) NOT NULL,
  `adult1_price` double(8,2) NOT NULL,
  `adult2_price` double(8,2) NOT NULL,
  `adult3_price` double(8,2) NOT NULL,
  `adult4_price` double(8,2) NOT NULL,
  `adult1_price_weekend` double(8,2) NOT NULL,
  `adult2_price_weekend` double(8,2) NOT NULL,
  `adult3_price_weekend` double(8,2) NOT NULL,
  `adult4_price_weekend` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_admins`
--

INSERT INTO `setting_admins` (`id`, `max_no_days`, `min_no_days`, `booking_email_content`, `closing_time`, `booking_start`, `booking_end`, `daily_fee`, `season_start`, `season_end`, `status_daily_fee`, `adult1_price`, `adult2_price`, `adult3_price`, `adult4_price`, `adult1_price_weekend`, `adult2_price_weekend`, `adult3_price_weekend`, `adult4_price_weekend`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo!</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Nome Cognome:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Telefono:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Numero adulti:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Numero bambini:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Tipo di pagamento:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Prezzo totale: </strong>[total_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Spiaggia San Montano</strong> Admin.</p>', '17:30:00', '2021-05-13 12:00:00', '2021-06-30 23:59:00', 5.00, '2021-05-15', '2021-06-30', 1, 28.00, 35.50, 43.00, 50.50, 28.00, 35.50, 43.00, 50.50, NULL, '2021-05-14 07:26:30'),
(2, 3, 1, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo!</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Nome Cognome:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Telefono:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Numero adulti:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Numero bambini:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Tipo di pagamento:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Prezzo totale: </strong>[total_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Spiaggia San Montano</strong> Admin.</p>', '17:30:00', '2021-07-01 12:00:00', '2021-07-31 23:59:00', 5.00, '2021-07-01', '2021-07-31', 1, 31.00, 40.00, 49.00, 56.00, 53.00, 53.00, 56.00, 59.00, NULL, '2021-05-14 07:26:30'),
(3, 3, 1, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo!</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Nome Cognome:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Telefono:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Numero adulti:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Numero bambini:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Tipo di pagamento:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Prezzo totale: </strong>[total_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Spiaggia San Montano</strong> Admin.</p>', '17:30:00', '2021-08-01 12:00:00', '2021-08-31 23:59:00', 5.00, '2021-08-01', '2021-08-31', 1, 53.00, 53.00, 56.00, 59.00, 53.00, 53.00, 56.00, 59.00, NULL, '2021-05-14 07:26:30'),
(4, 3, 1, '<h2><strong>Congratulazioni</strong> [name], hai prenotato con successo!</h2>\r\n\r\n<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><strong>Tracking Number:</strong> [tracking_id]</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\"><strong>Booking ID:</strong> [booking_id]<br />\r\n			<strong>Check-In:</strong> [checkin_date]</td>\r\n			<td style=\"width:50.0000%\"><br />\r\n			<strong>Check-Out:</strong> [checkout_date]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:50.0000%\">\r\n			<p><strong>Nome Cognome:</strong> [name]</p>\r\n\r\n			<p><strong>Email:</strong> [user_email]</p>\r\n\r\n			<p><strong>Telefono:</strong> [user_phone]</p>\r\n\r\n			<p><strong>Numero adulti:</strong> [no_of_adults]</p>\r\n\r\n			<p><strong>Numero bambini:</strong> [no_of_babies]</p>\r\n\r\n			<p><strong>Tipo di pagamento:</strong> [payment_type]</p>\r\n\r\n			<p><strong>Prezzo totale: </strong>[total_amount]&nbsp;&euro;</p>\r\n			</td>\r\n			<td style=\"width:50.0000%\"><strong>Place ID:</strong> [place_id]<br />\r\n			<strong>Place Name:</strong> [place_name]<br />\r\n			&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thank You,<br />\r\n<strong>Spiaggia San Montano</strong> Admin.</p>', '17:30:00', '2021-09-01 12:00:00', '2021-09-30 23:59:00', 5.00, '2021-09-01', '2021-09-30', 1, 28.00, 35.50, 43.00, 50.50, 28.00, 35.50, 43.00, 50.50, NULL, '2021-05-14 07:26:30');

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

--
-- Dumping data for table `tempbooking_cards`
--

INSERT INTO `tempbooking_cards` (`id`, `place_id`, `user_fullname`, `payer_name`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `baby_surname4`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `user_card_paymentid`, `paid_ammount`, `created_at`, `updated_at`) VALUES
(7, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e878aeaa9e8_08073466', '00110572830296585831', 950.00, '2021-04-20 07:49:31', '2021-04-20 07:49:31'),
(8, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e87f6ae9254_77152969', '00110356398296586213', 950.00, '2021-04-20 07:51:19', '2021-04-20 07:51:19'),
(11, 'V12', 'gabriella gabriella', 'gabriella pilato', 'gabriella gabriella', 'gapilato@gmail.com', '3392492981', 2, 0, 'massimo martino', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_607e920257b309_09089056', '00110546598102753801', 103.00, '2021-04-20 08:34:10', '2021-04-20 08:34:10'),
(12, 'V11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_607e92347bfe83_08154229', '00110663676102753817', 87.00, '2021-04-20 08:35:00', '2021-04-20 08:35:00'),
(13, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e92aade3691_54715944', '00110888600102753835', 950.00, '2021-04-20 08:36:59', '2021-04-20 08:36:59'),
(14, 'S14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e92d9997955_02152139', '00110415906102753841', 1050.00, '2021-04-20 08:37:45', '2021-04-20 08:37:45'),
(15, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-10', 0, NULL, 'Credit Card', 'negombo_607e9358719e10_85145879', '00110149151102753870', 367.00, '2021-04-20 08:39:52', '2021-04-20 08:39:52'),
(16, 'T14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-10', 0, NULL, 'Credit Card', 'negombo_607e93810d4ae1_11620872', '00110749197102753881', 417.00, '2021-04-20 08:40:33', '2021-04-20 08:40:33'),
(17, 'T33', 'gabriella pilato', 'gabrialle pilato', 'gabriella pilato', 'gapilato@gmail.com', '329', 3, 0, 'GFAE', 'FASW', NULL, NULL, NULL, NULL, NULL, '2021-07-20', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e9384060dc6_43623309', '00110834207102753895', 640.00, '2021-04-20 08:40:36', '2021-04-20 08:40:36'),
(18, 'R11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-01', 0, NULL, 'Credit Card', 'negombo_607e93bccb6c52_27403471', '00110684399102753915', 1033.00, '2021-04-20 08:41:33', '2021-04-20 08:41:33'),
(19, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607e991495b498_74433916', '00110562402102754055', 950.00, '2021-04-20 09:04:20', '2021-04-20 09:04:20'),
(20, 'R14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-16', 0, NULL, 'Credit Card', 'negombo_607e99ed8b1111_51213833', '00110604669102754084', 575.00, '2021-04-20 09:07:57', '2021-04-20 09:07:57'),
(21, 'T13', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-05', 0, NULL, 'Credit Card', 'negombo_607e9a48cce281_50006044', '00110434374102754097', 167.00, '2021-04-20 09:09:29', '2021-04-20 09:09:29'),
(22, 'T11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-06', '2021-07-06', 0, NULL, 'Credit Card', 'negombo_607e9a657e5d23_53762746', '00110454850102754100', 42.00, '2021-04-20 09:09:57', '2021-04-20 09:09:57'),
(23, 'R12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-01', 0, NULL, 'Credit Card', 'negombo_607e9a853f3d17_63414397', '00110883146102754115', 1033.00, '2021-04-20 09:10:29', '2021-04-20 09:10:29'),
(24, 'S14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-02', 0, NULL, 'Credit Card', 'negombo_607e9aad942299_48450398', '00110659812102754127', 40.00, '2021-04-20 09:11:09', '2021-04-20 09:11:09'),
(25, 'X12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_607e9d413cdc59_94998489', '00110519456102754227', 1290.00, '2021-04-20 09:22:09', '2021-04-20 09:22:09'),
(26, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-11', 0, NULL, 'Credit Card', 'negombo_607e9d8d2fe484_78670662', '00110189349102754234', 1023.00, '2021-04-20 09:23:25', '2021-04-20 09:23:25'),
(27, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-15', 0, NULL, 'Credit Card', 'negombo_607e9f0ac495b2_78148105', '00110947049102754266', 1023.00, '2021-04-20 09:29:46', '2021-04-20 09:29:46'),
(28, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-01', 0, NULL, 'Credit Card', 'negombo_607e9f78b23a23_67882603', '00110869977102754274', 982.00, '2021-04-20 09:31:36', '2021-04-20 09:31:36'),
(29, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-02', 0, NULL, 'Credit Card', 'negombo_607e9f957e2637_25523678', '00110468367102754281', 37.00, '2021-04-20 09:32:05', '2021-04-20 09:32:05'),
(30, 'Q11', 'Shaykh Siddique', 'Dhaka', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-03', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_607fd4fb8cfeb0_43154020', '00111865997102756635', 1097.00, '2021-04-21 07:32:12', '2021-04-21 07:32:12'),
(31, 'Q11', 'Shaykh Siddique', 'Dhaka', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-10', 0, NULL, 'Credit Card', 'negombo_607fd663e52ac2_14410106', '00111140353102756675', 1023.00, '2021-04-21 07:38:12', '2021-04-21 07:38:12'),
(32, 'Q11', 'Shaykh Siddique', 'Dhaka', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-02', 0, NULL, 'Credit Card', 'negombo_607fe434d7e5d3_53265777', '00111519142102757166', 1013.00, '2021-04-21 08:37:09', '2021-04-21 08:37:09'),
(34, 'Q11', 'Shaykh Siddique', 'Dhaka', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-16', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_607fe49c347751_52803492', '00111674216102757184', 1425.00, '2021-04-21 08:38:52', '2021-04-21 08:38:52'),
(35, 'Q11', 'Shaykh Siddique', 'Dhaka', 'Shaykh Siddique', 'shaykhsiddique.lava@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-15', 0, NULL, 'Credit Card', 'negombo_607fe515adafd8_74091638', '00111661460102757192', 950.00, '2021-04-21 08:40:53', '2021-04-21 08:40:53'),
(36, 'R14', 'gabriella pilato', 'gabriella pilato', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 2, 0, 'gs', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608003c6c30d07_78197014', '00111426310102757700', 2500.00, '2021-04-21 10:51:51', '2021-04-21 10:51:51'),
(37, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608003e2087349_20871157', '00111498065102757711', 1900.00, '2021-04-21 10:52:18', '2021-04-21 10:52:18'),
(38, 'X41', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_6080041f8698a6_80614906', '00111512801102757723', 2100.00, '2021-04-21 10:53:19', '2021-04-21 10:53:19'),
(39, 'S21', 'gabriella pilato', 'gabriella pilato', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_60800427efb1d4_13318061', '00111390564102757736', 2700.00, '2021-04-21 10:53:28', '2021-04-21 10:53:28'),
(40, 'S22', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_6080055bd16842_75047120', '00111803068102757767', 2700.00, '2021-04-21 10:58:36', '2021-04-21 10:58:36'),
(41, 'S11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608005b7f24e19_85804481', '00111233755102757781', 2100.00, '2021-04-21 11:00:08', '2021-04-21 11:00:08'),
(42, 'S11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608005b8104c38_16909924', '00111959287102757791', 2100.00, '2021-04-21 11:00:08', '2021-04-21 11:00:08'),
(43, 'S24', 'gabriella gabriella', 'gabriella pilato', 'gabriella gabriella', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_608005bf4561c3_97766506', '00111463714102757802', 2700.00, '2021-04-21 11:00:15', '2021-04-21 11:00:15'),
(44, 'S11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608005d94ed840_87651703', '00111812302102757823', 2100.00, '2021-04-21 11:00:41', '2021-04-21 11:00:41'),
(45, 'Q12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-10', 0, NULL, 'Credit Card', 'negombo_60800643743ab3_63630432', '00111605866102757833', 367.00, '2021-04-21 11:02:27', '2021-04-21 11:02:27'),
(46, 'R11', 'gabriella gabriella', 'ga pilato', 'gabriella gabriella', 'gapilato@gmail.com', '3392492981', 3, 0, 'gabriella', 'Sergio Torelli', NULL, NULL, NULL, NULL, NULL, '2021-06-20', '2021-07-09', 0, NULL, 'Credit Card', 'negombo_608006668d1a45_85545105', '00111295069102757844', 1067.00, '2021-04-21 11:03:02', '2021-04-21 11:03:02'),
(47, 'Q12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-11', 0, NULL, 'Credit Card', 'negombo_6080067de5fea1_91286332', '00111488310102757867', 403.00, '2021-04-21 11:03:26', '2021-04-21 11:03:26'),
(48, 'V43', 'gabriella pilato', 'gb', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 2, 0, 'Pilato', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_6080068a0c4f83_55419710', '00111728447102757870', 1250.00, '2021-04-21 11:03:38', '2021-04-21 11:03:38'),
(49, 'Q12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-30', 0, NULL, 'Credit Card', 'negombo_6080069f668453_89273020', '00111567714102757887', 950.00, '2021-04-21 11:03:59', '2021-04-21 11:03:59'),
(50, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608006b71a48d6_64630297', '00111679726102757897', 950.00, '2021-04-21 11:04:23', '2021-04-21 11:04:23'),
(51, 'T34', 'gabriella gabriella', 'Napoli', 'gabriella gabriella', 'gapilato@gmail.com', '3392492981', 3, 0, 'gabriella', 'Annamaria Ferriello', NULL, NULL, NULL, NULL, NULL, '2021-07-20', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608006ba227134_57785091', '00111335084102757901', 640.00, '2021-04-21 11:04:26', '2021-04-21 11:04:26'),
(52, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608006da6876f8_12514376', '00111131157102757937', 1900.00, '2021-04-21 11:04:58', '2021-04-21 11:04:58'),
(53, 'X11', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608006e66bab83_20031915', '00111627756102757947', 1240.00, '2021-04-21 11:05:10', '2021-04-21 11:05:10'),
(54, 'S14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-15', 0, NULL, 'Credit Card', 'negombo_6080071807d2b1_98481788', '00111756606102757955', 1575.00, '2021-04-21 11:06:00', '2021-04-21 11:06:00'),
(55, 'R22', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 2, 0, 'gabriella', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-20', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60800728ea9ab3_42388583', '00111365609102757965', 1680.00, '2021-04-21 11:06:17', '2021-04-21 11:06:17'),
(56, 'R24', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 2, 0, 'gabriella', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-20', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_60800755df6038_39630731', '00111514506102757976', 540.00, '2021-04-21 11:07:02', '2021-04-21 11:07:02'),
(57, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-10', 0, NULL, 'Credit Card', 'negombo_608007cef3adc3_86596007', '00111281332102757985', 950.00, '2021-04-21 11:09:03', '2021-04-21 11:09:03'),
(58, 'T22', 'gabriella gabriella', 'Napoli', 'gabriella gabriella', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15', '2021-08-15', 0, NULL, 'Credit Card', 'negombo_608007d54ba5a7_08634900', '00111540374102757992', 1645.00, '2021-04-21 11:09:09', '2021-04-21 11:09:09'),
(59, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-15', '2021-08-15', 0, NULL, 'Credit Card', 'negombo_608008493b9142_72450753', '00111341279102758004', 1488.00, '2021-04-21 11:11:05', '2021-04-21 11:11:05'),
(60, 'Q13', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608008ba5016f8_99510159', '00111317986102758037', 1900.00, '2021-04-21 11:12:58', '2021-04-21 11:12:58'),
(61, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-30', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608009186a9df9_78405195', '00111333677102758043', 1932.00, '2021-04-21 11:14:32', '2021-04-21 11:14:32'),
(62, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-08-01', 0, NULL, 'Credit Card', 'negombo_6080111d916b22_67694630', '00111387826102758196', 2850.00, '2021-04-21 11:48:46', '2021-04-21 11:48:46'),
(63, 'V22', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 3, 0, 'Pilato', 'Laura Ambrosone', NULL, NULL, NULL, NULL, NULL, '2021-06-25', '2021-08-25', 0, NULL, 'Credit Card', 'negombo_608011240da2c3_89651594', '00111461388102758202', 3410.00, '2021-04-21 11:48:52', '2021-04-21 11:48:52'),
(64, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02', '2021-08-02', 0, NULL, 'Credit Card', 'negombo_608011a387eb96_79830438', '00111484860102758213', 2818.00, '2021-04-21 11:50:59', '2021-04-21 11:50:59'),
(65, 'X24', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 2, 0, 'bla bla', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-28', '2021-08-16', 0, NULL, 'Credit Card', 'negombo_6080122cdffa04_33177623', '00111343081102758221', 2940.00, '2021-04-21 11:53:17', '2021-04-21 11:53:17'),
(66, 'S22', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 2, 0, 'Belmonte', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_608012dfb5d345_98586324', '00111683884102758256', 3375.00, '2021-04-21 11:56:15', '2021-04-21 11:56:15'),
(67, 'V14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_6080134d571509_74801668', '00111732739102758261', 2300.00, '2021-04-21 11:58:05', '2021-04-21 11:58:05'),
(68, 'S11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6080138d906786_02964389', '00111125374102758271', 2100.00, '2021-04-21 11:59:09', '2021-04-21 11:59:09'),
(69, 'S12', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608013a06e2978_26460864', '00111808251102758284', 2100.00, '2021-04-21 11:59:28', '2021-04-21 11:59:28'),
(70, 'X41', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608013b8e6af14_01331040', '00111373734102758290', 2100.00, '2021-04-21 11:59:53', '2021-04-21 11:59:53'),
(71, 'S23', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_608013fa530ee8_11503854', '00111123851102758301', 2700.00, '2021-04-21 12:00:58', '2021-04-21 12:00:58'),
(72, 'V21', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 3, 0, 'Pilato', 'Annamaria Ferriello', NULL, NULL, NULL, NULL, NULL, '2021-06-25', '2021-08-25', 0, NULL, 'Credit Card', 'negombo_6080140d48f184_37560425', '00111931588102758310', 3410.00, '2021-04-21 12:01:17', '2021-04-21 12:01:17'),
(73, 'S24', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-10', '2021-08-12', 0, NULL, 'Credit Card', 'negombo_6080143aa79de7_27228105', '00111854874102758323', 2700.00, '2021-04-21 12:02:02', '2021-04-21 12:02:02'),
(74, 'X24', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 2, 0, 'Sposato', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-12', '2021-08-16', 0, NULL, 'Credit Card', 'negombo_608014dbea8d81_22738180', '00111418539102758336', 3687.00, '2021-04-21 12:04:44', '2021-04-21 12:04:44'),
(75, 'X21', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 2, 0, 'Gallo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-28', '2021-08-26', 0, NULL, 'Credit Card', 'negombo_608015138077c0_74573615', '00111905867102758344', 2940.00, '2021-04-21 12:05:39', '2021-04-21 12:05:39'),
(76, 'Q41', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 4, 0, 'a', 'a', 'a', NULL, NULL, NULL, NULL, '2021-06-01', '2021-08-03', 0, NULL, 'Credit Card', 'negombo_6080157e1e24f9_84944836', '00111663111102758376', 4350.00, '2021-04-21 12:07:26', '2021-04-21 12:07:26'),
(77, 'Q42', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 4, 0, 'Cofone', 'Antonio', 'Gallo', NULL, NULL, NULL, NULL, '2021-06-08', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608015b4d94224_00124510', '00111106834102758383', 4012.00, '2021-04-21 12:08:21', '2021-04-21 12:08:21'),
(78, 'T24', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '+393388851460', 3, 0, 'Gallo', 'prova 1', NULL, NULL, NULL, NULL, NULL, '2021-06-15', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_608016292c1243_58594459', '00111537554102758393', 3800.00, '2021-04-21 12:10:17', '2021-04-21 12:10:17'),
(79, 'S23', 'gabriella pilato', 'na', 'gabriella pilato', 'gapilato@gmail.com', '3392492981', 3, 0, 'Pilato', 'Annamaria Ferriello', NULL, NULL, NULL, NULL, NULL, '2021-06-15', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_6080164a6e8372_01989592', '00111454454102758400', 3673.00, '2021-04-21 12:10:50', '2021-04-21 12:10:50'),
(80, 'R11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-30', 0, NULL, 'Credit Card', 'negombo_6082dc1bb22e06_53973101', '00113695247102762620', 1000.00, '2021-04-23 14:39:24', '2021-04-23 14:39:24'),
(82, 'V11', 'Adriana Ronelli', 'Adriana Ronelli', 'Adriana Ronelli', 'adriana.ronelli2017@gmail.com', '3922722841', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_6082e9fa67d915_39119119', '00113347172102762786', 1150.00, '2021-04-23 15:38:34', '2021-04-23 15:38:34'),
(89, 'V22', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-13', 0, NULL, 'Credit Card', 'negombo_6083e1ef70d710_51639570', '00114421429102763155', 1100.00, '2021-04-24 09:16:31', '2021-04-24 09:16:31'),
(103, 'X44', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddique@gmail.com', '01554656556', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-07-30', 0, NULL, 'Credit Card', 'negombo_60853c550ba4b4_55200078', '00115409512297304005', 2100.00, '2021-04-25 09:54:29', '2021-04-25 09:54:29'),
(109, 'V11', 'Francesca lacava', 'francesca lacava', 'Francesca lacava', 'francesca.lacava@studiolegalelacava.com', '+393349502172', 2, 2, 'dora pozzi', NULL, NULL, 'lavinia roossi lacava', 'pietro rossi lacava', NULL, NULL, '2021-06-20', '2021-09-11', 0, NULL, 'Credit Card', 'negombo_60868f8fac9b20_37663674', '00116424636297437676', 2427.00, '2021-04-26 10:01:51', '2021-04-26 10:01:51'),
(110, 'S11', 'Massimo Cancemi', 'massimo cancemi', 'Massimo Cancemi', 'cancemidottmassimo@gmail.com', '3382103233', 3, 0, 'Leone Giulia', 'Teresa Cancemi', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60868fa1486953_70863090', '00116166408297437733', 3000.00, '2021-04-26 10:02:09', '2021-04-26 10:02:09'),
(111, 'X12', 'Brasiello anna', 'Brasiello anna', 'Brasiello anna', 'daniloaxe@hotmail.it', '3356575567', 4, 1, 'Brasiello veronica', 'Argenziano ragfaele', 'Arianna cicco', 'Bruno varriale', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60868fa177b860_77747511', '00116889209297437747', 3700.00, '2021-04-26 10:02:09', '2021-04-26 10:02:09'),
(116, 'T21', 'Caccioppoli Alessandra', 'Caccioppoli Alessandra', 'Caccioppoli Alessandra', 'alessandra_caccioppoli@virgilio.it', '3203290373', 1, 2, NULL, NULL, NULL, 'Corvino renato', 'Corvino Chiara', NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60868fdb421967_56645309', '00116129994297437994', 2100.00, '2021-04-26 10:03:08', '2021-04-26 10:03:08'),
(130, 'Q13', 'Adele Mollo', 'Carlo iacovelli', 'Adele Mollo', 'carlo.giacovelli@gmail.com', '3393649352', 2, 1, 'Carlo iacovelli', NULL, NULL, 'Nicole perrotta', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608691bb702e05_25573851', '00116108779297440071', 2400.00, '2021-04-26 10:11:07', '2021-04-26 10:11:07'),
(133, 'T22', 'Nunzio Del Piano', 'Nunzio Del Piano', 'Nunzio Del Piano', 'nunzio.depi@gmail.com', '3662361339', 4, 0, 'Vincenzo Del Piano', 'Rosalba Campagnuolo', 'Eleonora Del Piano', NULL, NULL, NULL, NULL, '2021-08-01', '2021-09-30', 0, NULL, 'Credit Card', 'negombo_608694de6f60b4_98659822', '00116936695297443115', 3400.00, '2021-04-26 10:24:30', '2021-04-26 10:24:30'),
(136, 'Q13', 'Adele Mollo', 'Adele mollo', 'Adele Mollo', 'carlo.giacovelli@gmail.com', '3338956385', 2, 1, 'Carlo iacovelli', NULL, NULL, 'Nicole perrotta', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6086979d173a58_57922358', '00116179971297445542', 2400.00, '2021-04-26 10:36:13', '2021-04-26 10:36:13'),
(137, 'T23', 'Olga Cigliano', 'Alessandra Russo', 'Olga Cigliano', 'alessandrarusso15@virgilio.it', '3332835975', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6086997eb89df8_99948662', '00116820023297447336', 2100.00, '2021-04-26 10:44:15', '2021-04-26 10:44:15'),
(146, 'Q42', 'E', 'Gab', 'E', 'Gapilato@gmail.com', '#965', 2, 0, 'Get', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-09', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087c5dba13c63_08757633', '00117220069297587521', 2870.00, '2021-04-27 08:05:48', '2021-04-27 08:05:48'),
(147, 'X31', 'salvatore scuotto', 'salvatore scuotto', 'salvatore scuotto', 'mirko.brasiello@me.com', '3929813064', 2, 2, 'renata brasiello', NULL, NULL, 'giovanni scuotto', 'francesco scuotto', NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087c5e1a8e732_53685445', '00117922540297587535', 2700.00, '2021-04-27 08:05:54', '2021-04-27 08:05:54'),
(151, 'S44', 'Paolo napoli', 'Serena Sarnelli', 'Paolo napoli', 'serenasarnelli@tiscali.it', '3389734849', 4, 0, 'Francesca napoli', 'Andrea napoli', 'Serenasarnelli', NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087c778e11368_25921521', '00117230567297589112', 3100.00, '2021-04-27 08:12:41', '2021-04-27 08:12:41'),
(154, 'R41', 'Lucia pacetta', 'Antonio Brasiello', 'Lucia pacetta', 'luciapacetta1970@gmail.com', '3465902807', 2, 1, 'Antonio brasiello', NULL, NULL, 'Francesco brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d0c143a5b1_56690972', '00117942223297597976', 2200.00, '2021-04-27 08:52:17', '2021-04-27 08:52:17'),
(157, 'R44', 'Lucia pacetta', 'Antonio Brasiello', 'Lucia pacetta', 'luciapacetta1970@gmail.com', '3465902807', 2, 1, 'Antonio Brasiello', NULL, NULL, 'Francesco Brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d32b3f55d9_63543802', '00117666888297600285', 2200.00, '2021-04-27 09:02:35', '2021-04-27 09:02:35'),
(158, 'Q12', 'landolfi sara', 'piccolo dario', 'landolfi sara', 'darioyeah@hotmail.it', '3349735929', 2, 2, 'piccolo dario', NULL, NULL, 'jacopo piccolo', 'maria benedetta piccolo', NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d66c8e9fe4_45933571', '00117392882297603253', 2400.00, '2021-04-27 09:16:29', '2021-04-27 09:16:29'),
(160, 'T41', 'Lucia pacetta', 'Antonio Brasiello', 'Lucia pacetta', 'luciapacetta1970@gmail.com', '3465902807', 2, 1, 'Antonio brasiello', NULL, NULL, 'Francesco brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d8bf812296_57414582', '00117158621297605333', 2400.00, '2021-04-27 09:26:23', '2021-04-27 09:26:23'),
(161, 'R44', 'dario piccolo', 'dario piccolo', 'dario piccolo', 'darioyeah@hotmail.it', '3349735929', 2, 2, 'sara landolfi', NULL, NULL, 'jacopo piccolo', 'maria benedetta piccolo', NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d8c5ce6164_72121568', '00117627188297605367', 2200.00, '2021-04-27 09:26:30', '2021-04-27 09:26:30'),
(162, 'S44', 'Lucia pacetta', 'Lucia pacetta', 'Lucia pacetta', 'luciapacetta1970@gmail.com', '3335636436', 2, 1, 'Antonio Brasiello', NULL, NULL, 'Francesco Brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d95cdfe330_08676357', '00117841988297605905', 2300.00, '2021-04-27 09:29:01', '2021-04-27 09:29:01'),
(163, 'S44', 'Lucia pacetta', 'Lucia pacetta', 'Lucia pacetta', 'luciapacetta1970@gmsil.com', '3335636436', 2, 1, 'Antonio brasiello', NULL, NULL, 'Francesco brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087d9e27d8077_11144274', '00117613615297606380', 2300.00, '2021-04-27 09:31:14', '2021-04-27 09:31:14'),
(165, 'Q24', 'russo rosario', 'russo rosario', 'russo rosario', 'rosario@russorosario.191.it', '081284124', 2, 0, 'coppola gianna', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087e6989a4a35_43589987', '00117479312297617623', 2300.00, '2021-04-27 10:25:29', '2021-04-27 10:25:29'),
(166, 'Q24', 'russo rosario', 'rosario russo', 'russo rosario', 'rosario@russorosario.191.it', '081284124', 2, 0, 'coppola gianna', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087e8dc812d50_67186340', '00117350337297619462', 2300.00, '2021-04-27 10:35:08', '2021-04-27 10:35:08'),
(167, 'R11', 'maria barba', 'maria barba', 'maria barba', 'maria.barba@telecomitalia.it', '3316004162', 4, 0, 'giuseppe filacchione', 'lucia filacchione', 'davide filacchione', NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6087f3ea8f45b7_72107193', '00117942780297627440', 3300.00, '2021-04-27 11:22:19', '2021-04-27 11:22:19'),
(168, 'R11', 'Lucia pacetta', 'Lucia pacetta', 'Lucia pacetta', 'luciapacetta1970@gmail.com', '3335636436', 2, 1, 'Antonio brasiello', NULL, NULL, 'Francesco brasiello', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6088009124efe3_94786016', '00117242540297635284', 2500.00, '2021-04-27 12:16:17', '2021-04-27 12:16:17'),
(169, 'Q12', 'roberta di gennaro', 'roberta di gennaro', 'roberta di gennaro', 'roberta.digennaro@uniparthenope.it', '3286155291', 1, 3, NULL, NULL, NULL, 'nicoletta sarnacchiaro', 'eduardo sarnacchiaro', 'francesco sarnacchairo', NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60881c576d4872_37907941', '00117198278297658135', 1900.00, '2021-04-27 14:14:47', '2021-04-27 14:14:47'),
(170, 'Q11', 'silvia romano', 'silvia romano', 'silvia romano', 'r.digennaro@libero.it', '3386214412', 1, 2, NULL, NULL, NULL, 'lucrezia ragozzini', 'francesco ragozzini', NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60881d719e24a4_23493057', '00117191812297658916', 1900.00, '2021-04-27 14:19:30', '2021-04-27 14:19:30'),
(171, 'R11', 'Carlo Iacovelli', 'Carlo Iacovelli', 'Carlo Iacovelli', 'carlo.giacovelli@gmail.com', '3393649352', 2, 1, 'Mollo Adele', NULL, NULL, 'Nicole perrotta', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60882fe3b88396_15186127', '00117213588297674933', 2500.00, '2021-04-27 15:38:12', '2021-04-27 15:38:12'),
(172, 'V44', 'Luca Di Filippo', 'Luca Di Filippo', 'Luca Di Filippo', 'luca.difilippo@studiolam.eu', '3472128448', 2, 0, 'Federica D\'Avenia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6088384a1b3bb4_20324422', '00117199211297681971', 2500.00, '2021-04-27 16:14:02', '2021-04-27 16:14:02'),
(175, 'R11', 'Pasquale evangelista', 'Pasquale evangelista', 'Pasquale evangelista', 'alessiapesce85@gmal.com', '3335676285', 4, 0, 'Elisa di matteo', 'Fiorenza evangelista', 'Anna evangelista', NULL, NULL, NULL, NULL, '2021-06-30', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60885cca4c9221_17838879', '00117769175297708186', 3355.00, '2021-04-27 18:49:46', '2021-04-27 18:49:46'),
(176, 'V12', 'Claudia cioffi', 'Claudia cioffi', 'Claudia cioffi', 'claudiacioffi@hotmail.com', '3397422918', 2, 2, 'Maria tranchino', NULL, NULL, 'Fabrizio florio', 'Filippo florio', NULL, NULL, '2021-06-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608863a29d5a38_64750310', '00117871777297713216', 2800.00, '2021-04-27 19:18:59', '2021-04-27 19:18:59'),
(177, 'X33', 'Nacye lauria', 'Francesco Seccia', 'Nacye lauria', 'f.seccia1985@gmail.com', '3290914927', 2, 1, 'Angela Lauria', NULL, NULL, 'Nicholas Seccia', NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6088668f47c845_83925344', '00117609566297715293', 2700.00, '2021-04-27 19:31:27', '2021-04-27 19:31:27'),
(179, 'T33', 'GIOVANGIUSEPPE DE LUCA', 'DAVIDE CEREMIGNA', 'GIOVANGIUSEPPE DE LUCA', 'DAVIDE.CEREMIGNA@GMAIL.COM', '3393693719', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-09-30', 0, NULL, 'Credit Card', 'negombo_60887c3f1b1bf1_60247490', '00117561148297728276', 2000.00, '2021-04-27 21:03:59', '2021-04-27 21:03:59'),
(181, 'Q11', 'GSDG', 'fa', 'GSDG', 'ff@GMAIL.COM', '11', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-09-30', 0, NULL, 'Credit Card', 'negombo_608922d27cc6c0_98740035', '00118345149297771380', 3800.00, '2021-04-28 08:54:43', '2021-04-28 08:54:43'),
(182, 'Q41', 'Luca Abbate', 'Luca Abbate', 'Luca Abbate', 'focile7763@hype68.com', '3345874587', 2, 0, 'Roberta Santoro', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608924e8cd8d67_59203941', '00118491164297773107', 1050.00, '2021-04-28 09:03:37', '2021-04-28 09:03:37'),
(183, 'Q41', 'Luca Abbate', 'Luca Abbate', 'Luca Abbate', 'focile7763@hype68.com', '3345874587', 2, 0, 'Roberta Santoro', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6089250d53d151_13736024', '00118472448297773251', 1050.00, '2021-04-28 09:04:13', '2021-04-28 09:04:13'),
(184, 'T33', 'Dario Esente', 'Dario Esente', 'Dario Esente', 'darioesente@gmail.com', '3386474960', 2, 1, 'Alessia Pagliaro', NULL, NULL, 'Luca Enzo Esente', NULL, NULL, NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608925a8bcc554_35466278', '00118317176297774007', 1250.00, '2021-04-28 09:06:49', '2021-04-28 09:06:49'),
(185, 'V44', 'Luca Di Filippo', 'Luca Di Filippo', 'Luca Di Filippo', 'luca.difilippo@studiolam.eu', '3472128448', 2, 0, 'Maria Federica D\'Avenia', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6089274d78a2b2_99792505', '00118167669297775532', 2500.00, '2021-04-28 09:13:49', '2021-04-28 09:13:49'),
(187, 'T44', 'eugenia', 'pierluigi stampacchia', 'eugenia', 'pstampacchia@libero.it', '3394731860', 2, 2, 'frangipani', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608928137b9044_02948753', '00118520080297776191', 2400.00, '2021-04-28 09:17:07', '2021-04-28 09:17:07'),
(193, 'T23', 'Antonella Aloschi', 'Antonella Aloschi', 'Antonella Aloschi', 'antonella@aloschibros.com', '3487713454', 2, 3, 'Manuela Gallone', NULL, NULL, 'Miriam Mele', 'Alessandro Mele', 'Andrea Monti', NULL, '2021-07-06', '2021-07-29', 0, NULL, 'Credit Card', 'negombo_6089326fb4f211_10828441', '00118967999297785777', 1160.00, '2021-04-28 10:01:20', '2021-04-28 10:01:20'),
(194, 'Q12', 'Marianna Ciaramaglia', 'Marianna Ciaramaglia', 'Marianna Ciaramaglia', 'mariannaciaramaglia@yahoo.it', '3386856352', 2, 3, 'Raffaele Pisani', NULL, NULL, 'Vincenzo Pisani', 'Luigi Pisani', 'Chiara Pisani', NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60893272cf8dd0_01516019', '00118472097297785795', 1200.00, '2021-04-28 10:01:23', '2021-04-28 10:01:23'),
(195, 'R32', 'pietro paolo micillo', 'Select or type your province', 'pietro paolo micillo', 'pietropaolo.micillo@alice.it', '3313203911', 3, 0, 'barba cristina', 'micillo rosanna', NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6089327358c6f4_49507054', '00118700848297785814', 1350.00, '2021-04-28 10:01:23', '2021-04-28 10:01:23'),
(196, 'Q12', 'Pasquale Evangelista', 'Pasquale Evangelista', 'Pasquale Evangelista', 'annaevangelista642@gmail.com', '3389551835', 2, 0, 'Elisabetta Di Matteo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-30', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_608932771119c8_25996183', '00118603890297785846', 1280.00, '2021-04-28 10:01:27', '2021-04-28 10:01:27'),
(201, 'S43', 'DR PASQUALE PEZZELLA', 'pasquale pezzella', 'DR PASQUALE PEZZELLA', 'ppezzella@libero.it', '3337417627', 2, 0, 'MARIA IOVINE', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_60893290c4b334_08403925', '00118182164297785976', 1150.00, '2021-04-28 10:01:53', '2021-04-28 10:01:53'),
(203, 'T44', 'Romilda D’alessio', 'Romilda D’alessio', 'Romilda D’alessio', 'romidalessio@gmail.it', '3385223526', 2, 0, 'Carmine de Domenico', NULL, NULL, NULL, NULL, NULL, NULL, '2021-08-01', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_608932923c3cb6_38006330', '00118801560297785996', 1200.00, '2021-04-28 10:01:54', '2021-04-28 10:01:54'),
(204, 'Q12', 'Rosanna micillo', 'Rosanna micillo', 'Rosanna micillo', 'Rosannakekko@gmail.com', '3315669627', 4, 0, 'Christina barba', 'Pietro Paolo micillo', 'Francesco micillo', NULL, NULL, NULL, NULL, '2021-07-24', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_6089329a4f22c3_18472316', '00118936831297786021', 2027.00, '2021-04-28 10:02:02', '2021-04-28 10:02:02'),
(211, 'X31', 'Tiziana Monti', 'Tiziana Monti', 'Tiziana Monti', 'avv.tizianamonti@libero.it', '3339294923', 3, 0, 'Mariavittoria Grieco', 'Annalisa Grieco', NULL, NULL, NULL, NULL, NULL, '2021-07-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608932be447386_53374418', '00118397353297786292', 1550.00, '2021-04-28 10:02:38', '2021-04-28 10:02:38'),
(213, 'V12', 'Marina Lombardo di Cumia', 'Marcello Lombardo di Cumia', 'Marina Lombardo di Cumia', 'simona.valente@unicampania.it', '3333928020', 3, 1, 'Valente Simona', 'Palombini Silvana', NULL, 'Giannandrea Lombardo di Cumia', NULL, NULL, NULL, '2021-07-01', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_608932d01beea1_01829228', '00118353308297786360', 1600.00, '2021-04-28 10:02:56', '2021-04-28 10:02:56'),
(218, 'Q41', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-13', 0, NULL, 'Credit Card', 'negombo_6089331854bad8_92722380', '00118518068297786650', 412.00, '2021-04-28 10:04:08', '2021-04-28 10:04:08'),
(219, 'Q23', 'Alessandro Esposito', 'alessandro esposito', 'Alessandro Esposito', 'alexesp@libero.it', '3358423430', 2, 2, 'Annamaria Ciccone', NULL, NULL, 'Eric Esposito', 'daniel esposito', NULL, NULL, '2021-07-17', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_6089331df06d11_46528645', '00118786004297786677', 1725.00, '2021-04-28 10:04:14', '2021-04-28 10:04:14'),
(221, 'Q41', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-01', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_6089332e70d3b0_07424726', '00118824568297786701', 158.00, '2021-04-28 10:04:30', '2021-04-28 10:04:30'),
(223, 'Q23', 'Pasquale Evangelista', 'Pasquale Evangelista', 'Pasquale Evangelista', 'annaevangelista642@gmail.com', '3389551835', 2, 0, 'Elisabetta Di Matteo', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-30', '2021-08-29', 0, NULL, 'Credit Card', 'negombo_60893340944dc5_61457113', '00118655529297786801', 1227.00, '2021-04-28 10:04:48', '2021-04-28 10:04:48'),
(225, 'T44', 'Tedeschi', 'Gastone Tedeschi', 'Tedeschi', 'gastone.tds@gmail.com', '335240980', 2, 0, 'Bonacina', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-22', '2021-08-03', 0, NULL, 'Credit Card', 'negombo_6089335cb1f1d8_30635685', '00118292918297786877', 1650.00, '2021-04-28 10:05:17', '2021-04-28 10:05:17'),
(226, 'Q23', 'Paolo Bergamo', 'alessandra girosi', 'Paolo Bergamo', 'alegirosi@hotmail.it', '3287512463', 2, 0, 'alessandra Girosi', NULL, NULL, NULL, NULL, NULL, NULL, '2021-07-31', '2021-08-31', 0, NULL, 'Credit Card', 'negombo_60893363f08258_96709516', '00118650858297786881', 1188.00, '2021-04-28 10:05:24', '2021-04-28 10:05:24'),
(227, 'R14', 'roberta di gennaro', 'Roberta di gennaro', 'roberta di gennaro', 'roberta.digennaro@uniparthenope.it', '3286155291', 1, 3, NULL, NULL, NULL, 'francesco sarnacchiaro', 'eduardo sarnacchiaro', 'nicoletta sarnacchiaro', NULL, '2021-07-10', '2021-07-31', 0, NULL, 'Credit Card', 'negombo_6089337d27b898_98916845', '00118958557297786934', 843.00, '2021-04-28 10:05:49', '2021-04-28 10:05:49'),
(231, 'Q11', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16', '2021-05-16', 0, NULL, 'Credit Card', 'negombo_609e5540a09e60_48973930', '00134472301300513492', 37.00, '2021-05-14 06:47:31', '2021-05-14 06:47:31'),
(232, 'Q12', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiq@gmail.com', '01521306492', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-13', '2021-06-15', 0, NULL, 'Credit Card', 'negombo_609e58867ef3d2_99130863', '00134125829300516691', 84.00, '2021-05-14 07:01:29', '2021-05-14 07:01:29'),
(233, 'Q12', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 4, 1, 'a', 's', 'd', 'f', NULL, NULL, NULL, '2021-06-13', '2021-06-15', 0, NULL, 'Credit Card', 'negombo_609e58ca7f1617_74218895', '00134868834300516927', 151.50, '2021-05-14 07:02:36', '2021-05-14 07:02:36'),
(234, 'Q12', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 4, 1, 'a', 's', 'd', 'f', NULL, NULL, NULL, '2021-06-13', '2021-06-15', 0, NULL, 'Credit Card', 'negombo_609e59741fb315_61625999', '00134892716300517553', 151.50, '2021-05-14 07:05:28', '2021-05-14 07:05:28'),
(235, 'Q12', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 4, 1, 'a', 's', 'd', 'f', NULL, NULL, NULL, '2021-06-13', '2021-06-15', 0, NULL, 'Credit Card', 'negombo_609e5991d28972_12342655', '00134897923300517626', 151.50, '2021-05-14 07:05:56', '2021-05-14 07:05:56'),
(236, 'Q12', 'Shaykh Siddique', 'Shaykh Siddique', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 4, 1, 'a', 's', 'd', 'f', NULL, NULL, NULL, '2021-06-13', '2021-06-15', 0, NULL, 'Credit Card', 'negombo_609e5a14983607_55928475', '00134744101300517993', 151.50, '2021-05-14 07:08:07', '2021-05-14 07:08:07'),
(239, 'Q11', 'Shaykh Siddique', 'Shaykh', 'Shaykh Siddique', 'shaykhsiddique@gmail.com', '01521306492', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e6ab5313eb3_68784883', '00134106029300532212', 28.00, '2021-05-14 12:19:01', '2021-05-14 12:19:01'),
(240, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16', '2021-05-16', 0, NULL, 'Credit Card', 'negombo_609e815ba7a806_67708891', '00134449272300552634', 28.00, '2021-05-14 13:55:40', '2021-05-14 13:55:40'),
(241, 'Q11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 2, 0, 'vale vale', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-16', 0, NULL, 'Credit Card', 'negombo_609e88e653fcd8_37455583', '00134649674300559093', 71.00, '2021-05-14 14:27:50', '2021-05-14 14:27:50'),
(242, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e8b77a0d6a6_04467908', '00134383498300561330', 28.00, '2021-05-14 14:38:47', '2021-05-14 14:38:47'),
(243, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e8b89caa973_90418653', '00134366377300561425', 28.00, '2021-05-14 14:39:06', '2021-05-14 14:39:06'),
(244, 'R34', 'TEST', 'TEST', 'TEST', 'TEST@TEST', '000 00 00 00', 2, 1, 'TEST', NULL, NULL, 'TEST', NULL, NULL, NULL, '2021-05-25', '2021-05-27', 0, NULL, 'Credit Card', 'negombo_609e8bfc461a90_44181362', '00134927092300561794', 106.50, '2021-05-14 14:41:00', '2021-05-14 14:41:00'),
(245, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e8c5caf8f00_43006004', '00134635407300562045', 28.00, '2021-05-14 14:42:37', '2021-05-14 14:42:37'),
(246, 'Q14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e8c6dee12d4_68333803', '00134565228300562073', 28.00, '2021-05-14 14:42:54', '2021-05-14 14:42:54'),
(247, 'S34', 'TEST', 'TEST', 'TEST', 'TEST@TEST', '00', 4, 1, 'TEST', 'TEST', 'TEST', 'TEST', NULL, NULL, NULL, '2021-06-07', '2021-06-09', 0, NULL, 'Credit Card', 'negombo_609e8c7a1cb7d0_43432325', '00134523924300562146', 151.50, '2021-05-14 14:43:06', '2021-05-14 14:43:06'),
(248, 'X34', 'TEST', 'TEST', 'TEST', 'TEST@TEST', '0', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20', '2021-05-22', 0, NULL, 'Credit Card', 'negombo_609e8cbf5c00b0_36793291', '00134136957300562371', 84.00, '2021-05-14 14:44:15', '2021-05-14 14:44:15'),
(249, 'R13', 'TEST', 'TEST', 'TEST', 'TEST@TEST', '00', 4, 1, 'TEST', 'TEST', 'V', 'TEST', NULL, NULL, NULL, '2021-05-20', '2021-05-22', 0, NULL, 'Credit Card', 'negombo_609e8da590b6a6_47114398', '00134168116300563246', 151.50, '2021-05-14 14:48:05', '2021-05-14 14:48:05'),
(250, 'T33', 'PETER PAN', 'Peter', 'PETER PAN', 'peterpan@gmail.com', '345 623 4564', 3, 0, 'PEK', 'PEPE', NULL, NULL, NULL, NULL, NULL, '2021-05-30', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_609e8db049b681_91567611', '00134226513300563297', 86.00, '2021-05-14 14:48:16', '2021-05-14 14:48:16'),
(251, 'Q24', 'TEST', 'TEST', 'TEST', 'TEST@TEXT', '00', 3, 2, 'TEST', 'TEST', NULL, 'TEST', 'TEST', NULL, NULL, '2021-05-15', '2021-05-16', 0, NULL, 'Credit Card', 'negombo_609e8de24f0512_38722243', '00134371505300563482', 86.00, '2021-05-14 14:49:06', '2021-05-14 14:49:06'),
(252, 'Q11', 'PETER PAN', 'Alicia', 'PETER PAN', 'peterpan@gmail.com', '345 623 4564', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-11', '2021-06-11', 0, NULL, 'Credit Card', 'negombo_609e8e3dd2c576_31673808', '00134790030300563862', 28.00, '2021-05-14 14:50:38', '2021-05-14 14:50:38'),
(253, 'R14', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e9d766473c2_60564535', '00134444675300578603', 28.00, '2021-05-14 15:55:34', '2021-05-14 15:55:34'),
(254, 'X11', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15', '2021-05-15', 0, NULL, 'Credit Card', 'negombo_609e9da9dfebe7_37352041', '00134947095300578845', 28.00, '2021-05-14 15:56:26', '2021-05-14 15:56:26'),
(256, 'S11', '1', '1', '1', '1@1', '1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-24', 0, NULL, 'Credit Card', 'negombo_60a759e14b31c2_77514745', '00141357489301741802', 56.00, '2021-05-21 06:57:37', '2021-05-21 06:57:37');
INSERT INTO `tempbooking_cards` (`id`, `place_id`, `user_fullname`, `payer_name`, `user_surname`, `user_email`, `user_phone`, `user_no_of_guest`, `user_no_of_babies`, `guest_surname1`, `guest_surname2`, `guest_surname3`, `baby_surname1`, `baby_surname2`, `baby_surname3`, `baby_surname4`, `user_checkin`, `user_checkout`, `is_approved`, `user_promo`, `user_payment_type`, `user_booking_tracking_id`, `user_card_paymentid`, `paid_ammount`, `created_at`, `updated_at`) VALUES
(257, 'X12', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-25', 0, NULL, 'Credit Card', 'negombo_60a78946299467_93339100', '00141884717301789096', 84.00, '2021-05-21 10:19:50', '2021-05-21 10:19:50'),
(258, 'X45', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-23', 0, NULL, 'Credit Card', 'negombo_60a789729ded92_56655990', '00141694889301789323', 28.00, '2021-05-21 10:20:34', '2021-05-21 10:20:34'),
(259, 'X45', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-23', 0, NULL, 'Credit Card', 'negombo_60a7898145fde5_63160767', '00141404133301789362', 28.00, '2021-05-21 10:20:49', '2021-05-21 10:20:49'),
(260, 'X45', 'Antonio Gallo', 'Italia / Cosenza', 'Antonio Gallo', '83antoniogallo@gmail.com', '3388851460', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-25', 0, NULL, 'Credit Card', 'negombo_60a7899a062663_90291952', '00141704471301789452', 84.00, '2021-05-21 10:21:14', '2021-05-21 10:21:14'),
(261, 'T31', 'Federico García Lorca', 'Peter pan', 'Federico García Lorca', 'peterpan@gmail.com', '1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-23', '2021-05-23', 0, NULL, 'Credit Card', 'negombo_60a78b1fd7d0b0_40418867', '00141214111301791085', 28.00, '2021-05-21 10:27:44', '2021-05-21 10:27:44'),
(262, 'R22', '1', '1', '1', '1@1', '1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-27', '2021-05-28', 0, NULL, 'Credit Card', 'negombo_60acb6858d9579_75980446', '00145751846302445793', 56.00, '2021-05-25 08:34:14', '2021-05-25 08:34:14'),
(263, 'R22', '1', '1', '1', '1@1', '1', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-27', '2021-05-28', 0, NULL, 'Credit Card', 'negombo_60acb70158d7f9_04744481', '00145165085302446367', 56.00, '2021-05-25 08:36:17', '2021-05-25 08:36:17'),
(264, 'T14', 'GIANLUCA gentile', 'Napoli', 'GIANLUCA gentile', 'ggentile@odcec.napoli.it', '0814207079', 2, 0, 'gentile', NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b1090bdb6093_76901214', '00148749795303149215', 35.50, '2021-05-28 15:15:24', '2021-05-28 15:15:24'),
(265, 'X12', 'casa', 'zzz', 'casa', 'negombo@negombo.it', '335474935', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31', '2021-05-31', 0, NULL, 'Credit Card', 'negombo_60b10b47f36185_13846520', '00148373719303151314', 28.00, '2021-05-28 15:24:56', '2021-05-28 15:24:56'),
(266, 'X11', 'antonio', 'Antonio', 'antonio', 'adecandia@gmail.com', '3200707503', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-30', '2021-05-30', 0, NULL, 'Credit Card', 'negombo_60b23c6b164d26_06980466', '00149864295303290676', 28.00, '2021-05-29 13:06:51', '2021-05-29 13:06:51'),
(269, 'V13', 'Alessandra Susi', 'Alessansra Susi', 'Alessandra Susi', 'susialessandra@gmail.com', '3405848282', 1, 1, NULL, NULL, NULL, 'Pier Giorgio Vuoso', NULL, NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b75712478339_53841766', '00153598545304059600', 28.00, '2021-06-02 10:01:54', '2021-06-02 10:01:54'),
(270, 'R11', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'lauralongo@hotmail.com', '3392086927', 3, 2, 'LUDOVICA COSENTINO', 'MARIO COZZARELLI', NULL, 'PAOLA COZZARELLI', 'MARIA FRANCESCA SABBATINO', NULL, NULL, '2021-06-04', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b8ea204c4853_94417779', '00154589249304321693', 86.00, '2021-06-03 14:41:36', '2021-06-03 14:41:36'),
(271, 'R11', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'LAURA LONGOBARDO', 'lauralongo@hotmail.com', '3392086927', 3, 2, 'MARIO COZZARELLI', 'LUDOVICA COSENTINO', NULL, 'PAOLA COZZARELLI', 'MARIA FRANCESCA SABBATINO', NULL, NULL, '2021-06-04', '2021-06-04', 0, NULL, 'Credit Card', 'negombo_60b8eae9667319_36562098', '00154420970304322457', 43.00, '2021-06-03 14:44:57', '2021-06-03 14:44:57'),
(273, 'V11', 'Maura Mirandanti', 'Maura Mirandanti', 'Maura Mirandanti', 'miramaura.14@gmail.com', '3334424348', 2, 0, 'Pucci duilio', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9147a704d81_57864885', '00154257945304363355', 35.50, '2021-06-03 17:42:19', '2021-06-03 17:42:19'),
(276, 'S14', 'Fausto izzo', 'Fausto izzo', 'Fausto izzo', 'faustoizzo@tin.it', '3477480024', 2, 0, 'Teresa Esposito', NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60b9d5e427d989_87237110', '00155369187304436193', 35.50, '2021-06-04 07:27:32', '2021-06-04 07:27:32'),
(277, 'Q41', 'Shaykh Siddique', 'Shaykh', 'Shaykh Siddique', 'shaykhsiddiqee@gmail.com', '01521306492', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05', '2021-06-05', 0, NULL, 'Credit Card', 'negombo_60ba3473602594_81475295', '00155524098304546063', 28.00, '2021-06-04 14:10:59', '2021-06-04 14:10:59');

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
(2, 'Programmer', 'shaykhsiddiqee@gmail.com', 'admin', NULL, '$2y$10$MbbL3YBMdasgYNNdPsSYietjNZpeBMSrTzDtheXG4hFZc7EAPInCC', 'RTNAgmKLs7hjDTZ2QASBDEcsuHaTEWaRqkPelIomu3vCi5bk29fSAe2ye06T', '2020-07-01 20:05:59', '2020-08-04 01:32:33'),
(14, 'Gabriella Pilato', 'backoffice@negombo.it', 'admin', NULL, '$2y$10$Svyt3B0y6uIyL6hsLwtDpuAWpswFUNejw/UD.DolBBhYtR/sMBwWi', 'tJQTeQiYo2E7LrgSvHAmRRT1NTLVJM5HFw7hnfN5jpmu7HShubas7QkMho6g', '2020-07-19 11:20:01', '2020-07-25 19:29:58'),
(15, 'Antonella Cantaressi', 'negombo@negombo.it', 'staff', NULL, '$2y$10$KGdAWA5JjMq/CcRlde3vwOx/1MTs/IK2V8mjXl8PgSKzI.KKUCBPC', NULL, '2020-07-19 11:21:19', '2020-07-19 11:21:19'),
(17, 'Antonio Gallo', '83antoniogallo@gmail.com', 'admin', NULL, '$2y$10$exRpAuXOdthKJ5allOjK8ODsprUnxQTSxonSD1RRwtR8AqAn98cHa', 'aMcylbg2Q7gcLXBfldKFW0ay07ecspR2ntvOwswUeMDifEXGIAZ1syzOLrGp', '2020-07-25 18:41:34', '2020-07-25 20:17:25'),
(20, 'Bruno Cernigliaro', 'brc2005@libero.it', 'admin', NULL, '$2y$10$9JCL6HhBjomokgbPXZDDMOdy9t0b7PWufs20jVgcr4xjtCbd2a8lS', NULL, '2020-08-05 23:53:55', '2020-08-05 23:53:55'),
(21, 'Alessandra', 'alessandradipalo24@gmail.com', 'staff', NULL, '$2y$10$3EaGCXV6m6dJ1bbwJFcgz.fpokkmZ/Q3TyPVYe2EDjRJ3t1TkEW3W', 'tFLGEA5OcrBssXBzpixzra7pvjM8gF8QFuYndyFNMjlIJxNUGdo2PNdTzz0s', '2021-05-14 13:04:20', '2021-05-14 17:41:36'),
(22, 'test', 'test@test.com', 'staff', NULL, '$2y$10$leigu2yrkIeiQneofIHZbeBElumC3jKFaYyY3KSn4Q5dK8K4edsmy', 'zIZVbvRu5ElFXzWTzJrjVB1imMzwYLMbKccurrw6fEdzOwmTEHHUCNC0AtUT', '2021-05-14 14:19:30', '2021-05-14 14:19:50'),
(23, 'Mario Angelo Iannotta', 'marioiannotta@virgilio.it', 'admin', NULL, '$2y$10$8D7R77NDIyFM1B5IAJIOp.9XElZwbU8XlzmBl/zOyKN.zaB.vcaYe', 'jmCU7pnf3ufMOLOqmACvZPkiYRxyCueNlGfifGjEMBBHqroxCrQgXM2yPDsJ', '2021-06-03 08:01:37', '2021-06-03 08:06:38');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `setting_admins`
--
ALTER TABLE `setting_admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tempbooking_cards`
--
ALTER TABLE `tempbooking_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;
--
-- AUTO_INCREMENT for table `temp_bookings`
--
ALTER TABLE `temp_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1115;
--
-- AUTO_INCREMENT for table `trans`
--
ALTER TABLE `trans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
