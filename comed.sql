-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2025 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comed`
--

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clinic_name` varchar(255) NOT NULL,
  `tests` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`tests`)),
  `clinic_address` text NOT NULL,
  `clinic_photo` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`id`, `clinic_name`, `tests`, `clinic_address`, `clinic_photo`, `city`, `phone_number`, `email`, `created_at`, `updated_at`) VALUES
(6, 'Clinics1', '\"blood,sugar,ECG\"', 'kozhikode', 'clinic_photos/RqzYNgh0BzS8Ma5sWBytgzP9WfqwkRV2S99kiBE2.jpg', 'mankavu', '7510895815', 'clinic111@gmail.com', '2025-06-04 05:14:22', '2025-06-04 05:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `clinic_prescriptions`
--

CREATE TABLE `clinic_prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `from_time` varchar(50) DEFAULT NULL,
  `to_time` varchar(50) DEFAULT NULL,
  `prescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`prescription`)),
  `test` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`test`)),
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `clinic_id` bigint(20) UNSIGNED NOT NULL,
  `lat_long` varchar(255) NOT NULL,
  `delivery_id` varchar(60) DEFAULT NULL,
  `pres_upload` varchar(600) DEFAULT NULL,
  `otp` varchar(70) DEFAULT '0000',
  `status` int(11) NOT NULL DEFAULT 0,
  `delivery_coordinates` varchar(255) DEFAULT NULL,
  `scheduled_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clinic_prescriptions`
--

INSERT INTO `clinic_prescriptions` (`id`, `name`, `age`, `gender`, `from_time`, `to_time`, `prescription`, `test`, `user_id`, `address`, `clinic_id`, `lat_long`, `delivery_id`, `pres_upload`, `otp`, `status`, `delivery_coordinates`, `scheduled_at`, `created_at`, `updated_at`) VALUES
(67, 'Jafarali', 34, 'male', NULL, NULL, '[\"clinic_prescriptions\\/4x8ZKQGzRTNjnpfJNeT37We7vfxwrxStLEjr3tIO.png\"]', '[\"Blood,ECG\"]', 36, 'adreess44', 6, '102.45.15,102.65.35', NULL, NULL, '0000', 0, NULL, '2024-08-06', '2025-08-06 11:28:03', '2025-08-06 11:28:03'),
(68, 'Jafarali', 34, 'male', NULL, NULL, '[\"clinic_prescriptions\\/uJ5LhaMRCBBL2rTv1IZiPeFfiFzV4MmnXM4SAL5t.png\"]', '[\"Blood,ECG\"]', 36, 'adreess44', 6, '102.45.15,102.65.35', NULL, NULL, '0000', 0, NULL, '2024-08-06', '2025-08-06 11:45:29', '2025-08-06 11:45:29'),
(69, 'Jafarali', 34, 'male', NULL, NULL, '[\"clinic_prescriptions\\/634pRM4AWWeTZPOUmZ2dwwP4Drf4Gd24OkszQF1Q.png\"]', '[\"Blood,ECG\"]', 36, 'adreess44', 6, '102.45.15,102.65.35', NULL, NULL, '0000', 0, NULL, '2024-08-06', '2025-08-06 12:03:10', '2025-08-06 12:03:10'),
(70, 'Jafarali', 34, 'male', NULL, NULL, '[\"clinic_prescriptions\\/rjayZOFcEZKrqk94aYymnm32P5QvMAtOBdJU7Jlg.png\"]', '[\"Blood,ECG\"]', 36, 'adreess44', 6, '102.45.15,102.65.35', NULL, NULL, '0000', 0, NULL, '2024-08-06', '2025-08-06 12:03:23', '2025-08-06 12:03:23');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_agents`
--

CREATE TABLE `delivery_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_agent_id` bigint(20) UNSIGNED NOT NULL,
  `pres_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `coordinates` varchar(255) NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_mob` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `delivered_coordinates` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_type` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `log_type`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 'medicine Imported', 'Medicine xls uploaded by: Admin', '2025-02-28 05:34:05', '2025-02-28 05:34:05'),
(2, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-02-28 05:39:18', '2025-02-28 05:39:18'),
(3, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-02-28 05:39:43', '2025-02-28 05:39:43'),
(4, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-02-28 05:41:31', '2025-02-28 05:41:31'),
(5, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-02-28 05:41:46', '2025-02-28 05:41:46'),
(6, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-02-28 05:42:03', '2025-02-28 05:42:03'),
(7, 1, 'clinic Prescription Processed', 'clinic Prescription user:john processed by: Admin', '2025-02-28 05:42:10', '2025-02-28 05:42:10'),
(8, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Paraxin Cap. 500mg created by: Admin', '2025-03-01 00:54:19', '2025-03-01 00:54:19'),
(9, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB Flo SR created by: Admin', '2025-03-01 00:59:25', '2025-03-01 00:59:25'),
(10, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB Phylline Cap. created by: Admin', '2025-03-01 01:09:58', '2025-03-01 01:09:58'),
(11, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB Flo SR created by: Admin', '2025-03-01 01:09:58', '2025-03-01 01:09:58'),
(12, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Ab Phylline N created by: Admin', '2025-03-01 01:09:58', '2025-03-01 01:09:58'),
(13, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-03-01 01:25:40', '2025-03-01 01:25:40'),
(14, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Abvida  SR 100 TAB created by: Admin', '2025-03-01 04:42:28', '2025-03-01 04:42:28'),
(15, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Abendol Tab created by: Admin', '2025-03-01 04:42:28', '2025-03-01 04:42:28'),
(16, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Abvida  SR 100 TAB created by: Admin', '2025-03-01 04:44:07', '2025-03-01 04:44:07'),
(17, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Abzorb Powder 50gm created by: Admin', '2025-03-01 06:14:28', '2025-03-01 06:14:28'),
(18, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Ab Phylline N created by: Admin', '2025-03-03 23:22:43', '2025-03-03 23:22:43'),
(19, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-03-14 04:54:02', '2025-03-14 04:54:02'),
(20, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB Phylline Cap. created by: Admin', '2025-04-21 06:31:11', '2025-04-21 06:31:11'),
(21, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Paraxin Cap. 500mg created by: Admin', '2025-04-21 06:33:12', '2025-04-21 06:33:12'),
(22, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Ab Flo Cap created by: Admin', '2025-04-25 04:40:30', '2025-04-25 04:40:30'),
(23, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-04-26 01:37:34', '2025-04-26 01:37:34'),
(24, 1, 'New User Created', 'New User: udithcreated by Admin', '2025-05-05 23:55:44', '2025-05-05 23:55:44'),
(25, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB DAY PLUS created by: Admin', '2025-05-07 02:32:28', '2025-05-07 02:32:28'),
(26, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Ab Flo Cap created by: Admin', '2025-05-07 02:58:19', '2025-05-07 02:58:19'),
(27, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Ab Flo Cap created by: Admin', '2025-05-07 03:35:39', '2025-05-07 03:35:39'),
(28, 1, 'New User Created', 'New User: testcreated by Admin', '2025-05-07 03:38:42', '2025-05-07 03:38:42'),
(29, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB DAY SR 200 TAB created by: Admin', '2025-05-07 03:40:29', '2025-05-07 03:40:29'),
(30, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-05-08 00:11:18', '2025-05-08 00:11:18'),
(31, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Aciloc 150 Tab. created by: Admin', '2025-05-08 00:16:36', '2025-05-08 00:16:36'),
(32, 1, 'clinic Prescription Processed', 'clinic Prescription user:john processed by: Admin', '2025-05-08 22:29:23', '2025-05-08 22:29:23'),
(33, 1, 'clinic Prescription Processed', 'clinic Prescription user:john processed by: Admin', '2025-05-08 22:30:32', '2025-05-08 22:30:32'),
(34, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-05-08 22:31:45', '2025-05-08 22:31:45'),
(35, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-05-08 22:31:55', '2025-05-08 22:31:55'),
(36, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-05-08 22:32:04', '2025-05-08 22:32:04'),
(37, 1, 'clinic Prescription Processed', 'clinic Prescription user:ghhgg processed by: Admin', '2025-05-08 22:32:22', '2025-05-08 22:32:22'),
(38, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AF 200 MG created by: Admin', '2025-05-09 04:53:04', '2025-05-09 04:53:04'),
(39, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: 8X SHAMPOO created by: Admin', '2025-05-17 01:27:51', '2025-05-17 01:27:51'),
(40, 1, 'New User Created', 'New User: Test usercreated by Admin', '2025-05-19 04:32:38', '2025-05-19 04:32:38'),
(41, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-05-25 22:53:45', '2025-05-25 22:53:45'),
(42, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-05-25 22:55:25', '2025-05-25 22:55:25'),
(43, 1, 'clinic Prescription updated', 'clinic address:vengaraand status:2 updated by: Admin', '2025-05-25 22:55:29', '2025-05-25 22:55:29'),
(44, 1, 'clinic Prescription Processed', 'clinic Prescription user:john processed by: Admin', '2025-05-25 23:15:18', '2025-05-25 23:15:18'),
(45, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: AB Flo SR created by: Admin', '2025-05-25 23:26:33', '2025-05-25 23:26:33'),
(46, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Acitrom Tab. 3mg created by: Admin', '2025-05-25 23:26:33', '2025-05-25 23:26:33'),
(47, 1, 'User updated', 'User: user55 , user Id: 4 , User updated by Admin', '2025-05-25 23:41:12', '2025-05-25 23:41:12'),
(48, 1, 'User updated', 'User: arun , user Id: 5 , User updated by Admin', '2025-05-25 23:43:08', '2025-05-25 23:43:08'),
(49, 1, 'User updated', 'User: arun , user Id: 5 , User updated by Admin', '2025-05-26 00:04:52', '2025-05-26 00:04:52'),
(50, 1, 'User Deleted', 'User: abraham , user Id: 6 , User deleted by Admin', '2025-05-26 01:07:18', '2025-05-26 01:07:18'),
(51, 1, 'User Deleted', 'User: abraham , user Id: 7 , User deleted by Admin', '2025-05-26 01:07:26', '2025-05-26 01:07:26'),
(52, 1, 'User Deleted', 'User: check , user Id: 2 , User deleted by Admin', '2025-05-26 01:08:27', '2025-05-26 01:08:27'),
(53, 1, 'User Deleted', 'User: john 123 , user Id: 12 , User deleted by Admin', '2025-05-26 01:08:51', '2025-05-26 01:08:51'),
(54, 1, 'User Deleted', 'User: teatuser , user Id: 8 , User deleted by Admin', '2025-05-26 01:08:56', '2025-05-26 01:08:56'),
(55, 1, 'User Deleted', 'User: test , user Id: 14 , User deleted by Admin', '2025-05-26 01:09:01', '2025-05-26 01:09:01'),
(56, 1, 'User Deleted', 'User: Test user , user Id: 15 , User deleted by Admin', '2025-05-26 01:09:06', '2025-05-26 01:09:06'),
(57, 1, 'User Deleted', 'User: udith , user Id: 13 , User deleted by Admin', '2025-05-26 01:09:41', '2025-05-26 01:09:41'),
(58, 1, 'User Deleted', 'User: user , user Id: 9 , User deleted by Admin', '2025-05-26 01:09:45', '2025-05-26 01:09:45'),
(59, 1, 'User updated', 'User: user55 , user Id: 4 , User updated by Admin', '2025-05-26 01:11:58', '2025-05-26 01:11:58'),
(60, 1, 'User updated', 'User: user55hhgfh , user Id: 4 , User updated by Admin', '2025-05-26 01:12:20', '2025-05-26 01:12:20'),
(61, 1, 'User updated', 'User: user55hhgfh , user Id: 4 , User updated by Admin', '2025-05-26 01:12:34', '2025-05-26 01:12:34'),
(62, 1, 'User updated', 'User: johntyrtyrty , user Id: 10 , User updated by Admin', '2025-05-26 01:13:42', '2025-05-26 01:13:42'),
(63, 1, 'User updated', 'User: arun , user Id: 5 , User updated by Admin', '2025-05-26 01:14:17', '2025-05-26 01:14:17'),
(64, 1, 'New User Created', 'New User: Testcreated by Admin', '2025-05-26 01:17:57', '2025-05-26 01:17:57'),
(65, 1, 'clinic created', 'clinic: Fathimas Clinic created by Admin', '2025-05-26 01:22:58', '2025-05-26 01:22:58'),
(66, 1, 'clinic Deleted', 'Clinic: Kameko Lambert deleted by: Admin', '2025-05-26 01:23:25', '2025-05-26 01:23:25'),
(67, 1, 'clinic Deleted', 'Clinic: Tad Moreno deleted by: Admin', '2025-05-26 01:23:30', '2025-05-26 01:23:30'),
(68, 1, 'clinic Deleted', 'Clinic: Ryder Wiley deleted by: Admin', '2025-05-26 01:23:40', '2025-05-26 01:23:40'),
(69, 1, 'clinic Updated', 'clinic: Fathimas Clinic updated by: Admin', '2025-05-26 01:24:30', '2025-05-26 01:24:30'),
(70, 1, 'Pharmacy created', 'Pharmacy: Neethi kondotty updated by Admin', '2025-05-26 01:29:22', '2025-05-26 01:29:22'),
(71, 1, 'Pharmacy created', 'Pharmacy: Maxwell uioui updated by Admin', '2025-05-26 01:30:00', '2025-05-26 01:30:00'),
(72, 1, 'New User Created', 'New User: Jafaralicreated by Admin', '2025-05-26 01:32:14', '2025-05-26 01:32:14'),
(73, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 01:39:26', '2025-05-26 01:39:26'),
(74, 1, 'clinic Prescription updated', 'clinic address:vengaraand status:2 updated by: Admin', '2025-05-26 01:41:04', '2025-05-26 01:41:04'),
(75, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 01:42:26', '2025-05-26 01:42:26'),
(76, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 01:43:23', '2025-05-26 01:43:23'),
(77, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 01:47:34', '2025-05-26 01:47:34'),
(78, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 03:24:30', '2025-05-26 03:24:30'),
(79, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 03:55:26', '2025-05-26 03:55:26'),
(80, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 03:55:55', '2025-05-26 03:55:55'),
(81, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:07:32', '2025-05-26 04:07:32'),
(82, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:25:18', '2025-05-26 04:25:18'),
(83, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:25:24', '2025-05-26 04:25:24'),
(84, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:26:55', '2025-05-26 04:26:55'),
(85, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:27:09', '2025-05-26 04:27:09'),
(86, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 04:27:48', '2025-05-26 04:27:48'),
(87, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-26 05:09:22', '2025-05-26 05:09:22'),
(88, 1, 'Pharmacy created', 'Pharmacy: Maxwell uioui updated by Admin', '2025-05-27 00:22:25', '2025-05-27 00:22:25'),
(89, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-27 00:31:39', '2025-05-27 00:31:39'),
(90, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-27 00:34:35', '2025-05-27 00:34:35'),
(91, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-27 00:37:57', '2025-05-27 00:37:57'),
(92, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-05-27 00:38:19', '2025-05-27 00:38:19'),
(93, 1, 'New User Created', 'New User: testusercreated by Admin', '2025-05-30 00:59:32', '2025-05-30 00:59:32'),
(94, 1, 'User Deleted', 'User: testuser , user Id: 18 , User deleted by Admin', '2025-05-31 04:55:14', '2025-05-31 04:55:14'),
(95, 1, 'User Deleted', 'User: Jafarali , user Id: 17 , User deleted by Admin', '2025-05-31 04:57:05', '2025-05-31 04:57:05'),
(96, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-01 23:15:52', '2025-06-01 23:15:52'),
(97, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-01 23:26:55', '2025-06-01 23:26:55'),
(98, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-01 23:42:53', '2025-06-01 23:42:53'),
(99, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 00:43:11', '2025-06-02 00:43:11'),
(100, 1, 'clinic Prescription updated', 'clinic address:vengaraand status:1 updated by: Admin', '2025-06-02 00:43:38', '2025-06-02 00:43:38'),
(101, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 00:44:32', '2025-06-02 00:44:32'),
(102, 1, 'clinic Prescription updated', 'clinic address:areekadand status:2 updated by: Admin', '2025-06-02 00:44:39', '2025-06-02 00:44:39'),
(103, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-06-02 00:45:30', '2025-06-02 00:45:30'),
(104, 1, 'clinic Prescription Processed', 'clinic Prescription user:Test processed by: Admin', '2025-06-02 00:45:43', '2025-06-02 00:45:43'),
(105, 1, 'New User Created', 'New User: fgfghfgcreated by Admin', '2025-06-02 00:50:06', '2025-06-02 00:50:06'),
(106, 1, 'User Deleted', 'User: fgfghfg , user Id: 19 , User deleted by Admin', '2025-06-02 00:50:21', '2025-06-02 00:50:21'),
(107, 1, 'User updated', 'User: dashbb , user Id: 4 , User updated by Admin', '2025-06-02 00:53:14', '2025-06-02 00:53:14'),
(108, 1, 'User Deleted', 'User: johntyrtyrty , user Id: 10 , User deleted by Admin', '2025-06-02 01:04:02', '2025-06-02 01:04:02'),
(109, 1, 'User Deleted', 'User: dashbb , user Id: 4 , User deleted by Admin', '2025-06-02 01:04:11', '2025-06-02 01:04:11'),
(110, 1, 'User updated', 'User: Testgdg , user Id: 16 , User updated by Admin', '2025-06-02 01:13:06', '2025-06-02 01:13:06'),
(111, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 01:16:20', '2025-06-02 01:16:20'),
(112, 1, 'clinic Prescription updated', 'clinic address:cheruvannoorand status:1 updated by: Admin', '2025-06-02 01:16:45', '2025-06-02 01:16:45'),
(113, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 01:18:46', '2025-06-02 01:18:46'),
(114, 1, 'New User Created', 'New User: qqcreated by Admin', '2025-06-02 01:49:05', '2025-06-02 01:49:05'),
(115, 1, 'User Deleted', 'User: qq , user Id: 20 , User deleted by Admin', '2025-06-02 01:50:02', '2025-06-02 01:50:02'),
(116, 1, 'New User Created', 'New User: deliverycreated by Admin', '2025-06-02 02:21:08', '2025-06-02 02:21:08'),
(117, 1, 'Pharmacy created', 'Pharmacy: New Pharmacy created by Admin', '2025-06-02 02:42:01', '2025-06-02 02:42:01'),
(118, 1, 'Pharmacy created', 'Pharmacy: New Pharmacy updated by Admin', '2025-06-02 02:42:34', '2025-06-02 02:42:34'),
(119, 1, 'New User Created', 'New User: Deliverycreated by Admin', '2025-06-02 02:44:59', '2025-06-02 02:44:59'),
(120, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:16:45', '2025-06-02 05:16:45'),
(121, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:17:23', '2025-06-02 05:17:23'),
(122, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:18:09', '2025-06-02 05:18:09'),
(123, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:27:28', '2025-06-02 05:27:28'),
(124, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:29:13', '2025-06-02 05:29:13'),
(125, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 05:31:47', '2025-06-02 05:31:47'),
(126, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 06:10:41', '2025-06-02 06:10:41'),
(127, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 06:13:54', '2025-06-02 06:13:54'),
(128, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 06:14:02', '2025-06-02 06:14:02'),
(129, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 06:17:09', '2025-06-02 06:17:09'),
(130, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 06:48:51', '2025-06-02 06:48:51'),
(131, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 23:37:48', '2025-06-02 23:37:48'),
(132, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-02 23:37:55', '2025-06-02 23:37:55'),
(133, 1, 'medicine Imported', 'Medicine xls uploaded by: Admin', '2025-06-03 00:26:43', '2025-06-03 00:26:43'),
(134, 1, 'medicine added', 'Medicine: vv added by: Admin', '2025-06-03 00:48:14', '2025-06-03 00:48:14'),
(135, 1, 'medicine added', 'Medicine: vv added by: Admin', '2025-06-03 00:52:20', '2025-06-03 00:52:20'),
(136, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-03 01:50:43', '2025-06-03 01:50:43'),
(137, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-03 01:50:54', '2025-06-03 01:50:54'),
(138, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-03 04:38:04', '2025-06-03 04:38:04'),
(139, 1, 'medicine added', 'Medicine: AB DAY SR 200 TAB added by: Admin', '2025-06-03 06:00:58', '2025-06-03 06:00:58'),
(140, 1, 'medicine added', 'Medicine: Ab Flo Cap added by: Admin', '2025-06-03 06:02:20', '2025-06-03 06:02:20'),
(141, 1, 'medicine added', 'Medicine: Abvida SR 100 TAB added by: Admin', '2025-06-03 06:06:56', '2025-06-03 06:06:56'),
(142, 1, 'medicine added', 'Medicine: Alphagan P Eye Drops 5ml added by: Admin', '2025-06-03 06:22:37', '2025-06-03 06:22:37'),
(143, 1, 'medicine added', 'Medicine: Amaryl MV2 added by: Admin', '2025-06-03 06:23:32', '2025-06-03 06:23:32'),
(144, 1, 'medicine added', 'Medicine: Amifru 40 Tab added by: Admin', '2025-06-03 06:24:33', '2025-06-03 06:24:33'),
(145, 1, 'medicine added', 'Medicine: Angispan TR Cap. 2.5mg added by: Admin', '2025-06-03 06:26:07', '2025-06-03 06:26:07'),
(146, 1, 'Pharmacy Medicine created', 'Pharmacy Medicine: Alphagan P Eye Drops 5ml created by: Admin', '2025-06-03 22:24:17', '2025-06-03 22:24:17'),
(147, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-03 22:33:16', '2025-06-03 22:33:16'),
(148, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-03 23:00:44', '2025-06-03 23:00:44'),
(149, 1, 'clinic Prescription updated', 'clinic address:helloand status:1 updated by: Admin', '2025-06-03 23:00:53', '2025-06-03 23:00:53'),
(150, 1, 'medicine added', 'Medicine: Adilip 45 added by: Admin', '2025-06-03 23:02:20', '2025-06-03 23:02:20'),
(151, 1, 'medicine added', 'Medicine: AFK LOTION 100ML added by: Admin', '2025-06-03 23:03:51', '2025-06-03 23:03:51'),
(152, 1, 'New User Created', 'New User: Customercreated by Admin', '2025-06-04 05:09:45', '2025-06-04 05:09:45'),
(153, 1, 'clinic created', 'clinic: Clinics1 created by Admin', '2025-06-04 05:14:22', '2025-06-04 05:14:22'),
(154, 1, 'Pharmacy created', 'Pharmacy: Pharmacy1 created by Admin', '2025-06-04 05:15:49', '2025-06-04 05:15:49'),
(155, 1, 'New User Created', 'New User: pharamcy usercreated by Admin', '2025-06-04 05:19:14', '2025-06-04 05:19:14'),
(156, 1, 'New User Created', 'New User: deliverycreated by Admin', '2025-06-04 05:29:17', '2025-06-04 05:29:17'),
(157, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-04 05:33:21', '2025-06-04 05:33:21'),
(158, 1, 'clinic Prescription updated', 'clinic address:kondottyand status:2 updated by: Admin', '2025-06-04 05:33:36', '2025-06-04 05:33:36'),
(159, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-04 05:35:38', '2025-06-04 05:35:38'),
(160, 1, 'clinic Prescription updated', 'clinic address:vengaraand status:1 updated by: Admin', '2025-06-04 05:35:48', '2025-06-04 05:35:48'),
(161, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-04 05:45:38', '2025-06-04 05:45:38'),
(162, 1, 'New User Created', 'New User: testcreated by Admin', '2025-06-04 06:05:22', '2025-06-04 06:05:22'),
(163, 1, 'User Deleted', 'User: test , user Id: 27 , User deleted by Admin', '2025-06-04 22:09:36', '2025-06-04 22:09:36'),
(164, 1, 'New User Created', 'New User: Test usercreated by Admin', '2025-06-04 22:10:27', '2025-06-04 22:10:27'),
(165, 1, 'User Deleted', 'User: Test user , user Id: 28 , User deleted by Admin', '2025-06-04 22:48:35', '2025-06-04 22:48:35'),
(166, 1, 'New User Created', 'New User: Testcreated by Admin', '2025-06-04 22:57:31', '2025-06-04 22:57:31'),
(167, 1, 'User Deleted', 'User: Test , user Id: 29 , User deleted by Admin', '2025-06-04 22:59:39', '2025-06-04 22:59:39'),
(168, 1, 'medicine added', 'Medicine: Amaryl Tab. 2mg added by: Admin', '2025-06-04 23:34:28', '2025-06-04 23:34:28'),
(169, 1, 'medicine added', 'Medicine: AB DAY SR 200 TAB added by: Admin', '2025-06-04 23:35:51', '2025-06-04 23:35:51'),
(170, 1, 'medicine added', 'Medicine: Abendol Tab added by: Admin', '2025-06-04 23:37:04', '2025-06-04 23:37:04'),
(171, 1, 'medicine added', 'Medicine: ABLUNG N TAB added by: Admin', '2025-06-04 23:38:19', '2025-06-04 23:38:19'),
(172, 1, 'medicine added', 'Medicine: Aimet XR 50MG added by: Admin', '2025-06-04 23:40:39', '2025-06-04 23:40:39'),
(173, 1, 'medicine added', 'Medicine: ALERID 60 ML added by: Admin', '2025-06-04 23:42:03', '2025-06-04 23:42:03'),
(174, 1, 'medicine added', 'Medicine: Alprax Tab. 0.25mg added by: Admin', '2025-06-04 23:43:25', '2025-06-04 23:43:25'),
(175, 1, 'medicine added', 'Medicine: ALZIL M FORTE added by: Admin', '2025-06-04 23:44:53', '2025-06-04 23:44:53'),
(176, 1, 'medicine added', 'Medicine: AMIDE 200MG added by: Admin', '2025-06-04 23:46:00', '2025-06-04 23:46:00'),
(177, 1, 'medicine added', 'Medicine: Amlodac Tab 5mg added by: Admin', '2025-06-04 23:47:21', '2025-06-04 23:47:21'),
(178, 1, 'medicine added', 'Medicine: Allercet 10 Tab added by: Admin', '2025-06-05 00:39:16', '2025-06-05 00:39:16'),
(179, 1, 'medicine added', 'Medicine: ALZIL M FORTE added by: Admin', '2025-06-05 00:40:51', '2025-06-05 00:40:51'),
(180, 1, 'medicine added', 'Medicine: Amlovas 5 Tab added by: Admin', '2025-06-05 00:42:01', '2025-06-05 00:42:01'),
(181, 1, 'medicine added', 'Medicine: Aquasoft Cream 60GM added by: Admin', '2025-06-05 00:43:20', '2025-06-05 00:43:20'),
(182, 1, 'medicine added', 'Medicine: Argin Plus added by: Admin', '2025-06-05 00:44:16', '2025-06-05 00:44:16'),
(183, 1, 'medicine added', 'Medicine: Asthakind Tab added by: Admin', '2025-06-05 00:45:24', '2025-06-05 00:45:24'),
(184, 1, 'medicine added', 'Medicine: Atarax Drops 15ml added by: Admin', '2025-06-05 00:46:20', '2025-06-05 00:46:20'),
(185, 1, 'medicine added', 'Medicine: Azibest Tab. 500mg added by: Admin', '2025-06-05 00:47:59', '2025-06-05 00:47:59'),
(186, 1, 'medicine added', 'Medicine: Wakfree Tab added by: Admin', '2025-06-05 01:00:50', '2025-06-05 01:00:50'),
(187, 1, 'medicine added', 'Medicine: Welvida 50 added by: Admin', '2025-06-05 01:02:06', '2025-06-05 01:02:06'),
(188, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-05 01:03:11', '2025-06-05 01:03:11'),
(189, 1, 'New User Created', 'New User: jafarcreated by Admin', '2025-06-05 01:36:26', '2025-06-05 01:36:26'),
(190, 1, 'New User Created', 'New User: Test usercreated by Admin', '2025-06-05 06:02:15', '2025-06-05 06:02:15'),
(191, 1, 'User updated', 'User: Test user , user Id: 31 , User updated by Admin', '2025-06-05 06:04:36', '2025-06-05 06:04:36'),
(192, 1, 'User updated', 'User: pharamcy user , user Id: 25 , User updated by Admin', '2025-06-05 22:27:59', '2025-06-05 22:27:59'),
(193, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:45:11', '2025-06-20 23:45:11'),
(194, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:45:35', '2025-06-20 23:45:35'),
(195, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:45:53', '2025-06-20 23:45:53'),
(196, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:45:57', '2025-06-20 23:45:57'),
(197, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:46:43', '2025-06-20 23:46:43'),
(198, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-20 23:47:00', '2025-06-20 23:47:00'),
(199, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:06:52', '2025-06-21 00:06:52'),
(200, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:06:58', '2025-06-21 00:06:58'),
(201, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:07:02', '2025-06-21 00:07:02'),
(202, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:07:05', '2025-06-21 00:07:05'),
(203, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:07:11', '2025-06-21 00:07:11'),
(204, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 00:07:52', '2025-06-21 00:07:52'),
(205, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 02:57:08', '2025-06-21 02:57:08'),
(206, 1, 'Pharmacy created', 'Pharmacy: Pharamcy late created by Admin', '2025-06-21 03:14:36', '2025-06-21 03:14:36'),
(207, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 03:23:39', '2025-06-21 03:23:39'),
(208, 1, 'clinic Prescription updated', 'clinic address:trissurand status:1 updated by: Admin', '2025-06-21 03:23:56', '2025-06-21 03:23:56'),
(209, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 03:24:14', '2025-06-21 03:24:14'),
(210, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 03:24:34', '2025-06-21 03:24:34'),
(211, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 03:24:45', '2025-06-21 03:24:45'),
(212, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 03:26:34', '2025-06-21 03:26:34'),
(213, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-21 06:25:00', '2025-06-21 06:25:00'),
(214, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-23 22:26:58', '2025-06-23 22:26:58'),
(215, 1, 'clinic Prescription updated', 'clinic address:kondottyand status:2 updated by: Admin', '2025-06-23 22:27:04', '2025-06-23 22:27:04'),
(216, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-23 23:39:26', '2025-06-23 23:39:26'),
(217, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:26', '2025-06-23 23:39:26'),
(218, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:28', '2025-06-23 23:39:28'),
(219, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:28', '2025-06-23 23:39:28'),
(220, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:35', '2025-06-23 23:39:35'),
(221, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:44', '2025-06-23 23:39:44'),
(222, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-23 23:39:50', '2025-06-23 23:39:50'),
(223, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-24 01:48:37', '2025-06-24 01:48:37'),
(224, 1, 'clinic Prescription updated', 'clinic address:ramanattukaraand status:1 updated by: Admin', '2025-06-24 01:52:39', '2025-06-24 01:52:39'),
(225, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 05:23:38', '2025-06-26 05:23:38'),
(226, 1, 'clinic Prescription updated', 'clinic address:kunjaand status:2 updated by: Admin', '2025-06-26 05:23:51', '2025-06-26 05:23:51'),
(227, 1, 'clinic created', 'clinic: gggggggggggggf created by Admin', '2025-06-26 22:40:58', '2025-06-26 22:40:58'),
(228, 1, 'clinic Deleted', 'Clinic: gggggggggggggf deleted by: Admin', '2025-06-26 22:41:03', '2025-06-26 22:41:03'),
(229, 1, 'Pharmacy created', 'Pharmacy: pharamcy4477 created by Admin', '2025-06-26 22:41:31', '2025-06-26 22:41:31'),
(230, 1, 'New User Created', 'New User: Veena Pcreated by Admin', '2025-06-26 22:42:54', '2025-06-26 22:42:54'),
(231, 1, 'User Deleted', 'User: Veena P , user Id: 32 , User deleted by Admin', '2025-06-26 22:42:59', '2025-06-26 22:42:59'),
(232, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:43:22', '2025-06-26 22:43:22'),
(233, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-26 22:43:28', '2025-06-26 22:43:28'),
(234, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-26 22:43:40', '2025-06-26 22:43:40'),
(235, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-26 22:47:25', '2025-06-26 22:47:25'),
(236, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:47:38', '2025-06-26 22:47:38'),
(237, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:47:55', '2025-06-26 22:47:55'),
(238, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:48:08', '2025-06-26 22:48:08'),
(239, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:48:43', '2025-06-26 22:48:43'),
(240, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:49:34', '2025-06-26 22:49:34'),
(241, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-26 22:50:14', '2025-06-26 22:50:14'),
(242, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:50:41', '2025-06-26 22:50:41'),
(243, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-26 22:53:03', '2025-06-26 22:53:03'),
(244, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:53:23', '2025-06-26 22:53:23'),
(245, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:54:32', '2025-06-26 22:54:32'),
(246, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:56:01', '2025-06-26 22:56:01'),
(247, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:56:18', '2025-06-26 22:56:18'),
(248, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:56:23', '2025-06-26 22:56:23'),
(249, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-26 22:58:07', '2025-06-26 22:58:07'),
(250, 1, 'New User Created', 'New User: Dascreated by Admin', '2025-06-26 23:33:59', '2025-06-26 23:33:59'),
(251, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-27 00:06:07', '2025-06-27 00:06:07'),
(252, 1, 'clinic Prescription updated', 'clinic address:areekad and status:1 updated by: Admin', '2025-06-27 00:06:15', '2025-06-27 00:06:15'),
(253, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 00:08:21', '2025-06-27 00:08:21'),
(254, 1, 'clinic Prescription updated', 'clinic address:ramu and status:1 updated by: Admin', '2025-06-27 00:08:29', '2025-06-27 00:08:29'),
(255, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 00:20:36', '2025-06-27 00:20:36'),
(256, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-27 00:47:42', '2025-06-27 00:47:42'),
(257, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 01:03:27', '2025-06-27 01:03:27'),
(258, 1, 'clinic Prescription updated', 'clinic address:kondotty and status:1 updated by: Admin', '2025-06-27 01:03:34', '2025-06-27 01:03:34'),
(259, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 01:51:40', '2025-06-27 01:51:40'),
(260, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-27 03:00:57', '2025-06-27 03:00:57'),
(261, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 04:11:33', '2025-06-27 04:11:33'),
(262, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-27 04:19:48', '2025-06-27 04:19:48'),
(263, 1, 'clinic Prescription updated', 'clinic address:vengara and status:1 updated by: Admin', '2025-06-27 04:19:55', '2025-06-27 04:19:55'),
(264, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-06-27 23:34:06', '2025-06-27 23:34:06'),
(265, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:1 updated by: Admin', '2025-06-27 23:34:23', '2025-06-27 23:34:23'),
(266, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-27 23:42:47', '2025-06-27 23:42:47'),
(267, 1, 'clinic Prescription updated', 'clinic address:vengara and status:1 updated by: Admin', '2025-06-27 23:42:53', '2025-06-27 23:42:53'),
(268, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 01:25:28', '2025-06-28 01:25:28'),
(269, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 01:29:33', '2025-06-28 01:29:33'),
(270, 1, 'clinic Prescription updated', 'clinic address:perinthalmanna and status:1 updated by: Admin', '2025-06-28 01:29:43', '2025-06-28 01:29:43'),
(271, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 09:33:52', '2025-06-28 09:33:52'),
(272, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 09:34:45', '2025-06-28 09:34:45'),
(273, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 09:35:00', '2025-06-28 09:35:00'),
(274, 1, 'clinic Prescription updated', 'clinic address:perinthalmanna and status:3 updated by: Admin', '2025-06-28 09:35:22', '2025-06-28 09:35:22'),
(275, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-06-28 09:35:39', '2025-06-28 09:35:39'),
(276, 1, 'clinic Prescription updated', 'clinic address:perinthalmanna and status:4 updated by: Admin', '2025-06-28 09:35:59', '2025-06-28 09:35:59'),
(277, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-04 09:02:47', '2025-07-04 09:02:47'),
(278, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:1 updated by: Admin', '2025-07-04 09:03:01', '2025-07-04 09:03:01'),
(279, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-04 09:03:12', '2025-07-04 09:03:12'),
(280, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:2 updated by: Admin', '2025-07-04 09:03:22', '2025-07-04 09:03:22'),
(281, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-04 09:03:37', '2025-07-04 09:03:37'),
(282, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:3 updated by: Admin', '2025-07-04 09:03:44', '2025-07-04 09:03:44'),
(283, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-04 09:03:56', '2025-07-04 09:03:56'),
(284, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:4 updated by: Admin', '2025-07-04 09:04:13', '2025-07-04 09:04:13'),
(285, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-04 09:04:40', '2025-07-04 09:04:40'),
(286, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 09:46:58', '2025-07-05 09:46:58'),
(287, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 09:47:40', '2025-07-05 09:47:40'),
(288, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 09:57:36', '2025-07-05 09:57:36'),
(289, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:07:45', '2025-07-05 10:07:45'),
(290, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:08:30', '2025-07-05 10:08:30'),
(291, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:08:46', '2025-07-05 10:08:46'),
(292, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:10:04', '2025-07-05 10:10:04'),
(293, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:11:18', '2025-07-05 10:11:18'),
(294, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:44:43', '2025-07-05 10:44:43'),
(295, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:45:35', '2025-07-05 10:45:35'),
(296, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:45:50', '2025-07-05 10:45:50'),
(297, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:48:46', '2025-07-05 10:48:46'),
(298, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:49:14', '2025-07-05 10:49:14'),
(299, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:50:19', '2025-07-05 10:50:19'),
(300, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:50:37', '2025-07-05 10:50:37'),
(301, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:50:44', '2025-07-05 10:50:44'),
(302, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:51:39', '2025-07-05 10:51:39'),
(303, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:52:00', '2025-07-05 10:52:00'),
(304, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:52:20', '2025-07-05 10:52:20'),
(305, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:53:22', '2025-07-05 10:53:22'),
(306, 1, 'clinic Prescription updated', 'clinic address:perinthalmanna and status:1 updated by: Admin', '2025-07-05 10:53:39', '2025-07-05 10:53:39'),
(307, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-05 10:54:08', '2025-07-05 10:54:08'),
(308, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 05:03:46', '2025-07-07 05:03:46'),
(309, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 06:01:59', '2025-07-07 06:01:59'),
(310, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 06:10:49', '2025-07-07 06:10:49'),
(311, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 06:11:07', '2025-07-07 06:11:07'),
(312, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 06:12:08', '2025-07-07 06:12:08'),
(313, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-07 06:32:26', '2025-07-07 06:32:26'),
(314, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 04:11:40', '2025-07-18 04:11:40'),
(315, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:07:38', '2025-07-18 10:07:38'),
(316, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:07:58', '2025-07-18 10:07:58'),
(317, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:08:23', '2025-07-18 10:08:23'),
(318, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:08:56', '2025-07-18 10:08:56'),
(319, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:09:09', '2025-07-18 10:09:09'),
(320, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:10:49', '2025-07-18 10:10:49'),
(321, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:11:25', '2025-07-18 10:11:25'),
(322, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:12:40', '2025-07-18 10:12:40'),
(323, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:15:52', '2025-07-18 10:15:52'),
(324, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:16:37', '2025-07-18 10:16:37'),
(325, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:17:22', '2025-07-18 10:17:22'),
(326, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:20:03', '2025-07-18 10:20:03'),
(327, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:24:58', '2025-07-18 10:24:58'),
(328, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:26:37', '2025-07-18 10:26:37'),
(329, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:31:51', '2025-07-18 10:31:51'),
(330, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:32:28', '2025-07-18 10:32:28'),
(331, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 10:33:03', '2025-07-18 10:33:03'),
(332, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:38:20', '2025-07-18 10:38:20'),
(333, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:38:41', '2025-07-18 10:38:41'),
(334, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:42:03', '2025-07-18 10:42:03'),
(335, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:44:37', '2025-07-18 10:44:37'),
(336, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:47:21', '2025-07-18 10:47:21'),
(337, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 10:47:35', '2025-07-18 10:47:35'),
(338, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:40:18', '2025-07-18 11:40:18'),
(339, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-18 11:42:41', '2025-07-18 11:42:41'),
(340, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:44:48', '2025-07-18 11:44:48'),
(341, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:44:55', '2025-07-18 11:44:55'),
(342, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:45:05', '2025-07-18 11:45:05'),
(343, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:45:20', '2025-07-18 11:45:20'),
(344, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:45:42', '2025-07-18 11:45:42'),
(345, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 11:47:24', '2025-07-18 11:47:24'),
(346, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-18 11:55:22', '2025-07-18 11:55:22'),
(347, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:03:54', '2025-07-18 12:03:54'),
(348, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:04:03', '2025-07-18 12:04:03'),
(349, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:04:55', '2025-07-18 12:04:55'),
(350, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:05:01', '2025-07-18 12:05:01'),
(351, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:08:53', '2025-07-18 12:08:53'),
(352, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:09:21', '2025-07-18 12:09:21'),
(353, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:09:38', '2025-07-18 12:09:38'),
(354, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:10:12', '2025-07-18 12:10:12'),
(355, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:15:04', '2025-07-18 12:15:04'),
(356, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:15:17', '2025-07-18 12:15:17'),
(357, 1, 'Payment is done', 'Pharmacy Prescription Payment is created by: Admin', '2025-07-18 12:16:05', '2025-07-18 12:16:05'),
(358, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-18 12:16:35', '2025-07-18 12:16:35'),
(359, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 04:36:14', '2025-07-19 04:36:14'),
(360, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 04:36:22', '2025-07-19 04:36:22'),
(361, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 04:38:38', '2025-07-19 04:38:38'),
(362, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 04:44:13', '2025-07-19 04:44:13'),
(363, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:03:38', '2025-07-19 05:03:38'),
(364, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:15:54', '2025-07-19 05:15:54'),
(365, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:16:50', '2025-07-19 05:16:50'),
(366, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:17:01', '2025-07-19 05:17:01'),
(367, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:17:13', '2025-07-19 05:17:13'),
(368, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:24:19', '2025-07-19 05:24:19'),
(369, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-19 05:27:07', '2025-07-19 05:27:07'),
(370, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-19 05:28:56', '2025-07-19 05:28:56'),
(371, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-07-19 05:29:07', '2025-07-19 05:29:07'),
(372, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-07-19 05:29:17', '2025-07-19 05:29:17'),
(373, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-19 05:29:26', '2025-07-19 05:29:26'),
(374, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-19 06:08:49', '2025-07-19 06:08:49'),
(375, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 03:35:59', '2025-07-21 03:35:59'),
(376, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:17:58', '2025-07-21 04:17:58'),
(377, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:19:18', '2025-07-21 04:19:18');
INSERT INTO `logs` (`id`, `user_id`, `log_type`, `message`, `created_at`, `updated_at`) VALUES
(378, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:22:21', '2025-07-21 04:22:21'),
(379, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:28:09', '2025-07-21 04:28:09'),
(380, 1, 'clinic Prescription updated', 'clinic address:London and status:1 updated by: Admin', '2025-07-21 04:28:44', '2025-07-21 04:28:44'),
(381, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:28:52', '2025-07-21 04:28:52'),
(382, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:29:26', '2025-07-21 04:29:26'),
(383, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:29:49', '2025-07-21 04:29:49'),
(384, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:30:21', '2025-07-21 04:30:21'),
(385, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:32:49', '2025-07-21 04:32:49'),
(386, 1, 'clinic Prescription updated', 'clinic address:perinthalmanna and status:1 updated by: Admin', '2025-07-21 04:32:57', '2025-07-21 04:32:57'),
(387, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:33:01', '2025-07-21 04:33:01'),
(388, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-07-21 04:33:08', '2025-07-21 04:33:08'),
(389, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:33:15', '2025-07-21 04:33:15'),
(390, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:1 updated by: Admin', '2025-07-21 04:33:18', '2025-07-21 04:33:18'),
(391, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:33:23', '2025-07-21 04:33:23'),
(392, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:33:48', '2025-07-21 04:33:48'),
(393, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:35:27', '2025-07-21 04:35:27'),
(394, 1, 'clinic Prescription updated', 'clinic address:vengara and status:1 updated by: Admin', '2025-07-21 04:35:31', '2025-07-21 04:35:31'),
(395, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:35:36', '2025-07-21 04:35:36'),
(396, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:38:31', '2025-07-21 04:38:31'),
(397, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:38:44', '2025-07-21 04:38:44'),
(398, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:40:11', '2025-07-21 04:40:11'),
(399, 1, 'clinic Prescription updated', 'clinic address:areekode and status:1 updated by: Admin', '2025-07-21 04:40:18', '2025-07-21 04:40:18'),
(400, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:41:21', '2025-07-21 04:41:21'),
(401, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:42:37', '2025-07-21 04:42:37'),
(402, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:1 updated by: Admin', '2025-07-21 04:42:47', '2025-07-21 04:42:47'),
(403, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:42:54', '2025-07-21 04:42:54'),
(404, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:43:04', '2025-07-21 04:43:04'),
(405, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:43:55', '2025-07-21 04:43:55'),
(406, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:43:58', '2025-07-21 04:43:58'),
(407, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:3 updated by: Admin', '2025-07-21 04:44:03', '2025-07-21 04:44:03'),
(408, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:44:21', '2025-07-21 04:44:21'),
(409, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:4 updated by: Admin', '2025-07-21 04:44:49', '2025-07-21 04:44:49'),
(410, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:44:56', '2025-07-21 04:44:56'),
(411, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:46:34', '2025-07-21 04:46:34'),
(412, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:46:44', '2025-07-21 04:46:44'),
(413, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:46:52', '2025-07-21 04:46:52'),
(414, 1, 'clinic Prescription updated', 'clinic address:sulthan batheri and status:1 updated by: Admin', '2025-07-21 04:46:56', '2025-07-21 04:46:56'),
(415, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:47:06', '2025-07-21 04:47:06'),
(416, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:47:14', '2025-07-21 04:47:14'),
(417, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:47:21', '2025-07-21 04:47:21'),
(418, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:47:31', '2025-07-21 04:47:31'),
(419, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:53:04', '2025-07-21 04:53:04'),
(420, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:54:02', '2025-07-21 04:54:02'),
(421, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:54:09', '2025-07-21 04:54:09'),
(422, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:1 updated by: Admin', '2025-07-21 04:54:14', '2025-07-21 04:54:14'),
(423, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 04:54:18', '2025-07-21 04:54:18'),
(424, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 04:55:13', '2025-07-21 04:55:13'),
(425, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 04:57:35', '2025-07-21 04:57:35'),
(426, 1, 'User updated', 'User: Das , user Id: 33 , User updated by Admin', '2025-07-21 05:04:12', '2025-07-21 05:04:12'),
(427, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 05:07:22', '2025-07-21 05:07:22'),
(428, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 05:13:08', '2025-07-21 05:13:08'),
(429, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 05:13:20', '2025-07-21 05:13:20'),
(430, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 05:13:38', '2025-07-21 05:13:38'),
(431, 1, 'clinic Prescription updated', 'clinic address:kunja and status:3 updated by: Admin', '2025-07-21 05:13:42', '2025-07-21 05:13:42'),
(432, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-21 05:13:46', '2025-07-21 05:13:46'),
(433, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 05:45:36', '2025-07-21 05:45:36'),
(434, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 05:46:32', '2025-07-21 05:46:32'),
(435, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 09:22:27', '2025-07-21 09:22:27'),
(436, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 09:25:23', '2025-07-21 09:25:23'),
(437, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 12:21:43', '2025-07-21 12:21:43'),
(438, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 12:22:44', '2025-07-21 12:22:44'),
(439, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-21 13:00:20', '2025-07-21 13:00:20'),
(440, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 05:29:30', '2025-07-22 05:29:30'),
(441, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 05:43:06', '2025-07-22 05:43:06'),
(442, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 05:52:38', '2025-07-22 05:52:38'),
(443, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 06:27:09', '2025-07-22 06:27:09'),
(444, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 07:03:19', '2025-07-22 07:03:19'),
(445, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 08:12:51', '2025-07-22 08:12:51'),
(446, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-22 08:13:20', '2025-07-22 08:13:20'),
(447, 1, 'clinic Prescription updated', 'clinic address:malappuram and status:1 updated by: Admin', '2025-07-22 08:13:28', '2025-07-22 08:13:28'),
(448, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-07-22 08:46:24', '2025-07-22 08:46:24'),
(449, 1, 'clinic Prescription updated', 'clinic address:123 Main Street, Apt 4B \r\nAnytown, CA 91234-5678\r\nUnited States of America and status:1 updated by: Admin', '2025-07-22 08:46:35', '2025-07-22 08:46:35'),
(450, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 08:54:05', '2025-07-22 08:54:05'),
(451, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 08:54:15', '2025-07-22 08:54:15'),
(452, 1, 'New User Created', 'New User: Niv Usercreated by Admin', '2025-07-22 10:18:54', '2025-07-22 10:18:54'),
(453, 1, 'New User Created', 'New User: Niv Deliverycreated by Admin', '2025-07-22 10:20:49', '2025-07-22 10:20:49'),
(454, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 10:36:34', '2025-07-22 10:36:34'),
(455, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-22 10:38:00', '2025-07-22 10:38:00'),
(456, 1, 'clinic Prescription Processed', 'clinic Prescription user:Niv User processed by: Admin', '2025-07-22 10:57:44', '2025-07-22 10:57:44'),
(457, 1, 'clinic Prescription updated', 'clinic address:Ramanattukara and status:1 updated by: Admin', '2025-07-22 10:57:53', '2025-07-22 10:57:53'),
(458, 1, 'clinic Prescription Processed', 'clinic Prescription user:Niv User processed by: Admin', '2025-07-22 10:58:28', '2025-07-22 10:58:28'),
(459, 1, 'clinic Prescription updated', 'clinic address:Ramanattukara and status:3 updated by: Admin', '2025-07-22 10:58:35', '2025-07-22 10:58:35'),
(460, 1, 'clinic Prescription Processed', 'clinic Prescription user:Niv User processed by: Admin', '2025-07-22 10:58:43', '2025-07-22 10:58:43'),
(461, 1, 'clinic Prescription updated', 'clinic address:Ramanattukara and status:4 updated by: Admin', '2025-07-22 10:58:51', '2025-07-22 10:58:51'),
(462, 1, 'clinic Prescription Processed', 'clinic Prescription user:Customer processed by: Admin', '2025-07-22 10:59:40', '2025-07-22 10:59:40'),
(463, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-07-25 06:09:38', '2025-07-25 06:09:38'),
(464, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 02:49:07', '2025-08-04 02:49:07'),
(465, 1, 'clinic Prescription updated', 'clinic address:areekode and status:1 updated by: Admin', '2025-08-04 02:49:17', '2025-08-04 02:49:17'),
(466, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 02:50:29', '2025-08-04 02:50:29'),
(467, 1, 'clinic Prescription updated', 'clinic address:areekode and status:3 updated by: Admin', '2025-08-04 02:50:36', '2025-08-04 02:50:36'),
(468, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 02:50:59', '2025-08-04 02:50:59'),
(469, 1, 'clinic Prescription updated', 'clinic address:areekode and status:4 updated by: Admin', '2025-08-04 02:51:14', '2025-08-04 02:51:14'),
(470, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-08-04 02:53:59', '2025-08-04 02:53:59'),
(471, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-08-04 02:55:12', '2025-08-04 02:55:12'),
(472, 1, 'Pharmacy created', 'Pharmacy: Sudharma created by Admin', '2025-08-04 03:05:27', '2025-08-04 03:05:27'),
(473, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:14:59', '2025-08-04 03:14:59'),
(474, 1, 'clinic Prescription updated', 'clinic address:areekode and status:1 updated by: Admin', '2025-08-04 03:15:04', '2025-08-04 03:15:04'),
(475, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:18:06', '2025-08-04 03:18:06'),
(476, 1, 'clinic Prescription updated', 'clinic address:areekode and status:3 updated by: Admin', '2025-08-04 03:18:09', '2025-08-04 03:18:09'),
(477, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:18:19', '2025-08-04 03:18:19'),
(478, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:35:17', '2025-08-04 03:35:17'),
(479, 1, 'clinic Prescription updated', 'clinic address:africa and status:1 updated by: Admin', '2025-08-04 03:35:24', '2025-08-04 03:35:24'),
(480, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:36:17', '2025-08-04 03:36:17'),
(481, 1, 'clinic Prescription updated', 'clinic address:africa and status:3 updated by: Admin', '2025-08-04 03:36:19', '2025-08-04 03:36:19'),
(482, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:36:30', '2025-08-04 03:36:30'),
(483, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:36:56', '2025-08-04 03:36:56'),
(484, 1, 'clinic Prescription updated', 'clinic address:los angelous and status:1 updated by: Admin', '2025-08-04 03:37:02', '2025-08-04 03:37:02'),
(485, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:37:30', '2025-08-04 03:37:30'),
(486, 1, 'clinic Prescription updated', 'clinic address:los angelous and status:3 updated by: Admin', '2025-08-04 03:37:35', '2025-08-04 03:37:35'),
(487, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:40:46', '2025-08-04 03:40:46'),
(488, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:46:10', '2025-08-04 03:46:10'),
(489, 1, 'clinic Prescription updated', 'clinic address:areekode and status:1 updated by: Admin', '2025-08-04 03:46:17', '2025-08-04 03:46:17'),
(490, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:46:48', '2025-08-04 03:46:48'),
(491, 1, 'clinic Prescription updated', 'clinic address:areekode and status:3 updated by: Admin', '2025-08-04 03:46:51', '2025-08-04 03:46:51'),
(492, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:47:37', '2025-08-04 03:47:37'),
(493, 1, 'clinic Prescription updated', 'clinic address:areekode and status:4 updated by: Admin', '2025-08-04 03:47:51', '2025-08-04 03:47:51'),
(494, 1, 'Payment is done', 'Pharmacy Prescription Payment iscreated by: Admin', '2025-08-04 03:49:01', '2025-08-04 03:49:01'),
(495, 1, 'clinic Prescription Processed', 'clinic Prescription user:Admin processed by: Admin', '2025-08-04 03:49:25', '2025-08-04 03:49:25'),
(496, 1, 'clinic Prescription updated', 'clinic address:areekode and status:4 updated by: Admin', '2025-08-04 03:49:37', '2025-08-04 03:49:37'),
(497, 1, 'New User Created', 'New User: Jafarcreated by Admin', '2025-08-06 09:15:14', '2025-08-06 09:15:14'),
(498, 1, 'clinic Prescription Processed', 'clinic Prescription user:Jafar processed by: Admin', '2025-08-06 11:48:08', '2025-08-06 11:48:08'),
(499, 1, 'clinic Prescription Processed', 'clinic Prescription user:Jafar processed by: Admin', '2025-08-06 11:49:21', '2025-08-06 11:49:21'),
(500, 1, 'clinic Prescription Processed', 'clinic Prescription user:Jafar processed by: Admin', '2025-08-06 11:49:36', '2025-08-06 11:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pharmacy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `pharmacy_id`, `medicine_name`, `amount`, `quantity`, `description`, `expiry_date`, `manufacturer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4052, 5, 'Amaryl Tab. 2mg', 7.00, 98, '4NG007', '2026-12-01', 'AVENTI', '2025-06-04 23:34:28', '2025-06-04 23:34:28', NULL),
(4053, 5, 'AB DAY SR 200 TAB', 17.00, 30, 'LGN0110801', '2025-12-31', 'ISIS', '2025-06-04 23:35:51', '2025-06-04 23:35:51', NULL),
(4054, 5, 'Abendol Tab', 35.00, 7, 'K3GKX005', '2025-10-31', 'LEEFORD', '2025-06-04 23:37:04', '2025-06-04 23:37:04', NULL),
(4055, 5, 'ABLUNG N TAB', 16.00, 45, 'AFB24756', '2025-11-27', 'CIP', '2025-06-04 23:38:19', '2025-06-04 23:38:19', NULL),
(4056, 5, 'Aimet XR 50MG', 6.00, 110, '229TAF006', '2025-09-30', 'ISIS', '2025-06-04 23:40:39', '2025-06-04 23:40:39', NULL),
(4057, 5, 'ALERID 60 ML', 45.00, 1, 'A330633', '2025-12-31', 'CIPLA', '2025-06-04 23:42:03', '2025-06-04 23:42:03', NULL),
(4058, 5, 'Alprax Tab. 0.25mg', 3.00, 70, '2E09L011', '2025-09-15', 'TORRENT', '2025-06-04 23:43:25', '2025-06-04 23:43:25', NULL),
(4059, 5, 'ALZIL M FORTE', 24.00, 20, 'K2401662', '2025-09-25', 'INTASP', '2025-06-04 23:44:53', '2025-06-04 23:44:53', NULL),
(4060, 5, 'AMIDE 200MG', 30.00, 7, 'MT23-491', '2025-06-30', 'ICON', '2025-06-04 23:46:00', '2025-06-04 23:46:00', NULL),
(4061, 5, 'Amlodac Tab 5mg', 3.00, 270, 'I401521', '2025-10-05', 'ZYDUS', '2025-06-04 23:47:21', '2025-06-04 23:47:21', NULL),
(4062, 5, 'Allercet 10 Tab', 5.00, 60, 'S0025', '2025-10-31', 'BROWN', '2025-06-05 00:39:16', '2025-06-05 00:39:16', NULL),
(4063, 5, 'ALZIL M FORTE', 25.00, 20, 'K2401662', '2025-07-31', 'INTASP', '2025-06-05 00:40:51', '2025-06-05 00:40:51', NULL),
(4064, 5, 'Amlovas 5 Tab', 3.00, 62, '240494A', '2025-09-25', 'MACLEO', '2025-06-05 00:42:01', '2025-06-05 00:42:01', NULL),
(4065, 5, 'Aquasoft Cream 60GM', 239.00, 1, 'G3422', '2025-09-30', 'AJANTA', '2025-06-05 00:43:20', '2025-06-05 00:43:20', NULL),
(4066, 5, 'Argin Plus', 99.00, 15, '3G01', '2025-11-25', 'FOURTS', '2025-06-05 00:44:16', '2025-06-05 00:44:16', NULL),
(4067, 5, 'Asthakind Tab', 5.00, 91, 'A1ALX002', '2025-09-30', 'MANKIND', '2025-06-05 00:45:24', '2025-06-05 00:45:24', NULL),
(4068, 5, 'Atarax Drops 15ml', 84.00, 1, 'AT4018', '2025-11-30', 'UCB', '2025-06-05 00:46:20', '2025-06-05 00:46:20', NULL),
(4069, 5, 'Azibest Tab. 500mg', 25.00, 14, 'AZF2330', '2025-10-31', 'BLUCR', '2025-06-05 00:47:59', '2025-06-05 00:47:59', NULL),
(4070, 5, 'Wakfree Tab', 771.00, 3, 'WOL465E', '2025-10-19', 'AKESISS', '2025-06-05 01:00:50', '2025-06-05 01:00:50', NULL),
(4071, 5, 'Welvida 50', 9.00, 74, 'BD240241C', '2025-09-30', 'ISIS', '2025-06-05 01:02:06', '2025-06-05 01:02:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(39, '2014_10_12_100000_create_password_resets_table', 1),
(40, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(41, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(42, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(43, '2016_06_01_000004_create_oauth_clients_table', 1),
(44, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(45, '2019_08_19_000000_create_failed_jobs_table', 1),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(47, '2025_02_07_042954_alter_users_table_add_patient_fields', 1),
(48, '2025_02_07_104730_create_clinics_table', 1),
(49, '2025_02_08_062242_create_pharmacies_table', 1),
(50, '2025_02_08_070424_create_pharmacy_prescriptions_table', 1),
(51, '2025_02_08_103055_create_pharmacy_medicines_table', 1),
(52, '2025_02_10_071122_create_clinic_prescriptions_table', 1),
(55, '2025_02_10_102644_create_medicines_table', 2),
(57, '2025_02_13_071019_add_time_fields_to_pharmacy_medicines_table', 3),
(58, '2025_02_13_103759_add_tests_to_clinics_table', 4),
(59, '2025_02_14_090608_add_clinic_photo_to_clinics_table', 5),
(60, '2025_02_15_0145678_add_pharmacies_photo_to_clinics_table', 6),
(62, '2025_02_15_112649_add_role_to_users_table', 7),
(63, '2025_02_19_000001_add_pharmacy_id_medicines_table', 8),
(64, '2025_02_20_071019_add_status_fields_to_pharmacy_medicines_table', 8),
(65, '2025_02_20_071020_add_status_pharmacy_prescriptions_table', 8),
(66, '2025_02_20_071021_add_status_to_clinic_prescriptions_table', 8),
(67, '2025_02_21_064009_create_logs_table', 8),
(68, '2025_04_30_070141_add_user_type_to_users_table', 9),
(69, '2025_04_30_101538_create_delivery_agents_table', 9),
(70, '2025_05_02_040943_add_delivery_status_to_delivery_agents_table', 9),
(71, '2025_05_03_000001_add_reffrnce_pharmacy_medicines_table ', 9),
(72, '2025_05_12_062600_create_payments_table', 10),
(73, '2025_05_13_040943_add_pres_id_to_delivery_agents_table', 11),
(75, '2025_05_19_062600_add_ref_no _to_payments_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0ef308530d2effb5b1d525d15def24412374eeb97cd6569c7f39df2015d4b4b89b9a40cabb719d40', 33, 1, 'appToken', '[]', 0, '2025-08-04 03:08:50', '2025-08-04 03:08:50', '2026-08-04 08:38:50'),
('14071eb631de7ed81aa1b81dc1315f2802dfaa4827d4aab8e85cf47115e541364d21a608d0903b8d', 33, 1, 'appToken', '[]', 0, '2025-07-23 07:30:53', '2025-07-23 07:30:53', '2026-07-23 13:00:53'),
('1dc4d90fbbaadae85df4c9acb698e9d78bd0b2afa56b7383cd094cd3a60228d81dcb3eac588b3f8c', 36, 1, 'appToken', '[]', 0, '2025-08-06 11:22:46', '2025-08-06 11:22:47', '2026-08-06 16:52:46'),
('1dec8f8712243d41d4dd21f1dea187b6c10bd692835cbf935ab3eb929d518b1a1faf2dee7e61f2bc', 33, 1, 'appToken', '[]', 0, '2025-06-26 23:43:45', '2025-06-26 23:43:45', '2026-06-27 05:13:45'),
('21253a1068ccf2cc9e13f845a615dcb1a625a37feba6f7136b7f51e31b3a06fb94709dc7f7d02198', 23, 1, 'appToken', '[]', 0, '2025-06-04 04:07:08', '2025-06-04 04:07:08', '2026-06-04 09:37:08'),
('4fbb43954342302cbe7c26d25b2c1649766f086b7f51d17498a807a0e4cbcff80c5c9a269e69a195', 33, 1, 'appToken', '[]', 0, '2025-06-27 03:32:38', '2025-06-27 03:32:38', '2026-06-27 09:02:38'),
('70a913c612b736085c0280608a01c6113eb4189ffd685d4beecce69aa742511d847a9b232e863f08', 33, 1, 'appToken', '[]', 0, '2025-08-04 03:03:21', '2025-08-04 03:03:21', '2026-08-04 08:33:21'),
('773116f0e6a3ea801cbbd8c6e8479757d7a89e6ed1a593e05b452f561922263916039a64b78196d2', 35, 1, 'appToken', '[]', 0, '2025-07-22 10:21:40', '2025-07-22 10:21:40', '2026-07-22 15:51:40'),
('836b938b5c37bfe961bdf15e068690c7a4830735738f866c2b6c91fc340151a021bb476ffe4101c9', 33, 1, 'appToken', '[]', 0, '2025-07-22 08:25:57', '2025-07-22 08:25:57', '2026-07-22 13:55:57'),
('84ce954f768d0d33a7e9635d6e0e8134e6e4b82ce74cf1eb395eb285bb3bbcd082aa2d4d37c65bb1', 35, 1, 'appToken', '[]', 0, '2025-07-22 10:33:13', '2025-07-22 10:33:13', '2026-07-22 16:03:13'),
('87147e5b13ad4243b1d415d72eb3364dbc6d921720e449ca14a5fb7a955a9e61e7a67bda78fc32ea', 33, 1, 'appToken', '[]', 0, '2025-07-21 05:07:20', '2025-07-21 05:07:20', '2026-07-21 10:37:20'),
('8974f932d970dbbebf1ad2c6ab4d0dafad6b186318e6db6660f5e95c2308fda02c60c5cf71fb3183', 33, 1, 'appToken', '[]', 0, '2025-07-23 06:26:08', '2025-07-23 06:26:08', '2026-07-23 11:56:08'),
('9578df4fc9f3c9be8bd5bcb42a43ba38922220b65b193ffcc3e9f59d0effa9501c771b2680bdaa76', 34, 1, 'appToken', '[]', 0, '2025-07-22 10:53:15', '2025-07-22 10:53:15', '2026-07-22 16:23:15'),
('a4ed120cb5725c86a757e3e059b1bf562cb8016036115d9a38222dd42ca73848c08b5bcefd33cf42', 1, 1, 'appToken', '[]', 0, '2025-08-04 03:45:45', '2025-08-04 03:45:45', '2026-08-04 09:15:45'),
('b1262de965f8a2dc24559d0ebbdaac5c8598b37619d0e1bad1b936f50f282d255a4972b4d4b2b056', 35, 1, 'appToken', '[]', 0, '2025-07-22 10:23:09', '2025-07-22 10:23:09', '2026-07-22 15:53:09'),
('c66c5f2b19584548fa78d1b7f57faf9ace723b25244595592cee56dc7415595e4ea16aaa97d7e19c', 33, 1, 'appToken', '[]', 0, '2025-07-21 05:26:41', '2025-07-21 05:26:41', '2026-07-21 10:56:41'),
('cd89a82a5c369c0401d714e428416fa47f9b5fdd8bedfa73e23fa7f32360b26cd0584508712d4399', 34, 1, 'appToken', '[]', 0, '2025-07-22 10:20:29', '2025-07-22 10:20:29', '2026-07-22 15:50:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'HEALTH APP Personal Access Client', '12iC1YKBNiWUOGc2ECRzypN2madlzdEpGJ0ZTaAe', NULL, 'http://localhost', 1, 0, 0, '2025-02-10 04:20:22', '2025-02-10 04:20:22'),
(2, NULL, 'HEALTH APP Password Grant Client', 'xSm9xgl89d0dBNQbkAF2SZzDDx5uhPHqATiEStNF', 'users', 'http://localhost', 0, 1, 0, '2025-02-10 04:20:22', '2025-02-10 04:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-10 04:20:22', '2025-02-10 04:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('thomas@gmail.com', '$2y$12$ARhY1XDM/ctAxqhT7kUh8ub1nCerZDyRDU3dlZIQNihsg5SrG9zgK', '2025-02-15 06:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pres_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL,
  `ref_no` text DEFAULT NULL,
  `message` text NOT NULL,
  `trans_status` varchar(255) DEFAULT NULL,
  `accno` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacies`
--

CREATE TABLE `pharmacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pharmacy_name` varchar(255) NOT NULL,
  `pharmacy_address` varchar(255) NOT NULL,
  `pharmacy_photo` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `types` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pharmacies`
--

INSERT INTO `pharmacies` (`id`, `pharmacy_name`, `pharmacy_address`, `pharmacy_photo`, `city`, `phone_number`, `email`, `created_at`, `updated_at`, `types`) VALUES
(5, 'Pharmacy1', 'near railway', 'pharmacy_photo/5VjsSa8uLsyCgSM6FcH8aybxInp1QJun3Gw1pKRe.jpg', 'Kozhikode', '7510895815', 'pharmacy786@gmail.com', '2025-06-04 05:15:49', '2025-06-04 05:15:49', '1'),
(6, 'Pharamcy late', 'ferkode,clt', 'pharmacy_photo/1zTkS8Ahuvx8ZDwS6sTdfAiEF4y3edVCULuczYxJ.jpg', 'Kozhikode', '8075056740', 'phrmcy2@gmail.com', '2025-06-21 03:14:36', '2025-06-21 03:14:36', '1'),
(7, 'pharamcy4477', 'pharamcy address test', 'pharmacy_photo/3EZfxfdEdlIdOaq0JAQLPBte444C48cz4TkypP6Z.jpg', 'Malappuram', '8075056999', 'faculty@gmail.com', '2025-06-26 22:41:31', '2025-06-26 22:41:31', '2'),
(8, 'Sudharma', 'Areekode, near bus stand', 'pharmacy_photo/TZMtA0fNfUglxENSAFB8WFwaH4NNk2OZR4NnWfHj.png', 'Areekode', '123456789', 'sudharma@gmail.com', '2025-08-04 03:05:27', '2025-08-04 03:05:27', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_medicines`
--

CREATE TABLE `pharmacy_medicines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pharmacy_prescription_id` bigint(20) UNSIGNED NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `start_time_1` time DEFAULT NULL,
  `end_time_1` time DEFAULT NULL,
  `start_time_2` time DEFAULT NULL,
  `end_time_2` time DEFAULT NULL,
  `start_time_3` time DEFAULT NULL,
  `end_time_3` time DEFAULT NULL,
  `req_unit` int(11) DEFAULT NULL,
  `avail_unit` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `reffrnce` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy_prescriptions`
--

CREATE TABLE `pharmacy_prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pharmacy_id` bigint(20) UNSIGNED NOT NULL,
  `prescription` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`prescription`)),
  `delivery_address` text NOT NULL,
  `lat_long` varchar(255) NOT NULL,
  `payment_method` varchar(45) DEFAULT NULL,
  `total_amount` varchar(80) DEFAULT NULL,
  `delivery_id` varchar(100) DEFAULT NULL,
  `expect_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `delivery_coordinates` varchar(255) DEFAULT NULL,
  `otp` varchar(30) DEFAULT '0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `user_type` varchar(255) NOT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_phone` varchar(15) DEFAULT NULL,
  `insurance_provider` varchar(255) DEFAULT NULL,
  `insurance_policy_number` varchar(255) DEFAULT NULL,
  `primary_physician` varchar(255) DEFAULT NULL,
  `medical_history` text DEFAULT NULL,
  `medications` text DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `blood_type` varchar(10) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `status_new` varchar(40) DEFAULT '0',
  `login_id` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user',
  `type` varchar(10) DEFAULT NULL,
  `otp` varchar(25) DEFAULT NULL,
  `otp_ref_id` varchar(50) DEFAULT NULL,
  `otp_expires_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `date_of_birth`, `gender`, `phone_number`, `address`, `user_type`, `emergency_contact_name`, `emergency_contact_phone`, `insurance_provider`, `insurance_policy_number`, `primary_physician`, `medical_history`, `medications`, `allergies`, `blood_type`, `status`, `status_new`, `login_id`, `created_at`, `updated_at`, `role`, `type`, `otp`, `otp_ref_id`, `otp_expires_at`) VALUES
(1, 'Admin', 'thomas@gmail.com', NULL, '$2y$12$g6uUjFRH5QYd0wECL4K/XuKuWkhI.zUWlfI4jgAKsA.EQAbbLKdVW', NULL, '1990-05-15', 'Male', '9876543210', '123 Main Street, New York, NY', '', 'Jane Doe', '9876543211', 'ABC Insurance', 'POLICY12345', 'Dr. Smith', 'No major illnesses', 'Vitamin D, Omega 3', 'Peanuts', 'O+', 1, '0', NULL, '2025-02-10 04:20:42', '2025-02-17 01:16:32', 'admin', NULL, NULL, NULL, NULL),
(24, 'Customer', 'customer@gmail.com', NULL, '$2y$12$bICo.ifq0DzXZaL3Ow9HdOv2MLZHx0JOQTidWZr3DKlurFpFw21Au', NULL, '2025-06-30', 'Male', '9656523123', 'address11', '0', 'Udith', '8075056740', 'Bajaj', '123wxx', 'dr.raju', 'none', 'none', 'none', '0+', 1, '0', NULL, '2025-06-04 05:09:45', '2025-06-04 05:09:45', 'user', NULL, NULL, NULL, NULL),
(25, 'pharamcy user', 'phr1@gmail.com', NULL, '$2y$12$Dmh8ay4NpT.LGetvGR9sguOVqopdE6fTkiAEjwg5KEzUU/0Mg1Dd2', NULL, '2025-06-06', 'Male', '9656523412', 'qwqe', '0', 'Aline Farley', '9876543211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0', NULL, '2025-06-04 05:19:14', '2025-06-05 22:27:59', 'user', '1', NULL, NULL, NULL),
(26, 'delivery', 'delivery@gmail.com', NULL, '$2y$12$aeuj54KyHRrQUKdcxEg5QeMRFb9Z6QHdznUx4zagfK1NOe3iNYin.', NULL, '2025-06-30', 'Male', '7597785532', 'twww', '1', NULL, '8075051789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0', NULL, '2025-06-04 05:29:17', '2025-06-04 05:29:17', 'user', '3', NULL, NULL, NULL),
(31, 'Test user', 'test123@gmail.com', NULL, '$2y$12$i2HH9cGFAlfzEHEPN6g4keqCeGfU6n20Tg0Ms.u9vofAL60uW5Tpu', NULL, '2025-06-30', 'Male', '8075056740', 'address1', '1', 'Akeem Cash', '9876543211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0', NULL, '2025-06-05 06:02:15', '2025-06-05 06:04:36', 'user', '2', NULL, NULL, NULL),
(33, 'Das', 'das@gmail.com', NULL, '$2y$12$vMoyGtT/sHkbW7iEyCSB7OyaAfSm7D4nr0WHXc2IckewMGB7hVHuO', NULL, '2001-11-24', 'Male', '9048007933', 'Kondotty', '1', '7510895815', '9048007933', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0', NULL, '2025-06-26 23:33:59', '2025-07-21 05:04:12', 'user', '3', NULL, NULL, NULL),
(34, 'Niv User', 'niv@gmail.com', NULL, '$2y$12$KYszF8hdVu2FmhRDikElEeTVYak9Hx6WAhC/AfYsYlHf.G43Z/xdW', NULL, '1994-01-20', 'Male', '9656527860', 'Vengara', '0', 'jafer', '9656523476', 'BAJAJ', '123654789', 'Dr. Suku', 'No', 'No', 'No', 'O+ve', 1, '0', NULL, '2025-07-22 10:18:54', '2025-07-22 10:18:54', 'user', NULL, NULL, NULL, NULL),
(35, 'Niv Delivery', 'nivdel@gmail.com', NULL, '$2y$12$kgA.rjp0HxoZj7dXy9ipLO9b8Tetep9bCADElZU/ecGEV/7ht8rJ.', NULL, '2001-05-22', 'Male', '9061653696', '11th mile', '1', NULL, '9061653696', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '0', NULL, '2025-07-22 10:20:49', '2025-07-22 10:20:49', 'user', '3', NULL, NULL, NULL),
(36, 'Jafar', 'jafar786@gmail.com', NULL, '$2y$12$lrFiOs0HsiCRz04eTh.Dvug5kh7TF9RJQC/oWFnmfUekFKSfKGIUW', NULL, '2010-01-01', 'Male', '9656523476', 'adrees11', '0', 'Aline Farley', '8075051789', 'Iusto fugiat quia ne', '756', 'Irure sed repellendu', 'nil', 'none', 'nil', '0+', 1, '0', NULL, '2025-08-06 09:15:14', '2025-08-06 11:13:41', 'user', NULL, '438293', '4213', '2025-08-06 11:18:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clinics_email_unique` (`email`);

--
-- Indexes for table `clinic_prescriptions`
--
ALTER TABLE `clinic_prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clinic_prescriptions_user_id_foreign` (`user_id`),
  ADD KEY `clinic_prescriptions_clinic_id_foreign` (`clinic_id`);

--
-- Indexes for table `delivery_agents`
--
ALTER TABLE `delivery_agents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `delivery_agents_delivery_agent_id_foreign` (`delivery_agent_id`),
  ADD KEY `delivery_agents_customer_id_foreign` (`customer_id`),
  ADD KEY `delivery_agents_pres_id_foreign` (`pres_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicines_pharmacy_id_foreign` (`pharmacy_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_pres_id_foreign` (`pres_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pharmacies`
--
ALTER TABLE `pharmacies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pharmacies_email_unique` (`email`);

--
-- Indexes for table `pharmacy_medicines`
--
ALTER TABLE `pharmacy_medicines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_medicines_pharmacy_prescription_id_foreign` (`pharmacy_prescription_id`);

--
-- Indexes for table `pharmacy_prescriptions`
--
ALTER TABLE `pharmacy_prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pharmacy_prescriptions_user_id_foreign` (`user_id`),
  ADD KEY `pharmacy_prescriptions_pharmacy_id_foreign` (`pharmacy_id`);

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
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clinic_prescriptions`
--
ALTER TABLE `clinic_prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `delivery_agents`
--
ALTER TABLE `delivery_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4072;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pharmacies`
--
ALTER TABLE `pharmacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pharmacy_medicines`
--
ALTER TABLE `pharmacy_medicines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `pharmacy_prescriptions`
--
ALTER TABLE `pharmacy_prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clinic_prescriptions`
--
ALTER TABLE `clinic_prescriptions`
  ADD CONSTRAINT `clinic_prescriptions_clinic_id_foreign` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clinic_prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `delivery_agents`
--
ALTER TABLE `delivery_agents`
  ADD CONSTRAINT `delivery_agents_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_agents_delivery_agent_id_foreign` FOREIGN KEY (`delivery_agent_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `delivery_agents_pres_id_foreign` FOREIGN KEY (`pres_id`) REFERENCES `pharmacy_prescriptions` (`id`);

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_pres_id_foreign` FOREIGN KEY (`pres_id`) REFERENCES `pharmacy_prescriptions` (`id`);

--
-- Constraints for table `pharmacy_medicines`
--
ALTER TABLE `pharmacy_medicines`
  ADD CONSTRAINT `pharmacy_medicines_pharmacy_prescription_id_foreign` FOREIGN KEY (`pharmacy_prescription_id`) REFERENCES `pharmacy_prescriptions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pharmacy_prescriptions`
--
ALTER TABLE `pharmacy_prescriptions`
  ADD CONSTRAINT `pharmacy_prescriptions_pharmacy_id_foreign` FOREIGN KEY (`pharmacy_id`) REFERENCES `pharmacies` (`id`),
  ADD CONSTRAINT `pharmacy_prescriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
