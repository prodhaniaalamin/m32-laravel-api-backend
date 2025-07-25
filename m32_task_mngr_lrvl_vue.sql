-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2025 at 05:54 PM
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
-- Database: `m32_task_mngr_lrvl_vue`
--

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_21_132940_create_personal_access_tokens_table', 2),
(5, '2025_07_21_134745_create_tasks_table', 3);

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
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', 'cc263400df48454653fbbeb5f892553e404d26f5fe02cad544b14d103cd15210', '[\"*\"]', NULL, NULL, '2025-07-21 08:48:04', '2025-07-21 08:48:04'),
(2, 'App\\Models\\User', 1, 'auth_token', '6ea18fc14ffc4d1dfac70b6a7dc021af03029ea54f0dc7a3e6a94b64e6ae04b4', '[\"*\"]', NULL, NULL, '2025-07-21 08:58:35', '2025-07-21 08:58:35'),
(3, 'App\\Models\\User', 1, 'auth_token', 'fb65ebacf1c1d08b5ffa1554bf172841e80ec578bdab1f3e19ed19fc8bdda676', '[\"*\"]', '2025-07-21 09:06:37', NULL, '2025-07-21 09:02:17', '2025-07-21 09:06:37'),
(4, 'App\\Models\\User', 2, 'auth_token', '942b954aa4b86d0c5f43afcd8628e402ca1948f0403a39dad0a3c2cfee57195d', '[\"*\"]', NULL, NULL, '2025-07-21 10:59:00', '2025-07-21 10:59:00'),
(5, 'App\\Models\\User', 3, 'auth_token', 'bb76eb80df9ea2a683d4d8fd5afcbce44d4db94e47ec170009d7dc4cf0964c65', '[\"*\"]', NULL, NULL, '2025-07-21 10:59:21', '2025-07-21 10:59:21'),
(6, 'App\\Models\\User', 2, 'auth_token', '9c85dc59752fcb8af3aa59047650082120deaa28104f71bb3dc74c190a77796f', '[\"*\"]', '2025-07-21 11:02:17', NULL, '2025-07-21 10:59:49', '2025-07-21 11:02:17'),
(7, 'App\\Models\\User', 3, 'auth_token', '913f4a0a6749893cdeffd606eaba012ef882f45fb8ef994767a38d42cd006148', '[\"*\"]', '2025-07-21 11:03:03', NULL, '2025-07-21 11:02:38', '2025-07-21 11:03:03'),
(8, 'App\\Models\\User', 1, 'auth_token', '4ef072204bb9db833735c5481d7d53d9a9e41e11655186d3ed423189996f5ebf', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:09', '2025-07-21 12:04:09'),
(9, 'App\\Models\\User', 1, 'auth_token', '2c9cf842791bd2e6de46d68704e6554fe201c780f14b5bce5c7c4ba93606e03c', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:10', '2025-07-21 12:04:10'),
(10, 'App\\Models\\User', 1, 'auth_token', '069ac0d658b26e20ee1b88ad57ee0ec5c388234f25a1adc386026751c9711fa4', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:10', '2025-07-21 12:04:10'),
(11, 'App\\Models\\User', 1, 'auth_token', 'f33eecc8bdad1dcaab71535644bd3fae2dbbf4b97211ca4ba0de9c3de8962d40', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:11', '2025-07-21 12:04:11'),
(12, 'App\\Models\\User', 1, 'auth_token', 'e7b309dc8c84e4b16fa86b53a7a3b611dc5b262fce2f90cac8078fbe488c6409', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:11', '2025-07-21 12:04:11'),
(13, 'App\\Models\\User', 1, 'auth_token', 'a2b5e91e1441cc0c28f40e2f0385c17ddc4fc2ad9f65bf6db8808f31530e350a', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:12', '2025-07-21 12:04:12'),
(14, 'App\\Models\\User', 1, 'auth_token', 'c7c30912feae364bd760801f303456ac84215571ec7040a819ae954fe1bb4779', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:12', '2025-07-21 12:04:12'),
(15, 'App\\Models\\User', 1, 'auth_token', 'd3ec7b9eb2302e72822f0669e17dbb751bf145294d64e6fa02648a945a0d5a27', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:12', '2025-07-21 12:04:12'),
(16, 'App\\Models\\User', 1, 'auth_token', '9d3a1160c7241978bcfa111597f8e529d74462e339202ce4cdcb2f2f0d3c29bf', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:13', '2025-07-21 12:04:13'),
(17, 'App\\Models\\User', 1, 'auth_token', 'c7682b1d11a8095a47dc0bb88b62bacd014810659839590317368db62f03fa28', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:14', '2025-07-21 12:04:14'),
(18, 'App\\Models\\User', 1, 'auth_token', 'bef165ebc1c84797a1c782e462260f54db2b4dae7f0e7b93bb7530dc3bebde38', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:14', '2025-07-21 12:04:14'),
(19, 'App\\Models\\User', 1, 'auth_token', '322d7f3807466883316e584e171eb68929eee29bf0171afdc30367bd969966d8', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:15', '2025-07-21 12:04:15'),
(20, 'App\\Models\\User', 1, 'auth_token', '2caa1d70870cdb8977c66b0e1bfd395445413f3f64dccc2095c10def41587930', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:15', '2025-07-21 12:04:15'),
(21, 'App\\Models\\User', 1, 'auth_token', 'fe420ee39ab51e4ef6286015408950b0b3396299d2120b17e07c72ce515a72ef', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:16', '2025-07-21 12:04:16'),
(22, 'App\\Models\\User', 1, 'auth_token', '77e920944dd520b84a395ebe46d0786402b2cf62ae378604279ed642c6b714a5', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:16', '2025-07-21 12:04:16'),
(23, 'App\\Models\\User', 1, 'auth_token', '3a186e24650c7860b662799f2ff73c7b3ef2a2f6f75028f24157b14647446d1c', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:16', '2025-07-21 12:04:16'),
(24, 'App\\Models\\User', 1, 'auth_token', '9c9b0646620e7a44275be58eb0ea761dbd1a54676b5a31caa68e17e5788515ea', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:17', '2025-07-21 12:04:17'),
(25, 'App\\Models\\User', 1, 'auth_token', '6e18fbed092fe4a1eceae37d41fe85f03de7471be54f7d06763a8249d2b14732', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:17', '2025-07-21 12:04:17'),
(26, 'App\\Models\\User', 1, 'auth_token', '131d3570cef2ebc9b9fe76f706b275f4785a915af13446934cdc8b8b6370842c', '[\"*\"]', NULL, NULL, '2025-07-21 12:04:18', '2025-07-21 12:04:18'),
(27, 'App\\Models\\User', 4, 'auth_token', '2a560cd27125e93bd611703cd0b78e1219598cef1d8274fc568a1e2a656eaf63', '[\"*\"]', '2025-07-21 12:35:04', NULL, '2025-07-21 12:04:53', '2025-07-21 12:35:04'),
(37, 'App\\Models\\User', 4, 'auth_token', 'be61cc6d4a349e5ce0092dbefb657e5a82b64a00f37f856b1d5c5b4c1b18aead', '[\"*\"]', '2025-07-25 09:54:04', NULL, '2025-07-21 13:45:12', '2025-07-25 09:54:04'),
(39, 'App\\Models\\User', 1, 'auth_token', '20b3e89423aaa99dfc5d7ee377c29e2bb907b8d98cade4ecbab2129d1a1d61d9', '[\"*\"]', '2025-07-21 14:10:56', NULL, '2025-07-21 14:10:23', '2025-07-21 14:10:56');

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
('nbJ4Mdfc33PjPw71gNT2YZva012lsnzB9jPtcwyE', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjhNOWJUSnNxU3Zoa2JnMDRQa2t2VmttMFJ2Q2dqWGtEenFNbDd2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1753458774);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `user_id`, `title`, `description`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'My First Task', 'This is a test task created from Postman.', 'pending', '2025-07-21 13:51:15', '2025-07-21 09:06:37', '2025-07-21 13:51:15'),
(2, 2, 'This is Jhon First Task', 'This is a test task created from Postman. Jhon', 'completed', NULL, '2025-07-21 11:02:17', '2025-07-21 13:33:53'),
(3, 3, 'This is Mike First Task', 'This is a test task created from Postman. Jhon', 'pending', NULL, '2025-07-21 11:03:03', '2025-07-21 11:03:03'),
(4, 1, 'title 1', 'title 1 description', 'completed', NULL, '2025-07-21 13:30:09', '2025-07-21 13:34:29'),
(5, 4, 'lisa title 1', 'lisa description  1', 'pending', NULL, '2025-07-21 13:45:44', '2025-07-21 13:45:44'),
(6, 3, 'টাস্ক ২', 'টাস্ক ২ বিবরণ', 'completed', NULL, '2025-07-21 14:08:09', '2025-07-21 14:08:18');

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
(1, 'Alamin Prodhania', 'admin@gmail.com', NULL, '$2y$12$USZvMbt81v5fskYhMeb7t.yyF9oicPkcpaAUWqVeLUrVJiEKzuNvO', NULL, '2025-07-21 08:48:04', '2025-07-21 08:48:04'),
(2, 'Jhon', 'jhon@gmail.com', NULL, '$2y$12$KpiojPEif.xn/UIA3fuQl.9u/hH/1ajcG9XAXMYiTASB3uPjUFVfy', NULL, '2025-07-21 10:59:00', '2025-07-21 10:59:00'),
(3, 'Mike', 'mike@gmail.com', NULL, '$2y$12$rOGQyPvIpUcRmljW0/XlA.k8K4SXW5DHsgcHjyd0FLjzUdM5wdRbC', NULL, '2025-07-21 10:59:21', '2025-07-21 10:59:21'),
(4, 'lisa', 'lisa@gmail.com', NULL, '$2y$12$sRK.UMcLpfDF9I1P0x43uefRLPU4ndOUrzrjKdkZKj6RZ5TOohF2G', NULL, '2025-07-21 12:04:53', '2025-07-21 12:04:53'),
(5, 'test1', 'test@gmail.com', NULL, '$2y$12$EOjeC2Wuk4KogkXlRJiq8O2C.QJf4MasHjxb9BuWz9d8ZqNbjNHMW', NULL, '2025-07-21 12:38:36', '2025-07-21 12:38:36');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
