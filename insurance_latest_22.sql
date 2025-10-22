-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2025 at 01:47 PM
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
-- Database: `insurance_latest`
--

-- --------------------------------------------------------

--
-- Table structure for table `accident_person_data`
--

CREATE TABLE `accident_person_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_photos_of_the_vehicle_damage` varchar(255) DEFAULT NULL,
  `was_anyone_injured_in_the_accident` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `accident_occuring` text DEFAULT NULL,
  `date_time_of_accident` text DEFAULT NULL,
  `place_of_accident` text DEFAULT NULL,
  `road_details` text DEFAULT NULL,
  `elaborate_description_of_the_accident` text DEFAULT NULL,
  `date_of_fir` text DEFAULT NULL,
  `fir_charges` text DEFAULT NULL,
  `road_details_high_way_city_road_lane_etc` text DEFAULT NULL,
  `pollution_validity_from_to` text DEFAULT NULL,
  `whether_the_doa_is_within_the_policy_period` text DEFAULT NULL,
  `name_and_address_of_the_injured` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_person_data`
--

INSERT INTO `accident_person_data` (`id`, `assign_work_id`, `executive_id`, `upload_photos_of_the_vehicle_damage`, `was_anyone_injured_in_the_accident`, `location`, `created_at`, `updated_at`, `accident_occuring`, `date_time_of_accident`, `place_of_accident`, `road_details`, `elaborate_description_of_the_accident`, `date_of_fir`, `fir_charges`, `road_details_high_way_city_road_lane_etc`, `pollution_validity_from_to`, `whether_the_doa_is_within_the_policy_period`, `name_and_address_of_the_injured`) VALUES
(1, 5, 19, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 38, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 19, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 21, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 35, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 36, 38, 'uploads/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg', NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 37, 38, 'spot_uploads/ZZonvKLG4AU1jQ6PuFeQfyqm4FXFw9GfIcqgRRKt.jpg', NULL, NULL, '2025-09-29 07:18:12', '2025-10-18 07:49:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 46, 51, NULL, NULL, NULL, '2025-10-18 10:21:35', '2025-10-18 10:21:35', NULL, NULL, 'Manjeri', NULL, NULL, '2025-10-15', '35', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accident_person_data_old`
--

CREATE TABLE `accident_person_data_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_photos_of_the_vehicle_damage` varchar(255) DEFAULT NULL,
  `was_anyone_injured_in_the_accident` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `accident55` text DEFAULT NULL,
  `accident_occuring` text DEFAULT NULL,
  `date_time_of_accident` text DEFAULT NULL,
  `place_of_accident` text DEFAULT NULL,
  `road_details` text DEFAULT NULL,
  `elaborate_description_of_the_accident` text DEFAULT NULL,
  `date_of_fir` text DEFAULT NULL,
  `fir_charges` text DEFAULT NULL,
  `road_details_high_way_city_road_lane_etc` text DEFAULT NULL,
  `pollution_validity_from_to` text DEFAULT NULL,
  `whether_the_doa_is_within_the_policy_period` text DEFAULT NULL,
  `name_and_address_of_the_injured` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_person_data_old`
--

INSERT INTO `accident_person_data_old` (`id`, `assign_work_id`, `executive_id`, `upload_photos_of_the_vehicle_damage`, `was_anyone_injured_in_the_accident`, `created_at`, `updated_at`, `accident55`, `accident_occuring`, `date_time_of_accident`, `place_of_accident`, `road_details`, `elaborate_description_of_the_accident`, `date_of_fir`, `fir_charges`, `road_details_high_way_city_road_lane_etc`, `pollution_validity_from_to`, `whether_the_doa_is_within_the_policy_period`, `name_and_address_of_the_injured`) VALUES
(1, 5, 19, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 38, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 19, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 21, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 35, 38, 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 36, 38, 'uploads/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg', NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 37, 38, 'uploads/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg', NULL, '2025-09-29 07:18:12', '2025-09-29 07:18:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 46, 51, NULL, NULL, '2025-10-18 10:21:35', '2025-10-18 10:21:35', NULL, NULL, NULL, 'Manjeri', NULL, NULL, '2025-10-15', '35', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `assign_work_data`
--

CREATE TABLE `assign_work_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `garage_reassign_status` varchar(50) DEFAULT NULL,
  `garage_re_assign_count` int(10) UNSIGNED DEFAULT 0,
  `driver_reassign_status` varchar(50) DEFAULT NULL,
  `driver_re_assign_count` int(10) UNSIGNED DEFAULT 0,
  `spot_reassign_status` varchar(50) DEFAULT NULL,
  `spot_re_assign_count` int(10) UNSIGNED DEFAULT 0,
  `owner_reassign_status` varchar(50) DEFAULT NULL,
  `owner_re_assign_count` int(10) UNSIGNED DEFAULT 0,
  `accident_person_reassign_status` varchar(50) DEFAULT NULL,
  `accident_person_re_assign_count` int(10) UNSIGNED DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assign_work_data`
--

INSERT INTO `assign_work_data` (`id`, `case_id`, `garage_reassign_status`, `garage_re_assign_count`, `driver_reassign_status`, `driver_re_assign_count`, `spot_reassign_status`, `spot_re_assign_count`, `owner_reassign_status`, `owner_re_assign_count`, `accident_person_reassign_status`, `accident_person_re_assign_count`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-16 07:44:10', '2025-09-16 07:44:10'),
(2, 2, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-16 10:38:04', '2025-09-16 10:38:04'),
(3, 3, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-16 11:12:03', '2025-09-16 11:12:03'),
(4, 4, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-16 13:58:55', '2025-09-16 13:58:55'),
(5, 5, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-17 05:54:27', '2025-09-17 06:13:58'),
(6, 6, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-17 09:21:23', '2025-09-17 09:21:23'),
(7, 7, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-17 09:27:53', '2025-09-17 09:27:53'),
(8, 8, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-17 09:39:52', '2025-09-17 09:39:52'),
(9, 9, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 04:40:26', '2025-09-18 04:40:26'),
(10, 10, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 04:45:56', '2025-09-18 04:45:56'),
(11, 11, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 07:24:26', '2025-09-18 07:24:26'),
(12, 12, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 07:42:50', '2025-09-18 07:42:50'),
(13, 13, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 08:22:02', '2025-09-18 08:22:02'),
(14, 14, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-18 08:43:12', '2025-09-18 08:43:12'),
(15, 15, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-19 03:50:37', '2025-09-19 04:01:30'),
(17, 17, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-19 08:02:04', '2025-09-19 08:02:04'),
(18, 18, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-19 08:02:05', '2025-09-19 08:02:05'),
(19, 19, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-22 04:29:02', '2025-09-22 04:36:20'),
(20, 20, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 10:40:20', '2025-09-22 10:40:20'),
(21, 21, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-22 11:20:29', '2025-09-22 11:23:13'),
(22, 22, '1', 1, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:17:00', '2025-09-23 11:15:48'),
(23, 23, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:17:00', '2025-09-22 12:17:00'),
(24, 24, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:18:10', '2025-09-22 12:18:10'),
(25, 25, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:18:10', '2025-09-22 12:18:10'),
(26, 26, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:21:35', '2025-09-22 12:21:35'),
(27, 27, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:21:36', '2025-09-22 12:21:36'),
(28, 28, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:31:53', '2025-09-22 12:31:53'),
(29, 29, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:32:38', '2025-09-22 12:32:38'),
(30, 30, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:32:38', '2025-09-22 12:32:38'),
(31, 31, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:42:31', '2025-09-22 12:42:31'),
(32, 32, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:44:45', '2025-09-22 12:44:45'),
(33, 33, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:49:07', '2025-09-22 12:49:07'),
(34, 34, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-22 12:50:43', '2025-09-22 12:50:43'),
(35, 35, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-23 11:22:09', '2025-09-23 11:27:14'),
(36, 36, NULL, 0, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-29 06:56:34', '2025-09-29 07:07:26'),
(37, 37, '1', 1, '1', 1, '1', 1, '1', 1, '1', 1, '2025-09-29 07:14:41', '2025-09-29 07:18:12'),
(38, 38, '1', 4, '1', 4, '1', 4, NULL, 0, NULL, 0, '2025-09-30 07:59:36', '2025-09-30 08:50:40'),
(39, 39, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-07 07:28:01', '2025-10-07 07:28:01'),
(40, 40, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-07 10:33:12', '2025-10-07 10:33:12'),
(41, 41, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-07 10:41:06', '2025-10-07 10:41:06'),
(42, 42, '1', 1, '1', 1, '1', 1, NULL, 0, NULL, 0, '2025-10-07 10:47:31', '2025-10-07 10:54:25'),
(43, 43, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-08 12:17:20', '2025-10-08 12:17:20'),
(44, 44, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-17 05:38:48', '2025-10-17 05:38:48'),
(45, 45, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-17 12:22:41', '2025-10-17 12:22:41'),
(46, 46, '1', 1, NULL, 0, NULL, 0, NULL, 0, '1', 1, '2025-10-18 09:40:35', '2025-10-18 10:21:35'),
(47, 47, '1', 1, '1', 1, NULL, 0, '1', 1, NULL, 0, '2025-10-21 04:39:06', '2025-10-21 04:46:51'),
(48, 48, '1', 1, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-22 04:12:51', '2025-10-22 04:24:16'),
(49, 49, '1', 2, NULL, 0, '1', 2, NULL, 0, NULL, 0, '2025-10-22 05:17:02', '2025-10-22 05:24:45'),
(50, 50, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-10-22 06:02:16', '2025-10-22 06:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `case_assignments`
--

CREATE TABLE `case_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `executive_driver` bigint(20) UNSIGNED NOT NULL,
  `executive_garage` bigint(20) UNSIGNED NOT NULL,
  `executive_spot` bigint(20) UNSIGNED NOT NULL,
  `executive_meeting` bigint(20) UNSIGNED NOT NULL,
  `executive_accident_person` bigint(20) UNSIGNED DEFAULT NULL,
  `date` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `other` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `case_status` varchar(255) NOT NULL,
  `is_fake` varchar(11) DEFAULT NULL,
  `create_by` varchar(255) NOT NULL,
  `update_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `case_assignments`
--

INSERT INTO `case_assignments` (`id`, `case_id`, `company_id`, `customer_id`, `executive_driver`, `executive_garage`, `executive_spot`, `executive_meeting`, `executive_accident_person`, `date`, `type`, `other`, `status`, `case_status`, `is_fake`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 26, 23, 26, 20, 20, 17, 17, 20, '2025-09-22', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-16 07:44:10', '2025-09-16 07:44:10'),
(2, 27, 23, 27, 23, 23, 23, 23, 23, '2025-09-16', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-16 10:38:04', '2025-09-16 14:14:50'),
(3, 28, 23, 28, 25, 25, 25, 25, 25, '2025-09-22', 'MACT', NULL, '1', '1', NULL, '1', '1', '2025-09-16 11:12:03', '2025-09-16 14:14:52'),
(4, 29, 22, 29, 12, 12, 12, 12, 12, '2025-09-22', 'MACT', NULL, '1', '1', NULL, '1', '1', '2025-09-16 13:58:55', '2025-09-16 14:14:54'),
(5, 30, 22, 30, 19, 19, 19, 19, 19, '2025-09-18', 'MACT', NULL, '2', '1', NULL, '1', '1', '2025-09-17 05:54:27', '2025-09-17 06:13:58'),
(6, 31, 24, 31, 19, 19, 19, 19, 19, '2025-09-17', 'OD', NULL, '2', '1', NULL, '1', '1', '2025-09-17 09:21:23', '2025-09-18 07:52:31'),
(7, 32, 25, 32, 19, 19, 19, 19, 19, '2025-09-22', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-17 09:27:53', '2025-09-17 09:27:53'),
(8, 33, 26, 33, 19, 19, 19, 19, 19, '2025-09-23', 'MACT', NULL, '1', '1', NULL, '1', '1', '2025-09-17 09:39:52', '2025-09-17 09:39:52'),
(9, 34, 32, 34, 19, 19, 19, 19, 19, '2025-09-19', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 04:40:26', '2025-09-20 06:35:56'),
(10, 35, 33, 35, 19, 19, 19, 19, 19, '2025-09-18', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 04:45:56', '2025-09-20 06:36:00'),
(11, 36, 32, 36, 19, 19, 19, 19, 19, '2025-09-21', 'OD', NULL, '0', '2', NULL, '1', '1', '2025-09-18 07:24:26', '2025-09-20 06:36:03'),
(12, 37, 22, 37, 19, 19, 19, 19, 19, '2025-09-22', 'OD', NULL, '1', '0', NULL, '1', '1', '2025-09-18 07:42:50', '2025-09-19 05:47:40'),
(13, 38, 32, 38, 19, 19, 22, 22, 19, '2025-09-22', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 08:22:02', '2025-09-19 05:47:07'),
(14, 39, 34, 39, 23, 19, 19, 19, 19, '2025-09-22', 'OD', NULL, '0', '1', NULL, '1', '1', '2025-09-18 08:43:12', '2025-09-19 05:47:16'),
(15, 40, 22, 40, 38, 38, 38, 38, 38, '2025-09-29', 'OD', NULL, '2', '1', NULL, '1', '1', '2025-09-19 03:50:37', '2025-09-19 04:01:29'),
(17, 34, 32, 34, 38, 38, 38, 36, 38, '2025-09-22', 'OD', 'fxx', '1', '1', NULL, '1', '1', '2025-09-19 08:02:04', '2025-09-19 08:02:04'),
(18, 34, 32, 34, 38, 38, 38, 36, 38, '2025-09-22', 'OD', 'fxx', '1', '1', NULL, '1', '1', '2025-09-19 08:02:05', '2025-09-19 08:02:05'),
(19, 42, 35, 42, 38, 38, 38, 38, 38, '2025-09-23', 'MACT', 'ffd', '2', '1', NULL, '1', '1', '2025-09-22 04:29:02', '2025-09-22 04:36:20'),
(20, 43, 2, 43, 36, 36, 36, 36, 36, '2025-09-24', 'OD', 'tyyt', '1', '1', NULL, '1', '1', '2025-09-22 10:40:20', '2025-09-22 10:40:20'),
(21, 44, 35, 44, 38, 38, 38, 38, 38, '2025-09-25', 'OD', 'gre', '2', '1', NULL, '1', '1', '2025-09-22 11:20:29', '2025-09-22 11:23:13'),
(22, 44, 35, 44, 38, 38, 38, 38, 38, '2025-09-30', 'OD', 'ffffffd', '2', '1', NULL, '1', '1', '2025-09-22 12:17:00', '2025-09-23 11:15:48'),
(23, 44, 35, 44, 38, 38, 38, 38, 38, '2025-09-30', 'OD', 'ffffffd', '1', '1', NULL, '1', '1', '2025-09-22 12:17:00', '2025-09-22 12:17:00'),
(24, 42, 35, 42, 38, 38, 38, 38, 38, '2025-09-29', 'MACT', 'ggggggff', '1', '1', NULL, '1', '1', '2025-09-22 12:18:10', '2025-09-22 12:18:10'),
(25, 42, 35, 42, 38, 38, 38, 38, 38, '2025-09-29', 'MACT', 'ggggggff', '1', '1', NULL, '1', '1', '2025-09-22 12:18:10', '2025-09-22 12:18:10'),
(26, 43, 2, 43, 38, 38, 38, 38, 38, '2025-09-23', 'OD', 'ffffffffss', '1', '1', NULL, '1', '1', '2025-09-22 12:21:35', '2025-09-22 12:21:35'),
(27, 43, 2, 43, 38, 38, 38, 38, 38, '2025-09-23', 'OD', 'ffffffffss', '1', '1', NULL, '1', '1', '2025-09-22 12:21:36', '2025-09-22 12:21:36'),
(28, 45, 2, 45, 38, 38, 38, 38, 38, '2025-09-24', 'OD', 'vvv', '1', '1', NULL, '1', '1', '2025-09-22 12:31:53', '2025-09-22 12:31:53'),
(29, 45, 2, 45, 35, 35, 35, 35, 35, '2025-09-30', 'OD', 'best for future', '1', '1', NULL, '1', '1', '2025-09-22 12:32:38', '2025-09-22 12:32:38'),
(30, 45, 2, 45, 35, 35, 35, 35, 35, '2025-09-30', 'OD', 'best for future', '1', '1', NULL, '1', '1', '2025-09-22 12:32:38', '2025-09-22 12:32:38'),
(31, 46, 2, 46, 35, 35, 35, 35, 35, '2025-09-24', 'OD', 'dsaa', '1', '1', NULL, '1', '1', '2025-09-22 12:42:31', '2025-09-22 12:42:31'),
(32, 46, 2, 46, 36, 36, 36, 36, 36, '2025-09-24', 'OD', 'fdd', '2', '1', NULL, '1', '1', '2025-09-22 12:44:45', '2025-10-10 09:39:34'),
(33, 47, 1, 47, 38, 38, 38, 38, 38, '2025-09-26', 'OD', 'hello', '1', '1', NULL, '1', '1', '2025-09-22 12:49:07', '2025-09-22 12:49:07'),
(34, 47, 1, 47, 40, 40, 40, 40, 40, '2025-09-24', 'OD', 'case data', '1', '1', NULL, '1', '1', '2025-09-22 12:50:43', '2025-09-22 12:50:43'),
(35, 48, 36, 48, 38, 38, 38, 38, 38, '2025-09-25', 'OD', 'vddaa', '2', '1', NULL, '1', '1', '2025-09-23 11:22:09', '2025-09-23 11:27:14'),
(36, 49, 35, 49, 38, 38, 38, 38, 38, '2025-09-29', 'OD', 'other data.....', '2', '1', NULL, '1', '1', '2025-09-29 06:56:34', '2025-09-29 07:07:26'),
(37, 50, 37, 50, 38, 38, 38, 38, 38, '2025-09-30', 'OD', 'other data here.........', '2', '1', NULL, '1', '1', '2025-09-29 07:14:41', '2025-09-29 07:18:11'),
(38, 51, 38, 51, 38, 38, 38, 38, 38, '2025-09-30', 'MACT', 'other descriptions here........', '2', '1', NULL, '1', '1', '2025-09-30 07:59:36', '2025-10-18 06:40:35'),
(39, 52, 35, 52, 34, 34, 34, 38, 34, '2025-10-29', 'MACT', 'ffffffffsr', '1', '1', NULL, '1', '1', '2025-10-07 07:28:01', '2025-10-18 06:31:48'),
(40, 53, 2, 53, 36, 36, 36, 36, 36, '2025-10-29', 'MACT', 'hhhhhfghgfh', '1', '1', NULL, '1', '1', '2025-10-07 10:33:12', '2025-10-07 10:33:12'),
(41, 54, 1, 54, 12, 12, 12, 12, 12, '2025-10-29', 'OD', 'jjjjjjjjggg', '1', '1', NULL, '1', '1', '2025-10-07 10:41:06', '2025-10-07 10:41:06'),
(42, 55, 40, 55, 34, 34, 34, 34, 34, '2025-10-15', 'OD', 'ddddddddda', '2', '1', NULL, '1', '1', '2025-10-07 10:47:31', '2025-10-07 10:54:25'),
(43, 56, 38, 56, 12, 12, 12, 12, 12, '2025-10-14', 'OD', 'ggggggg', '1', '1', NULL, '1', '1', '2025-10-08 12:17:20', '2025-10-08 12:17:20'),
(44, 57, 1, 57, 51, 51, 51, 51, 51, '2025-10-22', 'MACT', 'hhhhhhfg', '1', '1', NULL, '1', '1', '2025-10-17 05:38:48', '2025-10-17 05:38:48'),
(45, 58, 41, 58, 51, 51, 51, 51, 51, '2025-10-20', 'MACT', 'other data.............', '1', '1', NULL, '1', '1', '2025-10-17 12:22:41', '2025-10-17 12:22:41'),
(46, 59, 1, 59, 51, 51, 51, 51, 51, '2025-10-21', 'MACT', 'other descriptions', '2', '1', NULL, '1', '1', '2025-10-18 09:40:35', '2025-10-18 10:21:35'),
(47, 60, 2, 60, 51, 51, 51, 51, 51, '2025-10-23', 'OD', 'bc', '2', '1', NULL, '1', '1', '2025-10-21 04:39:06', '2025-10-21 04:46:51'),
(48, 61, 4, 61, 51, 51, 51, 51, 51, '2025-10-24', 'OD', 'vvv', '2', '1', NULL, '1', '1', '2025-10-22 04:12:51', '2025-10-22 04:17:57'),
(49, 62, 4, 62, 35, 51, 51, 51, 51, '2025-10-27', 'MACT', 'fffffffffsdfdf', '2', '1', NULL, '1', '1', '2025-10-22 05:17:02', '2025-10-22 10:00:17'),
(50, 62, 4, 62, 48, 48, 48, 48, 48, '2025-10-22', 'MACT', 'mkmk', '1', '1', NULL, '1', '1', '2025-10-22 06:02:16', '2025-10-22 06:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `company_logos`
--

CREATE TABLE `company_logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_logos`
--

INSERT INTO `company_logos` (`id`, `name`, `email`, `phone`, `place`, `logo`, `address`, `template`, `logo_path`, `created_at`, `updated_at`) VALUES
(1, 'Company 45', 'admin@mail.com', '7708782197', 'trivndrum', 'logos/mZEnA7FQztavyYSLZDhNifDkkbYqwFqwMTncQoru.png', 'ffs', '8', 'logos/company_logo_1759223774_mu7OW.png', '2024-12-03 04:15:05', '2025-10-15 05:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `driver_data`
--

CREATE TABLE `driver_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name_of_the_driver_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `what_is_the_drivers_contact_number` varchar(255) DEFAULT NULL,
  `was_the_driver_under_influence` varchar(255) DEFAULT NULL,
  `list_any_previous_driving_offenses` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_any_offence` varchar(255) DEFAULT NULL,
  `driving_accident_location` varchar(255) DEFAULT NULL,
  `driver_card` varchar(255) DEFAULT NULL,
  `registration_no_with_type` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `chassis_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `seating_capacity_including_driver` varchar(255) DEFAULT NULL,
  `no_of_occupants_at_the_time_of_the_accide` varchar(255) DEFAULT NULL,
  `rc_book_owner` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `relation_of_insured_if_any` varchar(255) DEFAULT NULL,
  `permit_validity` varchar(255) DEFAULT NULL,
  `fitness_validity` varchar(255) DEFAULT NULL,
  `pollution_validity` varchar(255) DEFAULT NULL,
  `policycover_note_no` varchar(255) DEFAULT NULL,
  `policycover_note_validity` date DEFAULT NULL,
  `whether_the_doa_is_within_the_policy_period` varchar(255) DEFAULT NULL,
  `policy_is_comprehensive_or_tp_liability_only` varchar(255) DEFAULT NULL,
  `if_goods_laden_details_of_the_goods_owner_etc` varchar(255) DEFAULT NULL,
  `details_of_the_damages_caused_to_the_vehicle` varchar(255) DEFAULT NULL,
  `driver_name_address_with_tele_no` varchar(255) DEFAULT NULL,
  `age_of_driver` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `relationship_of_driver_with_insured` varchar(255) DEFAULT NULL,
  `authorized_to_drive_eg_mc_with_gear_lmv_etc` varchar(255) DEFAULT NULL,
  `rtolicensing_authority` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `vehicle_make_model` varchar(255) DEFAULT NULL,
  `engine_no_chassis_no_model_make_etc` varchar(255) DEFAULT NULL,
  `class_of_vehicle` varchar(255) DEFAULT NULL,
  `no_of_occupants_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `relation_of_insured_if_any_with_injureddeceasedclaimant` varchar(255) DEFAULT NULL,
  `rc_validity_from_to` varchar(255) DEFAULT NULL,
  `permit_validity_from_to` varchar(255) DEFAULT NULL,
  `fitness_validity_from_to` varchar(255) DEFAULT NULL,
  `policy_cover_note_no_insurance_company` varchar(255) DEFAULT NULL,
  `policycover_note_validity_from_to` varchar(255) DEFAULT NULL,
  `details_of_the_damages_caused_to_the_goods_how_those_were_fu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_data`
--

INSERT INTO `driver_data` (`id`, `assign_work_id`, `executive_id`, `full_name_of_the_driver_at_the_time_of_the_accident`, `what_is_the_drivers_contact_number`, `was_the_driver_under_influence`, `list_any_previous_driving_offenses`, `location`, `created_at`, `updated_at`, `driver_any_offence`, `driving_accident_location`, `driver_card`, `registration_no_with_type`, `engine_no`, `chassis_no`, `model_no`, `seating_capacity_including_driver`, `no_of_occupants_at_the_time_of_the_accide`, `rc_book_owner`, `name_of_insured`, `relation_of_insured_if_any`, `permit_validity`, `fitness_validity`, `pollution_validity`, `policycover_note_no`, `policycover_note_validity`, `whether_the_doa_is_within_the_policy_period`, `policy_is_comprehensive_or_tp_liability_only`, `if_goods_laden_details_of_the_goods_owner_etc`, `details_of_the_damages_caused_to_the_vehicle`, `driver_name_address_with_tele_no`, `age_of_driver`, `date_of_birth`, `relationship_of_driver_with_insured`, `authorized_to_drive_eg_mc_with_gear_lmv_etc`, `rtolicensing_authority`, `vehicle_no`, `vehicle_make_model`, `engine_no_chassis_no_model_make_etc`, `class_of_vehicle`, `no_of_occupants_at_the_time_of_the_accident`, `relation_of_insured_if_any_with_injureddeceasedclaimant`, `rc_validity_from_to`, `permit_validity_from_to`, `fitness_validity_from_to`, `policy_cover_note_no_insurance_company`, `policycover_note_validity_from_to`, `details_of_the_damages_caused_to_the_goods_how_those_were_fu`) VALUES
(1, 5, 19, NULL, NULL, NULL, NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, 'Locations43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 38, NULL, NULL, NULL, NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'Malappuram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 19, 38, 'Babulen', NULL, NULL, NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 21, 38, 'fdfdf', NULL, NULL, NULL, NULL, '2025-09-22 11:23:13', '2025-10-13 11:24:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 35, 38, 'Manish', NULL, NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 36, 38, NULL, NULL, '1', NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 37, 38, 'nbnbn', NULL, 'No', 'fffffffd', NULL, '2025-09-29 07:18:12', '2025-10-18 07:49:07', NULL, 'ktkl', 'driver_uploads/T0VekPwvkPUQ6fGfPNeakwnTweXXl1aXZjJ8Ueh0.gif', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 38, 38, 'Arfan', NULL, '1', NULL, NULL, '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 38, 38, 'Arfan', NULL, '0', NULL, NULL, '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 38, 38, 'Arfan', NULL, '0', NULL, NULL, '2025-09-30 08:46:34', '2025-09-30 08:46:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 38, 38, 'hjgjghj', NULL, '1', NULL, NULL, '2025-09-30 08:50:40', '2025-10-18 06:41:46', 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 42, 34, 'Driver lkshmi', NULL, NULL, NULL, NULL, '2025-10-07 10:54:25', '2025-10-13 11:40:37', NULL, NULL, 'driver_uploads/13mzqOIv88u7FWkc9O0VawLraxbKac8nwbndeFag.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 47, 51, NULL, NULL, NULL, NULL, NULL, '2025-10-21 04:46:51', '2025-10-22 11:12:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Esteem', 'est444', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `driver_data_old`
--

CREATE TABLE `driver_data_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name_of_the_driver_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `what_is_the_drivers_contact_number` varchar(255) DEFAULT NULL,
  `was_the_driver_under_influence` varchar(255) DEFAULT NULL,
  `did_the_driver_receive_any_injuries` varchar(255) DEFAULT NULL,
  `list_any_previous_driving_offenses` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_any_offence` varchar(255) DEFAULT NULL,
  `driving_accident_location` varchar(255) DEFAULT NULL,
  `driver23` varchar(255) DEFAULT NULL,
  `driver_card` varchar(255) DEFAULT NULL,
  `registration_no_with_type` varchar(255) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `chassis_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `seating_capacity_including_driver` varchar(255) DEFAULT NULL,
  `no_of_occupants_at_the_time_of_the_accide` varchar(255) DEFAULT NULL,
  `rc_book_owner` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `relation_of_insured_if_any` varchar(255) DEFAULT NULL,
  `permit_validity` varchar(255) DEFAULT NULL,
  `fitness_validity` varchar(255) DEFAULT NULL,
  `pollution_validity` varchar(255) DEFAULT NULL,
  `policycover_note_no` varchar(255) DEFAULT NULL,
  `policycover_note_validity` date DEFAULT NULL,
  `whether_the_doa_is_within_the_policy_period` varchar(255) DEFAULT NULL,
  `policy_is_comprehensive_or_tp_liability_only` varchar(255) DEFAULT NULL,
  `if_goods_laden_details_of_the_goods_owner_etc` varchar(255) DEFAULT NULL,
  `details_of_the_damages_caused_to_the_vehicle` varchar(255) DEFAULT NULL,
  `driver_name_address_with_tele_no` varchar(255) DEFAULT NULL,
  `age_of_driver` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `relationship_of_driver_with_insured` varchar(255) DEFAULT NULL,
  `authorized_to_drive_eg_mc_with_gear_lmv_etc` varchar(255) DEFAULT NULL,
  `rtolicensing_authority` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `vehicle_make_model` varchar(255) DEFAULT NULL,
  `engine_no_chassis_no_model_make_etc` varchar(255) DEFAULT NULL,
  `class_of_vehicle` varchar(255) DEFAULT NULL,
  `no_of_occupants_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `relation_of_insured_if_any_with_injureddeceasedclaimant` varchar(255) DEFAULT NULL,
  `rc_validity_from_to` varchar(255) DEFAULT NULL,
  `permit_validity_from_to` varchar(255) DEFAULT NULL,
  `fitness_validity_from_to` varchar(255) DEFAULT NULL,
  `policy_cover_note_no_insurance_company` varchar(255) DEFAULT NULL,
  `policycover_note_validity_from_to` varchar(255) DEFAULT NULL,
  `details_of_the_damages_caused_to_the_goods_how_those_were_fu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_data_old`
--

INSERT INTO `driver_data_old` (`id`, `assign_work_id`, `executive_id`, `full_name_of_the_driver_at_the_time_of_the_accident`, `what_is_the_drivers_contact_number`, `was_the_driver_under_influence`, `did_the_driver_receive_any_injuries`, `list_any_previous_driving_offenses`, `created_at`, `updated_at`, `driver_any_offence`, `driving_accident_location`, `driver23`, `driver_card`, `registration_no_with_type`, `engine_no`, `chassis_no`, `model_no`, `seating_capacity_including_driver`, `no_of_occupants_at_the_time_of_the_accide`, `rc_book_owner`, `name_of_insured`, `relation_of_insured_if_any`, `permit_validity`, `fitness_validity`, `pollution_validity`, `policycover_note_no`, `policycover_note_validity`, `whether_the_doa_is_within_the_policy_period`, `policy_is_comprehensive_or_tp_liability_only`, `if_goods_laden_details_of_the_goods_owner_etc`, `details_of_the_damages_caused_to_the_vehicle`, `driver_name_address_with_tele_no`, `age_of_driver`, `date_of_birth`, `relationship_of_driver_with_insured`, `authorized_to_drive_eg_mc_with_gear_lmv_etc`, `rtolicensing_authority`, `vehicle_no`, `vehicle_make_model`, `engine_no_chassis_no_model_make_etc`, `class_of_vehicle`, `no_of_occupants_at_the_time_of_the_accident`, `relation_of_insured_if_any_with_injureddeceasedclaimant`, `rc_validity_from_to`, `permit_validity_from_to`, `fitness_validity_from_to`, `policy_cover_note_no_insurance_company`, `policycover_note_validity_from_to`, `details_of_the_damages_caused_to_the_goods_how_those_were_fu`) VALUES
(1, 5, 19, NULL, NULL, NULL, '1', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, 'Locations43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 38, NULL, NULL, NULL, '1', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'Malappuram', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 19, 38, 'Babulen', NULL, NULL, NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 21, 38, 'Manish', NULL, NULL, NULL, NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 35, 38, 'Manish', NULL, NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 36, 38, NULL, NULL, '1', NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 37, 38, NULL, NULL, '1', NULL, NULL, '2025-09-29 07:18:12', '2025-09-29 07:18:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 38, 38, 'Arfan', NULL, '1', NULL, NULL, '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 38, 38, 'Arfan', NULL, '0', NULL, NULL, '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 38, 38, 'Arfan', NULL, '0', NULL, NULL, '2025-09-30 08:46:34', '2025-09-30 08:46:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 38, 38, 'Arfan', NULL, '1', NULL, NULL, '2025-09-30 08:50:40', '2025-09-30 08:50:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 42, 34, 'Davic', NULL, NULL, NULL, NULL, '2025-10-07 10:54:25', '2025-10-07 10:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 47, 51, NULL, NULL, NULL, NULL, NULL, '2025-10-21 04:46:51', '2025-10-21 04:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Esteem', 'EST6755', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
-- Table structure for table `final_reports`
--

CREATE TABLE `final_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED DEFAULT NULL,
  `what_is_the_name_of_the_garage` varchar(255) DEFAULT NULL,
  `upload_a_photo_of_the_garage_sign_or_front_view` varchar(255) DEFAULT NULL,
  `enter_the_address_or_coordinates_of_the_accident_spot` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `what_is_the_drivers_contact_number` varchar(255) DEFAULT NULL,
  `accident55` varchar(255) DEFAULT NULL,
  `garage15` varchar(255) DEFAULT NULL,
  `garage14` varchar(255) DEFAULT NULL,
  `garage_gate_date` varchar(255) DEFAULT NULL,
  `driver_any_offence` varchar(255) DEFAULT NULL,
  `garage_number` varchar(255) DEFAULT NULL,
  `list_any_previous_driving_offenses` varchar(255) DEFAULT NULL,
  `spot_photo` varchar(255) DEFAULT NULL,
  `was_any_agreement_or_document_signed` varchar(255) DEFAULT NULL,
  `driving_accident_location` varchar(255) DEFAULT NULL,
  `did_the_driver_receive_any_injuries` varchar(255) DEFAULT NULL,
  `were_any_traffic_signals_nearby` varchar(255) DEFAULT NULL,
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL,
  `full_name_of_the_driver_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `who_did_you_meet_regarding_the_accident_name_role` varchar(255) DEFAULT NULL,
  `upload_photos_of_the_vehicle_damage` varchar(255) DEFAULT NULL,
  `address_pertains_to_negative_area` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `what_is_garage_car` varchar(255) DEFAULT NULL,
  `was_the_driver_under_influence` varchar(255) DEFAULT NULL,
  `date_of_the_meeting` varchar(255) DEFAULT NULL,
  `was_there_any_police_presence_at_the_location` varchar(255) DEFAULT NULL,
  `owner_account` varchar(255) DEFAULT NULL,
  `what_was_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `garaeg_number` varchar(255) DEFAULT NULL,
  `mact_no` varchar(255) DEFAULT NULL,
  `case_title` varchar(255) DEFAULT NULL,
  `claim_intimation_to_call_centre` varchar(255) DEFAULT NULL,
  `insureds_address_contact_no` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `claim_no` varchar(255) DEFAULT NULL,
  `status_of_the_injured` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `vehicle_make_model` varchar(255) DEFAULT NULL,
  `date_of_loss` varchar(255) DEFAULT NULL,
  `date_of_submission_of_the_investigation_report` varchar(255) DEFAULT NULL,
  `opmv_no` varchar(255) DEFAULT NULL,
  `date_of_entrustment_of_the_investigation` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL,
  `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports`
--

INSERT INTO `final_reports` (`id`, `case_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `enter_the_address_or_coordinates_of_the_accident_spot`, `created_at`, `updated_at`, `what_is_the_drivers_contact_number`, `accident55`, `garage15`, `garage14`, `garage_gate_date`, `driver_any_offence`, `garage_number`, `list_any_previous_driving_offenses`, `spot_photo`, `was_any_agreement_or_document_signed`, `driving_accident_location`, `did_the_driver_receive_any_injuries`, `were_any_traffic_signals_nearby`, `what_is_the_garages_registration_number`, `full_name_of_the_driver_at_the_time_of_the_accident`, `who_did_you_meet_regarding_the_accident_name_role`, `upload_photos_of_the_vehicle_damage`, `address_pertains_to_negative_area`, `pan_number`, `what_is_garage_car`, `was_the_driver_under_influence`, `date_of_the_meeting`, `was_there_any_police_presence_at_the_location`, `owner_account`, `what_was_discussed_in_the_meeting`, `garaeg_number`, `mact_no`, `case_title`, `claim_intimation_to_call_centre`, `insureds_address_contact_no`, `name_of_insured`, `claim_no`, `status_of_the_injured`, `vehicle_no`, `vehicle_make_model`, `date_of_loss`, `date_of_submission_of_the_investigation_report`, `opmv_no`, `date_of_entrustment_of_the_investigation`, `court`, `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo`) VALUES
(1, 5, 'ddddddd', NULL, NULL, '2025-09-17 06:15:06', '2025-09-17 06:21:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'Garage567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 19, 'Garage567', NULL, NULL, '2025-09-22 04:36:40', '2025-09-22 04:37:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babulen', 'Meeting is accurate', '[\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 35, NULL, '[\"garage_uploads\\/JKU1iJiTjixBB95EVA21PjIjhFPuyLHDZbFsJaGD.jpg\"]', NULL, '2025-09-23 11:27:28', '2025-09-29 06:30:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish', 'Meeting455', '[\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"]', 'Fast', 'PAN123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 37, NULL, '[\"garage_uploads\\/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg\"]', '102.45,115.87', '2025-09-29 07:18:27', '2025-10-18 08:04:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'No', 'GR1234553', 'nbnbn', 'sddddddd', '[\"spot_uploads\\/ZZonvKLG4AU1jQ6PuFeQfyqm4FXFw9GfIcqgRRKt.jpg\"]', 'dfdfd', '342344', NULL, 'No', '2024-10-05', NULL, '[\"owner_uploads\\/nQy7ireGIp3LgceqsESHZtjAYOBoLmVuhbNpQAZv.jpg\"]', 'very good data', '54545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 38, NULL, '[\"garage_uploads\\/h3aBo8eKnWmpZiSJKM29FREhoDpLKDeEbZizuvGb.jpg\"]', '102.45,103.73', '2025-09-30 08:40:54', '2025-10-18 06:51:30', NULL, NULL, NULL, NULL, '2024-10-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3321', 'Arfan', NULL, NULL, NULL, 'hfghhhhhhhhhhhhh', 'NULL', '1', NULL, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 42, NULL, '[\"garage_uploads\\/vx01Ir0goGPnZN1aJwSmXnQCAqGK06YIflw2FKL7.jpg\"]', '112.45,115.77', '2025-10-07 10:55:29', '2025-10-13 11:43:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gfd', NULL, NULL, NULL, 'PAN122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 21, NULL, NULL, NULL, '2025-10-13 10:56:57', '2025-10-13 11:20:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish', NULL, NULL, NULL, NULL, 'vcasderr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 46, NULL, NULL, NULL, '2025-10-20 06:05:28', '2025-10-20 11:26:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MACT56478', 'case descryyyyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 47, NULL, NULL, NULL, '2025-10-21 04:50:20', '2025-10-22 11:12:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abcd', '9961242558', 'Ajlan', 'Claim56', 'Dangerous', 'Esteem', 'est444', '2025-10-21', NULL, NULL, NULL, NULL, NULL),
(11, 48, NULL, NULL, NULL, '2025-10-22 04:24:49', '2025-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '123455', '2025-10-04', 'Calicut', NULL),
(12, 49, NULL, NULL, NULL, '2025-10-22 05:25:13', '2025-10-22 05:25:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-04', NULL, 'Case7745');

-- --------------------------------------------------------

--
-- Table structure for table `final_reports_new`
--

CREATE TABLE `final_reports_new` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED DEFAULT NULL,
  `what_is_the_name_of_the_garage` varchar(255) DEFAULT NULL,
  `upload_a_photo_of_the_garage_sign_or_front_view` varchar(255) DEFAULT NULL,
  `date_of_the_meeting` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `enter_the_address_or_coordinates_of_the_accident_spot` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `what_is_the_drivers_contact_number` varchar(255) DEFAULT NULL,
  `accident55` varchar(255) DEFAULT NULL,
  `garage15` varchar(255) DEFAULT NULL,
  `garage14` varchar(255) DEFAULT NULL,
  `garage_gate_date` varchar(255) DEFAULT NULL,
  `driver_any_offence` varchar(255) DEFAULT NULL,
  `garage_number` varchar(255) DEFAULT NULL,
  `list_any_previous_driving_offenses` varchar(255) DEFAULT NULL,
  `spot_photo` varchar(255) DEFAULT NULL,
  `was_any_agreement_or_document_signed` varchar(255) DEFAULT NULL,
  `driving_accident_location` varchar(255) DEFAULT NULL,
  `did_the_driver_receive_any_injuries` varchar(255) DEFAULT NULL,
  `were_any_traffic_signals_nearby` varchar(255) DEFAULT NULL,
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL,
  `full_name_of_the_driver_at_the_time_of_the_accident` varchar(255) DEFAULT NULL,
  `who_did_you_meet_regarding_the_accident_name_role` varchar(255) DEFAULT NULL,
  `upload_photos_of_the_vehicle_damage` varchar(255) DEFAULT NULL,
  `address_pertains_to_negative_area` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `what_is_garage_car` varchar(255) DEFAULT NULL,
  `was_the_driver_under_influence` varchar(255) DEFAULT NULL,
  `was_there_any_police_presence_at_the_location` varchar(255) DEFAULT NULL,
  `owner_account` varchar(255) DEFAULT NULL,
  `what_was_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `garaeg_number` varchar(255) DEFAULT NULL,
  `mact_no` varchar(255) DEFAULT NULL,
  `case_title` varchar(255) DEFAULT NULL,
  `claim_intimation_to_call_centre` varchar(255) DEFAULT NULL,
  `insureds_address_contact_no` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `claim_no` varchar(255) DEFAULT NULL,
  `status_of_the_injured` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(255) DEFAULT NULL,
  `vehicle_make_model` varchar(255) DEFAULT NULL,
  `date_of_loss` varchar(255) DEFAULT NULL,
  `date_of_submission_of_the_investigation_report` varchar(255) DEFAULT NULL,
  `opmv_no` varchar(255) DEFAULT NULL,
  `date_of_entrustment_of_the_investigation` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL,
  `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports_new`
--

INSERT INTO `final_reports_new` (`id`, `case_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `date_of_the_meeting`, `enter_the_address_or_coordinates_of_the_accident_spot`, `created_at`, `updated_at`, `what_is_the_drivers_contact_number`, `accident55`, `garage15`, `garage14`, `garage_gate_date`, `driver_any_offence`, `garage_number`, `list_any_previous_driving_offenses`, `spot_photo`, `was_any_agreement_or_document_signed`, `driving_accident_location`, `did_the_driver_receive_any_injuries`, `were_any_traffic_signals_nearby`, `what_is_the_garages_registration_number`, `full_name_of_the_driver_at_the_time_of_the_accident`, `who_did_you_meet_regarding_the_accident_name_role`, `upload_photos_of_the_vehicle_damage`, `address_pertains_to_negative_area`, `pan_number`, `what_is_garage_car`, `was_the_driver_under_influence`, `was_there_any_police_presence_at_the_location`, `owner_account`, `what_was_discussed_in_the_meeting`, `garaeg_number`, `mact_no`, `case_title`, `claim_intimation_to_call_centre`, `insureds_address_contact_no`, `name_of_insured`, `claim_no`, `status_of_the_injured`, `vehicle_no`, `vehicle_make_model`, `date_of_loss`, `date_of_submission_of_the_investigation_report`, `opmv_no`, `date_of_entrustment_of_the_investigation`, `court`, `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo`) VALUES
(1, 5, 'ddddddd', NULL, NULL, NULL, '2025-09-17 06:15:06', '2025-09-17 06:21:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'Garage567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 19, 'Garage567', NULL, NULL, NULL, '2025-09-22 04:36:40', '2025-09-22 04:37:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Babulen', 'Meeting is accurate', '[\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 35, NULL, '[\"garage_uploads\\/JKU1iJiTjixBB95EVA21PjIjhFPuyLHDZbFsJaGD.jpg\"]', NULL, NULL, '2025-09-23 11:27:28', '2025-09-29 06:30:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish', 'Meeting455', '[\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"]', 'Fast', 'PAN123', 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 36, NULL, NULL, '2024-10-05', NULL, '2025-09-29 07:07:42', '2025-09-29 07:08:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\"uploads\\/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg\"]', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 37, NULL, '[\"garage_uploads\\/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg\"]', '2024-10-05', '102.45,115.87', '2025-09-29 07:18:27', '2025-10-18 08:04:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'No', 'GR1234553', 'nbnbn', 'sddddddd', '[\"spot_uploads\\/ZZonvKLG4AU1jQ6PuFeQfyqm4FXFw9GfIcqgRRKt.jpg\"]', 'dfdfd', '342344', NULL, 'No', NULL, '[\"owner_uploads\\/nQy7ireGIp3LgceqsESHZtjAYOBoLmVuhbNpQAZv.jpg\"]', 'very good data', '54545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 38, NULL, '[\"garage_uploads\\/h3aBo8eKnWmpZiSJKM29FREhoDpLKDeEbZizuvGb.jpg\"]', NULL, '102.45,103.73', '2025-09-30 08:40:54', '2025-10-18 06:51:30', NULL, NULL, NULL, NULL, '2024-10-8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3321', 'Arfan', NULL, NULL, NULL, 'hfghhhhhhhhhhhhh', 'NULL', '1', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 42, NULL, '[\"garage_uploads\\/vx01Ir0goGPnZN1aJwSmXnQCAqGK06YIflw2FKL7.jpg\"]', NULL, '112.45,115.77', '2025-10-07 10:55:29', '2025-10-13 11:43:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gfd', NULL, NULL, NULL, 'PAN122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 21, NULL, NULL, NULL, NULL, '2025-10-13 10:56:57', '2025-10-13 11:20:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Manish', NULL, NULL, NULL, NULL, 'vcasderr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 46, NULL, NULL, NULL, NULL, '2025-10-20 06:05:28', '2025-10-20 11:26:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MACT56478', 'case descryyyyyy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 47, NULL, NULL, NULL, NULL, '2025-10-21 04:50:20', '2025-10-22 11:12:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Abcd', '9961242558', 'Ajlan', 'Claim56', 'Dangerous', 'Esteem', 'est444', '2025-10-21', NULL, NULL, NULL, NULL, NULL),
(11, 48, NULL, NULL, NULL, NULL, '2025-10-22 04:24:49', '2025-10-22 04:24:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '123455', '2025-10-04', 'Calicut', NULL),
(12, 49, NULL, NULL, NULL, NULL, '2025-10-22 05:25:13', '2025-10-22 05:25:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-04', NULL, 'Case7745');

-- --------------------------------------------------------

--
-- Table structure for table `garage_data`
--

CREATE TABLE `garage_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `upload_a_photo_of_the_garage_sign_or_front_view` varchar(255) DEFAULT NULL,
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL,
  `what_is_garage_car` varchar(255) DEFAULT 'NULL',
  `location` varchar(255) DEFAULT NULL,
  `sp_case` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `questions_45` varchar(255) DEFAULT NULL,
  `garage_number` varchar(255) DEFAULT NULL,
  `gggg` varchar(255) DEFAULT NULL,
  `dddddd` varchar(255) DEFAULT NULL,
  `aaaaaacc` varchar(255) DEFAULT 'NULL',
  `garage_gate_date` varchar(255) DEFAULT NULL,
  `qwert` varchar(255) DEFAULT NULL,
  `garage14` varchar(255) DEFAULT NULL,
  `garage15` varchar(255) DEFAULT NULL,
  `address_pertains_to_negative_area` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `garage_gate44` varchar(255) DEFAULT NULL,
  `garage_pass_number` varchar(255) DEFAULT NULL,
  `what_is_garage_pass_gate_number` varchar(255) DEFAULT NULL,
  `abc` varchar(255) DEFAULT NULL,
  `garaeg_number` varchar(255) DEFAULT NULL,
  `what_is_make_system` varchar(255) DEFAULT NULL,
  `what_is_system_model` varchar(255) DEFAULT NULL,
  `mact_no` varchar(255) DEFAULT NULL,
  `petition_filed_undersec` varchar(255) DEFAULT NULL,
  `case_title` text DEFAULT NULL,
  `name_of_person_injured` varchar(255) DEFAULT NULL,
  `status_of_the_injured` varchar(255) DEFAULT NULL,
  `connected_cases` varchar(255) DEFAULT 'NULL',
  `amount_claimed` varchar(255) DEFAULT NULL,
  `claim_no` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `insureds_address_contact_no` text DEFAULT NULL,
  `claim_intimation_to_call_centre` varchar(255) DEFAULT NULL,
  `date_of_entrustment_of_the_investigation` date DEFAULT NULL,
  `opmv_no` varchar(255) DEFAULT NULL,
  `caseclaim_filed_under_section` varchar(255) DEFAULT NULL,
  `od_claim_if_any_made_if_so_details_ascertained_from_insured` varchar(255) DEFAULT NULL,
  `date_of_submission_of_the_investigation_report` date DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage_data`
--

INSERT INTO `garage_data` (`id`, `assign_work_id`, `executive_id`, `upload_a_photo_of_the_garage_sign_or_front_view`, `what_is_the_garages_registration_number`, `what_is_garage_car`, `location`, `sp_case`, `created_at`, `updated_at`, `questions_45`, `garage_number`, `gggg`, `dddddd`, `aaaaaacc`, `garage_gate_date`, `qwert`, `garage14`, `garage15`, `address_pertains_to_negative_area`, `pan_number`, `garage_gate44`, `garage_pass_number`, `what_is_garage_pass_gate_number`, `abc`, `garaeg_number`, `what_is_make_system`, `what_is_system_model`, `mact_no`, `petition_filed_undersec`, `case_title`, `name_of_person_injured`, `status_of_the_injured`, `connected_cases`, `amount_claimed`, `claim_no`, `name_of_insured`, `insureds_address_contact_no`, `claim_intimation_to_call_centre`, `date_of_entrustment_of_the_investigation`, `opmv_no`, `caseclaim_filed_under_section`, `od_claim_if_any_made_if_so_details_ascertained_from_insured`, `date_of_submission_of_the_investigation_report`, `court`) VALUES
(1, 1, 12, 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:22:45', '2025-09-12 10:27:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 12, 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:26:46', '2025-09-08 04:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 12, 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:33:15', '2025-09-08 04:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 61, 19, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:20:15', '2025-09-15 07:22:06', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr67866', 'garage_uploads/0ow4VJ3ewgc9cenxzf6e2z0nKfedSCk6hUUYmnkM.mp3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 61, 19, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:22:34', '2025-09-14 09:07:30', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'garage_uploads/ZLkNq2nWODGAqGhdJzatY6kkdF8xmu03ynosFDwm.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 61, 19, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:24:17', '2025-09-14 08:24:17', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 61, 19, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 09:10:08', '2025-09-14 09:10:08', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 62, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', NULL, NULL, NULL, NULL, 'NULL', '2024-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 63, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, 'Garage 445', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 63, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, 'Garage 445', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 64, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, 'Garage 556677', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 64, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:54:47', '2025-09-16 05:54:47', NULL, 'Garage122', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 65, 20, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:56:01', '2025-09-16 05:56:01', NULL, 'Garage122', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 19, NULL, 'Garage567', 'NULL', NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:20:58', NULL, 'Garage564', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 38, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', 'Garage567', 'NULL', NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 19, 38, NULL, NULL, 'NULL', NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 21, 38, NULL, NULL, 'vcds', NULL, NULL, '2025-09-22 11:23:13', '2025-10-13 11:20:21', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 22, 38, NULL, NULL, 'NULL', NULL, NULL, '2025-09-23 11:15:48', '2025-09-23 11:15:48', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 35, 38, 'garage_uploads/JKU1iJiTjixBB95EVA21PjIjhFPuyLHDZbFsJaGD.jpg', NULL, 'NULL', NULL, NULL, '2025-09-23 11:27:14', '2025-09-24 04:21:05', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, 'Fast', 'PAN123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 37, 38, 'garage_uploads/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg', 'GR1234553', 'NULL', NULL, NULL, '2025-09-29 07:18:11', '2025-10-18 07:46:51', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, 'gfgfgf', '342344', NULL, NULL, NULL, NULL, '54545', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 38, 38, NULL, 'GR4512', 'NULL', NULL, NULL, '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 38, 38, NULL, 'GR4512', 'NULL', NULL, NULL, '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 38, 38, 'garage_uploads/h3aBo8eKnWmpZiSJKM29FREhoDpLKDeEbZizuvGb.jpg', '3321', 'NULL', NULL, NULL, '2025-09-30 08:46:34', '2025-10-18 06:51:25', NULL, NULL, NULL, NULL, 'NULL', '2024-05-10', NULL, NULL, NULL, NULL, NULL, 'garage_uploads/k9u4tgSTIaj8WKjK2CI41OFQPPb6Cz69ztxqnnj1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 38, 38, NULL, 'GR4512fdfd', 'FFFFDG', NULL, NULL, '2025-09-30 08:50:40', '2025-10-15 05:21:06', NULL, NULL, NULL, NULL, 'NULL', '2024-10-8', NULL, NULL, NULL, 'HASEER', 'hfghhhhhhhhhhhhh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 42, 34, 'garage_uploads/vx01Ir0goGPnZN1aJwSmXnQCAqGK06YIflw2FKL7.jpg', 'Gagfgf', 'NULL', NULL, NULL, '2025-10-07 10:54:25', '2025-10-15 05:23:11', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, 'PAN122', 'garage_uploads/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg', 'fdfdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 46, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-18 10:21:35', '2025-10-18 11:46:37', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MACT56478', 'PET4477', 'case descryyyyyy', 'Ismayil', 'Dangerous', 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 47, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-21 04:46:51', '2025-10-21 04:46:51', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dangerous', 'NULL', NULL, 'Claim56', 'Ajlan', '9961242558', 'Abcd', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 48, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-22 04:24:15', '2025-10-22 04:24:15', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, '2025-10-04', '123455', NULL, NULL, '2025-10-10', 'Calicut'),
(29, 49, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-22 05:21:39', '2025-10-22 05:21:39', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, '2025-10-04', '123455', NULL, NULL, '2025-10-10', NULL),
(30, 49, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-22 05:22:32', '2025-10-22 05:22:32', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, '2025-10-04', '123455', NULL, NULL, '2025-10-10', NULL),
(31, 49, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-22 05:23:14', '2025-10-22 05:23:14', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, '2025-10-04', '123455', NULL, NULL, '2025-10-10', NULL),
(32, 49, 51, NULL, NULL, 'NULL', NULL, NULL, '2025-10-22 05:24:45', '2025-10-22 05:24:45', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL, NULL, '2025-10-04', '12345567', NULL, NULL, '2025-10-10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `garage_data_old`
--

CREATE TABLE `garage_data_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `what_is_the_name_of_the_garage` varchar(255) DEFAULT NULL,
  `upload_a_photo_of_the_garage_sign_or_front_view` varchar(255) DEFAULT NULL,
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL,
  `what_is_garage_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `questions_45` varchar(255) DEFAULT NULL,
  `garage_pass_id` varchar(255) DEFAULT NULL,
  `garage_number` varchar(255) DEFAULT NULL,
  `gggg` varchar(255) DEFAULT NULL,
  `dddddd` varchar(255) DEFAULT NULL,
  `aaaaaass` varchar(255) DEFAULT NULL,
  `garage_gate_date` varchar(255) DEFAULT NULL,
  `qwert` varchar(255) DEFAULT NULL,
  `garage14` varchar(255) DEFAULT NULL,
  `garage15` varchar(255) DEFAULT NULL,
  `address_pertains_to_negative_area` varchar(255) DEFAULT NULL,
  `pan_number` varchar(255) DEFAULT NULL,
  `garage_gate44` varchar(255) DEFAULT NULL,
  `garage_pass_number` varchar(255) DEFAULT NULL,
  `what_is_garage_pass_gate_number` varchar(255) DEFAULT NULL,
  `abc` varchar(255) DEFAULT NULL,
  `garaeg_number` varchar(255) DEFAULT NULL,
  `what_is_make_system` varchar(255) DEFAULT NULL,
  `what_is_system_model` varchar(255) DEFAULT NULL,
  `mact_no` varchar(255) DEFAULT NULL,
  `petition_filed_undersec` varchar(255) DEFAULT NULL,
  `case_title` text DEFAULT NULL,
  `name_of_person_injured` varchar(255) DEFAULT NULL,
  `status_of_the_injured` varchar(255) DEFAULT NULL,
  `onnected_cases` varchar(255) DEFAULT NULL,
  `amount_claimed` varchar(255) DEFAULT NULL,
  `claim_no` varchar(255) DEFAULT NULL,
  `name_of_insured` varchar(255) DEFAULT NULL,
  `insureds_address_contact_no` text DEFAULT NULL,
  `claim_intimation_to_call_centre` varchar(255) DEFAULT NULL,
  `date_of_submission_of_the_investigation_report` date DEFAULT NULL,
  `date_of_entrustment_of_the_investigation` date DEFAULT NULL,
  `opmv_no` varchar(255) DEFAULT NULL,
  `caseclaim_filed_under_section` varchar(255) DEFAULT NULL,
  `od_claim_if_any_made_if_so_details_ascertained_from_insured` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage_data_old`
--

INSERT INTO `garage_data_old` (`id`, `assign_work_id`, `executive_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `what_is_the_garages_registration_number`, `what_is_garage_id`, `created_at`, `updated_at`, `questions_45`, `garage_pass_id`, `garage_number`, `gggg`, `dddddd`, `aaaaaass`, `garage_gate_date`, `qwert`, `garage14`, `garage15`, `address_pertains_to_negative_area`, `pan_number`, `garage_gate44`, `garage_pass_number`, `what_is_garage_pass_gate_number`, `abc`, `garaeg_number`, `what_is_make_system`, `what_is_system_model`, `mact_no`, `petition_filed_undersec`, `case_title`, `name_of_person_injured`, `status_of_the_injured`, `onnected_cases`, `amount_claimed`, `claim_no`, `name_of_insured`, `insureds_address_contact_no`, `claim_intimation_to_call_centre`, `date_of_submission_of_the_investigation_report`, `date_of_entrustment_of_the_investigation`, `opmv_no`, `caseclaim_filed_under_section`, `od_claim_if_any_made_if_so_details_ascertained_from_insured`, `court`) VALUES
(1, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:22:45', '2025-09-08 04:22:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:26:46', '2025-09-08 04:26:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:33:15', '2025-09-08 04:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:20:15', '2025-09-14 08:20:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:24:17', '2025-09-14 08:24:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 09:10:08', '2025-09-14 09:10:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 62, 20, NULL, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, NULL, 'Garage 445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, NULL, 'Garage 445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, NULL, 'Garage 556677', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:54:47', '2025-09-16 05:54:47', NULL, NULL, 'Garage122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 65, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:56:01', '2025-09-16 05:56:01', NULL, NULL, 'Garage122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 19, NULL, NULL, 'Garage567', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, 'Garage564', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 38, NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', 'Garage567', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 19, 38, 'Garage567', NULL, NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 21, 38, 'Garagenew', NULL, NULL, NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 22, 38, 'Garagenew', NULL, NULL, NULL, '2025-09-23 11:15:48', '2025-09-23 11:15:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 35, 38, NULL, NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Fast', 'PAN123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 37, 38, NULL, NULL, 'GR1234', NULL, '2025-09-29 07:18:11', '2025-09-29 07:18:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 38, 38, NULL, NULL, 'GR4512', NULL, '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 38, 38, NULL, NULL, 'GR4512', NULL, '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 38, 38, NULL, NULL, 'GR4512', NULL, '2025-09-30 08:46:34', '2025-09-30 08:46:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 38, 38, NULL, NULL, 'GR4512', NULL, '2025-09-30 08:50:40', '2025-09-30 08:50:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 42, 34, NULL, NULL, NULL, NULL, '2025-10-07 10:54:25', '2025-10-07 10:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PAN122', 'garage_uploads/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 46, 51, NULL, NULL, NULL, NULL, '2025-10-18 10:21:35', '2025-10-18 10:21:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MACT564', 'PET4477', 'case descr', 'Ismayil', 'Dangerous', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 47, 51, NULL, NULL, NULL, NULL, '2025-10-21 04:46:51', '2025-10-21 04:46:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Dangerous', NULL, NULL, 'Claim56', 'Ajlan', '9961242558', 'Abcd', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 48, 51, NULL, NULL, NULL, NULL, '2025-10-22 04:24:15', '2025-10-22 04:24:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '2025-10-04', '123455', NULL, NULL, 'Calicut'),
(29, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:21:39', '2025-10-22 05:21:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '2025-10-04', '123455', NULL, NULL, NULL),
(30, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:22:32', '2025-10-22 05:22:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '2025-10-04', '123455', NULL, NULL, NULL),
(31, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:23:14', '2025-10-22 05:23:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '2025-10-04', '123455', NULL, NULL, NULL),
(32, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:24:45', '2025-10-22 05:24:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-10', '2025-10-04', '12345567', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `insurance_cases`
--

CREATE TABLE `insurance_cases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `insurance_type` varchar(100) NOT NULL,
  `case_details` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `status_new` tinyint(3) UNSIGNED DEFAULT 0,
  `assigned_status` varchar(50) DEFAULT NULL,
  `case_status` varchar(50) NOT NULL,
  `create_by` varchar(100) NOT NULL,
  `update_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_cases`
--

INSERT INTO `insurance_cases` (`id`, `company_id`, `customer_id`, `insurance_type`, `case_details`, `status`, `status_new`, `assigned_status`, `case_status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(26, 23, 26, 'MAC', 'ssssssss', '1', 0, '1', '1', '1', '1', '2025-09-16 07:44:10', '2025-09-16 07:44:10'),
(27, 23, 27, 'single', 'case453', '1', 0, '1', '1', '1', '1', '2025-09-16 10:38:04', '2025-09-16 10:38:04'),
(28, 23, 28, 'single', 'case553', '1', 0, '1', '1', '1', '1', '2025-09-16 11:12:03', '2025-09-16 11:12:03'),
(29, 22, 29, 'single', 'caserr', '1', 0, '1', '1', '1', '1', '2025-09-16 13:58:55', '2025-09-16 13:58:55'),
(30, 22, 30, 'MAC', 'case', '1', 0, '1', '1', '1', '1', '2025-09-17 05:54:27', '2025-09-17 05:54:27'),
(31, 24, 31, 'MAC', 'case33', '1', 0, '1', '1', '1', '1', '2025-09-17 09:21:23', '2025-09-17 09:21:23'),
(32, 25, 32, 'single', 'case33', '1', 0, '1', '1', '1', '1', '2025-09-17 09:27:53', '2025-09-17 09:27:53'),
(33, 26, 33, 'single', 'case', '1', 0, '1', '1', '1', '1', '2025-09-17 09:39:52', '2025-09-17 09:39:52'),
(34, 32, 34, 'single', 'case descrpitions', '1', 0, '1', '2', '1', '1', '2025-09-18 04:40:26', '2025-09-19 08:02:04'),
(35, 33, 35, 'single', 'case333', '1', 0, '1', '0', '1', '1', '2025-09-18 04:45:56', '2025-09-19 05:52:12'),
(36, 32, 36, 'single', 'DD', '1', 0, '1', '0', '1', '1', '2025-09-18 07:24:26', '2025-09-19 05:52:15'),
(37, 22, 37, 'single', 'caseree', '1', 0, '1', '0', '1', '1', '2025-09-18 07:42:50', '2025-09-19 05:52:08'),
(38, 32, 38, 'single', 'case44', '1', 0, '1', '0', '1', '1', '2025-09-18 08:22:02', '2025-09-30 08:40:05'),
(39, 34, 39, 'insurance1', 'case44', '1', 0, '1', '1', '1', '1', '2025-09-18 08:43:12', '2025-09-18 08:43:12'),
(40, 22, 40, 'single', 'case666', '1', 0, '1', '2', '1', '1', '2025-09-19 03:50:37', '2025-09-19 05:50:44'),
(42, 35, 42, 'single', 'case descritions........', '1', 0, '1', '0', '1', '1', '2025-09-22 04:29:02', '2025-10-07 10:54:25'),
(43, 2, 43, 'MAC', 'ffffffffffffs', '1', 0, '1', '2', '1', '1', '2025-09-22 10:40:20', '2025-09-22 12:21:35'),
(44, 35, 44, 'single', 'case22', '1', 0, '1', '0', '1', '1', '2025-09-22 11:20:29', '2025-10-13 10:56:57'),
(45, 2, 45, 'single', 'case det', '1', 0, '1', '2', '1', '1', '2025-09-22 12:31:53', '2025-09-22 12:32:38'),
(46, 2, 46, 'MAC', 'dddddddds', '1', 0, '1', '2', '1', '1', '2025-09-22 12:42:31', '2025-09-22 12:44:45'),
(47, 1, 47, 'single', 'case data', '1', 0, '1', '2', '1', '1', '2025-09-22 12:49:07', '2025-09-22 12:50:43'),
(48, 36, 48, 'single', 'case44', '1', 0, '1', '1', '1', '1', '2025-09-23 11:22:09', '2025-09-23 11:22:09'),
(49, 35, 49, 'single', 'case56', '1', 0, '1', '1', '1', '1', '2025-09-29 06:56:34', '2025-09-29 06:56:34'),
(50, 37, 50, 'single', 'case44', '1', 0, '1', '0', '1', '1', '2025-09-29 07:14:41', '2025-10-14 11:33:29'),
(51, 38, 51, 'single', 'case data........', '1', 0, '1', '0', '1', '1', '2025-09-30 07:59:36', '2025-10-18 06:40:35'),
(52, 35, 52, 'single', 'case data', '1', 0, '1', '1', '1', '1', '2025-10-07 07:28:01', '2025-10-18 06:31:48'),
(53, 2, 53, 'MAC', 'case44', '1', 0, '1', '1', '1', '1', '2025-10-07 10:33:12', '2025-10-07 10:33:12'),
(54, 1, 54, 'MAC type12', 'ddddddddddds', '1', 0, '1', '1', '1', '1', '2025-10-07 10:41:06', '2025-10-07 10:41:06'),
(55, 40, 55, 'single', 'case45', '1', 0, '1', '0', '1', '1', '2025-10-07 10:47:31', '2025-10-09 05:17:16'),
(56, 38, 56, 'MAC', 'case55', '1', 0, '1', '2', '1', '1', '2025-10-08 12:17:20', '2025-10-08 12:17:20'),
(57, 1, 57, 'single', 'case deatisl', '1', 0, '1', '2', '1', '1', '2025-10-17 05:38:48', '2025-10-17 05:38:48'),
(58, 41, 58, 'single', 'case description', '1', 0, '1', '2', '1', '1', '2025-10-17 12:22:41', '2025-10-17 12:22:41'),
(59, 1, 59, 'single', 'case detatils', '1', 0, '1', '0', '1', '1', '2025-10-18 09:40:35', '2025-10-20 06:05:28'),
(60, 2, 60, 'single', 'case data...............', '1', 0, '1', '0', '1', '1', '2025-10-21 04:39:06', '2025-10-21 04:50:20'),
(61, 4, 61, 'single', 'case', '1', 0, '1', '0', '1', '1', '2025-10-22 04:12:51', '2025-10-22 04:24:49'),
(62, 4, 62, 'single', 'ggggggg', '1', 0, '1', '2', '1', '1', '2025-10-22 05:17:02', '2025-10-22 06:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_companies`
--

CREATE TABLE `insurance_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `contact_person` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `template` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `selected_tabs` longtext DEFAULT NULL,
  `questionnaires` longtext DEFAULT NULL,
  `country_code` varchar(25) DEFAULT NULL,
  `create_by` varchar(100) NOT NULL,
  `update_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `name`, `contact_person`, `email`, `phone`, `address`, `template`, `status`, `selected_tabs`, `questionnaires`, `country_code`, `create_by`, `update_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Chola MS General Insurance Co. Ltd', 'Asma', 'chola@mail.com', '9497626144', 'adress33', 3, '1', '{\"garage\":[\"mact_no\",\"petition_filed_undersec\",\"case_title\",\"name_of_person_injured\",\"status_of_the_injured\"],\"accident\":[\"place_of_accident\",\"date_of_fir\",\"fir_charges\"]}', '{\"garage\":{\"mact_no\":{\"name\":\"mact_no\",\"label\":\"Mact No\",\"type\":\"text\",\"required\":false},\"petition_filed_undersec\":{\"name\":\"petition_filed_undersec\",\"label\":\"Petition Filed Undersec\",\"type\":\"text\",\"required\":false},\"case_title\":{\"name\":\"case_title\",\"label\":\"Case Title\",\"type\":\"textarea\",\"required\":false},\"name_of_person_injured\":{\"name\":\"name_of_person_injured\",\"label\":\"Name Of Person Injured\",\"type\":\"text\",\"required\":false},\"status_of_the_injured\":{\"name\":\"status_of_the_injured\",\"label\":\"Status Of The Injured\",\"type\":\"text\",\"required\":false}},\"accident\":{\"place_of_accident\":{\"name\":\"place_of_accident\",\"label\":\"Place Of Accident\",\"type\":\"text\",\"required\":false},\"date_of_fir\":{\"name\":\"date_of_fir\",\"label\":\"Date Of Fir\",\"type\":\"text\",\"required\":false},\"fir_charges\":{\"name\":\"fir_charges\",\"label\":\"Fir Charges\",\"type\":\"text\",\"required\":false}}}', '+91', '1', '1', '2025-10-18 09:00:43', '2025-10-18 09:43:23', NULL),
(2, 'Reliance', 'Asmahttp://127.0.0.1:8000/edit-company/2#driver', 'reliance444@gmail.com', '9876545234', 'address', 4, '1', '{\"garage\":[\"claim_no\",\"name_of_insured\",\"insureds_address_contact_no\",\"claim_intimation_to_call_centre\"],\"driver\":[\"vehicle_no\",\"vehicle_make_model\"],\"meeting\":[\"date_of_loss\"]}', '{\"garage\":{\"claim_no\":{\"name\":\"claim_no\",\"label\":\"Claim No\",\"type\":\"text\",\"required\":false},\"name_of_insured\":{\"name\":\"name_of_insured\",\"label\":\"Name Of Insured\",\"type\":\"text\",\"required\":false},\"insureds_address_contact_no\":{\"name\":\"insureds_address_contact_no\",\"label\":\"Insureds Address Contact No\",\"type\":\"textarea\",\"required\":false},\"claim_intimation_to_call_centre\":{\"name\":\"claim_intimation_to_call_centre\",\"label\":\"Claim Intimation To Call Centre\",\"type\":\"text\",\"required\":false}},\"driver\":{\"vehicle_no\":{\"name\":\"vehicle_no\",\"label\":\"Vehicle No\",\"type\":\"text\",\"required\":false},\"vehicle_make_model\":{\"name\":\"vehicle_make_model\",\"label\":\"Vehicle Make Model\",\"type\":\"text\",\"required\":false}},\"meeting\":{\"date_of_loss\":{\"name\":\"date_of_loss\",\"label\":\"Date Of Loss\",\"type\":\"text\",\"required\":false}}}', '+91', '1', '1', '2025-10-18 09:02:11', '2025-10-20 09:56:00', NULL),
(3, 'New India Assurance Ltd', 'John', 'newindia@mail.com', '9656521244', 'address444', 0, '1', '[]', '[]', '+91', '1', '1', '2025-10-18 09:03:45', '2025-10-18 09:03:45', NULL),
(4, 'United India Insurance Company Ltd', 'Aravind', 'unitedins@gmail.com', '9446546944', 'address', 5, '1', '{\"garage\":[\"date_of_entrustment_of_the_investigation\",\"opmv_no\",\"date_of_submission_of_the_investigation_report\"],\"spot\":[\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"caseclaim_filed_under_section\",\"cause_of_loss_eg_death_injury_tppd\",\"od_claim_if_any_made_if_so_details_ascertained_from_insured\"]}', '{\"garage\":{\"date_of_entrustment_of_the_investigation\":{\"name\":\"date_of_entrustment_of_the_investigation\",\"label\":\"Date Of Entrustment Of The Investigation\",\"type\":\"date\",\"required\":false},\"opmv_no\":{\"name\":\"opmv_no\",\"label\":\"Opmv No\",\"type\":\"text\",\"required\":false},\"date_of_submission_of_the_investigation_report\":{\"name\":\"date_of_submission_of_the_investigation_report\",\"label\":\"Date Of Submission Of The Investigation Report\",\"type\":\"date\",\"required\":false}},\"spot\":{\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\":{\"name\":\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"label\":\"Case Title Name Of The 1st Claimant Vs Name Of The 1st Respo\",\"type\":\"text\",\"required\":false},\"caseclaim_filed_under_section\":{\"name\":\"caseclaim_filed_under_section\",\"label\":\"Caseclaim Filed Under Section\",\"type\":\"text\",\"required\":false},\"cause_of_loss_eg_death_injury_tppd\":{\"name\":\"cause_of_loss_eg_death_injury_tppd\",\"label\":\"Cause Of Loss Eg Death Injury Tppd\",\"type\":\"text\",\"required\":false},\"od_claim_if_any_made_if_so_details_ascertained_from_insured\":{\"name\":\"od_claim_if_any_made_if_so_details_ascertained_from_insured\",\"label\":\"Od Claim If Any Made If So Details Ascertained From Insured\",\"type\":\"text\",\"required\":false}}}', '+91', '1', '1', '2025-10-18 09:05:29', '2025-10-22 05:14:54', NULL),
(7, 'fgfg', 'yyyyyyyy', 'fgfg@gmail.com', '9876543445', 'ffffffffsdfsdf', 4, '1', '[\"garage\",\"driver\"]', '{\"garage\":{\"status_of_the_injured\":{\"name\":\"status_of_the_injured\",\"label\":\"Status Of The Inj...\",\"type\":\"text\",\"required\":false},\"claim_no\":{\"name\":\"claim_no\",\"label\":\"Claim No\",\"type\":\"text\",\"required\":false},\"name_of_insured\":{\"name\":\"name_of_insured\",\"label\":\"Name Of Insured\",\"type\":\"text\",\"required\":false}},\"driver\":{\"vehicle_no\":{\"name\":\"vehicle_no\",\"label\":\"Vehicle No\",\"type\":\"text\",\"required\":false},\"vehicle_make_model\":{\"name\":\"vehicle_make_model\",\"label\":\"Vehicle Make Model\",\"type\":\"text\",\"required\":false}}}', '+91', '1', '1', '2025-10-22 11:07:35', '2025-10-22 11:07:54', '2025-10-22 11:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `insurance_customers`
--

CREATE TABLE `insurance_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `father_name` varchar(55) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `emergency_contact_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `policy_no` varchar(100) DEFAULT NULL,
  `policy_start` date DEFAULT NULL,
  `policy_end` date DEFAULT NULL,
  `insurance_type` varchar(100) DEFAULT NULL,
  `intimation_report` varchar(900) DEFAULT NULL,
  `crime_number` varchar(65) DEFAULT NULL,
  `police_station` varchar(90) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `country_code` varchar(25) DEFAULT NULL,
  `mact_type` varchar(40) DEFAULT NULL,
  `create_by` varchar(100) NOT NULL,
  `update_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_customers`
--

INSERT INTO `insurance_customers` (`id`, `company_id`, `name`, `father_name`, `phone`, `emergency_contact_number`, `email`, `present_address`, `permanent_address`, `policy_no`, `policy_start`, `policy_end`, `insurance_type`, `intimation_report`, `crime_number`, `police_station`, `status`, `country_code`, `mact_type`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Hassan', 'Abdu Rahman', '9656523123', '9656523123', 'hs@gmail.com', 'kkd', 'kkd', '3451235', '2025-09-08', '2025-09-15', 'OD', 'uploads/intimation_reports/1757304913_permitfromlsgd_71_1756440667.pdf', '123XRT', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-08 04:15:14', '2025-09-08 04:15:14'),
(2, 3, 'Jafar', 'ahamed', '9656523476', '9656523476', 'j123@gmail.com', 'ffffffffffffff', 'ffffffffffffff', '3451235', '2025-09-15', '2025-09-18', 'MACT', 'uploads/intimation_reports/1757562866_17108748052646.jpg', '33332255', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-11 03:54:27', '2025-09-11 03:54:27'),
(3, 6, 'Test user', 'ahamedd', '9656523123', '9656523123', 'admin444@gmail.com', 'ffff', 'ffff', '3451235', '2025-09-11', '2025-09-16', 'OD', NULL, '3333224', 'dddddds', '1', NULL, NULL, '1', '1', '2025-09-11 04:00:07', '2025-09-11 04:00:07'),
(4, 7, 'Test exec new', 'irfan', '9497626144', '9497626144', 'exec44@gmail.com', 'dddddd', 'dddddd', '3451235X', '2025-09-11', '2025-09-16', 'OD', NULL, '33332255', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-11 04:05:47', '2025-09-11 04:05:47'),
(5, 8, 'Asma', 'Abdulla', '9446546922', '9446546922', 'asma123@gmail.com', 'ffff', 'ffff', '3451235X', '2025-09-11', '2025-09-15', 'OD', NULL, '33332244', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-11 04:11:35', '2025-09-11 04:11:35'),
(6, 9, 'Test userff', 'irfan', '9497626155', '9497626155', 'cmp45@mail.com', 'ggfff', 'ggfff', '3451235', '2025-09-22', '2025-09-22', 'OD', NULL, '33332244', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-11 04:43:35', '2025-09-12 06:57:38'),
(7, 11, 'Test user', 'Kelly Jones', '9497626144', '9497626144', 'admin322@gmail.com', 'ddd', 'ddd', '3451235', '2025-09-23', '2025-09-22', 'OD', 'uploads/intimation_reports/1757567829_17108748052646.jpg', '33332255QW', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-11 05:17:09', '2025-09-11 05:17:09'),
(8, 14, 'Jafardd', 'test 2dd', '9497626188', '9497626188', 'test755@gmail.com', 'hhhhhhhhhhhh', 'hhhhhhhhhhhh', '123456', '2025-09-11', '2025-09-18', 'OD', 'uploads/intimation_reports/1757568499_17108748052646.jpg', '333322XXE', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-11 05:28:19', '2025-09-11 05:28:19'),
(9, 16, 'Aalvi', 'ahamed', '9497626144', '9497626144', 'ah@gmail.com', 'adress33', 'adress33', '123456', '2025-09-04', '2025-09-17', 'OD', NULL, '333322XXE', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-12 06:01:49', '2025-09-12 06:01:49'),
(10, 17, 'User 44', 'ahamed', '9497626188', '9497626188', 'ahamed@gmail.com', 'ffffffffffffa', 'ffffffffffffa', '3451235', '2025-09-04', '2025-09-12', 'OD', 'uploads/intimation_reports/1757676153_17108748052646.jpg', '33332244', 'dddddds', '1', NULL, NULL, '1', '1', '2025-09-12 11:22:34', '2025-09-12 11:22:34'),
(11, 17, 'Test 445', 'irfan', '9497626133', '9497626133', 'irfan22@gmail.com', 'dddddddddda', 'dddddddddda', '3451235', '2025-09-30', '2025-09-30', 'OD', 'uploads/intimation_reports/1757678582_17108748052646.jpg', '33332244', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-12 12:03:02', '2025-09-12 12:03:02'),
(12, 17, 'yyyyyyyyyyy', 'Kelly Jones', '9497626345', '9497626345', 'kj@gmail.com', 'ffffffffff', 'ffffffffff', '3451235X', '2025-09-02', '2025-09-18', 'OD', NULL, '33332255QW', 'dddddds', '1', NULL, NULL, '1', '1', '2025-09-12 12:05:39', '2025-09-12 12:05:39'),
(13, 17, 'test_user44', 'test 2', '9497626144', '9497626144', 'test566@gmail.com', 'ffffffffffsd', 'ffffffffffsd', '123456', '2025-09-13', '2025-09-15', 'OD', 'uploads/intimation_reports/1757735575_insurance.pdf', '33332255QW', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-13 03:52:55', '2025-09-13 03:52:55'),
(14, 16, 'ggggggg', 'test 2', '9876543244', '9876543244', 'test44@gmail.com', 'dddddddda', 'dddddddda', '123456', '2025-09-05', '2025-09-23', 'OD', 'uploads/intimation_reports/1757736159_insurance.pdf', '333322XXE', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-13 04:02:39', '2025-09-13 04:02:39'),
(15, 18, 'abc', 'def', '9876543255', '9876543255', 'veena44@gmail.com', 'ffffffffs', 'ffffffffs', '3451235', '2025-09-13', '2025-09-15', 'OD', NULL, '333322XXE', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-13 04:46:49', '2025-09-13 04:46:49'),
(16, 18, 'hhhhhhhhhhh', 'test 266', '9497626188', '9497626188', 'rr@gmail.com', 'ffffffffffffsdf', 'ffffffffffffsdf', '345123', '2025-09-13', '2025-09-29', 'MACT', NULL, '33332255QW', 'mlpmfdsf', '1', NULL, NULL, '1', '1', '2025-09-13 04:51:37', '2025-09-13 04:51:37'),
(17, 18, 'Jafardd', 'test 2', '9876543255', '9876543255', 'admin564@gmail.com', 'fffffffffs', 'fffffffffs', '123456', '2025-09-13', '2025-09-16', 'OD', NULL, '333322XXE', 'rwewe', '1', NULL, NULL, '1', '1', '2025-09-13 04:59:05', '2025-09-13 04:59:05'),
(18, 18, 'axxs', 'test 25', '9876543444', '9876543210', 'a@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-13', '2025-09-15', 'MACT', NULL, '33332255QW', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-13 05:05:40', '2025-09-13 05:05:40'),
(19, 18, 'alaban', 'ahamed', '9876543255', '9876543255', 'ab@gmail.com', 'ddddd', 'ddddd', 'XTYASFG5555467GHJK', '2025-09-05', '2025-09-16', 'OD', NULL, '333322XXE', 'mlpmfdsf', '1', NULL, NULL, '1', '1', '2025-09-13 05:09:44', '2025-09-13 05:09:44'),
(20, 18, 'gd', 'ahamedgg', '9876543242', '9876543242', 'gd@gmail.com', 'gggggggg', 'gggggggg', '3451235X', '2025-09-13', '2025-09-15', 'OD', NULL, '33332255QW', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-13 10:35:03', '2025-09-13 10:35:03'),
(21, 19, 'Atest', 'irfan', '9876543210', '9876543210', 'ae@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-14', '2025-09-18', 'OD', NULL, '33332255QW', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-14 08:07:28', '2025-09-14 08:07:28'),
(22, 20, 'Customer456', 'Alavi', '9497626144', '9497626144', 'alavi@gmail.com', 'vengara', 'vengara', '3451235', '2025-09-16', '2025-09-18', 'OD', NULL, '33332255QW', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-16 04:27:19', '2025-09-16 04:27:19'),
(23, 21, 'Aravind', 'Ashokan', '9876543214', '9876543214', 'ashk@mail.com', 'adress123', 'adress123', '3451235', '2025-09-16', '2025-09-16', 'OD', NULL, '3333224', 'ere', '1', NULL, NULL, '1', '1', '2025-09-16 05:28:22', '2025-09-16 05:28:22'),
(24, 22, 'das', 'ahamed', '9497626133', '9497626133', 'ah@gmail.com', 'fffffff', 'fffffff', '3451235X', '2025-09-02', '2025-09-22', 'OD', NULL, '333322XXE', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-16 05:44:06', '2025-09-16 05:44:06'),
(25, 23, 'Test user', 'irfan', '9497626123', '9497626123', 'irfan34@gmail.com', 'dddddddda', 'dddddddda', '3451235', '2025-09-16', '2025-09-18', 'OD', NULL, '333322XXE', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-16 05:53:01', '2025-09-16 05:53:01'),
(26, 23, 'vcss', 'ahamed', '9876543215', '9876543215', 'admin@gmail.com', 'fffffffs', 'fffffffs', '3451235', '2025-09-16', '2025-09-22', 'OD', NULL, '33332255QW', 'dddddds', '1', NULL, NULL, '1', '1', '2025-09-16 07:44:10', '2025-09-16 07:44:10'),
(27, 23, 'Reema', 'irfan', '9497626144', '9497626144', 'ass@mail.com', 'vvvvvvvvvvvvx', 'vvvvvvvvvvvvx', '3451235', '2025-09-16', '2025-09-22', 'OD', NULL, '33332255QW', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-16 10:38:04', '2025-09-16 10:38:04'),
(28, 23, 'Test usergg', 'ahamed', '9497626777', '9497626777', 'test644@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-16', '2025-09-22', 'MACT', 'uploads/intimation_reports/1758021123_1285.pdf', '33332255QW', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-16 11:12:03', '2025-09-16 11:12:03'),
(29, 22, 'eaa', 'irfan', '9876543124', '9876543124', 'eaa@gmail.com', 'ddddddddd', 'ddddddddd', '123456', '2025-09-29', '2025-09-21', 'MACT', NULL, '33332255QW', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-16 13:58:55', '2025-09-16 13:58:55'),
(30, 22, 'company55', 'ahamed', '9876543210', '9876543210', 'cmp556@gmail.com', 'adress12', 'adress12', '3451235', '2025-09-17', '2025-09-19', 'MACT', NULL, '32/2025', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-17 05:54:27', '2025-09-17 05:54:27'),
(31, 24, 'Rashid', 'ahamed', '9656521220', '9656521220', 'rsh@gmail.com', 'aaadress', 'aaadress', '3451235', '2025-09-17', '2025-09-22', 'OD', NULL, '33332255', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-17 09:21:23', '2025-09-17 09:21:23'),
(32, 25, 'Babu', 'irfan', '9497626333', '9497626333', 'bbb123@gmail.com', 'eeeeeeeee', 'eeeeeeeee', '3451235', '2025-09-17', '2025-09-21', 'OD', NULL, '33332255', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-17 09:27:53', '2025-09-17 09:27:53'),
(33, 26, 'test_user', 'irfan', '9497626567', '9497626567', 'irfan44@gmail.com', 'ddddddd', 'ddddddd', '3451235', '2025-09-17', '2025-09-22', 'MACT', NULL, '33332244', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-17 09:39:52', '2025-09-17 09:39:52'),
(34, 32, 'Jafardas', 'irfan', '9497626166', '9497626166', 'bd@gmail.com', 'fffffffffffff', 'fffffffffffff', '3451235', '2025-09-18', '2025-09-20', 'OD', NULL, '34/2025', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-18 04:40:26', '2025-09-18 04:40:26'),
(35, 33, 'ahamed', 'bava', '9876543000', '9876543000', 'bv@gmail.com', 'adress', 'adress', '3451235', '2025-09-18', '2025-09-25', 'OD', NULL, '456/2025', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-18 04:45:56', '2025-09-18 04:45:56'),
(36, 32, 'CSS', 'irfan', '9876543235', '9876543235', 'bsnl@gmail.com', 'DDDDDDDDDDDD', 'DDDDDDDDDDDD', '123456', '2025-09-18', '2025-09-18', 'OD', NULL, '33332244', 'dddddds', '1', NULL, NULL, '1', '1', '2025-09-18 07:24:26', '2025-09-18 07:24:26'),
(37, 22, 'BBB', 'DFXDFDX', '9876543111', '9876543111', 'bb@gmail.com', 'dddddddddsa', 'dddddddddsa', '3451235', '2025-09-18', '2025-09-29', 'OD', NULL, '456/2025', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-18 07:42:50', '2025-09-18 07:42:50'),
(38, 32, 'Test user', 'ahamed', '9876543254', '9876543254', 'basil333@gmail.com', 'aaaaass', 'aaaaass', '3451235', '2025-09-18', '2025-09-23', 'OD', NULL, '3333224', 'mlpmfdsf', '1', NULL, NULL, '1', '1', '2025-09-18 08:22:02', '2025-09-18 08:22:02'),
(39, 34, 'usama', 'ahamed', '9876541221', '9876541221', 'ussm@mail.com', 'eeeeeeeee', 'eeeeeeeee', '123456', '2025-09-18', '2025-09-30', 'OD', NULL, '234/2025', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-18 08:43:12', '2025-09-18 08:43:12'),
(40, 22, 'basheer', 'irfan', '9876543210', '9876543210', 'test55c@gmail.com', 'ffffffffffffs', 'ffffffffffffs', '3451235X', '2025-09-19', '2025-09-22', 'OD', NULL, '134/2025', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-19 03:50:37', '2025-09-19 03:50:37'),
(42, 35, 'Basil', 'irfan shaw', '9497621212', '9497621212', 'bsl@mail.com', 'adresss23', 'adresss23', '345123', '2025-09-22', '2025-09-30', 'MACT', NULL, '456/2025', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-22 04:29:02', '2025-09-22 04:29:02'),
(43, 2, 'fdfdfdf', 'Kelly Jones', '9876543210', '9876543210', 'fd@gmail.com', 'ffffffffffff', 'ffffffffffff', '123456', '2025-09-24', NULL, 'OD', NULL, '333322XXE', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-22 10:40:20', '2025-09-22 10:40:20'),
(44, 35, 'basheer', 'irfan', '9497626144', '9497626144', 'bshr@mail.com', 'ddddddddddss', 'ddddddddddss', '123456', '2025-09-23', '2025-09-24', 'OD', NULL, '33332244', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-22 11:20:29', '2025-09-22 11:20:29'),
(45, 2, 'Prajeesh', 'saaa', '9876543233', '9876543233', 'pr@mail.com', 'ddddddddddddsss', 'ddddddddddddsss', '123456', '2025-09-24', '2025-09-29', 'OD', NULL, '234/2025', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-22 12:31:53', '2025-09-22 12:31:53'),
(46, 2, 'Test user', 'ahamed', '9876543244', '9876543244', 'd@mail.com', 'ddddddddddd', 'ddddddddddd', '123456', '2025-09-22', '2025-09-24', 'OD', NULL, '456/2025', 'tirur', '1', NULL, NULL, '1', '1', '2025-09-22 12:42:31', '2025-09-22 12:42:31'),
(47, 1, 'Jabbar', 'Fahis', '9876543555', '9876543555', 'jbr@mail.com', 'adress4', 'adress4', '3451235', '2025-09-23', '2025-09-25', 'OD', NULL, '120/2025', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-22 12:49:07', '2025-09-22 12:49:07'),
(48, 36, 'basheer', 'irfan', '9497626144', '9497626144', 'bs@mail.com', 'eeeeeeeeee', 'eeeeeeeeee', '3451235', '2025-09-23', '2025-09-30', 'OD', NULL, '12/2024', 'mlpm', '1', NULL, NULL, '1', '1', '2025-09-23 11:22:09', '2025-09-23 11:22:09'),
(49, 35, 'Abc user', 'Althaf', '9876543255', '9876543255', 'alth@gmail.com', 'adress44', 'adress44', '345123', '2025-09-29', '2025-09-30', 'OD', NULL, '12/2024', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-29 06:56:34', '2025-09-29 06:56:34'),
(50, 37, 'Anas', 'Musafir', '9497626133', '9497626133', 'ans12@mail.com', 'fffffffffffs', 'fffffffffffs', '345123', '2025-09-29', '2025-09-30', 'OD', NULL, '12/2024', 'ktkl', '1', NULL, NULL, '1', '1', '2025-09-29 07:14:41', '2025-09-29 07:14:41'),
(51, 38, 'Raziq', 'Afnas', '9497626144', '9497626144', 'afnas@mail.com', 'adress123', 'adress123', '45689', '2025-09-29', '2025-09-30', 'MACT', NULL, '123/2025', 'mlpm', '1', '+91', NULL, '1', '1', '2025-09-30 07:59:36', '2025-10-18 06:40:35'),
(52, 35, 'Bajaj User', 'irfan', '9656523477', '9656523477', 'bj@usermail.com', 'dddddddddddddddf', 'dddddddddddddddf', '3451235', '2025-10-22', '2025-10-29', 'MACT', NULL, '333322XXE', 'ktkl', '1', '+91', 'Injury', '1', '1', '2025-10-07 07:28:01', '2025-10-18 06:37:01'),
(53, 2, 'Test user', 'irfan', '9497626188', '9497626188', 'mx@gmail.com', 'fffffffffffdd', 'fffffffffffdd', '123456', '2025-10-15', '2025-10-31', 'MACT', NULL, '23/2025', 'tirur', '1', '+91', NULL, '1', '1', '2025-10-07 10:33:12', '2025-10-07 10:33:12'),
(54, 1, 'Arss', 'ahamed', '9876543544', '9876543544', 'ars@mail.com', 'ddddddddd', 'ddddddddd', '3451235', '2025-10-14', '2025-10-29', 'OD', NULL, '120/2025', 'dddddds', '1', '+91', NULL, '1', '1', '2025-10-07 10:41:06', '2025-10-07 10:41:06'),
(55, 40, 'Ranga', 'irfan', '9656523476', '9656523476', 'rsk@mail.com', 'ffffsdsd', 'ffffsdsd', '345123', '2025-10-23', '2025-10-31', 'OD', NULL, '120/2025', 'ktkl', '2', '+91', NULL, '1', '1', '2025-10-07 10:47:31', '2025-10-08 12:13:21'),
(56, 38, 'dsdsd', 'ahamed', '9656523456', '9656523456', 'we@mail.com', 'fffffffffffff', 'fffffffffffff', '3451235', '2025-10-15', '2025-10-28', 'OD', NULL, '33332244', 'tirur', '1', '+91', NULL, '1', '1', '2025-10-08 12:17:20', '2025-10-08 12:17:20'),
(57, 1, 'Asma', 'ahamed', '9497626144', '9497626144', 'asmr@mail.com', 'fffffffffd', 'fffffffffd', '3451235', '2025-10-17', '2025-10-21', 'MACT', NULL, '458/2025', 'tirur', '1', '+91', 'Death', '1', '1', '2025-10-17 05:38:48', '2025-10-17 05:38:48'),
(58, 41, 'Test user', 'ahamed', '9497626188', '9497626188', 'rl@mail.com', 'adress123', 'adress123', '345123553', '2025-10-17', '2025-10-22', 'MACT', NULL, '23/2025', 'tirur', '1', '+91', NULL, '1', '1', '2025-10-17 12:22:41', '2025-10-17 12:22:41'),
(59, 1, 'Afnas', 'ahamed', '7708782197', '7708782197', 'chola@mail.com', 'adress123', 'adress123', '3451235', '2025-10-14', '2025-10-18', 'MACT', NULL, '333/234', 'mlpm', '1', '+91', 'TPPD', '1', '1', '2025-10-18 09:40:35', '2025-10-18 09:51:55'),
(60, 2, 'Vassem', 'asma sha', '9656521255', '9656521255', 'vsm@gmail.com', 'address', 'address', '345123554', '2025-10-21', '2025-10-23', 'OD', NULL, '454/2026', 'tirur', '1', '+91', NULL, '1', '1', '2025-10-21 04:39:06', '2025-10-21 04:39:06'),
(61, 4, 'Rashid', 'Anas', '9876543210', '9876543210', 'ans@gmail.com', 'fffffffffffffsd', 'fffffffffffffsd', '3451235X', '2025-10-21', '2025-10-24', 'OD', NULL, '23/2025', 'mlpm', '1', '+91', NULL, '1', '1', '2025-10-22 04:12:51', '2025-10-22 04:12:51'),
(62, 4, 'Basheer', 'Alavi', '9876543244', '9876543244', 'bsr@mail.com', 'gggggdfg', 'gggggdfg', '123456', '2025-10-21', '2025-10-23', 'MACT', NULL, '33332244', 'mlpm', '1', '+91', NULL, '1', '1', '2025-10-22 05:17:02', '2025-10-22 05:17:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_02_04_104238_for_users_table_to_add_number', 1),
(11, '2024_02_07_154225_update_user_table_fields', 1),
(12, '2024_09_09_092412_create_insurance_companies_table', 1),
(13, '2024_09_11_043415_create_insurance_customers_table', 1),
(14, '2024_09_11_043437_create_insurance_cases_table', 1),
(15, '2024_09_19_105113_create_case_assignments_table', 1),
(16, '2024_09_26_091615_create_assign_work_data_table', 1),
(17, '2024_10_11_045640_create_odometer_readings_table', 1),
(18, '2024_10_15_045625_create_password_reset_requests_table', 1),
(19, '2024_10_16_113324_create_garage_data_table', 1),
(20, '2024_10_16_113335_create_driver_data_table', 1),
(21, '2024_10_16_113357_create_spot_data_table', 1),
(22, '2024_10_16_113411_create_owner_data_table', 1),
(23, '2024_10_16_113437_create_accident_person_data_table', 1),
(24, '2024_10_17_065412_create_salaries_table', 1),
(25, '2024_11_22_065054_add_fields_to_insurance_customers_table', 1),
(26, '2024_12_03_050424_create_company_logos_table', 2);

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
('04e749d5af27c099be44f44e0e21aab20c91effc63ec35241632fc27a294528d6b7c8425c88da2da', 29, 1, 'Insurance API Auth', '[]', 0, '2025-07-14 01:54:41', '2025-07-14 01:54:41', '2026-07-14 07:24:41'),
('15be5db6414c529c488dae947d0803bf7fa519d69b1ff4dcb4579dca77ee80a44655edfddda882da', 34, 1, 'Insurance API Auth', '[]', 0, '2025-10-07 10:34:58', '2025-10-07 10:34:58', '2026-10-07 16:04:58'),
('193a67d1cfb5fe3d675a59dfb28608babe2b69e8d112a50a9f7bba8d563a9c6916ebe79283f7a9d2', 19, 1, 'Insurance API Auth', '[]', 0, '2025-09-18 08:34:23', '2025-09-18 08:34:23', '2026-09-18 14:04:23'),
('31e7c2f7808c0405ff9bdbfa80b3a0fdcec5ed997b057ab2a4decdf07ea07ddebb5a2473433b4742', 26, 1, 'Insurance API Auth', '[]', 1, '2025-03-13 00:34:08', '2025-09-16 12:35:26', '2026-03-13 06:04:08'),
('3a1c2a0548103e9b574221881c849b96b01455afe16281fc1f94d314a9723253c6a0670fcec3f2b8', 2, 1, 'Insurance API Auth', '[]', 0, '2025-07-16 03:53:08', '2025-07-16 03:53:08', '2026-07-16 09:23:08'),
('4a449724dd04c2b081da16310557bc7f3576495ae7ffcc4fef3776819baa79f16b5539be7d74900e', 50, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 10:56:15', '2025-10-16 10:56:15', '2026-10-16 16:26:15'),
('4dcc738fc229aca22c7ad91ed3ad68e076fb48dbe300e93ce7a0b1788d884018def6c21575b3d750', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 10:30:58', '2025-09-16 12:11:52', '2026-09-16 16:00:58'),
('4e4277f5626fb966af2a67bb14156633a27542ea963c938c2cd72483d5b82262d885dd98c9b8e565', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 12:14:43', '2025-09-16 12:16:21', '2026-09-16 17:44:43'),
('5015c9da4a709737d6c3df638aaff44d4eda33855bc4cc45e6824899cad0e699e05ffb24716b2d7b', 5, 1, 'Insurance API Auth', '[]', 0, '2025-01-26 23:03:48', '2025-01-26 23:03:48', '2026-01-27 04:33:48'),
('665d73b4da84b28743f2d406fab7a7b30a7a4430e79abe91cc2cc9a322574c22bd0caaa29285475a', 38, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 09:59:07', '2025-10-16 09:59:07', '2026-10-16 15:29:07'),
('66c25cabb1e7837456f2579eef0d7d505564a86581187efa2fdc1daa8dc732439cde7f7a313972a4', 26, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 12:35:26', '2025-09-16 12:35:26', '2026-09-16 18:05:26'),
('69abeaba7551710c9cd9d146444e7a2e6e8a6f9b28b12342edec67fb267974a61d1017fcbef1e09f', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 05:17:36', '2025-09-16 05:19:40', '2026-09-16 10:47:36'),
('6fa88dfbe68d016a302d044045c244999008ee44baf5f331e33b74c8c818ca4f2ff46424339b4553', 9, 1, 'Insurance API Auth', '[]', 0, '2024-10-22 06:17:24', '2024-10-22 06:17:24', '2025-10-22 11:47:24'),
('7144de27a85f44116324f520c2a9ebf45ab547e291da5f37452575953dfb589ad21c4dae1c6692d1', 16, 1, 'Insurance API Auth', '[]', 0, '2025-09-11 04:44:34', '2025-09-11 04:44:34', '2026-09-11 10:14:34'),
('72b301f7b41f6ddc8bedc8a3d51875b11c9d713bc86202fa77e549384e24eb4dfddb5f27feaa2b8d', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 07:22:45', '2025-09-18 08:34:23', '2026-09-18 12:52:45'),
('8492764b496149cc2f34db2991478621278e04a647d708e034a92a784f0bb9a4b969eae4898612c7', 51, 1, 'Insurance API Auth', '[]', 0, '2025-10-22 04:13:28', '2025-10-22 04:13:29', '2026-10-22 09:43:28'),
('8b2568a1c8e15d72b4600413c5e24426d2a6cd980cd91027894a7c963f34d06b6a43e9b20429df0d', 17, 1, 'Insurance API Auth', '[]', 0, '2025-09-12 11:59:50', '2025-09-12 11:59:50', '2026-09-12 17:29:50'),
('96c0fc76bd17d562c7682df703463183dc93e9c887f2ad4026effedcec3d850754591b5d03e877f0', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 05:19:40', '2025-09-16 10:30:57', '2026-09-16 10:49:40'),
('98c90bc3dae915e4e3e955559da28cccba6e40bd4e620fd0d9f332a80b0a9063b99b727c68fee637', 27, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 13:56:59', '2025-09-16 13:56:59', '2026-09-16 19:26:59'),
('9a2370608b857e34b24e06b2b516f9c41e08c3600d4617b24458c5d96713a829a8f449031d6cc5b9', 3, 1, 'Insurance API Auth', '[]', 0, '2025-07-22 06:01:45', '2025-07-22 06:01:45', '2026-07-22 11:31:45'),
('9f2b0ef2e99ac5ffa771ac9c2800c2cce7d81463e52ccdd43d3f598d980ddaa66ed4792b5914fccf', 7, 1, 'Insurance API Auth', '[]', 0, '2024-10-07 00:29:19', '2024-10-07 00:29:19', '2025-10-07 05:59:19'),
('a2691cf149ced507c6cae5c26b70c01eef0d8478c56ba7025a3805089f4865e120d6dd1ad1d18559', 47, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 06:33:59', '2025-10-16 06:34:00', '2026-10-16 12:03:59'),
('a2e3dd295cf07fd950b7f2b80cdd6d8e539d77a346838cab3a880195391798b7d7cc35443769ceeb', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 04:39:34', '2025-09-18 07:22:44', '2026-09-18 10:09:34'),
('ab555968d30450086d93a7f1f439c0fd88d5c75a3ae36765d2f57c4c087e3e65674d656f2590be7b', 8, 1, 'Insurance API Auth', '[]', 0, '2025-08-05 03:41:15', '2025-08-05 03:41:16', '2026-08-05 09:11:15'),
('ae6413bad61c79307d2837b7f8c2c76237d0c183079ecc1af8960b86d23730d1b4be7893c2330929', 49, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 10:13:39', '2025-10-16 10:13:39', '2026-10-16 15:43:39'),
('baa11ce0d73695cbade3a36aedad48080981ddb6f48b4ba07a48ce7147650f4763ffb5ad0e2fa9e2', 35, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 10:23:31', '2025-10-16 10:23:31', '2026-10-16 15:53:31'),
('c29193d94df0f9a273c5a3aa7631753ee2064e8fcc5b7ddba195402d564d0cd29b304a5ed5062265', 36, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 09:46:34', '2025-10-16 09:46:34', '2026-10-16 15:16:34'),
('c9e0791327b7a58a356bd8057d19c51dfc4f9949324bd79ffc0e4d0cc644dd201a7a855396295d64', 39, 1, 'Insurance API Auth', '[]', 1, '2025-09-19 07:05:04', '2025-09-19 07:05:04', '2026-09-19 12:35:04'),
('c9e53e752412de37f5f977d5cf2bdcb3db4de09d7c4acd8490127281cd9ec7e2c7a7949b3e5dc4f9', 24, 1, 'Insurance API Auth', '[]', 0, '2024-12-10 02:16:26', '2024-12-10 02:16:26', '2025-12-10 07:46:26'),
('cb47f9b045da73b19f7275d9cc0e854784dfa191fe926c6fb37042d882ee599d6d6b88bf490b2eea', 6, 1, 'Insurance API Auth', '[]', 0, '2024-11-26 00:49:21', '2024-11-26 00:49:21', '2025-11-26 06:19:21'),
('d1c654a1ee08542ec19dd812f20b4c39092b46fdbed3149f24013aeeeb49e6dc074c7d8da2d605ff', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-14 08:05:52', '2025-09-17 05:52:15', '2026-09-14 13:35:52'),
('deeb19763a41ed682bec326bfe9010861354d61e489ee6545137000f342d739d8dd556db46cc85c9', 43, 1, 'Insurance API Auth', '[]', 0, '2025-10-16 10:02:53', '2025-10-16 10:02:53', '2026-10-16 15:32:53'),
('e1c695adb2be7d0ca5cff4f448f34e0190487f210eb5ba43f61a4b260106f68bde89d9c98531484e', 12, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 13:59:31', '2025-09-16 13:59:31', '2026-09-16 19:29:31'),
('e55a5d72cb87d787858cd3024e126fd3bd700ab3aa07812b68452a2b3e373065e4e5977af2932a88', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 12:16:21', '2025-09-16 12:16:21', '2026-09-16 17:46:21'),
('e8c75fed1192458e42e7b2759df3e420290749a0331d84c42189e364c87cb674740f7b065449c8f9', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-17 09:21:30', '2025-09-18 04:39:34', '2026-09-17 14:51:30'),
('f23287c428ed54c3587f050f408c38dea08c697ad2bbee57eeb17528aa916170f4e539542f0d86d5', 23, 1, 'Insurance API Auth', '[]', 0, '2024-12-12 00:30:52', '2024-12-12 00:30:52', '2025-12-12 06:00:52'),
('f493c68a3c6ff0a3b05a768103023d9f51a96721f3812a057a3b376e0baaa703f6e49afb3278c850', 18, 1, 'Insurance API Auth', '[]', 0, '2025-09-13 05:46:53', '2025-09-13 05:46:53', '2026-09-13 11:16:53'),
('f741d0f22905e985d115063523c6785c8f797321c1d7b73a872882c17e3a86fa4a0d548f5feb54fd', 11, 1, 'Insurance API Auth', '[]', 0, '2025-08-07 22:19:38', '2025-08-07 22:19:38', '2026-08-08 03:49:38'),
('f9e70133cb5118ac5895caaf784d78086bc2b1884a4586a4d22ad0d3a97295c62a31a964449d75d3', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 12:11:52', '2025-09-16 12:11:52', '2026-09-16 17:41:52'),
('fbd00d037371904145c88489d2f0b8dae3f40c7e513d3f94157cbb8ad8c04e96a9876d65837251c4', 4, 1, 'Insurance API Auth', '[]', 0, '2025-07-23 22:44:32', '2025-07-23 22:44:32', '2026-07-24 04:14:32'),
('feaefeaa9685760d07938693ebd85abddaad4d84e6426888532db11d78c47d2d4f773802af7a75f2', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-17 05:52:16', '2025-09-17 09:21:30', '2026-09-17 11:22:16');

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
(1, NULL, 'Laravel Personal Access Client', 'Dq2WEAwdzwOdRAUfgJxi7LqJlIPFoWax991iHSJq', NULL, 'http://localhost', 1, 0, 0, '2024-10-03 04:46:00', '2024-10-03 04:46:00'),
(2, NULL, 'Laravel Password Grant Client', 'u2vaZAb7Q3B81MEgtknU41fgcJmm642cLxoDOsb1', 'users', 'http://localhost', 0, 1, 0, '2024-10-03 04:46:00', '2024-10-03 04:46:00');

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
(1, 1, '2024-10-03 04:46:00', '2024-10-03 04:46:00');

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
-- Table structure for table `odometer_readings`
--

CREATE TABLE `odometer_readings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `check_in_km` varchar(255) DEFAULT NULL,
  `check_in_image` varchar(255) DEFAULT NULL,
  `check_in_time` varchar(255) DEFAULT NULL,
  `check_in_date` varchar(255) DEFAULT NULL,
  `check_in_latitude_and_longitude` varchar(255) DEFAULT NULL,
  `check_out_km` varchar(255) DEFAULT NULL,
  `check_out_image` varchar(255) DEFAULT NULL,
  `check_out_time` varchar(255) DEFAULT NULL,
  `check_out_date` varchar(255) DEFAULT NULL,
  `check_out_latitude_and_longitude` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `odometer_readings`
--

INSERT INTO `odometer_readings` (`id`, `user_id`, `check_in_km`, `check_in_image`, `check_in_time`, `check_in_date`, `check_in_latitude_and_longitude`, `check_out_km`, `check_out_image`, `check_out_time`, `check_out_date`, `check_out_latitude_and_longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 18, '500', 'odometer/ublG0qPpRHfhzcnPdX7IMk0yxV4VOmokk9oh72EU.jpg', '12:02 PM', '18-10-2024', NULL, '300', 'odometer/XENxxbTyJ6BYvoLRNTtFztq6ygaghPgMzrmxKHo6.jpg', '12:50 PM', '18-10-2024', NULL, '1', '2024-10-18 06:32:57', '2024-10-18 07:20:22'),
(2, 8, '200', 'odometer/rMKBu59ldZ3TB9WvHH60ZHAJBNFtVnWTNukEKwfg.jpg', '12:18 PM', '18-10-2024', NULL, '300', 'odometer/pbWdAyuByITGXOkbOWogjeCFIYEBzCdoaEszZCtD.jpg', '12:19 PM', '18-10-2024', NULL, '1', '2024-10-18 06:48:55', '2024-10-18 06:49:09'),
(3, 8, '200', 'odometer/0ii1GM8Xlo1QRGyI50Wtz210l51MzRdgdGyY9Lpk.jpg', '12:34 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:04:48', '2024-10-18 07:04:48'),
(4, 8, '200', 'odometer/zY0yF4ZBrVqB5ipPhFXBJmMSx6F4mGvBF7UzKapt.jpg', '12:34 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:04:51', '2024-10-18 07:04:51'),
(5, 8, '200', 'odometer/GtFqGqZMYhALCIQdV4y3YSxna5DkqwIKvC0b5UWX.jpg', '12:36 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:06:58', '2024-10-18 07:06:58'),
(6, 8, '200', 'odometer/eZvJ9A6GPi0sK3bdcqtImnt8IcmctgUW2tlHPQdR.jpg', '12:49 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:19:08', '2024-10-18 07:19:08'),
(7, 16, '500', 'odometer/G85ZKBEer6jrFD6J1SlN2neeRDxDtDWmXpHluvbV.jpg', '01:14 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 07:44:47', '2024-10-18 07:44:47'),
(8, 16, '500', 'odometer/KoKMTi4g8ldR6vDcxg2ujVuOR8pnAj4AHYNKEzpt.jpg', '01:15 PM', '18-10-2024', NULL, '700', 'odometer/etIF6UZChlQq7NHpaOsBq564WKCHFjp8xGGW3NXX.jpg', '01:15 PM', '18-10-2024', NULL, '1', '2024-10-18 07:45:04', '2024-10-18 07:45:29'),
(9, 18, '22', 'odometer/lL5xaj7tgRmSF1IMmbCSKuKIwArs3HhvJIa9UOrF.jpg', '05:37 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:07:39', '2024-10-18 12:07:39'),
(10, 18, '22', 'odometer/LeALyM1Ot0Un7Chwvu2Mow62ZYPFGE9f3rT6MLj3.jpg', '05:37 PM', '18-10-2024', NULL, '55', 'odometer/NUZMKAscZjaZ2LdD3MWFxSCalKDo9N3VTQAey4QD.jpg', '05:41 PM', '18-10-2024', NULL, '1', '2024-10-18 12:07:46', '2024-10-18 12:11:18'),
(11, 18, '22', 'odometer/iaPnA7fy12BcCqTc7Aj3YFxdQfJIgvImOUWRM87p.jpg', '05:42 PM', '18-10-2024', NULL, '55', 'odometer/5ZBgHo2vwwZ0dbnpFsVIPQMQCqPEzIyTy4K2TvBl.jpg', '05:45 PM', '18-10-2024', NULL, '1', '2024-10-18 12:12:18', '2024-10-18 12:15:44'),
(12, 18, '11', 'odometer/wbJKQeHute0RUMhNvXMIF90pht9gmUEunK1vfdcy.jpg', '05:47 PM', '18-10-2024', NULL, '111', 'odometer/Oeload4lbMkn7egvfGGzbM2ftZcKTEE6VhvVsMfy.jpg', '05:47 PM', '18-10-2024', NULL, '1', '2024-10-18 12:17:31', '2024-10-18 12:17:53'),
(13, 18, '55', 'odometer/0nEFeTE7aOHTwZMhJidSJS6kXek3r6YPZr05Kd9j.jpg', '05:50 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:20:11', '2024-10-18 12:20:11'),
(14, 18, '55', 'odometer/sLqkzq09NuC61eyo2mPPBApfRn71GDHr1E4SiNgj.jpg', '05:50 PM', '18-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-18 12:20:27', '2024-10-18 12:20:27'),
(15, 18, '88', 'odometer/NTHFdQjAviQFNulPxPUDYyD9XYQy7twpuiYWK2Be.jpg', '09:45 AM', '19-10-2024', NULL, '88', 'odometer/Y5ZCzxmzG85SZWkuMkVr1QTS70fE6Qp6QbLBFSyA.jpg', '09:47 AM', '19-10-2024', NULL, '1', '2024-10-19 04:15:51', '2024-10-19 04:17:41'),
(16, 9, '200', 'odometer/Iy2QZ8G12NZsVGFKo9YuSbRuUcGjlTk5k86FNtuV.jpg', '10:36 AM', '19-10-2024', NULL, '500', 'odometer/hmESdXVTlyOKb8kFPsdS9s74mmJNdRX7AvjPAIgx.jpg', '02:04 PM', '19-10-2024', NULL, '1', '2024-10-19 05:06:14', '2024-10-19 08:34:57'),
(17, 18, '22', 'odometer/BYnryMEOVSzQDTdTn0KiI8UzgpBT1rLQeWoslkRh.jpg', '10:40 AM', '19-10-2024', NULL, '32', 'odometer/KYOdS83awYG8DsPGFWQKFx8UCVIqpRTMBhhKcVhs.jpg', '10:41 AM', '19-10-2024', NULL, '1', '2024-10-19 05:10:30', '2024-10-19 05:11:15'),
(18, 18, '25', 'odometer/LEqQ1MbhqP6x6rkW3t2oxZC3yYQd72kBhXIkaeLG.jpg', '11:32 AM', '19-10-2024', NULL, '88', 'odometer/o6OcWo2UXPfzGG38stumA2YWfQkM3KwCxv16SeJ8.jpg', '11:33 AM', '19-10-2024', NULL, '1', '2024-10-19 06:02:47', '2024-10-19 06:03:47'),
(19, 18, '55', 'odometer/Nn5HSNQu79qFB6tDPh8HxnfQcFO8g6wQbOQQEQQq.jpg', '11:35 AM', '19-10-2024', NULL, '8080', 'odometer/OOc5hP1eQfvwM2CiwaYhLGlnmd3ae1Z0WPeHjiof.jpg', '02:30 PM', '19-10-2024', NULL, '1', '2024-10-19 06:05:56', '2024-10-19 09:00:46'),
(20, 18, '205', 'odometer/na8n6aoGk2MNXsJFtMV6ZtZaTkngSO2hcXBmWMhM.jpg', '11:15 AM', '21-10-2024', NULL, '808', 'odometer/udZJ2VM7LlScMQFF3GJwetXlgA8ge8Fi1HZriziv.jpg', '11:16 AM', '21-10-2024', NULL, '1', '2024-10-21 05:45:54', '2024-10-21 05:46:32'),
(21, 18, '555', 'odometer/MFsvwhAEA7NGUb7jrmyGN5TzMa0ZrXSSvjkdWKAU.jpg', '11:19 AM', '21-10-2024', NULL, '600', 'odometer/fy0hLFa5XXA9c4gvWKf9ntLG9BSpP9B4IaAb4xre.jpg', '01:57 PM', '21-10-2024', NULL, '1', '2024-10-21 05:49:28', '2024-10-21 08:27:55'),
(22, 18, '500', 'odometer/pUA3LM9vulzzhWZAc9ogmWmJQFVJLjNxGe7Dt9BD.jpg', '12:07 PM', '22-10-2024', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2024-10-22 06:37:33', '2024-10-22 06:37:33'),
(23, 18, '222', 'odometer/eEFETfBsrnmxUzVZom3bi0aeUOHxEKY7uQqZpTGH.jpg', '11:53 AM', '23-10-2024', '11.1807508, 75.8545927', '8888', 'odometer/9m6LrvRcA6eoSp9p7UQqrm4pAihSIjSVFNFaeYn6.jpg', '12:01 PM', '23-10-2024', '11.1807573, 75.8546012', '1', '2024-10-23 06:23:15', '2024-10-23 06:31:56'),
(24, 4, '500', 'odometer/3t9oC6rcHHzoqFnwpcuSEzqK3rQjB0aQvbo6xeLV.jpg', '10:28 AM', '04-11-2024', '11.1807416, 75.8545779', '695', 'odometer/yXVO2Vx0AUQEdHVmJrqnxGxXrGartoDOF65LAKAc.jpg', '12:23 PM', '04-11-2024', '11.1807634, 75.8545941', '1', '2024-11-04 04:58:47', '2024-11-04 06:53:25'),
(25, 4, '200', 'odometer/5BuwdV0SS0saGjX53LGTlUc4QQLRcQ5uoydlOwVY.jpg', '02:51 PM', '05-11-2024', '8.5061135, 76.9535024', '500', 'odometer/jkGUZeX0A5duRExttGjhn9dBAVTEdY7TbQQGiu5w.jpg', '02:52 PM', '05-11-2024', '8.5061135, 76.9535024', '1', '2024-11-05 09:21:40', '2024-11-05 09:22:31'),
(26, 18, '500', 'odometer/Xxc7bdzkBsxmyrfu8jpnA4iFxCgOQTe0B9tv9gTW.jpg', '11:15 AM', '03-12-2024', '11.1807614, 75.8545938', '576', 'odometer/5sSFb5Lfn8KUJXynCiU4ycXhRO6JySKF7e3duBut.jpg', '03:31 PM', '03-12-2024', '11.1807608, 75.8545971', '1', '2024-12-03 05:45:49', '2024-12-03 10:01:45'),
(27, 18, '85', 'odometer/ile6pW4kCls0XYdiYRZD7JMqpLz5aFy9xuUmikaG.jpg', '06:09 PM', '11-12-2024', '11.1807736, 75.8546007', '222', 'odometer/cmMeZvHd35nM8yrkBEQ54ctshsHdt5NuDkygeLnN.jpg', '06:10 PM', '11-12-2024', '11.1807736, 75.8546007', '1', '2024-12-11 12:39:34', '2024-12-11 12:40:45'),
(28, 18, '200', 'odometer/PkfwxUajJ0EgeF9w5ELzPZIpd1msZd47v4Yjfjn2.png', '11:00 AM', '16-12-2024', '1.555,1.20215', '322', 'odometer/jFN9ZbwpERJVRBwCBzBmNsHNIo4ILsCYyIazZFae.jpg', '11:01 AM', '16-12-2024', '37.4219983, -122.084', '1', '2024-12-16 05:30:34', '2024-12-16 05:31:22'),
(29, 18, '123', 'odometer/muIDeUNsrcUM78x0TIHYFP8cw6VKdXQEiYgZY8rQ.jpg', '11:01 AM', '16-12-2024', '37.4219983, -122.084', NULL, NULL, NULL, NULL, NULL, '0', '2024-12-16 05:31:33', '2024-12-16 05:31:33'),
(30, 18, '12', 'odometer/PRCQs3tr2yz2chNfonjPw9sIlVtp8Y2OuKhDVFbQ.png', '12:25 PM', '06-01-2025', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:09', '2025-01-06 06:55:09'),
(31, 18, '12', 'odometer/LaztmZfDvATabdlFnbwQZSHiq2YgiPUioGiABCTX.png', '12:25 PM', '06-01-2025', '12,12', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:22', '2025-01-06 06:55:22'),
(32, 18, '12', 'odometer/RTKI6gwsNjyc6U0BgvZBcxtk1BrTLObPKVMP2HYo.png', '12:25 PM', '06-01-2025', NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 06:55:32', '2025-01-06 06:55:32'),
(33, 18, '12', 'odometer/cueRhDmg4MZR5y3rWqGvbTEDSLZipfM953WoBDbC.png', '12:25 PM', '06-01-2025', '12,12', '25', 'odometer/q8zZzH4Vf8YPduViiMb51hlEJdkx8RMKhuxx16xC.jpg', '12:30 PM', '06-01-2025', '11.180775, 75.8545333', '1', '2025-01-06 06:55:36', '2025-01-06 07:00:00'),
(34, 18, '15', 'odometer/fjFazdB7vNZCu8eHsGDM9iHYEDkPR7zWGe8DSSar.jpg', '12:31 PM', '06-01-2025', '11.180775, 75.8545333', '200', 'odometer/Dn1UTajEZSpx86v5oSNlMQeiI9zns1MP4jxYHTuN.jpg', '12:32 PM', '06-01-2025', '11.180775, 75.8545333', '1', '2025-01-06 07:01:58', '2025-01-06 07:02:08'),
(35, 18, '11', 'odometer/rrFVE2LVXyUoWgZnJQvKq0RW16d8iosvstHaVJZ5.jpg', '12:35 PM', '06-01-2025', '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 07:05:31', '2025-01-06 07:05:31'),
(36, 18, NULL, 'odometer/hExF7E0lt7FOUxpyfacMFwnxU2tx6SzY0MJi6JQn.png', '12:45 PM', '06-01-2025', '12,12', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-06 07:15:31', '2025-01-06 07:15:31'),
(37, 18, '1234', 'odometer/4DEZKTDsJCKZQyxWGJdnojru8D60kvrXGUk07WQA.jpg', '10:20 AM', '07-01-2025', '11.180775, 75.8545333', NULL, NULL, NULL, NULL, NULL, '0', '2025-01-07 04:50:12', '2025-01-07 04:50:12'),
(42, 18, '22', 'odometer/RUoORIWOvxSk9XxaaugslmGrEeK4IOJQntb75w6J.jpg', '04:45 PM', '03-02-2025', '11.1807902, 75.8545733', NULL, NULL, NULL, NULL, NULL, '0', '2025-02-03 11:15:38', '2025-02-03 11:15:38'),
(48, 12, '200', 'odometer/Rylh6fooQ5mKZaxILD5qyZxDM546lvPnzfPRf42s.jpg', '03:18 PM', '04-09-2025', 'fffffs', '200', 'odometer/5UEY4FolpB0MED83HpIOG2LKE50HnVQXPuZjutSJ.jpg', '03:21 PM', '04-09-2025', 'fffffs', '1', '2025-09-04 09:48:15', '2025-09-04 09:51:07'),
(49, 12, '200', 'odometer/6NQloGSXpxMR2d5cVgCvqc20Z7zC1NXrELEcJTqW.jpg', '03:21 PM', '04-09-2025', 'fffffs', '200', 'odometer/rjtANDlozysoY3IWK0SiPzKD9c7KsiXe6FlJOGQE.jpg', '03:22 PM', '04-09-2025', 'fffffs', '1', '2025-09-04 09:51:29', '2025-09-04 09:52:20'),
(50, 12, '200', 'odometer/q6iATovdFyh1zIgvbm5RGeR1kG0nVxo84x45pXk8.jpg', '03:35 PM', '04-09-2025', 'fffffs', '200', 'odometer/k3QISTXRyfbrGO5XISwuc2p0nezMXf5vc9piuzh2.jpg', '03:45 PM', '04-09-2025', 'fffffs', '1', '2025-09-04 10:05:33', '2025-09-04 10:15:08'),
(51, 12, '200', 'odometer/e8vUr5YHipeETpm3cTOslDxJMQDyLrTo0WUzuuCD.jpg', '03:48 PM', '04-09-2025', 'fffffs', NULL, NULL, NULL, NULL, NULL, '0', '2025-09-04 10:18:12', '2025-09-04 10:18:12'),
(52, 36, '200', 'odometer/ZV22ya1Dv6m6Iqc5QwMFg26NkS5l0e5SAFsDCQAB.jpg', '03:50 PM', '04-09-2025', 'fffffs', '450', NULL, '04:50 PM', '04-09-2025', NULL, '0', '2025-10-09 10:26:03', '2025-09-04 10:26:03'),
(53, 12, '200', 'odometer/NtAt1eIB4afXrv1gRQWXyzEXRtFikMktejevAPm1.jpg', '09:25 AM', '06-09-2025', 'fffffs', NULL, NULL, NULL, NULL, NULL, '0', '2025-09-06 03:55:48', '2025-09-06 03:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `owner_data`
--

CREATE TABLE `owner_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `who_did_you_meet_regarding_the_accident_name_role` varchar(255) DEFAULT NULL,
  `what_was_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `date_of_the_meeting` date DEFAULT NULL,
  `was_any_agreement_or_document_signed` varchar(255) DEFAULT NULL,
  `next_steps_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `owner_ration_cardjhj` varchar(255) DEFAULT 'NULL',
  `owner_driving_license` varchar(255) DEFAULT NULL,
  `what_is_owner_license_number` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_account` varchar(255) DEFAULT NULL,
  `rc_validity` varchar(255) DEFAULT NULL,
  `date_of_loss` varchar(255) DEFAULT NULL,
  `cause_of_loss_eg_death_injury_tppd` varchar(255) DEFAULT NULL,
  `social_status_of_the_insured` varchar(255) DEFAULT NULL,
  `name_address_with_tele_no` varchar(255) DEFAULT NULL,
  `age_date_of_birth` varchar(255) DEFAULT NULL,
  `relationship_of_driver_with_insured` varchar(255) DEFAULT NULL,
  `authorized_to_drive_eg_mc_with_gear_lmv_etc` varchar(255) DEFAULT NULL,
  `rtolicensing_authority` varchar(255) DEFAULT NULL,
  `license_no_year` varchar(255) DEFAULT NULL,
  `validity_of_license_from_to` text DEFAULT NULL,
  `badge_validity_if_necessary_from_to` varchar(255) DEFAULT NULL,
  `whether_the_licensebadge_is_valid_on_doa` varchar(255) DEFAULT NULL,
  `whether_dl_extract_obtained_if_not_why` varchar(255) DEFAULT NULL,
  `does_the_dl_extract_details_tally_with_dl_copy_on_police_rec` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_data`
--

INSERT INTO `owner_data` (`id`, `assign_work_id`, `executive_id`, `who_did_you_meet_regarding_the_accident_name_role`, `what_was_discussed_in_the_meeting`, `date_of_the_meeting`, `was_any_agreement_or_document_signed`, `next_steps_discussed_in_the_meeting`, `owner_ration_cardjhj`, `owner_driving_license`, `what_is_owner_license_number`, `location`, `created_at`, `updated_at`, `owner_account`, `rc_validity`, `date_of_loss`, `cause_of_loss_eg_death_injury_tppd`, `social_status_of_the_insured`, `name_address_with_tele_no`, `age_date_of_birth`, `relationship_of_driver_with_insured`, `authorized_to_drive_eg_mc_with_gear_lmv_etc`, `rtolicensing_authority`, `license_no_year`, `validity_of_license_from_to`, `badge_validity_if_necessary_from_to`, `whether_the_licensebadge_is_valid_on_doa`, `whether_dl_extract_obtained_if_not_why`, `does_the_dl_extract_details_tally_with_dl_copy_on_police_rec`) VALUES
(1, 63, 20, NULL, NULL, NULL, '1', NULL, 'NULL', NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 63, 20, NULL, NULL, NULL, '1', NULL, 'NULL', NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 5, 19, NULL, 'Meeting is Done', '2025-10-04', NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 15, 38, NULL, 'Meeting is Done', NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 19, 38, 'Meeting is accurate', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 21, 38, 'Meeting455', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, 38, 'Meeting455', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 36, 38, NULL, NULL, '2024-10-05', NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 37, 38, 'sddddddd', 'very good staffes', '2024-10-05', 'Yes', 'N/A', 'NULL', NULL, 'N/A', NULL, '2025-09-29 07:18:12', '2025-10-18 07:49:33', 'owner_uploads/nQy7ireGIp3LgceqsESHZtjAYOBoLmVuhbNpQAZv.jpg', 'N/A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 47, 51, NULL, NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-10-21 04:46:51', '2025-10-21 04:46:51', NULL, NULL, '2025-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `owner_data_old`
--

CREATE TABLE `owner_data_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `who_did_you_meet_regarding_the_accident_name_role` varchar(255) DEFAULT NULL,
  `what_was_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `date_of_the_meeting` date DEFAULT NULL,
  `was_any_agreement_or_document_signed` varchar(255) DEFAULT NULL,
  `next_steps_discussed_in_the_meeting` varchar(255) DEFAULT NULL,
  `owner_ration_card` varchar(255) DEFAULT NULL,
  `owner_driving_license` varchar(255) DEFAULT NULL,
  `what_is_owner_license_number` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_account` varchar(255) DEFAULT NULL,
  `rc_validity` varchar(255) DEFAULT NULL,
  `date_of_loss` varchar(255) DEFAULT NULL,
  `cause_of_loss_eg_death_injury_tppd` varchar(255) DEFAULT NULL,
  `social_status_of_the_insured` varchar(255) DEFAULT NULL,
  `name_address_with_tele_no` varchar(255) DEFAULT NULL,
  `age_date_of_birth` varchar(255) DEFAULT NULL,
  `relationship_of_driver_with_insured` varchar(255) DEFAULT NULL,
  `authorized_to_drive_eg_mc_with_gear_lmv_etc` varchar(255) DEFAULT NULL,
  `rtolicensing_authority` varchar(255) DEFAULT NULL,
  `license_no_year` varchar(255) DEFAULT NULL,
  `validity_of_license_from_to` text DEFAULT NULL,
  `badge_validity_if_necessary_from_to` varchar(255) DEFAULT NULL,
  `whether_the_licensebadge_is_valid_on_doa` varchar(255) DEFAULT NULL,
  `whether_dl_extract_obtained_if_not_why` varchar(255) DEFAULT NULL,
  `does_the_dl_extract_details_tally_with_dl_copy_on_police_rec` varchar(255) DEFAULT NULL,
  `ggggggggfgg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_data_old`
--

INSERT INTO `owner_data_old` (`id`, `assign_work_id`, `executive_id`, `who_did_you_meet_regarding_the_accident_name_role`, `what_was_discussed_in_the_meeting`, `date_of_the_meeting`, `was_any_agreement_or_document_signed`, `next_steps_discussed_in_the_meeting`, `owner_ration_card`, `owner_driving_license`, `what_is_owner_license_number`, `created_at`, `updated_at`, `owner_account`, `rc_validity`, `date_of_loss`, `cause_of_loss_eg_death_injury_tppd`, `social_status_of_the_insured`, `name_address_with_tele_no`, `age_date_of_birth`, `relationship_of_driver_with_insured`, `authorized_to_drive_eg_mc_with_gear_lmv_etc`, `rtolicensing_authority`, `license_no_year`, `validity_of_license_from_to`, `badge_validity_if_necessary_from_to`, `whether_the_licensebadge_is_valid_on_doa`, `whether_dl_extract_obtained_if_not_why`, `does_the_dl_extract_details_tally_with_dl_copy_on_police_rec`, `ggggggggfgg`) VALUES
(1, 63, 20, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 63, 20, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 5, 19, NULL, 'Meeting is Done', '2025-10-04', NULL, NULL, NULL, NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 15, 38, NULL, 'Meeting is Done', NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 19, 38, 'Meeting is accurate', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 21, 38, 'Meeting455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 35, 38, 'Meeting455', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 36, 38, NULL, NULL, '2024-10-05', NULL, NULL, NULL, NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 37, 38, NULL, NULL, '2024-10-05', NULL, NULL, NULL, NULL, NULL, '2025-09-29 07:18:12', '2025-09-29 07:18:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 47, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-10-21 04:46:51', '2025-10-21 04:46:51', NULL, NULL, '2025-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_requests`
--

CREATE TABLE `password_reset_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `questionnaire_submissions`
--

CREATE TABLE `questionnaire_submissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `full_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionnaire_submissions`
--

INSERT INTO `questionnaire_submissions` (`id`, `case_id`, `full_data`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"id\":1,\"assign_id\":1,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garage 345\"},\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"data\":\"garage_uploads\\/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_drivers_contact_number\":{\"name\":\"what_is_the_drivers_contact_number\",\"data\":\"9961245588\"}}}]}', '2025-09-08 04:22:45', '2025-09-08 04:22:45'),
(2, 1, '{\"id\":1,\"assign_id\":1,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garage 345\"},\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"data\":\"garage_uploads\\/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_drivers_contact_number\":{\"name\":\"what_is_the_drivers_contact_number\",\"data\":\"9961245588\"}}}]}', '2025-09-08 04:26:46', '2025-09-08 04:26:46'),
(3, 1, '{\"id\":1,\"assign_id\":1,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garage 345\"},\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"data\":\"garage_uploads\\/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652312312025-09-08 09:45:14\",\"executive_id\":11,\"questionnaire\":{\"what_is_the_drivers_contact_number\":{\"name\":\"what_is_the_drivers_contact_number\",\"data\":\"9961245588\"}}}]}', '2025-09-08 04:33:15', '2025-09-08 04:33:15'),
(4, 61, '{\"id\":61,\"assign_id\":61,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"garage15\":{\"name\":\"garage15\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"},\"garage14\":{\"name\":\"garage14\",\"data\":\"Garagr678\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"driver23\":{\"name\":\"driver23\",\"data\":1}}},{\"work\":\"accident\",\"case_work_id\":\"accident9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"accident55\":{\"name\":\"accident55\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"}}}]}', '2025-09-14 08:20:15', '2025-09-14 08:20:15'),
(5, 61, '{\"id\":61,\"assign_id\":61,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"garage15\":{\"name\":\"garage15\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"},\"garage14\":{\"name\":\"garage14\",\"data\":\"Garagr678\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"driver23\":{\"name\":\"driver23\",\"data\":1}}},{\"work\":\"spot\",\"case_work_id\":\"driver9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":\"alaba\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"accident55\":{\"name\":\"accident55\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"}}}]}', '2025-09-14 08:22:34', '2025-09-14 08:22:34'),
(6, 61, '{\"id\":61,\"assign_id\":61,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"garage15\":{\"name\":\"garage15\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"},\"garage14\":{\"name\":\"garage14\",\"data\":\"Garagr678\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"driver23\":{\"name\":\"driver23\",\"data\":1}}},{\"work\":\"accident\",\"case_work_id\":\"accident9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"accident55\":{\"name\":\"accident55\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"}}}]}', '2025-09-14 08:24:17', '2025-09-14 08:24:17'),
(7, 61, '{\"id\":61,\"assign_id\":61,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"garage15\":{\"name\":\"garage15\",\"data\":\"uploads\\/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg\"},\"garage14\":{\"name\":\"garage14\",\"data\":\"Garagr678\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"driver23\":{\"name\":\"driver23\",\"data\":1}}},{\"work\":\"accident\",\"case_work_id\":\"accident9876543210612025-09-14 13:37:28\",\"executive_id\":19,\"questionnaire\":{\"accident55\":{\"name\":\"accident55\",\"data\":\"uploads\\/oQ5YZgc2DbqxEv5rjHeUpf4dQbdFAcaCQb6xZ9uX.mp3\"}}}]}', '2025-09-14 09:10:08', '2025-09-14 09:10:08'),
(8, 62, '{\"id\":62,\"assign_id\":62,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626144622025-09-16 09:57:19\",\"executive_id\":20,\"questionnaire\":{\"garage_gate_date\":{\"name\":\"garage_gate_date\",\"data\":\"2024-05-10\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9497626144622025-09-16 09:57:19\",\"executive_id\":20,\"questionnaire\":{\"driver_any_offence\":{\"name\":\"driver_any_offence\",\"data\":1}}},{\"work\":\"spot\",\"case_work_id\":\"spot9497626144622025-09-16 09:57:19\",\"executive_id\":20,\"questionnaire\":{\"spot_happenes\":{\"name\":\"spot_happenes\",\"data\":\"2024-05-10\"}}}]}', '2025-09-16 04:39:56', '2025-09-16 04:39:56'),
(9, 63, '{\"id\":63,\"assign_id\":63,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage 445\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"list_any_previous_driving_offenses\":{\"name\":\"list_any_previous_driving_offenses\",\"data\":\"Nothing Here\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"spot_photo\":{\"name\":\"spot_photo\",\"data\":1}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"was_any_agreement_or_document_signed\":{\"name\":\"was_any_agreement_or_document_signed\",\"data\":1}}},{\"work\":\"accident\",\"case_work_id\":\"accident9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/yp6pPb63JOmw73WVcAQ54dNMMne04Tla84seMFtA.png\"}}}]}', '2025-09-16 05:35:44', '2025-09-16 05:35:44'),
(10, 63, '{\"id\":63,\"assign_id\":63,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage 445\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"list_any_previous_driving_offenses\":{\"name\":\"list_any_previous_driving_offenses\",\"data\":\"Nothing Here\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"spot_photo\":{\"name\":\"spot_photo\",\"data\":1}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"was_any_agreement_or_document_signed\":{\"name\":\"was_any_agreement_or_document_signed\",\"data\":1}}}]}', '2025-09-16 05:40:05', '2025-09-16 05:40:05'),
(11, 64, '{\"id\":64,\"assign_id\":64,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage 556677\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"driving_accident_location\":{\"name\":\"driving_accident_location\",\"data\":\"Vengara\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"spot_photo\":{\"name\":\"spot_photo\",\"data\":1}}}]}', '2025-09-16 05:47:08', '2025-09-16 05:47:08'),
(12, 64, '{\"id\":64,\"assign_id\":64,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage122\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"driver_any_offence\":{\"name\":\"driver_any_offence\",\"data\":1}}}]}', '2025-09-16 05:54:47', '2025-09-16 05:54:47'),
(13, 65, '{\"id\":65,\"assign_id\":65,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage122\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver9876543214632025-09-16 10:58:22\",\"executive_id\":20,\"questionnaire\":{\"driver_any_offence\":{\"name\":\"driver_any_offence\",\"data\":1}}}]}', '2025-09-16 05:56:01', '2025-09-16 05:56:01'),
(14, 5, '{\"id\":5,\"assign_id\":5,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":{\"garage_number\":{\"name\":\"garage_number\",\"data\":\"Garage564\"},\"what_is_the_garages_registration_number\":{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"Garage567\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":19,\"questionnaire\":{\"did_the_driver_receive_any_injuries\":{\"name\":\"did_the_driver_receive_any_injuries\",\"data\":1},\"driving_accident_location\":{\"name\":\"driving_accident_location\",\"data\":\"Locations43\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":{\"were_any_traffic_signals_nearby\":{\"name\":\"were_any_traffic_signals_nearby\",\"data\":1},\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":{\"what_was_discussed_in_the_meeting\":{\"name\":\"what_was_discussed_in_the_meeting\",\"data\":\"Meeting is Done\"},\"date_of_the_meeting\":{\"name\":\"date_of_the_meeting\",\"data\":\"2025-10-04\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg\"}}}]}', '2025-09-17 06:13:58', '2025-09-17 06:13:58'),
(15, 6, '{\"id\":6,\"assign_id\":6,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":null},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":null},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":19,\"questionnaire\":null}]}', '2025-09-18 07:52:31', '2025-09-18 07:52:31'),
(16, 15, '{\"id\":15,\"assign_id\":15,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"data\":\"uploads\\/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg\"},\"what_is_the_garages_registration_number\":{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"Garage567\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":38,\"questionnaire\":{\"driving_accident_location\":{\"name\":\"driving_accident_location\",\"data\":\"Malappuram\"},\"did_the_driver_receive_any_injuries\":{\"name\":\"did_the_driver_receive_any_injuries\",\"data\":1}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"spot_photo\":{\"name\":\"spot_photo\",\"data\":\"uploads\\/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg\"},\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"what_was_discussed_in_the_meeting\":{\"name\":\"what_was_discussed_in_the_meeting\",\"data\":\"Meeting is Done\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg\"}}}]}', '2025-09-19 04:01:29', '2025-09-19 04:01:29'),
(17, 19, '{\"id\":19,\"assign_id\":19,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garage567\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":38,\"questionnaire\":{\"full_name_of_the_driver_at_the_time_of_the_accident\":{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Babulen\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"who_did_you_meet_regarding_the_accident_name_role\":{\"name\":\"who_did_you_meet_regarding_the_accident_name_role\",\"data\":\"Meeting is accurate\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"}}}]}', '2025-09-22 04:36:20', '2025-09-22 04:36:20'),
(18, 21, '{\"id\":21,\"assign_id\":21,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garagenew\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":38,\"questionnaire\":{\"full_name_of_the_driver_at_the_time_of_the_accident\":{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Manish\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"who_did_you_meet_regarding_the_accident_name_role\":{\"name\":\"who_did_you_meet_regarding_the_accident_name_role\",\"data\":\"Meeting455\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"}}}]}', '2025-09-22 11:23:13', '2025-09-22 11:23:13'),
(19, 22, '{\"id\":22,\"assign_id\":22,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"data\":\"Garagenew\"}}}]}', '2025-09-23 11:15:48', '2025-09-23 11:15:48'),
(20, 35, '{\"id\":35,\"assign_id\":35,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"address_pertains_to_negative_area\":{\"name\":\"address_pertains_to_negative_area\",\"data\":\"Fast\"},\"pan_number\":{\"name\":\"pan_number\",\"data\":\"PAN123\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":38,\"questionnaire\":{\"full_name_of_the_driver_at_the_time_of_the_accident\":{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Manish\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"enter_the_address_or_coordinates_of_the_accident_spot\":{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"123.45,56.78\"}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"who_did_you_meet_regarding_the_accident_name_role\":{\"name\":\"who_did_you_meet_regarding_the_accident_name_role\",\"data\":\"Meeting455\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg\"}}}]}', '2025-09-23 11:27:14', '2025-09-23 11:27:14'),
(21, 36, '{\"id\":36,\"assign_id\":36,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"was_the_driver_under_influence\",\"data\":1}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"spot_photo\",\"data\":1}]},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"date_of_the_meeting\",\"data\":\"2024-10-05\"}]},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg\"}]}]}', '2025-09-29 07:07:26', '2025-09-29 07:07:26'),
(22, 37, '{\"id\":37,\"assign_id\":37,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626133372025-09-29 12:44:41\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"GR1234\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"was_the_driver_under_influence\",\"data\":1}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"spot_photo\",\"data\":1}]},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"date_of_the_meeting\",\"data\":\"2024-10-05\"}]},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg\"}]}]}', '2025-09-29 07:18:11', '2025-09-29 07:18:11'),
(23, 38, '{\"id\":38,\"assign_id\":38,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626133372025-09-29 12:44:41\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"GR4512\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Arfan\"},{\"name\":\"was_the_driver_under_influence\",\"data\":1}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"102.45,103.56\"},{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":1}]}]}', '2025-09-30 08:40:05', '2025-09-30 08:40:05'),
(24, 38, '{\"id\":38,\"assign_id\":38,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626133372025-09-29 12:44:41\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"GR4512\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Arfan\"},{\"name\":\"was_the_driver_under_influence\",\"data\":0}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"102.45,103.56\"},{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":1}]}]}', '2025-09-30 08:45:26', '2025-09-30 08:45:26'),
(25, 38, '{\"id\":38,\"assign_id\":38,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626133372025-09-29 12:44:41\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"GR4512\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Arfan\"},{\"name\":\"was_the_driver_under_influence\",\"data\":0}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"102.45,103.56\"},{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}]}]}', '2025-09-30 08:46:34', '2025-09-30 08:46:34'),
(26, 38, '{\"id\":38,\"assign_id\":38,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage9497626133372025-09-29 12:44:41\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"GR4512\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17T10:37:21\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Arfan\"},{\"name\":\"was_the_driver_under_influence\",\"data\":1}]},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17T10:09:54\",\"executive_id\":38,\"questionnaire\":[{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"102.45,103.56\"},{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}]}]}', '2025-09-30 08:50:40', '2025-09-30 08:50:40'),
(27, 42, '{\"id\":42,\"assign_id\":42,\"works\":[{\"work\":\"driver\",\"case_work_id\":\"driver904800793392025-10-07 15:12:38\",\"executive_id\":34,\"questionnaire\":{\"full_name_of_the_driver_at_the_time_of_the_accident\":{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"data\":\"Davic\"}}},{\"work\":\"garage\",\"case_work_id\":\"garage904800793392025-10-07 15:12:38\",\"executive_id\":34,\"questionnaire\":{\"pan_number\":{\"name\":\"pan_number\",\"data\":\"PAN122\"},\"garage_gate44\":{\"name\":\"garage_gate44\",\"data\":\"garage_uploads\\/XhFfYX7FbmepXCySTKQqLV2DAUEieXzh4RKIxyhr.jpg\"}}},{\"work\":\"spot\",\"case_work_id\":\"spot9656523476422025-10-07 16:17:31\",\"executive_id\":34,\"questionnaire\":{\"enter_the_address_or_coordinates_of_the_accident_spot\":{\"name\":\"enter_the_address_or_coordinates_of_the_accident_spot\",\"data\":\"102.45,115.33\"}}}]}', '2025-10-07 10:54:25', '2025-10-07 10:54:25'),
(28, 46, '{\"id\":46,\"assign_id\":46,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"mact_no\",\"data\":\"MACT564\"},{\"name\":\"petition_filed_undersec\",\"data\":\"PET4477\"},{\"name\":\"case_title\",\"data\":\"case descr\"},{\"name\":\"name_of_person_injured\",\"data\":\"Ismayil\"},{\"name\":\"status_of_the_injured\",\"data\":\"Dangerous\"}]},{\"work\":\"accident\",\"case_work_id\":\"accident7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"place_of_accident\",\"data\":\"Manjeri\"},{\"name\":\"date_of_fir\",\"data\":\"2025-10-15\"},{\"name\":\"fir_charges\",\"data\":35}]}]}', '2025-10-18 10:21:35', '2025-10-18 10:21:35'),
(29, 47, '{\"id\":47,\"assign_id\":47,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"claim_no\",\"data\":\"Claim56\"},{\"name\":\"name_of_insured\",\"data\":\"Ajlan\"},{\"name\":\"insureds_address_contact_no\",\"data\":\"9961242558\"},{\"name\":\"claim_intimation_to_call_centre\",\"data\":\"Abcd\"},{\"name\":\"status_of_the_injured\",\"data\":\"Dangerous\"}]},{\"work\":\"driver\",\"case_work_id\":\"driver9656521255472025-10-21 10:09:06\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"vehicle_no\",\"data\":\"Esteem\"},{\"name\":\"vehicle_make_model\",\"data\":\"EST6755\"}]},{\"work\":\"meeting\",\"case_work_id\":\"meeting9656521255472025-10-21 10:09:06\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_loss\",\"data\":\"2025-10-21\"}]}]}', '2025-10-21 04:46:51', '2025-10-21 04:46:51'),
(30, 48, '{\"id\":48,\"assign_id\":48,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"},{\"name\":\"court\",\"data\":\"Calicut\"}]}]}', '2025-10-22 04:17:57', '2025-10-22 04:17:57'),
(31, 48, '{\"id\":48,\"assign_id\":48,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"},{\"name\":\"court\",\"data\":\"Calicut\"}]}]}', '2025-10-22 04:22:42', '2025-10-22 04:22:42'),
(32, 48, '{\"id\":48,\"assign_id\":48,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"},{\"name\":\"court\",\"data\":\"Calicut\"}]}]}', '2025-10-22 04:24:15', '2025-10-22 04:24:15'),
(33, 49, '{\"id\":49,\"assign_id\":49,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"}]},{\"work\":\"spot\",\"case_work_id\":\"spot9876543244492025-10-22 10:47:02\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"data\":\"Case7745\"},{\"name\":\"caseclaim_filed_under_section\",\"data\":\"Case67890\"},{\"name\":\"cause_of_loss_eg_death_injury_tppd\",\"data\":\"Tppd data\"},{\"name\":\"od_claim_if_any_made_if_so_details_ascertained_from_insured\",\"data\":\"Insured new persons data\"}]}]}', '2025-10-22 05:21:39', '2025-10-22 05:21:39'),
(34, 49, '{\"id\":49,\"assign_id\":49,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"}]},{\"work\":\"spot\",\"case_work_id\":\"spot9876543244492025-10-22 10:47:02\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"data\":\"Case7745\"},{\"name\":\"cause_of_loss_eg_death_injury_tppd\",\"data\":\"Tppd data\"},{\"name\":\"od_claim_if_any_made_if_so_details_ascertained_from_insured\",\"data\":\"Insured new persons data\"}]}]}', '2025-10-22 05:22:32', '2025-10-22 05:22:32'),
(35, 49, '{\"id\":49,\"assign_id\":49,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"123455\"}]},{\"work\":\"spot\",\"case_work_id\":\"spot9876543244492025-10-22 10:47:02\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"data\":\"Case7745\"}]}]}', '2025-10-22 05:23:14', '2025-10-22 05:23:14'),
(36, 49, '{\"id\":49,\"assign_id\":49,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage7708782197462025-10-18 15:10:35\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"date_of_submission_of_the_investigation_report\",\"data\":\"2025-10-10\"},{\"name\":\"date_of_entrustment_of_the_investigation\",\"data\":\"2025-10-04\"},{\"name\":\"opmv_no\",\"data\":\"12345567\"}]},{\"work\":\"spot\",\"case_work_id\":\"spot9876543244492025-10-22 10:47:02\",\"executive_id\":51,\"questionnaire\":[{\"name\":\"case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo\",\"data\":\"Case7745\"}]}]}', '2025-10-22 05:24:45', '2025-10-22 05:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `case_type` varchar(70) DEFAULT NULL,
  `data_category` varchar(100) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `unique_key` varchar(255) DEFAULT NULL,
  `file_type` varchar(20) DEFAULT NULL,
  `mact_type` varchar(25) DEFAULT NULL,
  `group_category` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `input_type`, `case_type`, `data_category`, `column_name`, `unique_key`, `file_type`, `mact_type`, `group_category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'MACT NO', 'text', 'MACT', 'garage_data', 'mact_no', '#ZL2QH16', NULL, 'TPPD', NULL, '2025-10-18 09:14:20', '2025-10-18 09:20:08', NULL),
(3, 'PETITION FILED UNDER/SEC', 'text', 'MACT', 'garage_data', 'petition_filed_undersec', '#LK2MW59', NULL, 'TPPD', NULL, '2025-10-18 09:15:04', '2025-10-18 09:15:04', NULL),
(4, 'CASE TITLE', 'textarea', 'MACT', 'garage_data', 'case_title', '#EIUSI53', NULL, 'TPPD', NULL, '2025-10-18 09:15:51', '2025-10-18 09:15:51', NULL),
(5, 'Name of Person Injured', 'text', 'MACT', 'garage_data', 'name_of_person_injured', '#3SIJA20', NULL, 'TPPD', NULL, '2025-10-18 09:16:29', '2025-10-18 09:16:29', NULL),
(6, 'Status of the injured', 'text', 'MACT', 'garage_data', 'status_of_the_injured', '#WJUQK71', NULL, 'TPPD', NULL, '2025-10-18 09:22:14', '2025-10-18 09:22:14', NULL),
(7, 'CONNECTED cases', 'text', 'MACT', 'garage_data', 'connected_cases', '#4HS6D39', NULL, NULL, NULL, '2025-10-18 09:30:34', '2025-10-18 09:30:45', NULL),
(8, 'Amount Claimed', 'text', 'MACT', 'garage_data', 'amount_claimed', '#BUETW96', NULL, NULL, NULL, '2025-10-18 09:31:18', '2025-10-18 09:31:18', NULL),
(9, 'Place of Accident', 'text', 'MACT', 'accident_person_data', 'place_of_accident', '#VX2FG75', NULL, 'TPPD', NULL, '2025-10-18 09:37:49', '2025-10-18 09:37:49', NULL),
(10, 'Date of FIR', 'text', 'MACT', 'accident_person_data', 'date_of_fir', '#A1HTH46', NULL, 'TPPD', NULL, '2025-10-18 09:39:01', '2025-10-18 09:39:01', NULL),
(11, 'FIR Charges', 'text', 'MACT', 'accident_person_data', 'fir_charges', '#F8HSW46', NULL, 'TPPD', NULL, '2025-10-18 09:39:51', '2025-10-18 09:39:51', NULL),
(12, 'Claim no', 'text', 'OD', 'garage_data', 'claim_no', '#8HC1M78', NULL, NULL, NULL, '2025-10-20 05:06:22', '2025-10-20 05:06:22', NULL),
(13, 'Name of insured', 'text', 'OD', 'garage_data', 'name_of_insured', '#SGLV688', NULL, NULL, NULL, '2025-10-20 05:07:12', '2025-10-20 05:07:12', NULL),
(14, 'Insured’s  Address &contact No', 'textarea', 'OD', 'garage_data', 'insureds_address_contact_no', '#OFJRK98', NULL, NULL, NULL, '2025-10-20 05:07:46', '2025-10-20 05:07:46', NULL),
(15, 'Vehicle No', 'text', 'OD', 'driver_data', 'vehicle_no', '#J10HQ97', NULL, NULL, NULL, '2025-10-20 05:08:14', '2025-10-20 05:08:14', NULL),
(16, 'Vehicle make & model', 'text', 'OD', 'driver_data', 'vehicle_make_model', '#DVYY777', NULL, NULL, NULL, '2025-10-20 05:08:43', '2025-10-20 05:08:43', NULL),
(17, 'Date of Loss', 'text', 'OD', 'owner_data', 'date_of_loss', '#4TKF745', NULL, NULL, NULL, '2025-10-20 05:09:26', '2025-10-20 05:09:26', NULL),
(18, 'Claim intimation to Call centre', 'text', 'OD', 'garage_data', 'claim_intimation_to_call_centre', '#RLJXX32', NULL, NULL, NULL, '2025-10-20 05:53:32', '2025-10-20 05:53:32', NULL),
(21, 'Date of entrustment of the Investigation', 'date', 'MACT', 'garage_data', 'date_of_entrustment_of_the_investigation', '#WNFSX15', NULL, NULL, 'introduction', '2025-10-21 06:18:15', '2025-10-22 03:49:28', NULL),
(22, 'OPMV No', 'text', 'MACT', 'garage_data', 'opmv_no', '#MDS7J99', NULL, NULL, 'introduction', '2025-10-21 06:18:36', '2025-10-21 12:31:48', NULL),
(25, 'Case Title (Name of the 1st Claimant Vs Name of the 1st Respondent)', 'text', 'MACT', 'spot_data', 'case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo', '#VY06012', NULL, NULL, 'case_details', '2025-10-21 06:24:40', '2025-10-22 05:12:05', NULL),
(26, 'Case/Claim filed under Section', 'text', 'MACT', 'spot_data', 'caseclaim_filed_under_section', '#C5HFI65', NULL, NULL, 'case_details', '2025-10-21 06:27:23', '2025-10-22 05:12:26', NULL),
(28, 'OD Claim, if any, made. If so, details (Ascertained from Insured)', 'text', 'MACT', 'spot_data', 'od_claim_if_any_made_if_so_details_ascertained_from_insured', '#KGVJO47', NULL, NULL, 'case_details', '2025-10-21 06:28:31', '2025-10-22 05:13:02', NULL),
(29, 'Date &Time of Accident', 'text', 'MACT', 'accident_person_data', 'date_time_of_accident', '#HWD5E63', NULL, NULL, NULL, '2025-10-21 06:29:16', '2025-10-21 06:29:16', NULL),
(30, 'Place of Accident', 'text', 'MACT', 'accident_person_data', 'place_of_accident', '#HSCNC50', NULL, NULL, NULL, '2025-10-21 06:29:34', '2025-10-21 06:29:34', NULL),
(31, 'Road details (High way, City Road,  Lane, etc)', 'text', 'MACT', 'accident_person_data', 'road_details_high_way_city_road_lane_etc', '#ONTPY19', NULL, NULL, NULL, '2025-10-21 06:29:57', '2025-10-21 06:29:57', NULL),
(32, 'Elaborate description of the accident', 'textarea', 'MACT', 'accident_person_data', 'elaborate_description_of_the_accident', '#FZPD571', NULL, NULL, NULL, '2025-10-21 06:30:18', '2025-10-21 06:30:18', NULL),
(33, 'Registration No. with Type', 'text', 'MACT', 'driver_data', 'registration_no_with_type', '#IVSJP33', NULL, NULL, NULL, '2025-10-21 07:49:56', '2025-10-21 07:49:56', NULL),
(34, 'Engine No. Chassis No, Model, Make, etc', 'text', 'MACT', 'driver_data', 'engine_no_chassis_no_model_make_etc', '#R0MP712', NULL, NULL, NULL, '2025-10-21 07:50:34', '2025-10-21 07:50:34', NULL),
(35, 'Class of Vehicle', 'text', 'MACT', 'driver_data', 'class_of_vehicle', '#HU3XI78', NULL, NULL, NULL, '2025-10-21 07:50:58', '2025-10-21 07:50:58', NULL),
(36, 'Seating capacity including Driver', 'text', 'MACT', 'driver_data', 'seating_capacity_including_driver', '#CDZHT33', NULL, NULL, NULL, '2025-10-21 07:51:19', '2025-10-21 07:51:19', NULL),
(37, 'No. of occupants at the time of the  Accident', 'text', 'MACT', 'driver_data', 'no_of_occupants_at_the_time_of_the_accident', '#LIQMR50', NULL, NULL, NULL, '2025-10-21 07:51:51', '2025-10-21 07:51:51', NULL),
(38, 'RC Book Owner', 'text', 'MACT', 'driver_data', 'rc_book_owner', '#B2EQA43', NULL, NULL, NULL, '2025-10-21 07:52:15', '2025-10-21 07:52:15', NULL),
(39, 'Name of Insured', 'text', 'MACT', 'driver_data', 'name_of_insured', '#LF0YX36', NULL, NULL, NULL, '2025-10-21 07:52:45', '2025-10-21 07:52:45', NULL),
(40, 'Relation of Insured, if any, with  Injured/Deceased/Claimant', 'text', 'MACT', 'driver_data', 'relation_of_insured_if_any_with_injureddeceasedclaimant', '#GGZFL30', NULL, NULL, NULL, '2025-10-21 07:53:19', '2025-10-21 07:53:19', NULL),
(41, 'RC Validity          :  From….          To…..', 'text', 'MACT', 'driver_data', 'rc_validity_from_to', '#Y7XK768', NULL, NULL, NULL, '2025-10-21 07:53:51', '2025-10-21 07:53:51', NULL),
(42, 'Permit Validity     :  From….          To….', 'text', 'MACT', 'driver_data', 'permit_validity_from_to', '#7GNQJ35', NULL, NULL, NULL, '2025-10-21 07:54:28', '2025-10-21 07:54:28', NULL),
(43, 'Fitness Validity    :  From….          To….', 'text', 'MACT', 'driver_data', 'fitness_validity_from_to', '#6V8MT35', NULL, NULL, NULL, '2025-10-21 07:54:55', '2025-10-21 07:54:55', NULL),
(44, 'Pollution validity:  From…..         To….', 'text', 'MACT', 'driver_data', 'pollution_validity_from_to', '#SSAVU41', NULL, NULL, NULL, '2025-10-21 07:55:26', '2025-10-21 07:57:21', NULL),
(45, 'Policy/ Cover Note No. &Insurance  Company', 'text', 'MACT', 'driver_data', 'policy_cover_note_no_insurance_company', '#UPAFD77', NULL, NULL, NULL, '2025-10-21 07:55:46', '2025-10-21 07:55:46', NULL),
(46, 'Policy/Cover Note Validity:  From….      To….', 'text', 'MACT', 'driver_data', 'policycover_note_validity_from_to', '#3IQNT58', NULL, NULL, NULL, '2025-10-21 07:56:09', '2025-10-21 07:56:09', NULL),
(47, 'Whether the DOA is within the Policy  Period', 'text', 'MACT', 'driver_data', 'whether_the_doa_is_within_the_policy_period', '#ONPRE60', NULL, NULL, NULL, '2025-10-21 07:56:31', '2025-10-21 07:57:08', NULL),
(48, 'Policy is Comprehensive or TP Liability  only', 'text', 'MACT', 'driver_data', 'policy_is_comprehensive_or_tp_liability_only', '#NABNG52', NULL, NULL, NULL, '2025-10-21 07:57:52', '2025-10-21 07:57:52', NULL),
(49, 'If goods laden, details of the goods,  owner, etc.', 'text', 'MACT', 'driver_data', 'if_goods_laden_details_of_the_goods_owner_etc', '#AAUZ179', NULL, NULL, 'accident_details', '2025-10-21 07:58:37', '2025-10-22 10:45:36', NULL),
(50, 'Details of the damages caused to the  goods &how those were further  transported, etc', 'text', 'MACT', 'driver_data', 'details_of_the_damages_caused_to_the_goods_how_those_were_fu', '#QFNJM92', NULL, NULL, NULL, '2025-10-21 07:58:56', '2025-10-21 07:58:56', NULL),
(51, 'Details of the damages caused to the  Vehicle', 'text', 'MACT', 'driver_data', 'details_of_the_damages_caused_to_the_vehicle', '#HZ6OH90', NULL, NULL, NULL, '2025-10-21 07:59:15', '2025-10-21 07:59:15', NULL),
(52, 'Social status of the Insured', 'text', 'MACT', 'owner_data', 'social_status_of_the_insured', '#BKHBM52', NULL, NULL, NULL, '2025-10-21 09:17:26', '2025-10-21 09:17:26', NULL),
(53, 'Name &Address with Tele No', 'text', 'MACT', 'owner_data', 'name_address_with_tele_no', '#DSW3053', NULL, NULL, NULL, '2025-10-21 09:29:21', '2025-10-21 09:29:21', NULL),
(54, 'Age &Date of Birth', 'text', 'MACT', 'owner_data', 'age_date_of_birth', '#UGLUD99', NULL, NULL, NULL, '2025-10-21 09:29:45', '2025-10-21 09:29:45', NULL),
(55, 'Relationship of Driver with Insured', 'text', 'MACT', 'owner_data', 'relationship_of_driver_with_insured', '#9H1CS82', NULL, NULL, NULL, '2025-10-21 09:30:52', '2025-10-21 09:30:52', NULL),
(56, 'Authorized to drive (eg. MC with gear,  LMV, etc)', 'text', 'MACT', 'owner_data', 'authorized_to_drive_eg_mc_with_gear_lmv_etc', '#UCARS17', NULL, NULL, NULL, '2025-10-21 09:31:23', '2025-10-21 09:31:23', NULL),
(57, 'RTO/Licensing Authority', 'text', 'MACT', 'owner_data', 'rtolicensing_authority', '#ZSLSX85', NULL, NULL, NULL, '2025-10-21 09:31:51', '2025-10-21 09:31:51', NULL),
(58, 'License No. &Year', 'text', 'MACT', 'owner_data', 'license_no_year', '#AJZLQ50', NULL, NULL, NULL, '2025-10-21 09:32:13', '2025-10-21 09:32:13', NULL),
(59, 'Validity of License:            From…           To...', 'textarea', 'MACT', 'owner_data', 'validity_of_license_from_to', '#S8EGP17', NULL, NULL, NULL, '2025-10-21 09:32:41', '2025-10-21 09:32:41', NULL),
(60, 'Badge Validity, if necessary: From-To', 'text', 'MACT', 'owner_data', 'badge_validity_if_necessary_from_to', '#HVDWJ65', NULL, NULL, NULL, '2025-10-21 09:33:09', '2025-10-21 09:33:09', NULL),
(61, 'Whether the License/Badge is valid on  DOA', 'text', 'MACT', 'owner_data', 'whether_the_licensebadge_is_valid_on_doa', '#GSGPU24', NULL, NULL, NULL, '2025-10-21 09:33:32', '2025-10-21 09:33:32', NULL),
(62, 'Whether DL extract obtained. If not,  why?', 'text', 'MACT', 'owner_data', 'whether_dl_extract_obtained_if_not_why', '#S4ZMI42', NULL, NULL, NULL, '2025-10-21 09:33:54', '2025-10-21 09:33:54', NULL),
(63, 'Does the DL extract details tally with DL  copy on Police record. If not, describe', 'text', 'MACT', 'owner_data', 'does_the_dl_extract_details_tally_with_dl_copy_on_police_rec', '#IXRHO44', NULL, NULL, 'driver_details', '2025-10-21 09:34:15', '2025-10-22 10:45:48', NULL),
(64, 'Name and Address of the Injured', 'text', 'MACT', 'accident_person_data', 'name_and_address_of_the_injured', '#W87LO59', NULL, NULL, NULL, '2025-10-21 10:49:05', '2025-10-21 10:49:05', NULL),
(65, 'Date of submission of the Investigation Report', 'date', 'MACT', 'garage_data', 'date_of_submission_of_the_investigation_report', '#0CMJP57', NULL, NULL, 'introduction', '2025-10-22 04:21:54', '2025-10-22 04:21:54', NULL),
(66, 'Court', 'text', 'MACT', 'garage_data', 'court', '#V0L2S25', NULL, NULL, 'introduction', '2025-10-22 04:23:54', '2025-10-22 04:23:54', NULL),
(67, 'ggggggggfgg', 'text', 'MACT', 'owner_data', 'ggggggggfgg', '#VAPPB66', NULL, NULL, 'introduction', '2025-10-22 10:40:58', '2025-10-22 10:50:54', '2025-10-22 10:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `question_template`
--

CREATE TABLE `question_template` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `template_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_template`
--

INSERT INTO `question_template` (`id`, `question_id`, `template_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL),
(2, 3, 3, NULL, NULL),
(3, 4, 3, NULL, NULL),
(4, 5, 3, NULL, NULL),
(5, 6, 3, NULL, NULL),
(6, 9, 3, NULL, NULL),
(7, 10, 3, NULL, NULL),
(8, 11, 3, NULL, NULL),
(9, 12, 4, NULL, NULL),
(10, 13, 4, NULL, NULL),
(11, 14, 4, NULL, NULL),
(12, 18, 4, NULL, NULL),
(13, 15, 4, NULL, NULL),
(14, 16, 4, NULL, NULL),
(15, 17, 4, NULL, NULL),
(17, 21, 5, NULL, NULL),
(18, 22, 5, NULL, NULL),
(19, 26, 5, NULL, NULL),
(20, 28, 5, NULL, NULL),
(21, 29, 5, NULL, NULL),
(22, 30, 5, NULL, NULL),
(23, 31, 5, NULL, NULL),
(24, 32, 5, NULL, NULL),
(27, 25, 5, NULL, NULL),
(30, 33, 5, NULL, NULL),
(31, 34, 5, NULL, NULL),
(32, 35, 5, NULL, NULL),
(33, 36, 5, NULL, NULL),
(34, 37, 5, NULL, NULL),
(35, 38, 5, NULL, NULL),
(36, 39, 5, NULL, NULL),
(37, 40, 5, NULL, NULL),
(38, 41, 5, NULL, NULL),
(39, 42, 5, NULL, NULL),
(40, 43, 5, NULL, NULL),
(41, 44, 5, NULL, NULL),
(42, 45, 5, NULL, NULL),
(43, 46, 5, NULL, NULL),
(44, 47, 5, NULL, NULL),
(45, 48, 5, NULL, NULL),
(46, 49, 5, NULL, NULL),
(47, 50, 5, NULL, NULL),
(48, 51, 5, NULL, NULL),
(49, 52, 5, NULL, NULL),
(50, 53, 5, NULL, NULL),
(51, 54, 5, NULL, NULL),
(52, 55, 5, NULL, NULL),
(53, 56, 5, NULL, NULL),
(54, 57, 5, NULL, NULL),
(55, 58, 5, NULL, NULL),
(56, 59, 5, NULL, NULL),
(57, 60, 5, NULL, NULL),
(58, 62, 5, NULL, NULL),
(59, 63, 5, NULL, NULL),
(60, 64, 5, NULL, NULL),
(61, 65, 5, NULL, NULL),
(62, 6, 4, NULL, NULL),
(65, 12, 7, NULL, NULL),
(66, 14, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `basic` decimal(15,2) DEFAULT NULL,
  `allowance` decimal(15,2) DEFAULT NULL,
  `bonus` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `month_year` char(7) NOT NULL COMMENT 'Format: YYYY-MM',
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `user_id`, `basic`, `allowance`, `bonus`, `total`, `month_year`, `date`, `created_at`, `updated_at`) VALUES
(1, 18, 45000.00, 3000.00, 2000.00, 50000.00, '2024-10', '2024-10-18', '2024-10-18 03:16:49', '2024-10-18 03:16:49'),
(2, 9, 15000.00, 2500.00, 2500.00, 20000.00, '2024-10', '2024-10-18', '2024-10-18 04:05:52', '2024-10-18 04:05:52'),
(4, 2, 21212121212.00, 12122112.00, 12121212.00, 21236364536.00, '1221-12', '2024-10-21', '2024-10-21 04:25:16', '2024-10-21 04:25:16'),
(5, 4, 10000.00, 1000.00, 100.00, 11100.00, '2024-10', '2024-10-21', '2024-10-21 05:08:35', '2024-10-21 05:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `selected_garage_answers`
--

CREATE TABLE `selected_garage_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `case_id` bigint(20) UNSIGNED NOT NULL,
  `garage_id` bigint(20) UNSIGNED NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selected_garage_answers`
--

INSERT INTO `selected_garage_answers` (`id`, `case_id`, `garage_id`, `column_name`, `created_at`, `updated_at`) VALUES
(16, 38, 11, 'full_name_of_the_driver_at_the_time_of_the_accident', '2025-10-14 11:09:48', '2025-10-14 11:09:48'),
(20, 38, 16, 'was_there_any_police_presence_at_the_location', '2025-10-14 11:26:15', '2025-10-14 11:26:15'),
(25, 38, 23, 'upload_a_photo_of_the_garage_sign_or_front_view', '2025-10-16 07:30:33', '2025-10-16 07:30:33'),
(35, 37, 20, 'address_pertains_to_negative_area', '2025-10-18 07:32:11', '2025-10-18 07:32:11'),
(37, 37, 7, 'was_the_driver_under_influence', '2025-10-18 07:33:50', '2025-10-18 07:33:50'),
(38, 37, 20, 'what_is_the_garages_registration_number', '2025-10-18 07:34:04', '2025-10-18 07:34:04'),
(44, 46, 26, 'mact_no', '2025-10-20 06:05:28', '2025-10-20 06:05:28'),
(45, 46, 26, 'case_title', '2025-10-20 11:26:29', '2025-10-20 11:26:29'),
(46, 47, 27, 'claim_intimation_to_call_centre', '2025-10-21 04:50:20', '2025-10-21 04:50:20'),
(47, 47, 27, 'insureds_address_contact_no', '2025-10-21 04:50:21', '2025-10-21 04:50:21'),
(48, 47, 27, 'name_of_insured', '2025-10-21 04:50:22', '2025-10-21 04:50:22'),
(49, 47, 27, 'claim_no', '2025-10-21 04:50:24', '2025-10-21 04:50:24'),
(50, 47, 27, 'status_of_the_injured', '2025-10-21 04:50:29', '2025-10-21 04:50:29'),
(51, 47, 13, 'vehicle_no', '2025-10-21 04:50:37', '2025-10-21 04:50:37'),
(53, 47, 10, 'date_of_loss', '2025-10-21 04:50:44', '2025-10-21 04:50:44'),
(54, 48, 28, 'date_of_submission_of_the_investigation_report', '2025-10-22 04:24:49', '2025-10-22 04:24:49'),
(55, 48, 28, 'opmv_no', '2025-10-22 04:24:51', '2025-10-22 04:24:51'),
(56, 48, 28, 'date_of_entrustment_of_the_investigation', '2025-10-22 04:24:52', '2025-10-22 04:24:52'),
(57, 48, 28, 'court', '2025-10-22 04:24:54', '2025-10-22 04:24:54'),
(58, 49, 19, 'case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo', '2025-10-22 05:25:13', '2025-10-22 05:25:13'),
(59, 49, 32, 'date_of_entrustment_of_the_investigation', '2025-10-22 05:25:23', '2025-10-22 05:25:23'),
(60, 47, 13, 'vehicle_make_model', '2025-10-22 11:12:45', '2025-10-22 11:12:45');

-- --------------------------------------------------------

--
-- Table structure for table `spot_data`
--

CREATE TABLE `spot_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enter_the_address_or_coordinates_of_the_accident_spot` varchar(255) DEFAULT NULL,
  `were_any_traffic_signals_nearby` varchar(255) DEFAULT NULL,
  `was_there_any_police_presence_at_the_location` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spot_happenes` date DEFAULT NULL,
  `spot_photo` varchar(255) DEFAULT NULL,
  `bsnl` varchar(255) DEFAULT NULL,
  `injury_photo` varchar(255) DEFAULT NULL,
  `question566` varchar(255) DEFAULT NULL,
  `rc_validity` varchar(255) DEFAULT NULL,
  `best_way_use` varchar(255) DEFAULT NULL,
  `what_is_garage_badge_name` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL,
  `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_data`
--

INSERT INTO `spot_data` (`id`, `assign_work_id`, `executive_id`, `enter_the_address_or_coordinates_of_the_accident_spot`, `were_any_traffic_signals_nearby`, `was_there_any_police_presence_at_the_location`, `location`, `created_at`, `updated_at`, `spot_happenes`, `spot_photo`, `bsnl`, `injury_photo`, `question566`, `rc_validity`, `best_way_use`, `what_is_garage_badge_name`, `court`, `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo`) VALUES
(1, 61, 19, NULL, NULL, 'alaba', NULL, '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 62, 20, NULL, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', '2024-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:36:29', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 5, 19, NULL, '1', '0', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 15, 38, NULL, NULL, '0', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 19, 38, NULL, NULL, '0', NULL, '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 21, 38, NULL, NULL, '0', NULL, '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 35, 38, '123.45,56.78', NULL, NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 36, 38, NULL, NULL, NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 37, 38, '102.45,115.87', 'No', NULL, NULL, '2025-09-29 07:18:12', '2025-10-18 08:04:16', '2025-10-20', 'Yes', 'spot_uploads/BIG7qtR8KC6qRz3sBXHloE00hqW7P2ZKIgv1ZXMV.jpg', NULL, 'dddddddddsad', NULL, NULL, NULL, NULL, NULL),
(13, 38, 38, '102.45,103.56', NULL, '1', NULL, '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 38, 38, '102.45,103.56', NULL, '1', NULL, '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 38, 38, '102.45,103.56', NULL, '0', NULL, '2025-09-30 08:46:34', '2025-09-30 08:46:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 38, 38, '102.45,103.73', NULL, 'Yes', NULL, '2025-09-30 08:50:40', '2025-10-14 11:46:41', NULL, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 42, 34, '112.45,115.77', NULL, NULL, NULL, '2025-10-07 10:54:25', '2025-10-13 11:43:07', NULL, NULL, 'spot_uploads/4UPOZYeOJvk1Q0gecf8mLvz2t3BHrvy1rxMvYE11.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:23:14', '2025-10-22 05:23:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Case7745'),
(19, 49, 51, NULL, NULL, NULL, NULL, '2025-10-22 05:24:45', '2025-10-22 05:24:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Case7745');

-- --------------------------------------------------------

--
-- Table structure for table `spot_data_old`
--

CREATE TABLE `spot_data_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enter_the_address_or_coordinates_of_the_accident_spot` varchar(255) DEFAULT NULL,
  `were_any_traffic_signals_nearby` varchar(255) DEFAULT NULL,
  `was_there_any_police_presence_at_the_location` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `spot_happenes` date DEFAULT NULL,
  `spot_photo` varchar(255) DEFAULT NULL,
  `bsnl` varchar(255) DEFAULT NULL,
  `injury_photo` varchar(255) DEFAULT NULL,
  `question566` varchar(255) DEFAULT NULL,
  `what_is_garage_entry` varchar(255) DEFAULT NULL,
  `rc_systems` varchar(255) DEFAULT NULL,
  `rc_validity` varchar(255) DEFAULT NULL,
  `best_way_use` varchar(255) DEFAULT NULL,
  `what_is_garage_badge_name` varchar(255) DEFAULT NULL,
  `court` varchar(255) DEFAULT NULL,
  `case_title` varchar(255) DEFAULT NULL,
  `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_data_old`
--

INSERT INTO `spot_data_old` (`id`, `assign_work_id`, `executive_id`, `enter_the_address_or_coordinates_of_the_accident_spot`, `were_any_traffic_signals_nearby`, `was_there_any_police_presence_at_the_location`, `created_at`, `updated_at`, `spot_happenes`, `spot_photo`, `bsnl`, `injury_photo`, `question566`, `what_is_garage_entry`, `rc_systems`, `rc_validity`, `best_way_use`, `what_is_garage_badge_name`, `court`, `case_title`, `case_title_name_of_the_1st_claimant_vs_name_of_the_1st_respo`) VALUES
(1, 61, 19, NULL, NULL, 'alaba', '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 62, 20, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', '2024-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 63, 20, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 63, 20, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 64, 20, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 5, 19, NULL, '1', '0', '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 15, 38, NULL, NULL, '0', '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 19, 38, NULL, NULL, '0', '2025-09-22 04:36:20', '2025-09-22 04:36:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 21, 38, NULL, NULL, '0', '2025-09-22 11:23:13', '2025-09-22 11:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 35, 38, '123.45,56.78', NULL, NULL, '2025-09-23 11:27:14', '2025-09-23 11:27:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 36, 38, NULL, NULL, NULL, '2025-09-29 07:07:26', '2025-09-29 07:07:26', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 37, 38, NULL, NULL, NULL, '2025-09-29 07:18:12', '2025-09-29 07:18:12', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 38, 38, '102.45,103.56', NULL, '1', '2025-09-30 08:40:05', '2025-09-30 08:40:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 38, 38, '102.45,103.56', NULL, '1', '2025-09-30 08:45:26', '2025-09-30 08:45:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 38, 38, '102.45,103.56', NULL, '0', '2025-09-30 08:46:34', '2025-09-30 08:46:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 38, 38, '102.45,103.56', NULL, '0', '2025-09-30 08:50:40', '2025-09-30 08:50:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 42, 34, '102.45,115.33', NULL, NULL, '2025-10-07 10:54:25', '2025-10-07 10:54:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 49, 51, NULL, NULL, NULL, '2025-10-22 05:23:14', '2025-10-22 05:23:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Case7745'),
(19, 49, 51, NULL, NULL, NULL, '2025-10-22 05:24:45', '2025-10-22 05:24:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Case7745');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `template_logo` varchar(500) DEFAULT NULL,
  `case_type` varchar(25) DEFAULT NULL,
  `mact_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `company_id`, `template_id`, `template_logo`, `case_type`, `mact_type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 1, 'TEMPLATE_CHOLA_MS_GENERAL_INSURANCE_CO_LTD_MACT', NULL, 'MACT', 'TPPD', '2025-10-18 09:41:40', '2025-10-18 09:41:40', NULL),
(4, 2, 'TEMPLATE_RELIANCE', 'template_logos/template_logo_RELIANCE_1761025413_SelWW.png', 'OD', NULL, '2025-10-20 09:54:31', '2025-10-21 05:43:34', NULL),
(5, 4, 'TEMPLATE_UNITED_INDIA_INSURANCE_COMPANY_LTD', NULL, 'MACT', NULL, '2025-10-21 06:34:02', '2025-10-21 08:01:25', NULL),
(6, 3, 'TEMPLATE_NEW_INDIA_ASSURANCE_LTD_MACT', NULL, 'MACT', NULL, '2025-10-22 10:27:12', '2025-10-22 10:27:46', '2025-10-22 10:27:46'),
(7, 2, 'TEMPLATE_RELIANCE_OD', NULL, 'OD', NULL, '2025-10-22 10:35:48', '2025-10-22 10:35:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `login_request` tinyint(1) NOT NULL DEFAULT 0,
  `imei` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `address` varchar(150) DEFAULT NULL,
  `blood` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `block_reason` varchar(255) DEFAULT NULL,
  `country_code` varchar(25) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `profile_image`, `place`, `email_verified_at`, `password`, `role`, `login_request`, `imei`, `status`, `address`, `blood`, `date_of_birth`, `join_date`, `block_reason`, `country_code`, `create_by`, `update_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '7708782197', 'admin544@mail.com', 'profile_images/ehrS4Yr7eGIQtfKvNplr6bqL64iBOHoiF5GJVmWI.png', 'trivndrum', NULL, '$2y$12$6hERzWTNcZaQLzgkm4ea.uFsdz1kLmbKVvsAgXz3WXxwiKjthYAqa', '1', 0, NULL, '1', 'ggggggggggggytyrtytr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 16:41:07', '2025-10-15 10:09:48'),
(2, 'NivTest Mob', '9048007933', 'test@gmail.com', NULL, 'Kondotty', NULL, '$2y$12$kGwXWtszf2BlzX5O1uKb9./yn4exNIxFiryA1Ka4XeAaViHoni34i', '3', 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, '2025-07-13 23:01:36', '2025-07-21 21:41:00'),
(12, 'Test44', '9497626144', 'test44@mail.com', NULL, 'kannur', NULL, '$2y$12$b6aj6uF8maY3Wd2vI.qtNe8O9oyNLDaF0CM.mkdHVHk/UPcu.NoyG', '3', 0, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, '2025-09-01 19:46:34', '2025-09-16 13:59:49'),
(34, 'Test user', '9876543210', 'rash33@domain.com', NULL, 'kannur', NULL, '$2y$12$qqNpRf./zlaBzASdnWn4Yu.a7H1P..6m.ynaZftiRdNhYDwNXLb9G', '3', 0, NULL, '1', 'fff', NULL, '2025-10-08', '2025-10-08', NULL, '+91', '1', '1', NULL, '2025-09-18 10:27:32', '2025-10-08 12:03:17'),
(35, 'vashid', '9497626166', 'vsd@mail.com', NULL, 'kannur', NULL, '$2y$12$m66AUaa1t14/oD7uq1mYjOA0qHpFxlYSqnsGTbwuhqft6jrKs2.Em', '3', 0, NULL, '1', 'gggggggggfgfh', 'A+', '2025-10-09', '2025-10-09', NULL, '+91', '1', '1', NULL, '2025-09-18 10:49:04', '2025-10-16 10:45:34'),
(36, 'balan', '9497626255', 'balan@mail.com', 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', 'kannur', NULL, '$2y$12$Q8ud81QxXUZJ8dYn3SlfIe9S1FGs5u5a7pj6hcoBM6thfxkJoLDoy', '3', 0, NULL, '1', 'gfffgh', 'B+', '2025-10-16', '2025-10-16', NULL, '+91', '1', '1', NULL, '2025-09-18 10:52:55', '2025-10-16 10:51:00'),
(37, 'nbb', '9497626655', 'nbb@mail.com', 'uploads/5tU1ZQDmvJxASjcy7Fg0XV8fnYkuljuLfrx3uDwc.png', 'kannur', NULL, '$2y$12$G0y/KYlKpTzAIJYcUMiCOeVb.afnB6cYcl0OJecetMc6xzrBve0GO', '3', 0, NULL, '0', 'dddddddd', 'B+', NULL, NULL, 'ggggggd', NULL, '1', '1', NULL, '2025-09-18 11:00:04', '2025-10-08 06:13:31'),
(38, 'Fwas', '9497621234', 'fs@mail.com', 'uploads/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg', 'kannur', NULL, '$2y$12$EF4Gqfof9KRmwmXZO11T.eXnlfx6z2gSvh4lf7whJYSDz54NVi0sS', '3', 0, NULL, '1', 'fff', 'AB+', '2025-10-09', '2025-10-09', NULL, '+91', '1', '1', NULL, '2025-09-18 11:50:41', '2025-10-16 10:45:40'),
(39, 'vccs', '9876543233', 'affs@mail.com', 'uploads/FwmQNBb3rz77lOyqqd3GuGTh5xgtUcMLkenAs99Y.jpg', 'kannur', NULL, '$2y$12$axomlr6VP7WyvVOeoCk9z.Sav35Oa/Lut85ngMytMJzumrYByl0ki', '3', 0, NULL, '0', 'ffffffffs', 'O+', '2025-09-23', '2025-09-28', NULL, NULL, '1', '1', NULL, '2025-09-19 06:51:50', '2025-10-13 04:35:46'),
(40, 'Jafarf', '9876541233', 'saasa@mail.com', 'uploads/tF7f8qYk6dWEnaOIraTBTiNvwJUgDKz3610UvUzM.png', 'asasa', NULL, '$2y$12$4Jxh33ILxk01LoGiaMM7KetZrV8Di60Cht6gVZkUS53fcL72uqH6y', '3', 0, NULL, '1', 'saaaa', 'O+', '2025-08-01', '2025-06-16', NULL, NULL, '1', '1', NULL, '2025-09-19 10:50:25', '2025-09-19 10:54:03'),
(41, 'fffffffffsd', '9876543333', 'admin44@mail.com', 'uploads/plTNHIqajrwFYXLdzCMPR6h1k3TZOOScTND1du2W.png', 'kannur', NULL, '$2y$12$sxfJ0U8vmWX0lLyUHL.PhOkOI/P4Vbh4pq4wUqeR25Sm18AtEaImq', '3', 0, NULL, '0', 'dddddds', 'B+', '2025-09-01', '2025-09-22', 'vcdss', NULL, '1', '1', NULL, '2025-09-19 12:32:29', '2025-10-08 06:13:03'),
(42, 'ddddddddds', '9876543214', 'dddddddds@mail.com', NULL, 'kannur', NULL, '$2y$12$.7Iv60a4387AN/pHLxwiN.W0sluO5uDy8brOATxHFsYrEARnFjloG', '2', 0, NULL, '1', 'ddddddddss', 'O+', '2025-10-22', '2025-10-30', NULL, '+91', '1', '1', NULL, '2025-10-07 07:56:37', '2025-10-07 07:56:59'),
(43, 'test', '9497626155', 'sar@mail.com', 'uploads/p5m8UbadyFYBzKNnhMe91P9vIc2ID5qPNgypyIIA.jpg', 'vga', NULL, '$2y$12$lu0Ywh0C7KyX1hyjxSx7yOmEracyppCm62HBBDeEQU3Qr.4wkxnT6', '3', 0, NULL, '0', 'adress', 'B+', '2025-10-08', '2025-10-10', NULL, '+91', '1', '1', NULL, '2025-10-08 04:01:55', '2025-10-16 10:45:43'),
(44, 'ffffd', '9497626156', 'fdfdf@mail.com', 'uploads/Y2cKOjgyubuWrUtTBfX5SzfBrzwbtOKk9ZOQbUC2.jpg', 'kannur', NULL, '$2y$12$pgXc434YYH/ekzS2HmdFKO6YDNZkqCJXz5TdJuPkP8gC7haBqMtQ6', '3', 0, NULL, '1', 'ggggggggfd', 'O+', '2025-10-15', '2025-10-16', NULL, '+91', '1', '1', NULL, '2025-10-08 05:01:28', '2025-10-08 05:01:28'),
(45, 'gggggggfgfg', '9497626666', 'a@mail.com', 'uploads/0rr0mtaqDvCMiuZkoOaOfuYjwhVSsZyjHcm7nhxw.jpg', 'kannur', NULL, '$2y$12$4mUp4gWKkaJUACnHR2YLyeMDgopVeapOjtgnN.9fs9tQAKI4XvUNK', '3', 0, NULL, '1', 'adress', 'A+', '2025-10-30', '2025-10-29', NULL, '+91', '1', '1', NULL, '2025-10-08 05:18:23', '2025-10-08 05:18:23'),
(46, 'Jafar', '9497621212', 'jaf@mail.com', 'uploads/FYvUmvu3WzP9hYpeNg0iSGVwncvhEWrbV7oOiHkl.jpg', 'kannur', NULL, '$2y$12$cd/aVGPDbzw2QoaGhrBz0eBcXs9FdswW0PVcGUNtL9Mz3x31D7YPm', '2', 0, NULL, '1', 'adress44', 'A+', '1992-01-01', '2025-10-01', NULL, '+91', '1', '1', NULL, '2025-10-08 06:17:06', '2025-10-08 06:17:06'),
(47, 'Iqbal', '9876543216', 'ras@mail.com', 'uploads/9OhkqxtbvY8UcEcjEMVaFUlFsruGZZQ8ygW16Etb.jpg', 'mlpm', NULL, '$2y$12$tcVE5lgF799W7dS0R8P8XefDuP1dUVaM3ToEgYtSRKGZkEQntWpXm', '3', 0, NULL, '1', 'dddddddddd', 'A+', '1994-02-03', '2025-10-01', NULL, '+91', '1', '1', NULL, '2025-10-08 06:20:55', '2025-10-16 10:45:46'),
(48, 'Manas', '9497626157', 'mns@gmail.com', 'uploads/wq0pjOr01RoF4kFokFMqLBPghGs5jjMcQtHG60FE.jpg', 'vga', NULL, '$2y$12$gRK3YGcv4vbeYOvasDCocOHG0qs5HexR1ZWNed.hwOdX/6xuLm.8K', '2', 0, NULL, '1', 'dddddddddd', 'O+', '2025-10-15', '2025-10-09', NULL, '+91', '1', '1', NULL, '2025-10-09 03:57:15', '2025-10-13 04:37:05'),
(49, 'hhhhfghgh', '9656523123', 'sa@gmail.com', 'uploads/m6rANuP7cVWHaPATs5k05RH0WCOmr3p3cXOid7vG.jpg', 'USA', NULL, '$2y$12$bMTgxCBTUAqhF5MONyE/U.4Fa4gDIUuHXWJmjrtDmQsDTrtg3xajW', '3', 0, NULL, '1', 'hhhhhfghf', 'O+', '2025-10-15', '2025-10-16', NULL, '+91', '1', '1', NULL, '2025-10-09 11:02:08', '2025-10-16 10:45:50'),
(50, 'dss', '9656524567', 'sa@mail.com', 'uploads/jyhySyTy2gNClD4hSjUktJRJkh9aB6nI164t0CCr.jpg', 'trivndrum', NULL, '$2y$12$MKb94NlNQazGoLhZT7Bb7.dmM2GMm3VONX9E22H5SNiTRX1M.2DJe', '3', 0, NULL, '1', 'fdfsf', 'B+', '1992-01-01', '2025-10-20', NULL, '+91', '1', '1', NULL, '2025-10-09 11:03:24', '2025-10-17 07:57:34'),
(51, 'salam', '9497626146', 'salam@mail.com', 'uploads/aSi2bK1sLyGStKPb6pp02u3klZ5A3qbukn00MtG9.jpg', 'trivndrum', NULL, '$2y$12$MylmgGqMCMDLBcgKlQHPSuqSGpgBX99wZQv4e5k7YtJiJ8GcWzV2e', '3', 0, NULL, '1', 'fffffff', 'A+', '2025-10-22', '2025-10-28', NULL, '+91', '1', '1', NULL, '2025-10-09 11:27:30', '2025-10-22 04:14:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accident_person_data`
--
ALTER TABLE `accident_person_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `accident_person_data_old`
--
ALTER TABLE `accident_person_data_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_case_id` (`case_id`);

--
-- Indexes for table `case_assignments`
--
ALTER TABLE `case_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `case_assignments_executive_driver_foreign` (`executive_driver`),
  ADD KEY `case_assignments_executive_garage_foreign` (`executive_garage`),
  ADD KEY `case_assignments_executive_spot_foreign` (`executive_spot`),
  ADD KEY `case_assignments_executive_meeting_foreign` (`executive_meeting`),
  ADD KEY `case_assignments_executive_accident_person_foreign` (`executive_accident_person`),
  ADD KEY `case_assignments_company_id_foreign` (`company_id`),
  ADD KEY `case_assignments_customer_id_foreign` (`customer_id`),
  ADD KEY `case_assignments_case_id_foreign` (`case_id`),
  ADD KEY `idx_case_status` (`status`);

--
-- Indexes for table `company_logos`
--
ALTER TABLE `company_logos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_logos_email_unique` (`email`);

--
-- Indexes for table `driver_data`
--
ALTER TABLE `driver_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `driver_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `driver_data_old`
--
ALTER TABLE `driver_data_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_data_assign_work_id_foreign` (`assign_work_id`),
  ADD KEY `driver_data_executive_id_foreign` (`executive_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `final_reports`
--
ALTER TABLE `final_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_reports_new`
--
ALTER TABLE `final_reports_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_case_id` (`case_id`);

--
-- Indexes for table `garage_data`
--
ALTER TABLE `garage_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `garage_data_old`
--
ALTER TABLE `garage_data_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_company_id` (`company_id`),
  ADD KEY `idx_customer_id` (`customer_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_case_status` (`case_status`);

--
-- Indexes for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD KEY `idx_phone` (`phone`);

--
-- Indexes for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_company_id` (`company_id`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odometer_readings`
--
ALTER TABLE `odometer_readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_check_in_date` (`check_in_date`),
  ADD KEY `idx_check_out_date` (`check_out_date`);

--
-- Indexes for table `owner_data`
--
ALTER TABLE `owner_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `owner_data_old`
--
ALTER TABLE `owner_data_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire_submissions`
--
ALTER TABLE `questionnaire_submissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_case_id` (`case_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_data_category` (`data_category`),
  ADD KEY `idx_unique_key` (`unique_key`);

--
-- Indexes for table `question_template`
--
ALTER TABLE `question_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_template_question_id_foreign` (`question_id`),
  ADD KEY `question_template_template_id_foreign` (`template_id`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user_month` (`user_id`,`month_year`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `selected_garage_answers`
--
ALTER TABLE `selected_garage_answers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_case_garage_column` (`case_id`,`garage_id`,`column_name`);

--
-- Indexes for table `spot_data`
--
ALTER TABLE `spot_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `spot_data_old`
--
ALTER TABLE `spot_data_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assign_work_id` (`assign_work_id`),
  ADD KEY `idx_executive_id` (`executive_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_phone` (`phone`),
  ADD KEY `idx_status` (`email`),
  ADD KEY `idx_email` (`email`),
  ADD KEY `idx_role` (`role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accident_person_data`
--
ALTER TABLE `accident_person_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accident_person_data_old`
--
ALTER TABLE `accident_person_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `case_assignments`
--
ALTER TABLE `case_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `company_logos`
--
ALTER TABLE `company_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_data`
--
ALTER TABLE `driver_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `driver_data_old`
--
ALTER TABLE `driver_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `final_reports`
--
ALTER TABLE `final_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `final_reports_new`
--
ALTER TABLE `final_reports_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `garage_data`
--
ALTER TABLE `garage_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `garage_data_old`
--
ALTER TABLE `garage_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `odometer_readings`
--
ALTER TABLE `odometer_readings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `owner_data`
--
ALTER TABLE `owner_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `owner_data_old`
--
ALTER TABLE `owner_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `password_reset_requests`
--
ALTER TABLE `password_reset_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questionnaire_submissions`
--
ALTER TABLE `questionnaire_submissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `question_template`
--
ALTER TABLE `question_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selected_garage_answers`
--
ALTER TABLE `selected_garage_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `spot_data`
--
ALTER TABLE `spot_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `spot_data_old`
--
ALTER TABLE `spot_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question_template`
--
ALTER TABLE `question_template`
  ADD CONSTRAINT `question_template_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
