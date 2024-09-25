-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 25, 2024 at 11:30 AM
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
-- Database: `oneedu_attendy`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `announcement_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`announcement_id`, `title`, `description`, `user_role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Updated Announcement', 'This is an updated announcement.', 1, '2024-06-19 06:11:58', '2024-07-30 15:47:12', '2024-07-30 15:47:12'),
(14, 'data ke 7 Announcement', 'data ke 7 announcement.', 1, '2024-07-15 10:23:42', '2024-07-15 10:23:53', '2024-07-15 10:23:53'),
(15, 'data ke 7 Announcement', 'data ke 7 announcement.', 1, '2024-07-15 10:24:41', '2024-07-15 10:25:13', '2024-07-15 10:25:13'),
(16, 'data ke 7 Announcement', 'data ke 7 announcement.', 1, '2024-08-05 12:23:47', '2024-08-05 12:23:47', NULL),
(19, 'data ke 7 Announcement', 'data ke 7 announcement.', 1, '2024-08-05 12:25:24', '2024-08-05 12:25:24', NULL),
(20, 'data ke 7 Announcement', 'data ke 7 announcement.', 1, '2024-08-05 12:37:32', '2024-08-05 12:37:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `attendance_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `attendance_time` time DEFAULT NULL,
  `type` enum('clock_in','clock_out') DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `photo_link` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT NULL,
  `on_time_status` enum('true','false') DEFAULT NULL,
  `on_radius` enum('true','false') NOT NULL,
  `point` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`attendance_id`, `user_id`, `attendance_date`, `attendance_time`, `type`, `latitude`, `longitude`, `photo_link`, `note`, `status`, `on_time_status`, `on_radius`, `point`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, '2023-06-11', '22:57:00', 'clock_in', '-7.350459093358844', '108.28324067045172', 'default.png', 'Dinas Luar', 'pending', 'false', 'true', '1', '2023-06-11 23:06:45', '2023-06-11 23:06:45', NULL),
(4, 8, '2023-06-11', '22:57:00', 'clock_in', '-7.3504590933588', '108.28324067045', 'default.png', 'Dinas Luar', 'pending', 'true', 'true', '1', '2024-06-27 15:46:01', '2024-06-27 15:46:01', NULL),
(60, 10, '2024-09-18', '13:16:25', 'clock_out', '-6.3150558', '106.8903884', 'http://192.168.18.88:8080/uploads/1726640185_1e10222da93ba140dc12.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:16:25', '2024-09-18 13:16:25', NULL),
(61, 10, '2024-09-18', '13:18:18', 'clock_out', '-6.315057', '106.8903916', 'http://192.168.18.88:8080/uploads/1726640299_5bc253add52267a827c3.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:18:19', '2024-09-18 13:18:19', NULL),
(62, 10, '2024-09-18', '13:18:30', 'clock_in', '-6.3150535', '106.8903828', 'http://192.168.18.88:8080/uploads/1726640310_8662ff9d69492212c3e9.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:18:30', '2024-09-18 13:18:30', NULL),
(63, 10, '2024-09-18', '13:24:29', 'clock_in', '-6.3150542', '106.8903909', 'http://192.168.18.88:8080/uploads/1726640670_2c32598681cb2d773d9a.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:24:30', '2024-09-18 13:24:30', NULL),
(64, 10, '2024-09-18', '13:43:49', 'clock_in', '-6.315055', '106.8903948', 'http://192.168.18.88:8080/uploads/1726641830_a682b78ea2dc5fc0007b.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:43:50', '2024-09-18 13:43:50', NULL),
(65, 10, '2024-09-18', '13:44:38', 'clock_out', '-6.3150511', '106.8903983', 'http://192.168.18.88:8080/uploads/1726641879_f7bdd42082f567726e3b.jpg', NULL, 'pending', 'false', 'false', '1', '2024-09-18 13:44:39', '2024-09-18 13:44:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `latitude` text DEFAULT NULL,
  `longitude` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `name`, `phone`, `latitude`, `longitude`, `address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SD Islam Al Azhar 67 Bukittinggi', '08743878343', '-0.2885025', '100.3828197', 'Jl. Mr. Asa\'at No.51, Campago Guguk Bulek, Kec. Mandiangin Koto Selayan, Kota Bukittinggi, Sumatera Barat 26117', '2023-06-10 21:19:02', NULL, NULL);

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_06_19_041701_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `over_times`
--

CREATE TABLE `over_times` (
  `over_time_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `over_times`
--

INSERT INTO `over_times` (`over_time_id`, `title`, `description`, `user_id`, `start_date`, `start_time`, `end_date`, `end_time`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-06-25 17:48:37', '2024-06-25 17:48:37', NULL),
(2, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'approved', '2024-06-25 17:48:54', '2024-06-25 17:49:43', '2024-06-25 17:49:43'),
(3, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'approved', '2024-07-01 16:05:50', '2024-08-14 16:14:46', '2024-08-14 16:14:46'),
(4, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:24:59', '2024-08-07 16:24:59', NULL),
(5, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:25:12', '2024-08-07 16:25:12', NULL),
(6, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:34:18', '2024-08-07 16:34:18', NULL),
(7, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:35:08', '2024-08-07 16:35:08', NULL),
(8, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:35:50', '2024-08-07 16:35:50', NULL),
(9, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:37:15', '2024-08-07 16:38:08', '2024-08-07 16:38:08'),
(10, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-07 16:37:29', '2024-08-07 16:37:29', NULL),
(11, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-13 16:34:28', '2024-08-13 16:34:28', NULL),
(12, 'Overtime Shift', 'Working overtime to finish a project', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-13 18:30:28', '2024-08-13 18:30:28', NULL),
(13, 'Overtime Shift', '', 2, '2024-06-30 00:00:00', '18:00:00', '2024-07-01 00:00:00', '02:00:00', 'pending', '2024-08-13 18:30:41', '2024-08-13 18:30:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_slips`
--

CREATE TABLE `pay_slips` (
  `pay_slip_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pay_date` datetime DEFAULT NULL,
  `status` enum('up_coming','completed') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pay_slips`
--

INSERT INTO `pay_slips` (`pay_slip_id`, `title`, `description`, `user_id`, `pay_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-06-25 13:42:32', '2024-06-25 13:42:32', NULL),
(5, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-06-25 13:42:58', '2024-06-25 13:42:58', NULL),
(6, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-06-25 13:43:47', '2024-06-25 13:43:47', NULL),
(7, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-06-25 13:46:35', '2024-06-25 13:46:35', NULL),
(8, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-06-25 13:49:03', '2024-06-25 13:49:03', NULL),
(9, 'DI UPDATE', 'SALARY DI UPDATE', 2, '2023-07-30 00:00:00', 'up_coming', '2024-06-25 13:49:14', '2024-07-01 16:03:58', '2024-07-01 16:03:58'),
(10, 'DI UPDATE', 'SALARY DI UPDATE', 2, '2023-07-30 00:00:00', 'up_coming', '2024-06-25 13:51:19', '2024-06-25 16:42:12', '2024-06-25 16:42:12'),
(12, 'Monthly Salary', 'Salary for the month of June', 2, '2023-06-30 00:00:00', 'completed', '2024-08-15 14:50:30', '2024-08-15 14:50:30', NULL),
(13, 'Monthly Salary', 'Salary for the month of June', 10, '2023-06-30 00:00:00', 'completed', '2024-08-15 14:50:36', '2024-08-15 15:51:54', '2024-08-15 15:51:54'),
(15, 'Monthly Salary', 'Salary for the month of June', 10, '2023-06-30 00:00:00', 'completed', '2024-08-15 15:15:17', '2024-08-15 15:50:03', '2024-08-15 15:50:03'),
(16, 'DI UPDATE', 'SALARY DI UPDATE', 10, '2023-07-30 00:00:00', 'up_coming', '2024-08-15 15:52:28', '2024-08-15 15:54:47', '2024-08-15 15:54:47'),
(17, 'Monthly Salary', 'Salary for the month of June', 10, '2023-06-30 00:00:00', 'completed', '2024-09-16 22:58:30', '2024-09-16 22:58:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('nJTXvTp15ibQWu4Zp2LFBkAkh9dbDpyTEFVjLzjN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGtTMzFVd01TWU9yYzdQc09jMXgydUhoQnFnUHROakw5QjV2dE90eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718770908),
('r1VA0LLEyDDgEaovEqelto6WchVFAJQWzNoaSTL0', NULL, '127.0.0.1', 'PostmanRuntime/7.37.3', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicGRQS2lIWXI3RmdpeElvTkFZTXEwaG43MDZ2NW9MM0gweHNEOFk2MCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1718771849),
('RLQb1YVSnW1UwSMycEOEoI04mhLNvkg3viZC0lkB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1NhQ0U1OXRkN3dGUlNuaUJ0MlZDN3JOOWRGN21UZEJjOWdrbkp0VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1718776136);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `shift_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shift_details`
--

CREATE TABLE `shift_details` (
  `shift_detail_id` int(11) NOT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `title`, `description`, `user_id`, `start_date`, `end_date`, `status`) VALUES
(12, 'Meeting with clients', 'Discuss project requirements and timelines', 2, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'approved'),
(13, 'Meeting with clients', 'Discuss project requirements and timelines', 2, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(36, 'updated', 'kjhgfds', 10, '2024-07-13 00:00:00', '2024-07-20 00:00:00', 'pending'),
(37, 'asd', 'asd', 10, '2024-07-13 00:00:00', '2024-07-20 00:00:00', 'rejected'),
(38, 'di update', 'sad', 10, '2024-07-13 00:00:00', '2024-07-26 00:00:00', 'rejected'),
(41, 'hgfdgsa', 'jtds', 10, '2024-07-21 00:00:00', '2024-07-22 00:00:00', 'pending'),
(42, 'test', 'test', 10, '2024-07-23 00:00:00', '2024-08-07 00:00:00', 'pending'),
(43, 'ddd', 'fff', 10, '2024-08-13 00:00:00', '2024-08-16 00:00:00', 'rejected'),
(44, 'Meeting with clients', 'Discuss project requirements and timelines', 2, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'approved'),
(45, 'Meeting with clients', 'Discuss project requirements and timelines', 10, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(46, 'Meeting with clients', 'Discuss project requirements and timelines', 10, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(47, '', 'Discuss project requirements and timelines', 10, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(48, '', 'Discuss project requirements and timelines', 10, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(50, 'asdasd', 'Discuss project requirements and timelines', 10, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(53, 'Meeting with clients', 'Discuss project requirements and timelines', 2, '2024-06-28 09:00:00', '2024-06-28 11:00:00', 'pending'),
(54, 'testing update', 'testing 1', 10, '2024-09-03 00:00:00', '2024-09-04 00:00:00', 'pending'),
(55, 'testing 10', 'testing 10', 10, '2024-09-18 00:00:00', '2024-09-19 00:00:00', 'pending'),
(56, 'testing 10', 'testing 10', 10, '2024-09-18 00:00:00', '2024-09-20 00:00:00', 'pending'),
(57, 'validate 1', 'validate', 10, '2024-09-20 00:00:00', '2024-09-28 00:00:00', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `time_off`
--

CREATE TABLE `time_off` (
  `time_off_id` int(11) NOT NULL,
  `time_off_type` enum('annual_leave','sick_leave') DEFAULT NULL,
  `request_type` enum('half_day','full_day') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `time_off`
--

INSERT INTO `time_off` (`time_off_id`, `time_off_type`, `request_type`, `user_id`, `start_date`, `end_date`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-06-25 16:27:22', '2024-06-25 16:27:32', '2024-06-25 16:27:32'),
(17, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-06-25 16:28:05', '2024-06-25 16:28:05', NULL),
(18, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-06-25 16:28:15', '2024-06-25 16:28:15', NULL),
(19, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-06-25 16:42:32', '2024-06-25 16:42:46', '2024-06-25 16:42:46'),
(20, 'annual_leave', 'half_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-07-01 16:04:05', '2024-08-15 15:18:35', NULL),
(21, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'pending', '2024-07-17 09:02:50', '2024-09-03 10:42:15', '2024-09-03 10:42:15'),
(22, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'approved', '2024-07-23 16:58:10', '2024-07-23 16:58:10', NULL),
(23, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-07-23 20:39:48', '2024-07-23 20:39:48', NULL),
(24, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-07-30 13:46:12', '2024-07-30 13:46:12', NULL),
(25, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:43:46', '2024-08-13 16:43:46', NULL),
(26, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:44:30', '2024-08-13 16:44:30', NULL),
(27, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:44:30', '2024-08-13 16:44:30', NULL),
(28, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:45:19', '2024-08-13 16:45:19', NULL),
(29, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:45:19', '2024-08-13 16:45:19', NULL),
(33, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:47:04', '2024-08-13 16:47:04', NULL),
(34, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 16:47:04', '2024-08-13 16:47:04', NULL),
(40, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 17:01:40', '2024-08-13 17:48:58', '2024-08-13 17:48:58'),
(41, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 17:27:31', '2024-08-13 17:48:17', '2024-08-13 17:48:17'),
(42, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 17:47:13', '2024-08-13 17:48:24', '2024-08-13 17:48:24'),
(43, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:21:28', '2024-08-13 18:21:28', NULL),
(44, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:22:41', '2024-08-13 18:22:41', NULL),
(45, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:23:22', '2024-08-13 18:23:22', NULL),
(46, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:23:28', '2024-08-13 18:23:28', NULL),
(47, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:24:17', '2024-08-13 18:24:17', NULL),
(48, '', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:24:21', '2024-08-13 18:24:21', NULL),
(49, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:24:27', '2024-08-13 18:24:27', NULL),
(50, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:24:38', '2024-08-13 18:24:38', NULL),
(51, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-13 18:24:56', '2024-08-13 18:24:56', NULL),
(52, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-14 16:45:27', '2024-08-14 16:45:27', NULL),
(53, 'annual_leave', 'full_day', 10, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-14 17:50:17', '2024-08-14 17:50:17', NULL),
(54, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-15 14:18:48', '2024-08-15 14:18:48', NULL),
(55, 'annual_leave', 'full_day', 2, '2024-06-28 09:00:00', '2024-06-29 17:00:00', 'Vacation for family trip', 'rejected', '2024-08-15 14:36:00', '2024-08-15 14:36:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `total_point` varchar(255) DEFAULT NULL,
  `total_annual_leave` varchar(255) DEFAULT NULL,
  `salary` decimal(10,0) DEFAULT NULL,
  `user_role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `fullname`, `username`, `password`, `phone`, `profile_photo`, `total_point`, `total_annual_leave`, `salary`, `user_role_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin@gmail.com', 'Admin Demo', 'admin', 'NGJmNWE4YzVlNzA5MGYyZWJiN2E5ZjkyYjM2OTZmYWI5MDAzODYzN2I3ODZmNzM1NDZmZjYyYTM1MjI1ZjZhZTM4MjA1OWM5MDBjMzczOWZjZDYwZWU1YWMzN2M1ZTI1NjAwMDM2YWQ4YTQ2MjNlZjFlN2M3OTczYmQxNTk2MWZkRFBjY01IcTV4cnFKbHVZMWZaeTdHaU9jMzNvbDAzSDdSL28weWQyNmNBPQ==', '087462732712', 'default.png', '0', '12', 8690000, 1, '2023-06-10 16:45:21', '2023-06-10 16:45:21', NULL),
(5, 'x@gmail.com', 'Diding Ridwan', 'didingridwan', 'MGJiNDE4ZDQxNjk0ZTgzYTBjM2ZjNWRkNTNmMGU5YWI3MWJmYjAwOTQ4Mjk0MmIyYjBiMGE2NTMzMzU3ZWU1MzYxMzRlOTVlYTExZTU2ZDU4YzdiMmY5ZWY3NGFlNjBiMDliMjcxYTE5ZDg1ZWQzY2YxMGM1Njc1MDJkMDU5NGYzTWJ0UEpBUjBHR1JhSGdFR0p1Z0dZS1B2UFFjN2lXNHNlZGtKc3hFOXp3PQ==', '01234567890', 'diding.png', '4560', '20', 9999999, 1, '2023-06-11 10:28:09', '2023-06-11 10:28:42', '2023-06-11 10:28:42'),
(6, 'd@gmail.com', 'Admin Demo', 'admin', 'YzYxYmJlZGFkOTM1YTNmYjczNmNhNGYzNzY4NDcxNmYyZTdiMTNmNjRiZmMwZTU1OTNhNTcwNTgwMjAyNDA0YzA4ZjRmODE3YzQ5ZTk2ZWE0NTE5YzZhYWQyMTRlNzVmMDU2NGJiMDBkYzRhOWYwNDgwOTgzYzAyYTYxMzQ2ZDN5T2tYcnY4RktKaHV3dTBrUGJXTDVEd3RnQ3hqSVVBR0hTeXBsMlN0N2kwPQ==', '087462732712', 'default.png', '0', '12', 8690000, 1, '2023-06-11 10:30:16', '2023-06-11 10:31:13', '2023-06-11 10:31:13'),
(7, 'didingridwan@gmail.com', 'Diding Ridwan', 'didingridwan', 'ZjgxZDcyYzhiODUxNjE2NjkwNDViZWJmMDBlYzVjOWEzMWEzNWE4OWY3NDcyM2Y4MDExNTYxODZkOTY4ZGJiY2UzYjBjZmEwZTRiNGRmNjFlNmExMmYxNTc2YWJkZmU2YTQ1NWIxNTdiOTNjY2JiM2ExMjczMTI0ODhlNTk0YTJTUUFoQ0k0NFRKMnhWOEx3S1pQR0tUd1lyNkJJWWEwZlo5QmlwSWY2SzA4PQ==', '01234567890', 'diding.png', '4560', '20', 9999999, 1, '2023-06-11 10:32:02', '2023-06-11 10:35:51', NULL),
(8, 'user@example.com', 'TEST Fullname', 'username', 'OTI5YzIxN2I4YWYyNTM2Y2Y4YmEzMzUwNDVjZDMwNWM1N2NmMmU1YjBlYTBlMzc1ODY4ZTRhMjg2ZTUxZWNhNDE1Y2Y5NzRiMjRlZWNmMjkwYTBhMjg2NmVhNWZiOTRlZTZlOTEwMDU0YTJjY2MxYzQ5NmI4ZmEyZjc1ZDhjOWZHcE5TUHdoR0RiRXIrUlB5WFVnVG1DMldqbFc0Sml6ZENQLzVBSlhKci9VPQ==', '1234567890', '', '100', '10', 5000000, NULL, '2024-06-27 14:55:07', '2024-06-27 15:33:23', '2024-06-27 15:33:23'),
(9, 'example@example.com', 'John Doe', 'johndoe', 'Zjk5OTlhNDMyNjY3OGQxMzkwNDdjMjAyNDliMTNhY2E5NzcxY2ZlNzE4YmM5ODhlNjU2ZGI3YTIyZjJhMTAyNTZmYjc4NWM3YTBkMjY2NWFmZTljYWE0YThiNmJkMjBjY2E5MTYyMTIyNjM0YjA5OTYzZWI2ODMwNWVlMDQ0ZGZJbVp4YnBxZEs0NVBZOXl1S0NSUk0zQVRFT25VSjhvRG9rd1hGQ3c4M1IwPQ==', '123456789', 'path/to/photo.jpg', '100', '10', 50000, 1, '2024-07-01 13:58:33', '2024-07-05 15:54:48', '2024-07-05 15:54:48'),
(10, 'admin1@gmail.com', 'admin1', 'admin1', 'NWUzOTNmODAzNDUyM2ZiYmFhMWUyMWYzZjRkMDRhNGVjNzUzNWY3ZjExNGY2ZGEzMzA5Y2Q5NTBmYTEwNGM3NDVkNTgxNjY1MWI0M2NhNzQ2MTgyOGMzYzQ5YzdjNmEzNDAwYTVlYTNhMGMxN2RjMTg1N2IxYjcwMjRmY2ZjMzh1TkhheUZkck95K2I3dWM4Ry8vNDIwbHIya1laK3RVbWIzOStjR3Q2MnRRPQ==', '123123', 'default.png', '1', '1', NULL, 1, '2024-07-03 14:27:06', '2024-07-03 14:27:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `code`, `name`, `company_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ADM', 'Admin', 1, '2023-06-10 21:26:42', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`announcement_id`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `over_times`
--
ALTER TABLE `over_times`
  ADD PRIMARY KEY (`over_time_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD PRIMARY KEY (`pay_slip_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`shift_id`);

--
-- Indexes for table `shift_details`
--
ALTER TABLE `shift_details`
  ADD PRIMARY KEY (`shift_detail_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `time_off`
--
ALTER TABLE `time_off`
  ADD PRIMARY KEY (`time_off_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_role_id` (`user_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD KEY `company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `announcement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `over_times`
--
ALTER TABLE `over_times`
  MODIFY `over_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pay_slips`
--
ALTER TABLE `pay_slips`
  MODIFY `pay_slip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shift_details`
--
ALTER TABLE `shift_details`
  MODIFY `shift_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `time_off`
--
ALTER TABLE `time_off`
  MODIFY `time_off_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`user_role_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `over_times`
--
ALTER TABLE `over_times`
  ADD CONSTRAINT `over_times_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `pay_slips`
--
ALTER TABLE `pay_slips`
  ADD CONSTRAINT `pay_slips_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `shift_details`
--
ALTER TABLE `shift_details`
  ADD CONSTRAINT `shift_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `shift_details_ibfk_3` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`shift_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `time_off`
--
ALTER TABLE `time_off`
  ADD CONSTRAINT `time_off_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_role_id`) REFERENCES `user_roles` (`user_role_id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
