-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2025 at 02:33 PM
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
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_person_data`
--

INSERT INTO `accident_person_data` (`id`, `assign_work_id`, `executive_id`, `upload_photos_of_the_vehicle_damage`, `was_anyone_injured_in_the_accident`, `location`, `created_at`, `updated_at`) VALUES
(1, 5, 19, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58'),
(2, 15, 38, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29');

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
  `accident55` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accident_person_data_old`
--

INSERT INTO `accident_person_data_old` (`id`, `assign_work_id`, `executive_id`, `upload_photos_of_the_vehicle_damage`, `was_anyone_injured_in_the_accident`, `created_at`, `updated_at`, `accident55`) VALUES
(1, 5, 19, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL),
(2, 15, 38, 'uploads/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL);

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
(18, 18, NULL, 0, NULL, 0, NULL, 0, NULL, 0, NULL, 0, '2025-09-19 08:02:05', '2025-09-19 08:02:05');

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
(9, 34, 32, 34, 19, 19, 19, 19, 19, '2025-09-19', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 04:40:26', '2025-09-18 04:40:26'),
(10, 35, 33, 35, 19, 19, 19, 19, 19, '2025-09-18', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 04:45:56', '2025-09-18 04:45:56'),
(11, 36, 32, 36, 19, 19, 19, 19, 19, '2025-09-21', 'OD', NULL, '0', '2', NULL, '1', '1', '2025-09-18 07:24:26', '2025-09-19 05:47:47'),
(12, 37, 22, 37, 19, 19, 19, 19, 19, '2025-09-22', 'OD', NULL, '1', '0', NULL, '1', '1', '2025-09-18 07:42:50', '2025-09-19 05:47:40'),
(13, 38, 32, 38, 19, 19, 22, 22, 19, '2025-09-22', 'OD', NULL, '1', '1', NULL, '1', '1', '2025-09-18 08:22:02', '2025-09-19 05:47:07'),
(14, 39, 34, 39, 23, 19, 19, 19, 19, '2025-09-22', 'OD', NULL, '0', '1', NULL, '1', '1', '2025-09-18 08:43:12', '2025-09-19 05:47:16'),
(15, 40, 22, 40, 38, 38, 38, 38, 38, '2025-09-29', 'OD', NULL, '2', '1', NULL, '1', '1', '2025-09-19 03:50:37', '2025-09-19 04:01:29'),
(17, 34, 32, 34, 38, 38, 38, 36, 38, '2025-09-22', 'OD', 'fxx', '1', '1', NULL, '1', '1', '2025-09-19 08:02:04', '2025-09-19 08:02:04'),
(18, 34, 32, 34, 38, 38, 38, 36, 38, '2025-09-22', 'OD', 'fxx', '1', '1', NULL, '1', '1', '2025-09-19 08:02:05', '2025-09-19 08:02:05');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_logos`
--

INSERT INTO `company_logos` (`id`, `name`, `email`, `phone`, `place`, `logo`, `address`, `template`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@mail.com', '7708782197', 'trivndrum', 'logos/j0HjAU0ySAXUKlG07qFOEG6dmYhtyVpF0x3dnwCG.png', 'ffs', '8', '2024-12-03 04:15:05', '2025-09-19 08:54:51');

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
  `did_the_driver_receive_any_injuries` varchar(255) DEFAULT NULL,
  `list_any_previous_driving_offenses` varchar(255) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_any_offence` varchar(255) DEFAULT NULL,
  `driving_accident_location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_data`
--

INSERT INTO `driver_data` (`id`, `assign_work_id`, `executive_id`, `full_name_of_the_driver_at_the_time_of_the_accident`, `what_is_the_drivers_contact_number`, `was_the_driver_under_influence`, `did_the_driver_receive_any_injuries`, `list_any_previous_driving_offenses`, `location`, `created_at`, `updated_at`, `driver_any_offence`, `driving_accident_location`) VALUES
(1, 5, 19, NULL, NULL, NULL, '1', NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, 'Locations43'),
(2, 15, 38, NULL, NULL, NULL, '1', NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'Malappuram');

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
  `driver23` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `driver_data_old`
--

INSERT INTO `driver_data_old` (`id`, `assign_work_id`, `executive_id`, `full_name_of_the_driver_at_the_time_of_the_accident`, `what_is_the_drivers_contact_number`, `was_the_driver_under_influence`, `did_the_driver_receive_any_injuries`, `list_any_previous_driving_offenses`, `created_at`, `updated_at`, `driver_any_offence`, `driving_accident_location`, `driver23`) VALUES
(1, 5, 19, NULL, NULL, NULL, '1', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, 'Locations43', NULL),
(2, 15, 38, NULL, NULL, NULL, '1', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'Malappuram', NULL);

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
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports`
--

INSERT INTO `final_reports` (`id`, `case_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `enter_the_address_or_coordinates_of_the_accident_spot`, `created_at`, `updated_at`, `what_is_the_drivers_contact_number`, `accident55`, `garage15`, `garage14`, `garage_gate_date`, `driver_any_offence`, `garage_number`, `list_any_previous_driving_offenses`, `spot_photo`, `was_any_agreement_or_document_signed`, `driving_accident_location`, `did_the_driver_receive_any_injuries`, `were_any_traffic_signals_nearby`, `what_is_the_garages_registration_number`) VALUES
(1, 5, 'ddddddd', NULL, NULL, '2025-09-17 06:15:06', '2025-09-17 06:21:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'Garage567');

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
  `what_is_the_garages_registration_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `final_reports_new`
--

INSERT INTO `final_reports_new` (`id`, `case_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `date_of_the_meeting`, `enter_the_address_or_coordinates_of_the_accident_spot`, `created_at`, `updated_at`, `what_is_the_drivers_contact_number`, `accident55`, `garage15`, `garage14`, `garage_gate_date`, `driver_any_offence`, `garage_number`, `list_any_previous_driving_offenses`, `spot_photo`, `was_any_agreement_or_document_signed`, `driving_accident_location`, `did_the_driver_receive_any_injuries`, `were_any_traffic_signals_nearby`, `what_is_the_garages_registration_number`) VALUES
(1, 5, 'ddddddd', NULL, NULL, NULL, '2025-09-17 06:15:06', '2025-09-17 06:21:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'Garage567');

-- --------------------------------------------------------

--
-- Table structure for table `garage_data`
--

CREATE TABLE `garage_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assign_work_id` bigint(20) UNSIGNED NOT NULL,
  `executive_id` bigint(20) UNSIGNED DEFAULT NULL,
  `what_is_the_name_of_the_garage` varchar(255) DEFAULT NULL,
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
  `garage15` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage_data`
--

INSERT INTO `garage_data` (`id`, `assign_work_id`, `executive_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `what_is_the_garages_registration_number`, `what_is_garage_car`, `location`, `sp_case`, `created_at`, `updated_at`, `questions_45`, `garage_number`, `gggg`, `dddddd`, `aaaaaacc`, `garage_gate_date`, `qwert`, `garage14`, `garage15`) VALUES
(1, 1, 12, 'Garage 555', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:22:45', '2025-09-12 10:27:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 12, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:26:46', '2025-09-08 04:31:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 12, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, 'NULL', NULL, NULL, '2025-09-08 04:33:15', '2025-09-08 04:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 61, 19, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:20:15', '2025-09-15 07:22:06', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr67866', 'garage_uploads/0ow4VJ3ewgc9cenxzf6e2z0nKfedSCk6hUUYmnkM.mp3'),
(5, 61, 19, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:22:34', '2025-09-14 09:07:30', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'garage_uploads/ZLkNq2nWODGAqGhdJzatY6kkdF8xmu03ynosFDwm.png'),
(6, 61, 19, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 08:24:17', '2025-09-14 08:24:17', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(7, 61, 19, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-14 09:10:08', '2025-09-14 09:10:08', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(8, 62, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', NULL, NULL, NULL, NULL, 'NULL', '2024-05-10', NULL, NULL, NULL),
(9, 63, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, 'Garage 445', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(10, 63, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, 'Garage 445', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(11, 64, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, 'Garage 556677', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(12, 64, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:54:47', '2025-09-16 05:54:47', NULL, 'Garage122', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(13, 65, 20, NULL, NULL, NULL, 'NULL', NULL, NULL, '2025-09-16 05:56:01', '2025-09-16 05:56:01', NULL, 'Garage122', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(14, 5, 19, 'ddddddd', NULL, 'Garage567', 'NULL', NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:20:58', NULL, 'Garage564', NULL, NULL, 'NULL', NULL, NULL, NULL, NULL),
(15, 15, 38, NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', 'Garage567', 'NULL', NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, NULL);

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
  `garage15` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `garage_data_old`
--

INSERT INTO `garage_data_old` (`id`, `assign_work_id`, `executive_id`, `what_is_the_name_of_the_garage`, `upload_a_photo_of_the_garage_sign_or_front_view`, `what_is_the_garages_registration_number`, `what_is_garage_id`, `created_at`, `updated_at`, `questions_45`, `garage_pass_id`, `garage_number`, `gggg`, `dddddd`, `aaaaaass`, `garage_gate_date`, `qwert`, `garage14`, `garage15`) VALUES
(1, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:22:45', '2025-09-08 04:22:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:26:46', '2025-09-08 04:26:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 1, 11, 'Garage 345', 'garage_uploads/i2pApzNzvtq1bjVeqOYgtfnmxQIX7PWxPwCH1GRl.jpg', NULL, NULL, '2025-09-08 04:33:15', '2025-09-08 04:33:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:20:15', '2025-09-14 08:20:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(5, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(6, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 08:24:17', '2025-09-14 08:24:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(7, 61, 19, NULL, NULL, NULL, NULL, '2025-09-14 09:10:08', '2025-09-14 09:10:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Garagr678', 'uploads/azJAAHEj8HBPMaExf2CxXPbZ70DuB7yTkrTE2CJ7.jpg'),
(8, 62, 20, NULL, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-10', NULL, NULL, NULL),
(9, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, NULL, 'Garage 445', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, NULL, 'Garage 445', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, NULL, 'Garage 556677', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:54:47', '2025-09-16 05:54:47', NULL, NULL, 'Garage122', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 65, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:56:01', '2025-09-16 05:56:01', NULL, NULL, 'Garage122', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 5, 19, NULL, NULL, 'Garage567', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL, 'Garage564', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 15, 38, NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg', 'Garage567', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(38, 32, 38, 'single', 'case44', '1', 0, '1', '1', '1', '1', '2025-09-18 08:22:02', '2025-09-18 08:22:02'),
(39, 34, 39, 'insurance1', 'case44', '1', 0, '1', '1', '1', '1', '2025-09-18 08:43:12', '2025-09-18 08:43:12'),
(40, 22, 40, 'single', 'case666', '1', 0, '1', '2', '1', '1', '2025-09-19 03:50:37', '2025-09-19 05:50:44');

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
  `create_by` varchar(100) NOT NULL,
  `update_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_companies`
--

INSERT INTO `insurance_companies` (`id`, `name`, `contact_person`, `email`, `phone`, `address`, `template`, `status`, `selected_tabs`, `questionnaires`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'Test company', 'Ravi Nair', 'test@gmail.com', '9876543210', 'fffffffffffffsd', 1, '1', '[\"garage\",\"driver\",\"spot\",\"meeting\",\"accident\"]', '{\"garage\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"label\":\"What Is The Name Of The Garage\",\"type\":\"text\",\"required\":false}},\"driver\":{\"full_name_of_the_driver_at_the_time_of_the_accident\":{\"name\":\"full_name_of_the_driver_at_the_time_of_the_accident\",\"label\":\"Full Name Of The Driver At The Time Of The Accident\",\"type\":\"text\",\"required\":false}},\"spot\":{\"were_any_traffic_signals_nearby\":{\"name\":\"were_any_traffic_signals_nearby\",\"label\":\"Were Any Traffic Signals Nearby\",\"type\":\"select\",\"required\":false,\"options\":[{\"label\":\"Yes\",\"value\":1},{\"label\":\"No\",\"value\":0},{\"label\":\"Other\",\"value\":2}]}},\"meeting\":{\"what_was_discussed_in_the_meeting\":{\"name\":\"what_was_discussed_in_the_meeting\",\"label\":\"What Was Discussed In The Meeting\",\"type\":\"text\",\"required\":false}},\"accident\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"label\":\"Upload Photos Of The Vehicle Damage\",\"type\":\"file\",\"required\":false,\"file_type\":\"image\"}}}', '1', '1', '2025-09-06 10:54:50', '2025-09-06 10:54:50'),
(2, 'Keltron', 'Ravi Nair', 'rvi@gmail.com', '9497626144', 'adreees11', 1, '1', '[\"garage\",\"driver\"]', '{\"garage\":{\"what_is_the_name_of_the_garage\":{\"name\":\"what_is_the_name_of_the_garage\",\"label\":\"What Is The Name Of The Garage\",\"type\":\"text\",\"required\":false},\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"label\":\"Upload A Photo Of The Garage Sign Or Front View\",\"type\":\"file\",\"required\":false,\"file_type\":\"image\"}},\"driver\":{\"what_is_the_drivers_contact_number\":{\"name\":\"what_is_the_drivers_contact_number\",\"label\":\"What Is The Drivers Contact Number\",\"type\":\"text\",\"required\":false}}}', '1', '1', '2025-09-08 04:08:21', '2025-09-08 04:08:21');

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
  `create_by` varchar(100) NOT NULL,
  `update_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurance_customers`
--

INSERT INTO `insurance_customers` (`id`, `company_id`, `name`, `father_name`, `phone`, `emergency_contact_number`, `email`, `present_address`, `permanent_address`, `policy_no`, `policy_start`, `policy_end`, `insurance_type`, `intimation_report`, `crime_number`, `police_station`, `status`, `create_by`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'Hassan', 'Abdu Rahman', '9656523123', '9656523123', 'hs@gmail.com', 'kkd', 'kkd', '3451235', '2025-09-08', '2025-09-15', 'OD', 'uploads/intimation_reports/1757304913_permitfromlsgd_71_1756440667.pdf', '123XRT', 'tirur', '1', '1', '1', '2025-09-08 04:15:14', '2025-09-08 04:15:14'),
(2, 3, 'Jafar', 'ahamed', '9656523476', '9656523476', 'j123@gmail.com', 'ffffffffffffff', 'ffffffffffffff', '3451235', '2025-09-15', '2025-09-18', 'MACT', 'uploads/intimation_reports/1757562866_17108748052646.jpg', '33332255', 'tirur', '1', '1', '1', '2025-09-11 03:54:27', '2025-09-11 03:54:27'),
(3, 6, 'Test user', 'ahamedd', '9656523123', '9656523123', 'admin444@gmail.com', 'ffff', 'ffff', '3451235', '2025-09-11', '2025-09-16', 'OD', NULL, '3333224', 'dddddds', '1', '1', '1', '2025-09-11 04:00:07', '2025-09-11 04:00:07'),
(4, 7, 'Test exec new', 'irfan', '9497626144', '9497626144', 'exec44@gmail.com', 'dddddd', 'dddddd', '3451235X', '2025-09-11', '2025-09-16', 'OD', NULL, '33332255', 'mlpm', '1', '1', '1', '2025-09-11 04:05:47', '2025-09-11 04:05:47'),
(5, 8, 'Asma', 'Abdulla', '9446546922', '9446546922', 'asma123@gmail.com', 'ffff', 'ffff', '3451235X', '2025-09-11', '2025-09-15', 'OD', NULL, '33332244', 'mlpm', '1', '1', '1', '2025-09-11 04:11:35', '2025-09-11 04:11:35'),
(6, 9, 'Test userff', 'irfan', '9497626155', '9497626155', 'cmp45@mail.com', 'ggfff', 'ggfff', '3451235', '2025-09-22', '2025-09-22', 'OD', NULL, '33332244', 'tirur', '1', '1', '1', '2025-09-11 04:43:35', '2025-09-12 06:57:38'),
(7, 11, 'Test user', 'Kelly Jones', '9497626144', '9497626144', 'admin322@gmail.com', 'ddd', 'ddd', '3451235', '2025-09-23', '2025-09-22', 'OD', 'uploads/intimation_reports/1757567829_17108748052646.jpg', '33332255QW', 'tirur', '1', '1', '1', '2025-09-11 05:17:09', '2025-09-11 05:17:09'),
(8, 14, 'Jafardd', 'test 2dd', '9497626188', '9497626188', 'test755@gmail.com', 'hhhhhhhhhhhh', 'hhhhhhhhhhhh', '123456', '2025-09-11', '2025-09-18', 'OD', 'uploads/intimation_reports/1757568499_17108748052646.jpg', '333322XXE', 'tirur', '1', '1', '1', '2025-09-11 05:28:19', '2025-09-11 05:28:19'),
(9, 16, 'Aalvi', 'ahamed', '9497626144', '9497626144', 'ah@gmail.com', 'adress33', 'adress33', '123456', '2025-09-04', '2025-09-17', 'OD', NULL, '333322XXE', 'mlpm', '1', '1', '1', '2025-09-12 06:01:49', '2025-09-12 06:01:49'),
(10, 17, 'User 44', 'ahamed', '9497626188', '9497626188', 'ahamed@gmail.com', 'ffffffffffffa', 'ffffffffffffa', '3451235', '2025-09-04', '2025-09-12', 'OD', 'uploads/intimation_reports/1757676153_17108748052646.jpg', '33332244', 'dddddds', '1', '1', '1', '2025-09-12 11:22:34', '2025-09-12 11:22:34'),
(11, 17, 'Test 445', 'irfan', '9497626133', '9497626133', 'irfan22@gmail.com', 'dddddddddda', 'dddddddddda', '3451235', '2025-09-30', '2025-09-30', 'OD', 'uploads/intimation_reports/1757678582_17108748052646.jpg', '33332244', 'tirur', '1', '1', '1', '2025-09-12 12:03:02', '2025-09-12 12:03:02'),
(12, 17, 'yyyyyyyyyyy', 'Kelly Jones', '9497626345', '9497626345', 'kj@gmail.com', 'ffffffffff', 'ffffffffff', '3451235X', '2025-09-02', '2025-09-18', 'OD', NULL, '33332255QW', 'dddddds', '1', '1', '1', '2025-09-12 12:05:39', '2025-09-12 12:05:39'),
(13, 17, 'test_user44', 'test 2', '9497626144', '9497626144', 'test566@gmail.com', 'ffffffffffsd', 'ffffffffffsd', '123456', '2025-09-13', '2025-09-15', 'OD', 'uploads/intimation_reports/1757735575_insurance.pdf', '33332255QW', 'tirur', '1', '1', '1', '2025-09-13 03:52:55', '2025-09-13 03:52:55'),
(14, 16, 'ggggggg', 'test 2', '9876543244', '9876543244', 'test44@gmail.com', 'dddddddda', 'dddddddda', '123456', '2025-09-05', '2025-09-23', 'OD', 'uploads/intimation_reports/1757736159_insurance.pdf', '333322XXE', 'tirur', '1', '1', '1', '2025-09-13 04:02:39', '2025-09-13 04:02:39'),
(15, 18, 'abc', 'def', '9876543255', '9876543255', 'veena44@gmail.com', 'ffffffffs', 'ffffffffs', '3451235', '2025-09-13', '2025-09-15', 'OD', NULL, '333322XXE', 'mlpm', '1', '1', '1', '2025-09-13 04:46:49', '2025-09-13 04:46:49'),
(16, 18, 'hhhhhhhhhhh', 'test 266', '9497626188', '9497626188', 'rr@gmail.com', 'ffffffffffffsdf', 'ffffffffffffsdf', '345123', '2025-09-13', '2025-09-29', 'MACT', NULL, '33332255QW', 'mlpmfdsf', '1', '1', '1', '2025-09-13 04:51:37', '2025-09-13 04:51:37'),
(17, 18, 'Jafardd', 'test 2', '9876543255', '9876543255', 'admin564@gmail.com', 'fffffffffs', 'fffffffffs', '123456', '2025-09-13', '2025-09-16', 'OD', NULL, '333322XXE', 'rwewe', '1', '1', '1', '2025-09-13 04:59:05', '2025-09-13 04:59:05'),
(18, 18, 'axxs', 'test 25', '9876543444', '9876543210', 'a@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-13', '2025-09-15', 'MACT', NULL, '33332255QW', 'tirur', '1', '1', '1', '2025-09-13 05:05:40', '2025-09-13 05:05:40'),
(19, 18, 'alaban', 'ahamed', '9876543255', '9876543255', 'ab@gmail.com', 'ddddd', 'ddddd', 'XTYASFG5555467GHJK', '2025-09-05', '2025-09-16', 'OD', NULL, '333322XXE', 'mlpmfdsf', '1', '1', '1', '2025-09-13 05:09:44', '2025-09-13 05:09:44'),
(20, 18, 'gd', 'ahamedgg', '9876543242', '9876543242', 'gd@gmail.com', 'gggggggg', 'gggggggg', '3451235X', '2025-09-13', '2025-09-15', 'OD', NULL, '33332255QW', 'tirur', '1', '1', '1', '2025-09-13 10:35:03', '2025-09-13 10:35:03'),
(21, 19, 'Atest', 'irfan', '9876543210', '9876543210', 'ae@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-14', '2025-09-18', 'OD', NULL, '33332255QW', 'mlpm', '1', '1', '1', '2025-09-14 08:07:28', '2025-09-14 08:07:28'),
(22, 20, 'Customer456', 'Alavi', '9497626144', '9497626144', 'alavi@gmail.com', 'vengara', 'vengara', '3451235', '2025-09-16', '2025-09-18', 'OD', NULL, '33332255QW', 'mlpm', '1', '1', '1', '2025-09-16 04:27:19', '2025-09-16 04:27:19'),
(23, 21, 'Aravind', 'Ashokan', '9876543214', '9876543214', 'ashk@mail.com', 'adress123', 'adress123', '3451235', '2025-09-16', '2025-09-16', 'OD', NULL, '3333224', 'ere', '1', '1', '1', '2025-09-16 05:28:22', '2025-09-16 05:28:22'),
(24, 22, 'das', 'ahamed', '9497626133', '9497626133', 'ah@gmail.com', 'fffffff', 'fffffff', '3451235X', '2025-09-02', '2025-09-22', 'OD', NULL, '333322XXE', 'ktkl', '1', '1', '1', '2025-09-16 05:44:06', '2025-09-16 05:44:06'),
(25, 23, 'Test user', 'irfan', '9497626123', '9497626123', 'irfan34@gmail.com', 'dddddddda', 'dddddddda', '3451235', '2025-09-16', '2025-09-18', 'OD', NULL, '333322XXE', 'tirur', '1', '1', '1', '2025-09-16 05:53:01', '2025-09-16 05:53:01'),
(26, 23, 'vcss', 'ahamed', '9876543215', '9876543215', 'admin@gmail.com', 'fffffffs', 'fffffffs', '3451235', '2025-09-16', '2025-09-22', 'OD', NULL, '33332255QW', 'dddddds', '1', '1', '1', '2025-09-16 07:44:10', '2025-09-16 07:44:10'),
(27, 23, 'Reema', 'irfan', '9497626144', '9497626144', 'ass@mail.com', 'vvvvvvvvvvvvx', 'vvvvvvvvvvvvx', '3451235', '2025-09-16', '2025-09-22', 'OD', NULL, '33332255QW', 'mlpm', '1', '1', '1', '2025-09-16 10:38:04', '2025-09-16 10:38:04'),
(28, 23, 'Test usergg', 'ahamed', '9497626777', '9497626777', 'test644@gmail.com', 'ffffffff', 'ffffffff', '3451235', '2025-09-16', '2025-09-22', 'MACT', 'uploads/intimation_reports/1758021123_1285.pdf', '33332255QW', 'mlpm', '1', '1', '1', '2025-09-16 11:12:03', '2025-09-16 11:12:03'),
(29, 22, 'eaa', 'irfan', '9876543124', '9876543124', 'eaa@gmail.com', 'ddddddddd', 'ddddddddd', '123456', '2025-09-29', '2025-09-21', 'MACT', NULL, '33332255QW', 'mlpm', '1', '1', '1', '2025-09-16 13:58:55', '2025-09-16 13:58:55'),
(30, 22, 'company55', 'ahamed', '9876543210', '9876543210', 'cmp556@gmail.com', 'adress12', 'adress12', '3451235', '2025-09-17', '2025-09-19', 'MACT', NULL, '32/2025', 'mlpm', '1', '1', '1', '2025-09-17 05:54:27', '2025-09-17 05:54:27'),
(31, 24, 'Rashid', 'ahamed', '9656521220', '9656521220', 'rsh@gmail.com', 'aaadress', 'aaadress', '3451235', '2025-09-17', '2025-09-22', 'OD', NULL, '33332255', 'mlpm', '1', '1', '1', '2025-09-17 09:21:23', '2025-09-17 09:21:23'),
(32, 25, 'Babu', 'irfan', '9497626333', '9497626333', 'bbb123@gmail.com', 'eeeeeeeee', 'eeeeeeeee', '3451235', '2025-09-17', '2025-09-21', 'OD', NULL, '33332255', 'mlpm', '1', '1', '1', '2025-09-17 09:27:53', '2025-09-17 09:27:53'),
(33, 26, 'test_user', 'irfan', '9497626567', '9497626567', 'irfan44@gmail.com', 'ddddddd', 'ddddddd', '3451235', '2025-09-17', '2025-09-22', 'MACT', NULL, '33332244', 'mlpm', '1', '1', '1', '2025-09-17 09:39:52', '2025-09-17 09:39:52'),
(34, 32, 'Jafardas', 'irfan', '9497626166', '9497626166', 'bd@gmail.com', 'fffffffffffff', 'fffffffffffff', '3451235', '2025-09-18', '2025-09-20', 'OD', NULL, '34/2025', 'ktkl', '1', '1', '1', '2025-09-18 04:40:26', '2025-09-18 04:40:26'),
(35, 33, 'ahamed', 'bava', '9876543000', '9876543000', 'bv@gmail.com', 'adress', 'adress', '3451235', '2025-09-18', '2025-09-25', 'OD', NULL, '456/2025', 'ktkl', '1', '1', '1', '2025-09-18 04:45:56', '2025-09-18 04:45:56'),
(36, 32, 'CSS', 'irfan', '9876543235', '9876543235', 'bsnl@gmail.com', 'DDDDDDDDDDDD', 'DDDDDDDDDDDD', '123456', '2025-09-18', '2025-09-18', 'OD', NULL, '33332244', 'dddddds', '1', '1', '1', '2025-09-18 07:24:26', '2025-09-18 07:24:26'),
(37, 22, 'BBB', 'DFXDFDX', '9876543111', '9876543111', 'bb@gmail.com', 'dddddddddsa', 'dddddddddsa', '3451235', '2025-09-18', '2025-09-29', 'OD', NULL, '456/2025', 'ktkl', '1', '1', '1', '2025-09-18 07:42:50', '2025-09-18 07:42:50'),
(38, 32, 'Test user', 'ahamed', '9876543254', '9876543254', 'basil333@gmail.com', 'aaaaass', 'aaaaass', '3451235', '2025-09-18', '2025-09-23', 'OD', NULL, '3333224', 'mlpmfdsf', '1', '1', '1', '2025-09-18 08:22:02', '2025-09-18 08:22:02'),
(39, 34, 'usama', 'ahamed', '9876541221', '9876541221', 'ussm@mail.com', 'eeeeeeeee', 'eeeeeeeee', '123456', '2025-09-18', '2025-09-30', 'OD', NULL, '234/2025', 'tirur', '1', '1', '1', '2025-09-18 08:43:12', '2025-09-18 08:43:12'),
(40, 22, 'basheer', 'irfan', '9876543210', '9876543210', 'test55c@gmail.com', 'ffffffffffffs', 'ffffffffffffs', '3451235X', '2025-09-19', '2025-09-22', 'OD', NULL, '134/2025', 'tirur', '1', '1', '1', '2025-09-19 03:50:37', '2025-09-19 03:50:37');

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
('05b5883aabf4b23ff6fd8473dd876d571fab0e50ac9ffdbfb35e41b19b08ac6fd020fb7e2496b48e', 38, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 11:51:40', '2025-09-18 11:56:18', '2026-09-18 17:21:40'),
('193a67d1cfb5fe3d675a59dfb28608babe2b69e8d112a50a9f7bba8d563a9c6916ebe79283f7a9d2', 19, 1, 'Insurance API Auth', '[]', 0, '2025-09-18 08:34:23', '2025-09-18 08:34:23', '2026-09-18 14:04:23'),
('203d84347c5548261c0cdbd1f2c9d3be72383850e4e63144a655f859a580047f994d31e41b1d6ffb', 38, 1, 'Insurance API Auth', '[]', 1, '2025-09-19 04:29:40', '2025-09-19 04:46:46', '2026-09-19 09:59:40'),
('31e7c2f7808c0405ff9bdbfa80b3a0fdcec5ed997b057ab2a4decdf07ea07ddebb5a2473433b4742', 26, 1, 'Insurance API Auth', '[]', 1, '2025-03-13 00:34:08', '2025-09-16 12:35:26', '2026-03-13 06:04:08'),
('3a1c2a0548103e9b574221881c849b96b01455afe16281fc1f94d314a9723253c6a0670fcec3f2b8', 2, 1, 'Insurance API Auth', '[]', 0, '2025-07-16 03:53:08', '2025-07-16 03:53:08', '2026-07-16 09:23:08'),
('4dcc738fc229aca22c7ad91ed3ad68e076fb48dbe300e93ce7a0b1788d884018def6c21575b3d750', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 10:30:58', '2025-09-16 12:11:52', '2026-09-16 16:00:58'),
('4e4277f5626fb966af2a67bb14156633a27542ea963c938c2cd72483d5b82262d885dd98c9b8e565', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 12:14:43', '2025-09-16 12:16:21', '2026-09-16 17:44:43'),
('5015c9da4a709737d6c3df638aaff44d4eda33855bc4cc45e6824899cad0e699e05ffb24716b2d7b', 5, 1, 'Insurance API Auth', '[]', 0, '2025-01-26 23:03:48', '2025-01-26 23:03:48', '2026-01-27 04:33:48'),
('66c25cabb1e7837456f2579eef0d7d505564a86581187efa2fdc1daa8dc732439cde7f7a313972a4', 26, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 12:35:26', '2025-09-16 12:35:26', '2026-09-16 18:05:26'),
('69abeaba7551710c9cd9d146444e7a2e6e8a6f9b28b12342edec67fb267974a61d1017fcbef1e09f', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 05:17:36', '2025-09-16 05:19:40', '2026-09-16 10:47:36'),
('6fa88dfbe68d016a302d044045c244999008ee44baf5f331e33b74c8c818ca4f2ff46424339b4553', 9, 1, 'Insurance API Auth', '[]', 0, '2024-10-22 06:17:24', '2024-10-22 06:17:24', '2025-10-22 11:47:24'),
('7144de27a85f44116324f520c2a9ebf45ab547e291da5f37452575953dfb589ad21c4dae1c6692d1', 16, 1, 'Insurance API Auth', '[]', 0, '2025-09-11 04:44:34', '2025-09-11 04:44:34', '2026-09-11 10:14:34'),
('72b301f7b41f6ddc8bedc8a3d51875b11c9d713bc86202fa77e549384e24eb4dfddb5f27feaa2b8d', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 07:22:45', '2025-09-18 08:34:23', '2026-09-18 12:52:45'),
('8b2568a1c8e15d72b4600413c5e24426d2a6cd980cd91027894a7c963f34d06b6a43e9b20429df0d', 17, 1, 'Insurance API Auth', '[]', 0, '2025-09-12 11:59:50', '2025-09-12 11:59:50', '2026-09-12 17:29:50'),
('8cd81082b4b102e8a39503023ba6a3dadaf5f99ae8122f0f98d4fa771b78fa82d4d5cf966a1c8213', 38, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 11:56:18', '2025-09-19 03:43:42', '2026-09-18 17:26:18'),
('96c0fc76bd17d562c7682df703463183dc93e9c887f2ad4026effedcec3d850754591b5d03e877f0', 20, 1, 'Insurance API Auth', '[]', 1, '2025-09-16 05:19:40', '2025-09-16 10:30:57', '2026-09-16 10:49:40'),
('98c90bc3dae915e4e3e955559da28cccba6e40bd4e620fd0d9f332a80b0a9063b99b727c68fee637', 27, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 13:56:59', '2025-09-16 13:56:59', '2026-09-16 19:26:59'),
('9a2370608b857e34b24e06b2b516f9c41e08c3600d4617b24458c5d96713a829a8f449031d6cc5b9', 3, 1, 'Insurance API Auth', '[]', 0, '2025-07-22 06:01:45', '2025-07-22 06:01:45', '2026-07-22 11:31:45'),
('9f2b0ef2e99ac5ffa771ac9c2800c2cce7d81463e52ccdd43d3f598d980ddaa66ed4792b5914fccf', 7, 1, 'Insurance API Auth', '[]', 0, '2024-10-07 00:29:19', '2024-10-07 00:29:19', '2025-10-07 05:59:19'),
('a2e3dd295cf07fd950b7f2b80cdd6d8e539d77a346838cab3a880195391798b7d7cc35443769ceeb', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 04:39:34', '2025-09-18 07:22:44', '2026-09-18 10:09:34'),
('a5f2f4e93a6188d71f989ffdace7c6b5c10b3c601ba0449d6338edbb57e6a8da0de92258bc3b11bb', 38, 1, 'Insurance API Auth', '[]', 1, '2025-09-19 03:43:44', '2025-09-19 04:29:39', '2026-09-19 09:13:44'),
('ab555968d30450086d93a7f1f439c0fd88d5c75a3ae36765d2f57c4c087e3e65674d656f2590be7b', 8, 1, 'Insurance API Auth', '[]', 0, '2025-08-05 03:41:15', '2025-08-05 03:41:16', '2026-08-05 09:11:15'),
('c06549e4776a55dcd79ffcfbbc23dafdff91b5f21701366deb09fb9334bd24a2e4b0c7fd3adfb510', 38, 1, 'Insurance API Auth', '[]', 1, '2025-09-18 11:51:01', '2025-09-18 11:51:40', '2026-09-18 17:21:01'),
('c9e0791327b7a58a356bd8057d19c51dfc4f9949324bd79ffc0e4d0cc644dd201a7a855396295d64', 39, 1, 'Insurance API Auth', '[]', 0, '2025-09-19 07:05:04', '2025-09-19 07:05:04', '2026-09-19 12:35:04'),
('c9e53e752412de37f5f977d5cf2bdcb3db4de09d7c4acd8490127281cd9ec7e2c7a7949b3e5dc4f9', 24, 1, 'Insurance API Auth', '[]', 0, '2024-12-10 02:16:26', '2024-12-10 02:16:26', '2025-12-10 07:46:26'),
('cb47f9b045da73b19f7275d9cc0e854784dfa191fe926c6fb37042d882ee599d6d6b88bf490b2eea', 6, 1, 'Insurance API Auth', '[]', 0, '2024-11-26 00:49:21', '2024-11-26 00:49:21', '2025-11-26 06:19:21'),
('d1c654a1ee08542ec19dd812f20b4c39092b46fdbed3149f24013aeeeb49e6dc074c7d8da2d605ff', 19, 1, 'Insurance API Auth', '[]', 1, '2025-09-14 08:05:52', '2025-09-17 05:52:15', '2026-09-14 13:35:52'),
('e1c695adb2be7d0ca5cff4f448f34e0190487f210eb5ba43f61a4b260106f68bde89d9c98531484e', 12, 1, 'Insurance API Auth', '[]', 0, '2025-09-16 13:59:31', '2025-09-16 13:59:31', '2026-09-16 19:29:31'),
('e2005415abe392ad2b65efc7004148088db3084a76f478c32d5d707336526057ef67923613b68c30', 38, 1, 'Insurance API Auth', '[]', 0, '2025-09-19 04:46:46', '2025-09-19 04:46:46', '2026-09-19 10:16:46'),
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
(52, 12, '200', 'odometer/ZV22ya1Dv6m6Iqc5QwMFg26NkS5l0e5SAFsDCQAB.jpg', '03:50 PM', '04-09-2025', 'fffffs', NULL, NULL, '04:50 PM', '04-09-2025', NULL, '0', '2025-09-04 10:26:03', '2025-09-04 10:26:03'),
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_data`
--

INSERT INTO `owner_data` (`id`, `assign_work_id`, `executive_id`, `who_did_you_meet_regarding_the_accident_name_role`, `what_was_discussed_in_the_meeting`, `date_of_the_meeting`, `was_any_agreement_or_document_signed`, `next_steps_discussed_in_the_meeting`, `owner_ration_cardjhj`, `owner_driving_license`, `what_is_owner_license_number`, `location`, `created_at`, `updated_at`) VALUES
(1, 63, 20, NULL, NULL, NULL, '1', NULL, 'NULL', NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44'),
(2, 63, 20, NULL, NULL, NULL, '1', NULL, 'NULL', NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06'),
(3, 5, 19, NULL, 'Meeting is Done', '2025-10-04', NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58'),
(4, 15, 38, NULL, 'Meeting is Done', NULL, NULL, NULL, 'NULL', NULL, NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_data_old`
--

INSERT INTO `owner_data_old` (`id`, `assign_work_id`, `executive_id`, `who_did_you_meet_regarding_the_accident_name_role`, `what_was_discussed_in_the_meeting`, `date_of_the_meeting`, `was_any_agreement_or_document_signed`, `next_steps_discussed_in_the_meeting`, `owner_ration_card`, `owner_driving_license`, `what_is_owner_license_number`, `created_at`, `updated_at`) VALUES
(1, 63, 20, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44'),
(2, 63, 20, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06'),
(3, 5, 19, NULL, 'Meeting is Done', '2025-10-04', NULL, NULL, NULL, NULL, NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58'),
(4, 15, 38, NULL, 'Meeting is Done', NULL, NULL, NULL, NULL, NULL, NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29');

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
(16, 15, '{\"id\":15,\"assign_id\":15,\"works\":[{\"work\":\"profile\",\"case_work_id\":null,\"questionnaire\":[]},{\"work\":\"garage\",\"case_work_id\":\"garage949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_a_photo_of_the_garage_sign_or_front_view\":{\"name\":\"upload_a_photo_of_the_garage_sign_or_front_view\",\"data\":\"uploads\\/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg\"},\"what_is_the_garages_registration_number\":{\"name\":\"what_is_the_garages_registration_number\",\"data\":\"Garage567\"}}},{\"work\":\"driver\",\"case_work_id\":\"driver965652144042025-09-17 10:37:21\",\"executive_id\":38,\"questionnaire\":{\"driving_accident_location\":{\"name\":\"driving_accident_location\",\"data\":\"Malappuram\"},\"did_the_driver_receive_any_injuries\":{\"name\":\"did_the_driver_receive_any_injuries\",\"data\":1}}},{\"work\":\"spot\",\"case_work_id\":\"spot949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"spot_photo\":{\"name\":\"spot_photo\",\"data\":\"uploads\\/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg\"},\"was_there_any_police_presence_at_the_location\":{\"name\":\"was_there_any_police_presence_at_the_location\",\"data\":0}}},{\"work\":\"meeting\",\"case_work_id\":\"meeting949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"what_was_discussed_in_the_meeting\":{\"name\":\"what_was_discussed_in_the_meeting\",\"data\":\"Meeting is Done\"}}},{\"work\":\"accident\",\"case_work_id\":\"accident949762614412025-09-17 10:09:54\",\"executive_id\":38,\"questionnaire\":{\"upload_photos_of_the_vehicle_damage\":{\"name\":\"upload_photos_of_the_vehicle_damage\",\"data\":\"uploads\\/8ufXoEvaL3EY4ISkQyYV9muD1PChVSqfx8JRJl9J.jpg\"}}}]}', '2025-09-19 04:01:29', '2025-09-19 04:01:29');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `input_type` varchar(50) NOT NULL,
  `data_category` varchar(100) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `unique_key` varchar(255) DEFAULT NULL,
  `file_type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `input_type`, `data_category`, `column_name`, `unique_key`, `file_type`, `created_at`, `updated_at`) VALUES
(1, 'What is the name of the garage?', 'text', 'garage_data', 'what_is_the_name_of_the_garage', '#Z1TFK56', NULL, '2025-07-13 22:50:07', '2025-07-13 22:50:07'),
(2, 'Upload a photo of the garage sign or front view', 'file', 'garage_data', 'upload_a_photo_of_the_garage_sign_or_front_view', '#W51CC53', 'image', '2025-07-13 22:50:23', '2025-07-13 22:50:23'),
(3, 'What is the garage\'s registration number?', 'text', 'garage_data', 'what_is_the_garages_registration_number', '#PWVUC36', NULL, '2025-07-13 22:50:41', '2025-07-13 22:50:41'),
(4, 'Full name of the driver at the time of the accident?', 'text', 'driver_data', 'full_name_of_the_driver_at_the_time_of_the_accident', '#VF9PX29', NULL, '2025-07-13 22:51:02', '2025-07-13 22:51:02'),
(5, 'What is the driver\'s contact number?', 'text', 'driver_data', 'what_is_the_drivers_contact_number', '#VHPBC88', NULL, '2025-07-13 22:51:19', '2025-07-13 22:51:19'),
(6, 'Was the driver under influence?', 'select', 'driver_data', 'was_the_driver_under_influence', '#JEHGC60', NULL, '2025-07-13 22:52:01', '2025-07-13 22:52:01'),
(7, 'Did the driver receive any injuries?', 'select', 'driver_data', 'did_the_driver_receive_any_injuries', '#X1AYM80', NULL, '2025-07-13 22:52:15', '2025-07-13 22:52:15'),
(8, 'List any previous driving offenses', 'text', 'driver_data', 'list_any_previous_driving_offenses', '#OIQQS34', NULL, '2025-07-13 22:52:27', '2025-07-13 22:52:27'),
(9, 'Enter the address or coordinates of the accident spot.', 'text', 'spot_data', 'enter_the_address_or_coordinates_of_the_accident_spot', '#W3MNC28', NULL, '2025-07-13 22:52:46', '2025-07-13 22:52:46'),
(10, 'Were any traffic signals nearby?', 'select', 'spot_data', 'were_any_traffic_signals_nearby', '#CABAG37', NULL, '2025-07-13 22:53:29', '2025-07-13 22:53:29'),
(11, 'Was there any police presence at the location?', 'select', 'spot_data', 'was_there_any_police_presence_at_the_location', '#Z4G3045', NULL, '2025-07-13 22:54:17', '2025-07-13 22:54:17'),
(12, 'Who did you meet regarding the accident (name & role)?', 'text', 'owner_data', 'who_did_you_meet_regarding_the_accident_name_role', '#ACR6T82', NULL, '2025-07-13 22:54:51', '2025-07-13 22:54:51'),
(14, 'What was discussed in the meeting?', 'text', 'owner_data', 'what_was_discussed_in_the_meeting', '#1YFG798', NULL, '2025-07-13 22:55:19', '2025-07-13 22:55:19'),
(15, 'Date of the meeting?', 'date', 'owner_data', 'date_of_the_meeting', '#J5S3K32', NULL, '2025-07-13 22:55:51', '2025-07-13 22:55:51'),
(16, 'Was any agreement or document signed?', 'select', 'owner_data', 'was_any_agreement_or_document_signed', '#RJHTY73', NULL, '2025-07-13 22:56:36', '2025-07-13 22:56:36'),
(17, 'Next steps discussed in the meeting?', 'text', 'owner_data', 'next_steps_discussed_in_the_meeting', '#06ZFM79', NULL, '2025-07-13 22:56:52', '2025-07-13 22:56:52'),
(19, 'Upload photos of the vehicle damage.', 'file', 'accident_person_data', 'upload_photos_of_the_vehicle_damage', '#FNSPL22', 'image', '2025-07-13 22:57:26', '2025-07-13 22:57:26'),
(20, 'Was anyone injured in the accident?', 'select', 'accident_person_data', 'was_anyone_injured_in_the_accident', '#WYU9469', NULL, '2025-07-13 22:57:42', '2025-07-13 22:57:42'),
(41, 'what is garage car', 'text', 'garage_data', 'what_is_garage_car', '#9Q2GS63', NULL, '2025-08-07 16:41:07', '2025-09-06 11:07:35'),
(42, 'what is owner license number', 'text', 'owner_data', 'what_is_owner_license_number', '#0LXJD43', NULL, '2025-08-07 16:41:36', '2025-08-07 16:41:36'),
(47, 'Driver any offence', 'select', 'driver_data', 'driver_any_offence', '#7ZE0L72', NULL, '2025-09-11 04:08:51', '2025-09-11 04:08:51'),
(48, 'spot happenes', 'date', 'spot_data', 'spot_happenes', '#YQSMT78', NULL, '2025-09-11 04:09:37', '2025-09-11 04:09:37'),
(52, 'Garage Gate Date', 'text', 'garage_data', 'garage_gate_date', '#SMPDQ34', NULL, '2025-09-12 11:18:29', '2025-09-12 11:18:29'),
(53, 'Driving accident location', 'text', 'driver_data', 'driving_accident_location', '#FVY5V76', NULL, '2025-09-12 11:19:09', '2025-09-12 11:19:09'),
(54, 'spot photo', 'select', 'spot_data', 'spot_photo', '#0P90W48', NULL, '2025-09-12 11:19:38', '2025-09-12 11:19:38');

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
(1, 1, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 4, 1, NULL, NULL),
(4, 6, 1, NULL, NULL),
(5, 9, 1, NULL, NULL),
(6, 11, 1, NULL, NULL),
(7, 12, 1, NULL, NULL),
(8, 19, 1, NULL, NULL),
(9, 3, 2, NULL, NULL),
(10, 52, 2, NULL, NULL),
(11, 6, 2, NULL, NULL),
(12, 8, 2, NULL, NULL),
(13, 54, 2, NULL, NULL),
(14, 15, 2, NULL, NULL),
(15, 19, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(17, 4, 3, NULL, NULL),
(18, 6, 3, NULL, NULL),
(19, 54, 3, NULL, NULL),
(20, 12, 3, NULL, NULL),
(21, 19, 3, NULL, NULL),
(22, 1, 4, NULL, NULL),
(23, 3, 4, NULL, NULL),
(24, 4, 4, NULL, NULL),
(25, 6, 4, NULL, NULL),
(26, 8, 4, NULL, NULL),
(27, 9, 4, NULL, NULL),
(28, 11, 4, NULL, NULL),
(29, 54, 4, NULL, NULL),
(30, 15, 4, NULL, NULL),
(31, 17, 4, NULL, NULL),
(32, 1, 5, NULL, NULL),
(33, 6, 5, NULL, NULL),
(34, 54, 5, NULL, NULL),
(35, 15, 5, NULL, NULL),
(36, 19, 5, NULL, NULL);

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
  `spot_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_data`
--

INSERT INTO `spot_data` (`id`, `assign_work_id`, `executive_id`, `enter_the_address_or_coordinates_of_the_accident_spot`, `were_any_traffic_signals_nearby`, `was_there_any_police_presence_at_the_location`, `location`, `created_at`, `updated_at`, `spot_happenes`, `spot_photo`) VALUES
(1, 61, 19, NULL, NULL, 'alaba', NULL, '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL),
(2, 62, 20, NULL, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', '2024-05-10', NULL),
(3, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:36:29', NULL, 'No'),
(4, 63, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, '1'),
(5, 64, 20, NULL, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, '1'),
(6, 5, 19, NULL, '1', '0', NULL, '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL),
(7, 15, 38, NULL, NULL, '0', NULL, '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg');

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
  `spot_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spot_data_old`
--

INSERT INTO `spot_data_old` (`id`, `assign_work_id`, `executive_id`, `enter_the_address_or_coordinates_of_the_accident_spot`, `were_any_traffic_signals_nearby`, `was_there_any_police_presence_at_the_location`, `created_at`, `updated_at`, `spot_happenes`, `spot_photo`) VALUES
(1, 61, 19, NULL, NULL, 'alaba', '2025-09-14 08:22:34', '2025-09-14 08:22:34', NULL, NULL),
(2, 62, 20, NULL, NULL, NULL, '2025-09-16 04:39:56', '2025-09-16 04:39:56', '2024-05-10', NULL),
(3, 63, 20, NULL, NULL, NULL, '2025-09-16 05:35:44', '2025-09-16 05:35:44', NULL, '1'),
(4, 63, 20, NULL, NULL, NULL, '2025-09-16 05:40:06', '2025-09-16 05:40:06', NULL, '1'),
(5, 64, 20, NULL, NULL, NULL, '2025-09-16 05:47:08', '2025-09-16 05:47:08', NULL, '1'),
(6, 5, 19, NULL, '1', '0', '2025-09-17 06:13:58', '2025-09-17 06:13:58', NULL, NULL),
(7, 15, 38, NULL, NULL, '0', '2025-09-19 04:01:29', '2025-09-19 04:01:29', NULL, 'uploads/5RolHOgkyKLK05uQyvUgQMXaj8nWQrMgqZEqakjo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `company_id`, `template_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'TEMPLATES001', '2025-09-17 06:59:35', '2025-09-17 06:59:35'),
(2, NULL, 'TEMPLATES002', '2025-09-17 07:19:27', '2025-09-17 07:19:27'),
(3, NULL, 'TEMPLATES003', '2025-09-17 11:26:02', '2025-09-17 11:26:02'),
(4, NULL, 'TEMPLATES004', '2025-09-17 11:26:31', '2025-09-17 11:26:31'),
(5, NULL, 'TEMPLATES005', '2025-09-17 11:26:48', '2025-09-17 11:26:48');

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
  `create_by` varchar(255) DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `profile_image`, `place`, `email_verified_at`, `password`, `role`, `login_request`, `imei`, `status`, `address`, `blood`, `date_of_birth`, `join_date`, `create_by`, `update_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '7708782197', 'admin@mail.com', 'uploads/Wi88elEXiKGNWEVd2PN3a6wZJYxcMlIejydWXucG.png', 'trivndrum', NULL, '$2y$12$6hERzWTNcZaQLzgkm4ea.uFsdz1kLmbKVvsAgXz3WXxwiKjthYAqa', '1', 0, NULL, '1', 'ggggggggggggytyrtytr', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-02 16:41:07', '2025-09-19 04:38:13'),
(2, 'NivTest Mob', '9048007933', 'test@gmail.com', NULL, 'Kondotty', NULL, '$2y$12$kGwXWtszf2BlzX5O1uKb9./yn4exNIxFiryA1Ka4XeAaViHoni34i', '3', 0, NULL, '1', NULL, NULL, NULL, NULL, '1', '1', NULL, '2025-07-13 23:01:36', '2025-07-21 21:41:00'),
(12, 'Test44', '9497626144', 'test44@mail.com', NULL, 'kannur', NULL, '$2y$12$b6aj6uF8maY3Wd2vI.qtNe8O9oyNLDaF0CM.mkdHVHk/UPcu.NoyG', '3', 0, NULL, '1', NULL, NULL, NULL, NULL, '1', '1', NULL, '2025-09-01 19:46:34', '2025-09-16 13:59:49'),
(34, 'Test user', '9876543210', 'test@mail.com', NULL, 'kannur', NULL, '$2y$12$qqNpRf./zlaBzASdnWn4Yu.a7H1P..6m.ynaZftiRdNhYDwNXLb9G', '3', 0, NULL, '1', 'fff', 'B+', NULL, NULL, '1', '1', NULL, '2025-09-18 10:27:32', '2025-09-18 10:35:52'),
(35, 'bbbbf', '9497626166', 'bbbbf@mail.com', NULL, 'kannur', NULL, '$2y$12$EANYeOmRZvfdtAYUjggy7umRMmSoq/0.1cLTqmYE5uoY2AqqlWGru', '3', 0, NULL, '1', 'gggggggggfgfh', 'B+', NULL, NULL, '1', '1', NULL, '2025-09-18 10:49:04', '2025-09-18 10:49:04'),
(36, 'balan', '9497626255', 'balan@mail.com', 'uploads/0sGvZo9McMzP978qZBOdmH0mXM13aS2SYSHrUY3y.jpg', 'kannur', NULL, '$2y$12$VEQXFhf89hAefPLzlzzIiOfN/SGcVXQFePQA/yd7dPqqSR29qfjrW', '3', 0, NULL, '1', 'gfffgh', 'B+', NULL, NULL, '1', '1', NULL, '2025-09-18 10:52:55', '2025-09-18 10:52:55'),
(37, 'nbb', '9497626655', 'nbb@mail.com', 'uploads/5tU1ZQDmvJxASjcy7Fg0XV8fnYkuljuLfrx3uDwc.png', 'kannur', NULL, '$2y$12$G0y/KYlKpTzAIJYcUMiCOeVb.afnB6cYcl0OJecetMc6xzrBve0GO', '3', 0, NULL, '1', 'dddddddd', 'B+', NULL, NULL, '1', '1', NULL, '2025-09-18 11:00:04', '2025-09-18 11:29:31'),
(38, 'Fwas', '9497621234', 'fs@mail.com', 'uploads/HkVeMZx9q71Ls1G1Nh4XEHKsDe4mRD2M5uWVYEvd.jpg', 'kannur', NULL, '$2y$12$51ZHnmB5ydJ2YaIXeqgQXuW6miaK9bQ39Or/Bi7E2MVVQWQYSqyVK', '3', 1, NULL, '1', 'fff', 'B+', NULL, NULL, '1', '1', NULL, '2025-09-18 11:50:41', '2025-09-19 04:29:41'),
(39, 'vccs', '9876543233', 'affs@mail.com', 'uploads/FwmQNBb3rz77lOyqqd3GuGTh5xgtUcMLkenAs99Y.jpg', 'kannur', NULL, '$2y$12$axomlr6VP7WyvVOeoCk9z.Sav35Oa/Lut85ngMytMJzumrYByl0ki', '3', 1, NULL, '1', 'ffffffffs', 'O+', '2025-09-23', '2025-09-28', '1', '1', NULL, '2025-09-19 06:51:50', '2025-09-19 07:05:04'),
(40, 'Jafarf', '9876541233', 'saasa@mail.com', 'uploads/tF7f8qYk6dWEnaOIraTBTiNvwJUgDKz3610UvUzM.png', 'asasa', NULL, '$2y$12$4Jxh33ILxk01LoGiaMM7KetZrV8Di60Cht6gVZkUS53fcL72uqH6y', '3', 0, NULL, '1', 'saaaa', 'O+', '2025-08-01', '2025-06-16', '1', '1', NULL, '2025-09-19 10:50:25', '2025-09-19 10:54:03'),
(41, 'fffffffffsd', '9876543333', 'admin44@mail.com', 'uploads/plTNHIqajrwFYXLdzCMPR6h1k3TZOOScTND1du2W.png', 'kannur', NULL, '$2y$12$sxfJ0U8vmWX0lLyUHL.PhOkOI/P4Vbh4pq4wUqeR25Sm18AtEaImq', '3', 0, NULL, '1', 'dddddds', 'B+', '2025-09-01', '2025-09-22', '1', '1', NULL, '2025-09-19 12:32:29', '2025-09-19 12:32:29');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `accident_person_data_old`
--
ALTER TABLE `accident_person_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assign_work_data`
--
ALTER TABLE `assign_work_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `case_assignments`
--
ALTER TABLE `case_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `company_logos`
--
ALTER TABLE `company_logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver_data`
--
ALTER TABLE `driver_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver_data_old`
--
ALTER TABLE `driver_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `final_reports`
--
ALTER TABLE `final_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `final_reports_new`
--
ALTER TABLE `final_reports_new`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `garage_data`
--
ALTER TABLE `garage_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `garage_data_old`
--
ALTER TABLE `garage_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `insurance_cases`
--
ALTER TABLE `insurance_cases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `insurance_companies`
--
ALTER TABLE `insurance_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `insurance_customers`
--
ALTER TABLE `insurance_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owner_data_old`
--
ALTER TABLE `owner_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `question_template`
--
ALTER TABLE `question_template`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `spot_data`
--
ALTER TABLE `spot_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spot_data_old`
--
ALTER TABLE `spot_data_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

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
