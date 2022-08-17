-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2022 at 11:54 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `framework`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'administrator'),
(2, 'dosen', 'konfirmasi proker'),
(3, 'user', 'meminta konfirmasi\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(2, 3),
(3, 1),
(3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(2, 8),
(3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '127.0.0.1', 'asd@gmail.com', NULL, '2022-08-14 08:56:17', 0),
(2, '127.0.0.1', 'admin@gmail.com', 2, '2022-08-14 13:31:53', 0),
(3, '127.0.0.1', 'user@gmail.com', 4, '2022-08-14 13:52:03', 0),
(4, '127.0.0.1', 'user@gmail.com', 5, '2022-08-14 13:56:39', 0),
(5, '127.0.0.1', 'user@gmail.com', 5, '2022-08-14 14:25:53', 0),
(6, '127.0.0.1', 'hpujiono1@gmail.com', 6, '2022-08-15 22:13:01', 0),
(7, '127.0.0.1', 'hpujiono1@gmail.com', 7, '2022-08-15 22:17:24', 1),
(8, '127.0.0.1', 'hpujiono1@gmail.com', 7, '2022-08-15 22:24:38', 1),
(9, '127.0.0.1', 'hpujiono1@gmail.com', 7, '2022-08-15 22:44:36', 1),
(10, '127.0.0.1', 'hpujiono1@gmail.com', 7, '2022-08-15 22:45:10', 1),
(11, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:00:59', 1),
(12, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:02:14', 1),
(13, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:03:42', 1),
(14, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:04:15', 1),
(15, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:04:26', 1),
(16, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:05:22', 1),
(17, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:09:59', 1),
(18, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 00:11:45', 1),
(19, '127.0.0.1', 'user@gmail.com', NULL, '2022-08-16 00:35:49', 0),
(20, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 00:36:02', 1),
(21, '127.0.0.1', 'dosen@gmail.com', NULL, '2022-08-16 01:54:06', 0),
(22, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 01:54:21', 1),
(23, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 01:55:09', 1),
(24, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 02:00:46', 1),
(25, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 07:21:46', 1),
(26, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 11:39:14', 1),
(27, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 11:44:32', 1),
(28, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 13:12:34', 1),
(29, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 13:25:36', 1),
(30, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 13:39:20', 1),
(31, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 13:40:17', 1),
(32, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 13:50:07', 1),
(33, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 14:04:28', 1),
(34, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 17:56:56', 1),
(35, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 18:12:52', 1),
(36, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 18:27:06', 1),
(37, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 18:27:27', 1),
(38, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 18:27:59', 1),
(39, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 18:30:29', 1),
(40, '127.0.0.1', 'user@gmail.com', NULL, '2022-08-16 18:40:45', 0),
(41, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 18:40:54', 1),
(42, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-16 18:42:31', 1),
(43, '127.0.0.1', 'user@gmail.com', 9, '2022-08-16 18:42:44', 1),
(44, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-17 02:10:23', 1),
(45, '127.0.0.1', 'user@gmail.com', 9, '2022-08-17 02:11:26', 1),
(46, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-17 02:50:20', 1),
(47, '127.0.0.1', 'user@gmail.com', 9, '2022-08-17 04:12:20', 1),
(48, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-17 04:13:23', 1),
(49, '127.0.0.1', 'user@gmail.com', 9, '2022-08-17 04:31:09', 1),
(50, '127.0.0.1', 'admin@gmail.com', 8, '2022-08-17 04:31:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-status', 'mange status page'),
(2, 'manage-upload', 'manage upload page'),
(3, 'manage-pengajuan', 'manage pengajuan page');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1660482668, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `pengaju` varchar(100) NOT NULL,
  `judul_pengajuan` varchar(100) NOT NULL,
  `slug_pengajuan` varchar(100) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `status_pengajuan` varchar(100) NOT NULL DEFAULT 'Pending',
  `keterangan_pengajuan` varchar(100) NOT NULL,
  `file_pengajuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `pengaju`, `judul_pengajuan`, `slug_pengajuan`, `created_at`, `updated_at`, `status_pengajuan`, `keterangan_pengajuan`, `file_pengajuan`) VALUES
(1, 'HIMATIFTA', 'gataw', 'gataw', '2022-08-17', '2022-08-17', 'decline', 'gataw', 'INI ADALAH PROKER WORKSHOP JARINGAN.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'admin@gmail.com', 'dosen', 'default.png', '$2y$10$5HP/p1TDKvnYgo6oz1MjA.owtmiOoYO7FHhiDZ41lGf6BQLwMdxDu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-16 00:00:40', '2022-08-16 00:00:40', NULL),
(9, 'user@gmail.com', 'user', 'default.png', '$2y$10$.DfjNc/Y943fDHfvdBao9uvSm1PAfkttTzC88rtm7GZghVLdxcJIa', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2022-08-16 00:35:38', '2022-08-16 00:35:38', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
