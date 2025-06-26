-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 11:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school.com`
--

-- --------------------------------------------------------

--
-- Table structure for table `assign_class_teacher`
--

CREATE TABLE `assign_class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assign_class_teacher`
--

INSERT INTO `assign_class_teacher` (`id`, `class_id`, `teacher_id`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 9, 40, 0, 0, 1, '2024-12-27 13:06:00', '2024-12-27 13:06:00'),
(3, 1, 42, 0, 0, 41, '2024-12-28 14:22:29', '2024-12-28 14:22:29'),
(4, 2, 42, 0, 0, 41, '2024-12-28 14:22:53', '2024-12-28 14:22:53'),
(5, 3, 42, 0, 0, 41, '2024-12-28 14:23:02', '2024-12-28 14:23:02'),
(8, 11, 39, 0, 0, 1, '2024-12-31 02:26:58', '2024-12-31 02:26:58'),
(10, 8, 40, 0, 0, 1, '2025-01-02 02:47:40', '2025-01-02 02:47:40'),
(12, 7, 40, 0, 0, 1, '2025-01-02 02:49:21', '2025-01-02 02:49:21'),
(14, 10, 48, 0, 0, 1, '2025-01-14 03:30:53', '2025-01-14 03:30:53'),
(15, 10, 45, 0, 0, 1, '2025-01-14 03:30:53', '2025-01-14 03:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher_subject`
--

CREATE TABLE `assign_teacher_subject` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `assign_teacher_subject`
--

INSERT INTO `assign_teacher_subject` (`id`, `teacher_id`, `class_id`, `subject_id`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 48, 7, 4, 0, 0, 1, '2025-01-16 03:45:56', '2025-01-16 03:45:56'),
(3, 48, 7, 15, 0, 0, 1, '2025-01-16 03:45:56', '2025-01-16 03:45:56'),
(5, 42, 3, 10, 0, 0, 1, '2025-01-16 03:46:30', '2025-01-16 03:46:30'),
(6, 42, 3, 8, 0, 1, 1, '2025-01-16 10:05:07', '2025-01-16 11:25:44'),
(10, 42, 10, 6, 0, 0, 1, '2025-01-16 10:07:10', '2025-01-16 10:07:10'),
(12, 42, 10, 7, 1, 0, 1, '2025-01-16 11:17:27', '2025-01-16 11:17:27'),
(13, 48, 8, 2, 0, 0, 1, '2025-01-16 11:17:58', '2025-01-16 11:17:58'),
(15, 48, 9, 3, 0, 1, 1, '2025-01-16 11:19:21', '2025-01-16 11:24:07'),
(16, 42, 12, 9, 0, 0, 1, '2025-01-16 11:20:33', '2025-01-16 11:20:33'),
(18, 42, 10, 12, 0, 1, 1, '2025-01-16 11:21:09', '2025-01-16 11:25:10'),
(21, 45, 11, 11, 0, 1, 1, '2025-01-16 11:22:46', '2025-01-16 11:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'kelas 10 Perkantoran', 0, 0, 1, '2024-08-15 02:20:42', '2024-09-09 07:04:10'),
(2, 'kelas 11 Perkantoran', 0, 0, 1, '2024-08-15 02:20:49', '2024-09-09 07:03:54'),
(3, 'kelas 12 Perkantoran', 0, 0, 1, '2024-08-15 02:20:57', '2024-09-09 07:04:21'),
(7, 'kelas 10 Teknik Komputer Jaringan', 0, 0, 1, '2024-09-09 07:04:51', '2024-09-09 07:04:51'),
(8, 'kelas 11 Teknik Komputer Jaringan', 0, 0, 1, '2024-09-09 07:05:12', '2024-09-09 07:05:12'),
(9, 'kelas 12 Teknik Komputer Jaringan', 0, 0, 1, '2024-09-09 07:05:24', '2024-09-09 07:05:24'),
(10, 'kelas 10 Perhotelan', 0, 0, 1, '2024-09-09 07:05:45', '2024-09-09 07:05:45'),
(11, 'kelas 11 Perhotelan', 0, 0, 1, '2024-09-09 07:06:11', '2024-09-09 07:06:11'),
(12, 'kelas 12 Perhotelan', 0, 0, 1, '2024-09-09 07:06:30', '2024-09-09 07:06:30'),
(13, 'Kelas  Sistem informasi', 0, 1, 1, '2024-12-19 13:46:48', '2024-12-19 14:18:50'),
(14, 'Kelas Sistem Informasi', 0, 0, 1, '2024-12-26 09:07:49', '2024-12-26 09:07:49'),
(15, 'Kelas Baru1', 0, 1, 1, '2024-12-31 02:16:24', '2024-12-31 02:16:33'),
(16, '1', 0, 1, 1, '2025-01-01 15:51:33', '2025-01-01 15:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 10, 6, 1, 0, 0, '2024-09-09 07:17:06', '2024-09-09 07:17:06'),
(2, 10, 11, 1, 0, 0, '2024-09-09 07:17:06', '2024-09-09 07:17:06'),
(3, 10, 7, 1, 0, 0, '2024-09-09 07:17:06', '2024-09-09 07:17:06'),
(4, 10, 5, 1, 0, 0, '2024-09-09 07:17:06', '2024-09-09 07:17:06'),
(5, 1, 8, 1, 0, 0, '2024-09-09 07:17:43', '2024-09-09 07:17:43'),
(6, 1, 6, 1, 0, 0, '2024-09-09 07:17:43', '2024-09-09 07:17:43'),
(7, 1, 7, 1, 0, 0, '2024-09-09 07:17:43', '2024-09-09 07:17:43'),
(8, 1, 5, 1, 0, 0, '2024-09-09 07:17:43', '2024-09-09 07:17:43'),
(9, 7, 6, 1, 0, 0, '2024-09-09 07:18:09', '2024-09-09 07:18:09'),
(10, 7, 4, 1, 0, 0, '2024-09-09 07:18:09', '2024-09-09 07:18:09'),
(11, 7, 1, 1, 0, 0, '2024-09-09 07:18:09', '2024-09-09 07:18:09'),
(12, 7, 7, 1, 0, 0, '2024-09-09 07:18:09', '2024-09-09 07:18:09'),
(13, 7, 5, 1, 0, 0, '2024-09-09 07:18:09', '2024-09-09 07:18:09'),
(14, 11, 6, 1, 0, 0, '2024-09-09 07:18:45', '2024-09-09 07:18:45'),
(15, 11, 12, 1, 0, 0, '2024-09-09 07:18:45', '2024-09-09 07:18:45'),
(16, 11, 7, 1, 0, 0, '2024-09-09 07:18:45', '2024-09-09 07:18:45'),
(17, 11, 5, 1, 0, 0, '2024-09-09 07:18:45', '2024-09-09 07:18:45'),
(18, 2, 6, 1, 0, 0, '2024-09-09 07:19:16', '2024-09-09 07:19:16'),
(19, 2, 10, 1, 0, 0, '2024-09-09 07:19:16', '2024-09-09 07:19:16'),
(20, 2, 7, 1, 0, 0, '2024-09-09 07:19:16', '2024-09-09 07:19:16'),
(21, 2, 5, 1, 0, 0, '2024-09-09 07:19:16', '2024-09-09 07:19:16'),
(22, 8, 6, 1, 0, 0, '2024-09-09 07:20:01', '2024-09-09 07:20:01'),
(23, 8, 2, 1, 0, 0, '2024-09-09 07:20:01', '2024-09-09 07:20:01'),
(24, 8, 7, 1, 0, 0, '2024-09-09 07:20:01', '2024-09-09 07:20:01'),
(25, 8, 5, 1, 0, 0, '2024-09-09 07:20:01', '2024-09-09 07:20:01'),
(26, 12, 6, 1, 0, 0, '2024-09-09 07:20:16', '2024-09-09 07:20:16'),
(27, 12, 13, 1, 0, 0, '2024-09-09 07:20:16', '2024-09-09 07:20:16'),
(28, 12, 7, 1, 0, 0, '2024-09-09 07:20:16', '2024-09-09 07:20:16'),
(29, 12, 5, 1, 0, 0, '2024-09-09 07:20:16', '2024-09-09 07:20:16'),
(30, 3, 6, 1, 0, 0, '2024-09-09 07:20:40', '2024-09-09 07:20:40'),
(31, 3, 9, 1, 0, 0, '2024-09-09 07:20:40', '2024-09-09 07:20:40'),
(32, 3, 7, 1, 0, 0, '2024-09-09 07:20:40', '2024-09-09 07:20:40'),
(33, 3, 5, 1, 0, 0, '2024-09-09 07:20:40', '2024-09-09 07:20:40'),
(38, 9, 6, 1, 0, 0, '2024-12-26 09:32:32', '2024-12-26 09:32:32'),
(39, 9, 3, 1, 0, 0, '2024-12-26 09:32:32', '2024-12-26 09:32:32'),
(40, 9, 7, 1, 0, 0, '2024-12-26 09:32:32', '2024-12-26 09:32:32'),
(41, 9, 5, 1, 0, 0, '2024-12-26 09:32:32', '2024-12-26 09:32:32'),
(42, 9, 15, 1, 1, 0, '2024-12-26 09:32:32', '2024-12-26 09:36:17'),
(49, 14, 1, 1, 1, 0, '2024-12-31 02:21:00', '2024-12-31 02:21:22'),
(50, 14, 2, 1, 1, 0, '2024-12-31 02:21:00', '2024-12-31 02:21:20'),
(51, 14, 3, 1, 1, 0, '2024-12-31 02:21:00', '2024-12-31 02:21:19'),
(52, 14, 9, 1, 1, 0, '2024-12-31 02:21:00', '2024-12-31 02:21:17'),
(53, 14, 8, 1, 1, 0, '2025-01-01 16:07:28', '2025-01-01 16:07:36'),
(54, 8, 1, 1, 0, 0, '2025-01-14 03:26:55', '2025-01-14 03:26:55'),
(55, 8, 3, 1, 0, 0, '2025-01-14 03:26:56', '2025-01-14 03:26:56');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_timetable`
--

CREATE TABLE `class_subject_timetable` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `week_id` int(11) DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject_timetable`
--

INSERT INTO `class_subject_timetable` (`id`, `class_id`, `subject_id`, `week_id`, `start_time`, `end_time`, `room_number`, `created_at`, `updated_at`) VALUES
(1, 10, 5, 1, '08:20', '09:00', '1', '2024-09-09 07:43:07', '2024-09-09 07:43:07'),
(2, 10, 7, 1, '09:15', '10:00', '10', '2024-09-09 07:44:16', '2024-09-09 07:44:16'),
(3, 10, 7, 4, '13:00', '13:30', '10', '2024-09-09 07:44:16', '2024-09-09 07:44:16'),
(6, 10, 6, 1, '15:00', '15:50', '10', '2024-09-09 07:46:04', '2024-09-09 07:46:04'),
(7, 10, 6, 5, '08:20', '09:00', '10', '2024-09-09 07:46:04', '2024-09-09 07:46:04'),
(8, 1, 5, 1, '09:00', '10:00', '11', '2024-09-09 07:46:37', '2024-09-09 07:46:37'),
(9, 1, 7, 1, '14:00', '15:00', '11', '2024-09-09 07:47:11', '2024-09-09 07:47:11'),
(10, 1, 7, 4, '08:20', '09:00', '11', '2024-09-09 07:47:11', '2024-09-09 07:47:11'),
(11, 1, 6, 2, '10:00', '11:00', '11', '2024-09-09 07:47:50', '2024-09-09 07:47:50'),
(12, 1, 6, 3, '00:00', '13:00', '11', '2024-09-09 07:47:50', '2024-09-09 07:47:50'),
(15, 7, 1, 1, '08:20', '09:00', 'Lab', '2024-09-09 07:49:37', '2024-09-09 07:49:37'),
(16, 7, 1, 3, '13:00', '14:00', 'Lab', '2024-09-09 07:49:37', '2024-09-09 07:49:37'),
(17, 7, 4, 1, '09:15', '10:00', '8', '2024-09-09 07:50:39', '2024-09-09 07:50:39'),
(18, 7, 4, 5, '09:20', '10:10', '8', '2024-09-09 07:50:39', '2024-09-09 07:50:39'),
(19, 7, 5, 1, '11:00', '11:45', '8', '2024-09-09 07:51:07', '2024-09-09 07:51:07'),
(20, 7, 7, 1, '14:00', '14:50', '8', '2024-09-09 07:51:40', '2024-09-09 07:51:40'),
(21, 7, 7, 5, '08:29', '10:00', '8', '2024-09-09 07:51:40', '2024-09-09 07:51:40'),
(22, 7, 6, 1, '16:00', '16:30', '8', '2024-09-09 07:52:10', '2024-09-09 07:52:10'),
(23, 11, 5, 2, '10:12', '10:10', '9', '2024-09-09 07:52:50', '2024-09-09 07:52:50'),
(25, 11, 7, 4, '10:20', '11:00', '9', '2024-09-09 07:53:44', '2024-09-09 07:53:44'),
(26, 11, 7, 6, '10:00', '00:00', '18', '2024-09-09 07:53:44', '2024-09-09 07:53:44'),
(29, 11, 6, 3, '10:20', '05:00', '6', '2024-09-09 07:54:51', '2024-09-09 07:54:51'),
(30, 2, 5, 1, '09:10', '10:12', '7', '2024-09-09 08:11:56', '2024-09-09 08:11:56'),
(31, 2, 7, 1, '10:15', '11:00', '7', '2024-09-09 08:12:25', '2024-09-09 08:12:25'),
(32, 2, 7, 4, '00:00', '13:00', '7', '2024-09-09 08:12:25', '2024-09-09 08:12:25'),
(33, 2, 10, 5, '08:00', '10:00', 'Lab Perkantoran', '2024-09-09 08:12:59', '2024-09-09 08:12:59'),
(34, 2, 6, 2, '10:00', '11:00', '7', '2024-09-09 08:13:19', '2024-09-09 08:13:19'),
(37, 8, 2, 1, '00:00', '01:30', 'Lab', '2024-09-09 08:14:05', '2024-09-09 08:14:05'),
(38, 8, 2, 3, '09:00', '10:00', 'Lab', '2024-09-09 08:14:05', '2024-09-09 08:14:05'),
(39, 8, 6, 1, '08:00', '09:00', '9', '2024-09-09 08:14:29', '2024-09-09 08:14:29'),
(40, 8, 7, 2, '09:00', '00:00', '9', '2024-09-09 08:14:53', '2024-09-09 08:14:53'),
(41, 8, 5, 5, '10:20', '11:15', '9', '2024-09-09 08:15:28', '2024-09-09 08:15:28'),
(42, 12, 5, 1, '09:00', '10:00', '4', '2024-09-09 08:22:11', '2024-09-09 08:22:11'),
(43, 12, 7, 4, '00:00', '13:10', '4', '2024-09-09 08:22:31', '2024-09-09 08:22:31'),
(44, 12, 13, 3, '13:00', '14:30', '6', '2024-09-09 08:24:05', '2024-09-09 08:24:05'),
(45, 12, 6, 2, '14:00', '15:00', '6', '2024-09-09 08:24:23', '2024-09-09 08:24:23'),
(46, 3, 5, 1, '09:00', '10:10', '2', '2024-09-09 08:25:04', '2024-09-09 08:25:04'),
(47, 3, 7, 3, '14:00', '15:00', '6', '2024-09-09 08:25:24', '2024-09-09 08:25:24'),
(48, 3, 9, 1, '15:00', '16:00', 'Lab', '2024-09-09 08:25:50', '2024-09-09 08:25:50'),
(49, 3, 6, 5, '15:00', '17:00', '10', '2024-09-09 08:26:12', '2024-09-09 08:26:12'),
(50, 9, 6, 4, '16:00', '15:06', '4', '2024-09-09 08:27:31', '2024-09-09 08:27:31'),
(52, 9, 7, 5, '00:22', '00:50', '3', '2024-09-09 08:28:14', '2024-09-09 08:28:14'),
(54, 10, 11, 2, '10:20', '11:00', '10', '2024-12-26 09:47:51', '2024-12-26 09:47:51'),
(55, 10, 11, 4, '11:00', '11:30', '10', '2024-12-26 09:47:51', '2024-12-26 09:47:51'),
(56, 10, 11, 5, '20:52', '21:51', '9', '2024-12-26 09:47:51', '2024-12-26 09:47:51'),
(57, 1, 8, 1, '15:00', '16:00', '2', '2024-12-28 14:23:44', '2024-12-28 14:23:44'),
(58, 1, 8, 3, '10:23', '11:23', '3', '2024-12-28 14:23:44', '2024-12-28 14:23:44'),
(59, 1, 8, 5, '08:20', '10:00', '3', '2024-12-28 14:23:44', '2024-12-28 14:23:44'),
(60, 11, 12, 1, '11:11', '11:27', '1', '2024-12-31 02:24:01', '2024-12-31 02:24:01'),
(61, 11, 12, 3, '10:23', '11:24', '2', '2024-12-31 02:24:01', '2024-12-31 02:24:01'),
(62, 11, 12, 6, '02:02', '12:00', '1', '2024-12-31 02:24:01', '2024-12-31 02:24:01'),
(63, 9, 3, 1, '13:00', '14:00', 'Lab', '2025-01-01 16:09:10', '2025-01-01 16:09:10'),
(64, 9, 3, 3, '08:00', '09:00', 'Lab', '2025-01-01 16:09:10', '2025-01-01 16:09:10'),
(65, 9, 5, 1, '14:10', '15:11', '5', '2025-01-02 08:11:45', '2025-01-02 08:11:45'),
(66, 9, 5, 3, '16:00', '16:30', '4', '2025-01-02 08:11:45', '2025-01-02 08:11:45'),
(67, 9, 5, 5, '16:11', '17:11', '4', '2025-01-02 08:11:45', '2025-01-02 08:11:45');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`id`, `name`, `note`, `created_by`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Ujian Tengah Semester 2021', 'test', 1, 0, '2024-11-04 09:28:57', '2024-11-04 09:28:57'),
(2, 'Ujian Akhir Semester 2021', '', 1, 0, '2024-11-04 09:29:41', '2024-11-04 09:29:41'),
(3, 'Ujian Tengah Semester 2022', '', 1, 0, '2024-11-04 09:29:56', '2024-11-04 09:29:56'),
(4, 'Ujian Akhir Semester 2022', '', 1, 0, '2024-11-04 09:30:07', '2024-11-04 09:30:07'),
(10, 'ujian nasional', '', 1, 0, '2024-11-11 06:52:06', '2024-11-11 06:53:23'),
(11, 'tengah', '', 1, 1, '2024-11-18 08:39:20', '2024-11-18 08:39:23'),
(12, 'ujian praktek', 'ujian dilaksanakan di labb', 1, 0, '2024-12-28 08:31:15', '2025-01-01 16:11:15'),
(13, 'ujian sabun lux', '', 1, 1, '2024-12-31 02:35:45', '2024-12-31 02:35:57'),
(14, 'Ujian hafalan', '', 1, 1, '2025-01-01 16:10:54', '2025-01-01 16:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedule`
--

CREATE TABLE `exam_schedule` (
  `id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `start_time` varchar(25) DEFAULT NULL,
  `end_time` varchar(25) DEFAULT NULL,
  `room_number` varchar(25) DEFAULT NULL,
  `full_marks` varchar(25) DEFAULT NULL,
  `passing_marks` varchar(25) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_schedule`
--

INSERT INTO `exam_schedule` (`id`, `exam_id`, `class_id`, `subject_id`, `exam_date`, `start_time`, `end_time`, `room_number`, `full_marks`, `passing_marks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 7, '2024-11-06', '08:31', '07:31', '2', '100', '60', 1, '2024-11-04 09:33:10', '2024-11-04 09:33:10'),
(2, 1, 10, 6, '2024-11-08', '09:32', '10:32', '4', '100', '65', 1, '2024-11-04 09:33:10', '2024-11-04 09:33:10'),
(3, 1, 10, 5, '2024-11-05', '10:31', '11:31', '1', '100', '75', 1, '2024-11-04 09:33:10', '2024-11-04 09:33:10'),
(4, 1, 10, 11, '2024-11-07', '10:32', '11:32', '3', '100', '75', 1, '2024-11-04 09:33:10', '2024-11-04 09:33:10'),
(5, 3, 10, 6, '2024-11-13', '06:32', '07:32', '4', '100', '65', 1, '2024-11-04 10:33:10', '2024-11-04 10:33:10'),
(19, 2, 8, 2, '2024-11-19', '15:18', '16:19', '2', '100', '50', 1, '2024-11-11 06:17:46', '2024-11-11 06:17:46'),
(21, 10, 9, 3, '2024-11-27', '17:42', '18:42', '2', '100', '50', 1, '2024-11-18 08:42:44', '2024-11-18 08:42:44'),
(22, 4, 12, 5, '2024-11-21', '23:03', '21:03', '5', '100', '50', 1, '2024-11-18 11:04:19', '2024-11-18 11:04:19'),
(23, 4, 12, 13, '2024-11-19', '09:03', '10:03', '6', '100', '70', 1, '2024-11-18 11:04:19', '2024-11-18 11:04:19'),
(24, 10, 12, 7, '2024-11-20', '09:07', '10:05', '4', '100', '75', 1, '2024-11-18 11:05:33', '2024-11-18 11:05:33'),
(29, 2, 9, 5, '2024-12-30', '10:36', '11:40', '5', '100', '75', 1, '2024-12-28 09:01:54', '2024-12-28 09:01:54'),
(30, 2, 9, 7, '2024-12-17', '07:53', '09:53', '4', '100', '50', 1, '2024-12-28 09:01:54', '2024-12-28 09:01:54'),
(31, 2, 9, 3, '2024-11-07', '08:37', '09:37', '6', '100', '80', 1, '2024-12-28 09:01:54', '2024-12-28 09:01:54'),
(32, 2, 9, 6, '2024-12-18', '19:53', '21:53', '1', '100', '75', 1, '2024-12-28 09:01:54', '2024-12-28 09:01:54'),
(37, 3, 1, 5, '2024-12-28', '22:22', '23:33', '2', '100', '50', 41, '2024-12-28 14:44:57', '2024-12-28 14:44:57'),
(38, 3, 1, 8, '2024-12-28', '04:44', '10:50', '3', '100', '75', 41, '2024-12-28 14:44:57', '2024-12-28 14:44:57'),
(39, 3, 2, 7, '2024-12-27', '22:47', '23:45', '2', '100', '60', 41, '2024-12-28 14:45:30', '2024-12-28 14:45:30'),
(40, 3, 2, 10, '2024-12-30', '15:50', '16:51', '1', '100', '70', 41, '2024-12-28 14:45:30', '2024-12-28 14:45:30'),
(45, 10, 3, 5, '2024-12-28', '14:30', '13:42', '1', '100', '60', 1, '2024-12-29 06:32:11', '2024-12-29 06:32:11'),
(46, 10, 3, 7, '2024-12-30', '11:03', '12:03', '2', '100', '60', 1, '2024-12-29 06:32:11', '2024-12-29 06:32:11'),
(47, 10, 3, 9, '2024-12-31', '10:30', '12:30', 'lab', '100', '70', 1, '2024-12-29 06:32:11', '2024-12-29 06:32:11'),
(48, 10, 3, 6, '2025-01-01', '07:43', '08:49', '3', '100', '75', 1, '2024-12-29 06:32:11', '2024-12-29 06:32:11'),
(49, 12, 1, 8, '2024-12-29', '17:24', '18:26', 'lab', '100', '60', 1, '2024-12-29 09:24:48', '2024-12-29 09:24:48'),
(50, 4, 3, 5, '2024-12-29', '21:42', '22:42', '5', '100', '50', 1, '2024-12-29 12:42:58', '2024-12-29 12:42:58'),
(51, 4, 3, 9, '2024-12-30', '16:47', '17:48', '6', '100', '70', 1, '2024-12-29 12:42:58', '2024-12-29 12:42:58'),
(56, 12, 9, 3, '2024-12-30', '17:24', '18:57', 'lab', '100', '70', 1, '2024-12-29 13:52:12', '2024-12-29 13:52:12'),
(58, 4, 7, 5, '2024-12-18', '10:41', '14:40', '5', '100', '50', 1, '2024-12-31 02:38:16', '2024-12-31 02:38:16'),
(59, 4, 7, 7, '2024-12-30', '11:37', '12:37', '4', '100', '50', 1, '2024-12-31 02:38:16', '2024-12-31 02:38:16'),
(60, 4, 7, 1, '2024-12-04', '10:40', '12:38', 'lab', '100', '70', 1, '2024-12-31 02:38:16', '2024-12-31 02:38:16'),
(61, 4, 9, 5, '2024-12-30', '20:48', '21:49', '5', '100', '60', 1, '2025-01-01 16:11:51', '2025-01-01 16:11:51'),
(62, 4, 9, 7, '2024-12-31', '23:49', '00:49', '9', '100', '50', 1, '2025-01-01 16:11:51', '2025-01-01 16:11:51'),
(63, 4, 9, 3, '2024-12-30', '15:54', '16:55', '2', '100', '70', 1, '2025-01-01 16:11:51', '2025-01-01 16:11:51'),
(64, 4, 9, 6, '2025-01-08', '17:55', '16:16', '1', '100', '75', 1, '2025-01-01 16:11:51', '2025-01-01 16:11:51'),
(65, 4, 11, 5, '2025-01-02', '10:20', '11:25', '4', '100', '60', 1, '2025-01-01 16:25:05', '2025-01-01 16:25:05');

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
-- Table structure for table `marks_grade`
--

CREATE TABLE `marks_grade` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `percent_from` int(11) DEFAULT 0,
  `percent_to` int(11) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_grade`
--

INSERT INTO `marks_grade` (`id`, `name`, `percent_from`, `percent_to`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'A', 90, 99, 1, '2024-12-29 22:03:43', '2024-12-30 01:50:14'),
(2, 'B', 80, 89, 1, '2024-12-30 01:51:10', '2024-12-30 01:52:43'),
(3, 'C', 70, 79, 1, '2024-12-30 01:51:49', '2024-12-30 01:52:52'),
(4, 'D', 60, 69, 1, '2024-12-30 01:52:32', '2024-12-30 01:53:04'),
(5, 'E', 50, 59, 1, '2024-12-30 01:53:29', '2024-12-30 01:53:29'),
(7, 'F', 0, 58, 1, '2024-12-30 01:58:42', '2024-12-30 01:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `marks_register`
--

CREATE TABLE `marks_register` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `class_work` int(11) NOT NULL DEFAULT 0,
  `home_work` int(11) NOT NULL DEFAULT 0,
  `exam` int(11) NOT NULL DEFAULT 0,
  `full_marks` int(11) NOT NULL DEFAULT 0,
  `passing_marks` int(11) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks_register`
--

INSERT INTO `marks_register` (`id`, `student_id`, `exam_id`, `class_id`, `subject_id`, `class_work`, `home_work`, `exam`, `full_marks`, `passing_marks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 29, 10, 3, 5, 0, 0, 90, 100, 60, 42, '2024-12-29 09:31:52', '2024-12-30 02:24:01'),
(2, 29, 10, 3, 7, 0, 0, 85, 100, 60, 42, '2024-12-29 10:51:14', '2024-12-30 02:48:07'),
(3, 29, 10, 3, 9, 0, 0, 90, 100, 70, 42, '2024-12-29 10:51:14', '2024-12-30 02:22:39'),
(4, 29, 10, 3, 6, 0, 0, 90, 100, 75, 42, '2024-12-29 10:51:14', '2024-12-30 02:23:01'),
(5, 29, 4, 3, 5, 20, 30, 10, 100, 50, 1, '2024-12-29 12:43:23', '2024-12-29 12:43:23'),
(6, 29, 4, 3, 9, 30, 20, 30, 100, 70, 1, '2024-12-29 12:43:36', '2024-12-29 12:43:36'),
(7, 32, 4, 9, 5, 0, 0, 90, 100, 60, 1, '2024-12-29 12:51:14', '2025-01-01 16:13:12'),
(8, 32, 4, 9, 7, 0, 0, 80, 100, 50, 1, '2024-12-29 12:51:14', '2025-01-01 16:13:12'),
(9, 32, 4, 9, 3, 0, 0, 75, 100, 70, 1, '2024-12-29 12:51:14', '2025-01-01 16:13:12'),
(10, 32, 4, 9, 6, 0, 0, 80, 100, 75, 1, '2024-12-29 12:51:14', '2025-01-01 16:13:12'),
(11, 30, 4, 9, 5, 0, 0, 55, 100, 60, 1, '2024-12-29 12:51:44', '2025-01-01 16:14:17'),
(12, 30, 4, 9, 7, 0, 0, 80, 100, 50, 1, '2024-12-29 12:51:44', '2025-01-01 16:14:17'),
(13, 30, 4, 9, 3, 0, 0, 70, 100, 70, 1, '2024-12-29 12:51:44', '2025-01-01 16:14:17'),
(14, 30, 4, 9, 6, 0, 0, 90, 100, 75, 1, '2024-12-29 12:51:44', '2025-01-01 16:14:17'),
(15, 32, 12, 9, 3, 0, 0, 65, 100, 70, 1, '2024-12-29 13:53:01', '2024-12-29 13:53:01'),
(16, 37, 4, 7, 5, 0, 0, 75, 100, 50, 1, '2024-12-31 02:39:06', '2024-12-31 02:39:06'),
(17, 37, 4, 7, 7, 0, 0, 50, 100, 50, 1, '2024-12-31 02:39:06', '2024-12-31 02:39:06'),
(18, 37, 4, 7, 1, 0, 0, 90, 100, 70, 1, '2024-12-31 02:39:06', '2024-12-31 02:39:06'),
(19, 18, 4, 7, 5, 0, 0, 80, 100, 50, 1, '2024-12-31 02:39:18', '2024-12-31 02:39:18'),
(20, 18, 4, 7, 7, 0, 0, 90, 100, 50, 1, '2024-12-31 02:39:18', '2024-12-31 02:39:18'),
(21, 18, 4, 7, 1, 0, 0, 90, 100, 70, 1, '2024-12-31 02:39:18', '2024-12-31 02:39:18'),
(22, 32, 2, 9, 5, 0, 0, 90, 100, 75, 1, '2025-01-02 13:01:30', '2025-01-02 13:01:30'),
(23, 32, 2, 9, 7, 0, 0, 80, 100, 50, 1, '2025-01-02 13:01:30', '2025-01-02 13:01:30'),
(24, 32, 2, 9, 3, 0, 0, 90, 100, 80, 1, '2025-01-02 13:01:30', '2025-01-02 13:01:30'),
(25, 32, 2, 9, 6, 0, 0, 75, 100, 75, 1, '2025-01-02 13:01:30', '2025-01-02 13:01:30'),
(26, 30, 2, 9, 5, 0, 0, 90, 100, 75, 1, '2025-01-14 01:42:16', '2025-01-14 01:42:16'),
(27, 30, 2, 9, 7, 0, 0, 80, 100, 50, 1, '2025-01-14 01:42:16', '2025-01-14 01:42:16'),
(28, 30, 2, 9, 3, 0, 0, 90, 100, 80, 1, '2025-01-14 01:42:16', '2025-01-14 01:42:16'),
(29, 30, 2, 9, 6, 0, 0, 75, 100, 75, 1, '2025-01-14 01:42:16', '2025-01-14 01:42:16');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:not, 1:yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'JARINGAN KOMPUTER 10', 'Praktikum', 1, 0, 0, '2024-09-09 07:08:32', '2024-09-09 07:08:32'),
(2, 'JARINGAN KOMPUTER 11', 'Praktikum', 1, 0, 0, '2024-09-09 07:08:44', '2024-09-09 07:08:44'),
(3, 'JARINGAN KOMPUTER 12', 'Praktikum', 1, 0, 0, '2024-09-09 07:08:56', '2024-09-09 07:08:56'),
(4, 'Dasar-Dasar Jaringan Komputer', 'Teori', 1, 0, 0, '2024-09-09 07:10:11', '2024-12-19 14:21:19'),
(5, 'Pendidikan Kewarganegaraan (PKN)', 'Teori', 1, 0, 0, '2024-09-09 07:10:57', '2024-09-09 07:10:57'),
(6, 'Bahasa Indonesia', 'Teori', 1, 0, 0, '2024-09-09 07:11:18', '2024-09-09 07:11:18'),
(7, 'Matematika', 'Teori', 1, 0, 0, '2024-09-09 07:11:37', '2024-09-09 07:11:37'),
(8, 'Administrasi Perkantoran', 'Teori', 1, 0, 0, '2024-09-09 07:12:26', '2024-09-09 07:12:26'),
(9, 'Komunikasi Bisnis', 'Praktikum', 1, 0, 0, '2024-09-09 07:12:48', '2024-09-09 07:12:48'),
(10, 'Etika Bisnis dan Hukum Perkantoran', 'Teori', 1, 0, 0, '2024-09-09 07:13:07', '2024-09-09 07:13:07'),
(11, 'Manajemen Perhotelan', 'Teori', 1, 0, 0, '2024-09-09 07:14:03', '2024-09-09 07:14:03'),
(12, 'F&B Service (Food and Beverage Service)', 'Praktikum', 1, 0, 0, '2024-09-09 07:14:21', '2024-09-09 07:14:21'),
(13, 'Layanan Pelanggan', 'Praktikum', 1, 0, 1, '2024-09-09 07:14:39', '2024-12-19 14:21:21'),
(14, 'web dev', 'Praktikum', 1, 0, 1, '2024-12-19 13:49:20', '2024-12-19 13:49:42'),
(15, 'sistem informasi', 'Praktikum', 1, 0, 0, '2024-12-26 09:16:35', '2024-12-26 09:16:35'),
(16, 'mencium sabun lux', 'Praktikum', 1, 0, 1, '2024-12-31 02:17:59', '2024-12-31 02:18:11'),
(17, 'Jahitan', 'Praktikum', 1, 0, 1, '2025-01-01 16:06:23', '2025-01-01 16:06:26');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$72FYPtGHPP1jy6wvmIkvwOf4daPzSiLCEw.e3olyTbuL419H14XLW', NULL, '2025-01-15 07:26:46', '2025-01-15 07:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id`, `name`, `created_at`, `update_at`) VALUES
(1, 'Senin', NULL, NULL),
(2, 'Selasa', NULL, NULL),
(3, 'Rabu', NULL, NULL),
(4, 'Kamis', NULL, NULL),
(5, 'Jumat', NULL, NULL),
(6, 'Sabtu', NULL, NULL),
(7, 'Minggu', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assign_class_teacher`
--
ALTER TABLE `assign_class_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_teacher_subject`
--
ALTER TABLE `assign_teacher_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject_timetable`
--
ALTER TABLE `class_subject_timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_schedule`
--
ALTER TABLE `exam_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `marks_grade`
--
ALTER TABLE `marks_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks_register`
--
ALTER TABLE `marks_register`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
