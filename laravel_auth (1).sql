-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2021 at 05:16 AM
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apply_for_companies`
--

INSERT INTO `apply_for_companies` (`id`, `s_name`, `email`, `b_name`, `c_name`, `cpi`, `c_back`, `p_10`, `p_12`, `dip`, `d_cgpa`, `resume`, `created_at`, `updated_at`) VALUES
(3, '3', 'ravi@gmail.com', 'IT', 'Wipro', '8.55', '0', '66', '66', 'no', '-', '1613548718.pdf', '2021-02-17 02:28:38', '2021-02-17 02:28:38'),
(4, '3', 'ravi@gmail.com', 'CE', 'Tcs', '9.55', '20', '88', '99', 'no', '-', '1613548736.pdf', '2021-02-17 02:28:56', '2021-02-17 02:28:56');

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
(2, '2021-02-15 07:17:19', '2021-02-18 23:46:52', 'mehul1', 'IT', 8, 'python', '2021-02-19', '1613393239.pdf', '', ''),
(4, '2021-02-19 00:05:25', '2021-02-19 00:05:25', 'mehul', 'IT', 7, 'ai', '2021-02-28', '1613712925.pdf', '', ''),
(5, '2021-02-19 00:38:03', '2021-02-19 00:38:03', 'mehul', 'IT', 8, 'python 1', '2021-02-27', '1613714883.pdf', '10', 'hello my friend this is assignment of python practice programs\r\nso all student should have to submit this program with output.');

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
(6, '2021-02-16 01:00:53', '2021-02-16 01:00:53', 'abc', 'abc.com', 'ce', 'Active', '6541239871', 'INFORMATION TECHNOLOGY', 'cvv', '1613457053.pdf'),
(7, '2021-02-16 01:43:59', '2021-02-16 01:43:59', 'hsrh', 'ftyr.in', 'gggggg', 'Active', '7894561230', 'PRODUCTION ENGINEERING', 'tyutfu', '1613459639.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'mehul', 'parmar', 'mehul@gmail.com', '2021-02-14', '12345678', '12345678', '9898989898', 'Male', 'manager', 'IT', '2021-02-14', 'B.E.', '5 year', 'PHP', 'botad', '1613309816.jpg', '2021-02-14 08:06:56', '2021-02-14 08:06:56');

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
('4qPLJPPsRWnU9rwC1WhWWNbh6ILnaMzXf1dpQw3E', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiVFg0eEwyUmJrdXpNNkpZM2M1VmV0T3hqcnRSU0xQYUlYNlBXM29SZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6MTk6ImFzc2lnbm1lbnRfdXBsb2FkZWQiO31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvc3R1ZGVudC9zdWJtaXRfYXNzaWdubWVudF9zdHVkZW50Ijt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDhUUVBOUnZKWUU5NGRYc1ZlMXpMVHVWaUlRM3k2anVDTDNxNVNFcVJBRXFjY3VYZ1BRb2tlIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ4VFFQTlJ2SllFOTRkWHNWZTF6TFR1VmlJUTN5Nmp1Q0wzcTVTRXFSQUVxY2N1WGdQUW9rZSI7czoxOToiYXNzaWdubWVudF91cGxvYWRlZCI7czozNDoiQXNzaWdubWVudCBIYXMgQmVlbiBVcGxvYWRlZC4uLi4uISI7fQ==', 1613725676);

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
(3, 'ravi2', 'parmar', 'ravi@gmail.com', '0123456789', NULL, '9876543210', 'Gender', 'IT', '2021-02-15', 'botad', '1613369401.jpg', '2021-02-15 00:40:01', '2021-02-16 01:05:06', '170210116043');

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
(1, 'Python', '19-02-2021', '1613722259.pdf', '2021-02-19 02:40:59', '2021-02-19 02:40:59', ''),
(2, 'AI', '19-02-2021', '1613725174.pdf', '2021-02-19 03:29:34', '2021-02-19 03:29:34', '3'),
(3, 'Python', '19-02-2021', '1613725477.pdf', '2021-02-19 03:34:37', '2021-02-19 03:34:37', '3'),
(4, 'Python', '19-02-2021', '1613725577.pdf', '2021-02-19 03:36:17', '2021-02-19 03:36:17', '3'),
(5, 'Python', '19-02-2021', '1613725589.pdf', '2021-02-19 03:36:29', '2021-02-19 03:36:29', '3'),
(6, 'Python', '19-02-2021', '1613725676.pdf', '2021-02-19 03:37:56', '2021-02-19 03:37:56', '3');

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
(2, 'mehul', 'mehul@gmail.com', NULL, '$2y$10$DJvGcCiKARYCeZffU6nAAesBfh1EUh4lIicyAW8Qd5jwNi/cAsQv.', NULL, NULL, NULL, NULL, NULL, 'FAC', '2021-02-14 08:06:56', '2021-02-14 08:06:56'),
(4, 'mehul1', 'mehul1@gmail.com', NULL, '$2y$10$USPBUL3xl4gZMDt6CdnHCuu.mWRPF5XsyvTmQvu8qNySOMxiHCGQa', NULL, NULL, NULL, NULL, NULL, 'STU', '2021-02-14 08:15:32', '2021-02-14 08:15:32'),
(5, '3', 'ravi@gmail.com', NULL, '$2y$10$8TQPNRvJYE94dXsVe1zLTuViIQ3y6juCL3q5SEqRAEqccuXgPQoke', NULL, NULL, NULL, NULL, NULL, 'STU', '2021-02-15 00:40:01', '2021-02-16 01:05:06'),
(7, 'jay', 'jay@gmail.com', NULL, '$2y$10$SHyyFK6pdx1sTzTC2PP/SOhF/lF/4VVohZDWD8Kbe6ECVv2xWuT4G', NULL, NULL, NULL, NULL, NULL, 'STU', '2021-02-15 04:47:36', '2021-02-15 04:47:36'),
(8, 'gh', 'ghl@gmail.com', NULL, '$2y$10$NTz32d7pWVTJkxkWPdY3HOOPjsOJcd1pMMUUILqtYaC05L9ejcKTq', NULL, NULL, NULL, NULL, NULL, 'STU', '2021-02-15 05:15:53', '2021-02-15 05:15:53');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload_assignments`
--
ALTER TABLE `upload_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
