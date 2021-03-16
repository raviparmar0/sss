-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2021 at 04:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `apply_for_companies`
--

CREATE TABLE `apply_for_companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_back` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_cgpa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resume` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `e_number` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply_for_companies`
--

INSERT INTO `apply_for_companies` (`id`, `s_name`, `email`, `b_name`, `c_name`, `cpi`, `c_back`, `p_10`, `p_12`, `dip`, `d_cgpa`, `resume`, `created_at`, `updated_at`, `e_number`, `year`) VALUES
(8, 'mehul parmar', 'student@gmail.com', 'COMPUTER ENGINEERING', 'cybercom', '10', '0', '74.72', '89', 'No', '4.2', '170210116042.pdf', '2021-02-21 08:46:24', '2021-02-21 08:46:24', '170210116042', ''),
(9, 'mehul parmar', 'student@gmail.com', 'COMPUTER ENGINEERING', 'cybercom', '9', '0', '89.12', '89.65', 'Yes', '8.9', '170210116042.pdf', '2021-02-21 08:53:04', '2021-02-21 08:53:04', '170210116042', '');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(255) NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dis` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `created_at`, `updated_at`, `f_name`, `d_name`, `semester`, `a_name`, `due_date`, `file`, `point`, `dis`) VALUES
(10, '2021-02-21 06:39:07', '2021-02-21 06:53:02', 'mehul', 'ELECTRONINCS & COMMUNICATION', 5, 'python', '2021-02-21', '1613909347.png', '10', 'first Assignment');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `b_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `b_name`, `seats`, `created_at`, `updated_at`) VALUES
(1, 'INFORMATION TECHNOLOGY', '60', '2021-02-14 08:07:18', '2021-02-14 08:07:18'),
(2, 'COMPUTER ENGINEERING', '60', '2021-02-14 08:07:25', '2021-02-14 08:07:25'),
(3, 'MECHANICAL ENGINEERING', '120', '2021-02-14 08:07:32', '2021-02-14 08:07:32'),
(4, 'ELECTRONINCS & COMMUNICATION', '120', '2021-02-14 08:07:46', '2021-02-14 08:07:46'),
(5, 'CIVIL ENGINEERING', '120', '2021-02-14 08:07:55', '2021-02-14 08:07:55'),
(8, 'PRODUCTION ENGINEERING', '120', '2021-02-15 05:14:15', '2021-02-15 05:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `c_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `created_at`, `updated_at`, `c_name`, `website`, `type`, `status`, `phone`, `b_name`, `address`, `file`) VALUES
(8, '2021-02-21 07:08:58', '2021-02-21 07:10:00', 'cybercom', 'www.cybercom.com', 'IT', 'Active', '9081863659', 'ELECTRONINCS & COMMUNICATION', 'botad', '1613911138.jpg'),
(10, '2021-03-07 04:55:47', '2021-03-07 04:55:47', 'rweyhwes', 'suu.in', 'IT', 'Active', '1234567890', 'INFORMATION TECHNOLOGY', 'jtdfc', '1615112747.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_date` date NOT NULL,
  `e_date` date NOT NULL,
  `dis` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `created_at`, `updated_at`, `e_name`, `s_date`, `e_date`, `dis`, `file`) VALUES
(6, '2021-03-08 05:17:21', '2021-03-13 06:52:15', 'Women Empowerment', '2021-03-08', '2021-03-08', 'We Women Development Cell has organized a webinar on \"Women Empowerment - Fueling Growth” by Ms Ruzan Khambhtta, Chairman Wajra O\'force Empowerment Foundation on Women’s Day 08/03/2021 from 2.40 to 3.40 pm. All girl students and female staff are invited to join to get advantage. Google meet link to attend webinar is: https://meet.google.com/goc-njcq-njw', '1615200441.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `join_date` date NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_confirmation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `m_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `qualification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `f_name`, `l_name`, `email`, `join_date`, `password`, `password_confirmation`, `m_number`, `gender`, `designation`, `department`, `dob`, `qualification`, `experience`, `interest`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(3, 'mehul', 'parmar', 'mehul@gmail.com', '2021-02-21', '12345678', '12345678', '9632587412', 'Male', 'B.E.', 'INFORMATION TECHNOLOGY', '2021-02-21', 'B.E.', '5 Year', 'PHP', 'botad', '1613899355.jpg', '2021-02-21 03:52:35', '2021-02-21 03:52:35'),
(4, 'ravi', 'parmar', 'user1@gmail.com', '2021-02-21', '12345678', '12345678', '1234567896', 'Gender', 'B.E.', 'COMPUTER ENGINEERING', '2021-02-21', 'B.E.', '5 Year', '.Net', 'Botad', '1613899428.jpg', '2021-02-21 03:53:48', '2021-02-21 03:53:48'),
(5, 'mahendra', 'parmar', 'mahendra@gmail.com', '2021-02-21', '12345678', '12345678', '9632587412', 'Male', 'B.E.', 'ELECTRONINCS & COMMUNICATION', '2021-02-21', 'B.E.', '5 Year', 'PHP', 'botad', '1613899823.jpg', '2021-02-21 04:00:23', '2021-02-21 04:00:23');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_24_155817_create_sessions_table', 1),
(7, '2020_12_27_045412_create_faculties_table', 1),
(8, '2020_12_31_130205_create_branches_table', 1),
(9, '2020_12_31_131701_create_students_table', 1),
(10, '2020_12_31_131734_create_assignments_table', 1),
(11, '2020_12_31_132024_create_companies_table', 1),
(12, '2021_01_02_115627_create_events_table', 1),
(13, '2021_02_17_065936_create_apply_for_companies_table', 2),
(14, '2021_02_19_074814_create_upload_assignments_table', 3);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `selected_students`
--

CREATE TABLE `selected_students` (
  `id` int(11) NOT NULL,
  `s_name` varchar(40) NOT NULL,
  `b_name` varchar(255) NOT NULL,
  `e_number` varchar(12) NOT NULL,
  `c_name` varchar(50) NOT NULL,
  `year` int(6) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selected_students`
--

INSERT INTO `selected_students` (`id`, `s_name`, `b_name`, `e_number`, `c_name`, `year`, `updated_at`, `created_at`) VALUES
(1, 'PARMAR MEHUL L.', 'ELECTRONINCS & COMMUNICATION', '170210116042', 'CYBERCOM', 2020, '2021-03-13 07:36:10', '2021-03-13 07:36:10'),
(2, 'PARMAR MEHUL L.', 'ELECTRONINCS & COMMUNICATION', '170210116040', 'abc', 2020, '2021-03-13 07:43:43', '2021-03-13 07:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('g52sEebQSuDnn6K1EjUoihXctTlksIrIwGmlUs1e', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREFIOXZRWHl0d2J0M2xkM2NlUHI2czNqSzlobXRPTkZic3hDUktycyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1615729805),
('RezGqqjJUISYMYdy7M3xiTZJuWAA43EeA7BHHO6t', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOGRtdk56SloydkJzQ09GQm5QbElaSGFXUW9TSmlxZmxZYU9JZmVmRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1615804168);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_confirmation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `m_number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `e_number` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `f_name`, `l_name`, `email`, `password`, `password_confirmation`, `m_number`, `gender`, `department`, `dob`, `address`, `photo`, `created_at`, `updated_at`, `e_number`) VALUES
(10, 'mehul', 'parmar', 'student@gmail.com', '123', NULL, '9632587412', 'Gender', 'COMPUTER ENGINEERING', '4152-12-04', '1245789632', '1613905101.jpg', '2021-02-21 05:28:21', '2021-02-21 06:54:37', '170210116042');

-- --------------------------------------------------------

--
-- Table structure for table `upload_assignments`
--

CREATE TABLE `upload_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_file` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `s_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_assignments`
--

INSERT INTO `upload_assignments` (`id`, `a_name`, `c_date`, `s_file`, `created_at`, `updated_at`, `s_name`) VALUES
(11, 'python', '21-02-2021', '170210116042_python.pdf', '2021-02-21 08:09:12', '2021-02-21 08:09:12', 'mehul parmar');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'STU' COMMENT 'STU for student, FAC for Faculty, ADM for Admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$e9NFm3d4.h8QInaCoOj0tub2JmKAYOrdH/rRFFmGS.Xn6ParxFOPm', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-02-14 08:04:40', '2021-02-14 08:04:40'),
(10, 'mehul', 'mehul@gmail.com', NULL, '$2y$10$oqjQtpM8kNSMgKjEjwu5MepKqSjZgIs16juBbUmg7xsAoiaYXIDyS', NULL, NULL, NULL, NULL, NULL, 'FAC', '2021-02-21 03:52:35', '2021-02-21 03:52:35'),
(12, 'mahendra', 'mahendra@gmail.com', NULL, '$2y$10$X2yAVovTwQLjzUMZ3cy.YOsPXJywF8cunUoUhwd4mZqFPcou61Y0i', NULL, NULL, NULL, NULL, NULL, 'FAC', '2021-02-21 04:00:23', '2021-02-21 04:00:23'),
(16, 'mehul', 'student@gmail.com', NULL, '$2y$10$QccfOPZItic8HehhmrjDRu4GNzfCFl67D6xHTBWBxWWqGOnFXIYp.', NULL, NULL, NULL, NULL, NULL, 'STU', '2021-02-21 05:28:21', '2021-02-21 06:54:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apply_for_companies`
--
ALTER TABLE `apply_for_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `selected_students`
--
ALTER TABLE `selected_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_assignments`
--
ALTER TABLE `upload_assignments`
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
-- AUTO_INCREMENT for table `apply_for_companies`
--
ALTER TABLE `apply_for_companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selected_students`
--
ALTER TABLE `selected_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `upload_assignments`
--
ALTER TABLE `upload_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
