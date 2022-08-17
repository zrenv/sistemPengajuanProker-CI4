-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 17, 2022 at 11:58 AM
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
(2, 'HIMATIFTA', 'Est debitis amet.', 'est-debitis-amet', '1989-03-27', '2022-08-17', 'Pending', 'Quia omnis qui at nulla.', '50329680-0a13-3a36-9d61-26123ca31017.pdf'),
(3, 'HIMA GEO', 'Laborum omnis iusto.', 'laborum-omnis-iusto', '2021-12-05', '2022-08-17', 'Pending', 'Unde eos et qui rerum.', '664680f1-118c-3e75-a936-7d309eaaebbc.pdf'),
(4, 'HIMA SIPIL', 'Et voluptatem nam.', 'et-voluptatem-nam', '1999-09-18', '2022-08-17', 'Pending', 'Rerum et eaque eaque aut.', '37a3888c-804a-343f-80e8-e24a3b6f89fc.pdf'),
(5, 'HIMA SIPIL', 'Rem illum in fugiat.', 'rem-illum-in-fugiat', '1993-02-04', '2022-08-17', 'Pending', 'Eum quia qui et harum ea.', 'db370fe5-8c43-3e07-b7de-7674499475a6.pdf'),
(6, 'HIMA GEO', 'Beatae molestiae.', 'beatae-molestiae', '1985-09-17', '2022-08-17', 'Pending', 'Aut dolor rem maiores ut.', 'f3bc8351-acb8-3a63-b75c-e832059b661f.pdf'),
(7, 'HIMA GEO', 'Ullam sapiente.', 'ullam-sapiente', '1984-12-24', '2022-08-17', 'Pending', 'Et est quia qui at.', 'c660cd55-08ef-34f3-8c16-05ca7b1e79c9.pdf'),
(8, 'HIMA GEO', 'Voluptatem vitae.', 'voluptatem-vitae', '1998-07-17', '2022-08-17', 'Pending', 'Et hic ipsa vel.', 'd49ed0b8-79de-3539-9a91-1ead9b211427.pdf'),
(9, 'HIMA SIPIL', 'Porro et quia.', 'porro-et-quia', '1971-11-02', '2022-08-17', 'Pending', 'Ab incidunt et ad ut dolore.', 'deea57dc-d074-3a81-8c31-143909d151b3.pdf'),
(10, 'HIMA SIPIL', 'Voluptatem qui illo.', 'voluptatem-qui-illo', '2004-06-18', '2022-08-17', 'Pending', 'Quo voluptatem et animi.', '52985171-2eab-33e1-a0b2-5af2c877fd13.pdf'),
(11, 'HIMA SIPIL', 'Corporis tenetur.', 'corporis-tenetur', '1976-10-14', '2022-08-17', 'Pending', 'Fugit excepturi et iste sed.', '1162aaac-4024-3fa3-b7f9-b347e0dc4102.pdf'),
(12, 'HIMATIFTA', 'Debitis qui laborum.', 'debitis-qui-laborum', '1972-02-25', '2022-08-17', 'Pending', 'Iste fugiat est reiciendis.', '3ccd8f81-28b6-31cb-854e-73aa4c8e7d3e.pdf'),
(13, 'HIMATIFTA', 'Voluptates debitis.', 'voluptates-debitis', '2007-11-23', '2022-08-17', 'Pending', 'Aut architecto omnis eaque.', '23ed839e-2034-3a4b-a9a6-c1df8877c391.pdf'),
(14, 'HIMA GEO', 'Quam beatae eaque.', 'quam-beatae-eaque', '2007-01-20', '2022-08-17', 'Pending', 'Nobis dolorem qui eligendi.', '3f4f25dd-bc0a-3f7b-94d5-83e4e96d1f5f.pdf'),
(15, 'HIMA GEO', 'Deleniti voluptatem.', 'deleniti-voluptatem', '2014-05-18', '2022-08-17', 'Pending', 'Sint sunt libero omnis.', 'd1a69a21-1326-3d5f-bc3e-996114204d6d.pdf'),
(16, 'HIMA SIPIL', 'Rerum nulla.', 'rerum-nulla', '2016-01-03', '2022-08-17', 'Pending', 'Eius quis harum praesentium.', 'de8d3ee9-ee41-3be4-acaa-36df5feb8849.pdf'),
(17, 'HIMATIFTA', 'Odio mollitia.', 'odio-mollitia', '1972-03-16', '2022-08-17', 'Pending', 'Perferendis iure officiis id.', 'b86e0907-f17a-386f-9173-85d0f53467ad.pdf'),
(18, 'HIMA SIPIL', 'Neque ut laudantium.', 'neque-ut-laudantium', '1974-06-30', '2022-08-17', 'Pending', 'In voluptate quia occaecati.', 'fed697cf-6b92-35f2-aa9b-900f2fc7e02b.pdf'),
(19, 'HIMA GEO', 'Nihil debitis.', 'nihil-debitis', '2019-02-21', '2022-08-17', 'Pending', 'Mollitia omnis et sed qui.', '2e3201ee-410f-346e-bd43-611071ffab30.pdf'),
(20, 'HIMA SIPIL', 'Nulla.', 'nulla', '1993-12-21', '2022-08-17', 'Pending', 'Qui sed eum illo ut vel qui.', '96d7017e-9db6-3720-aa55-91c72ab9cf52.pdf'),
(21, 'HIMA GEO', 'Mollitia magnam rem.', 'mollitia-magnam-rem', '1982-01-23', '2022-08-17', 'Pending', 'Fugit quasi et enim eius.', '8f96bea3-39d1-3ed1-99ba-90a55a07866f.pdf'),
(22, 'HIMATIFTA', 'Rerum et animi.', 'rerum-et-animi', '1984-03-04', '2022-08-17', 'Pending', 'Quia eum illo quia labore.', '422032b7-de6b-3839-8fbf-53e5e5f8ff0a.pdf'),
(23, 'HIMA GEO', 'Ut voluptatem et.', 'ut-voluptatem-et', '1992-03-23', '2022-08-17', 'Pending', 'Qui deleniti aut et nihil.', 'd03520a1-5d27-3f2c-96ae-c89330742793.pdf'),
(24, 'HIMA SIPIL', 'Culpa debitis error.', 'culpa-debitis-error', '1994-02-13', '2022-08-17', 'Pending', 'Saepe unde ut quia.', 'eb6d45b0-dd38-3fce-a73a-1027799b4ac1.pdf'),
(25, 'HIMA GEO', 'Laudantium nesciunt.', 'laudantium-nesciunt', '2015-05-10', '2022-08-17', 'Pending', 'Et aspernatur hic quia in.', '36711df8-821f-38f0-8a31-d0fd9ff62b60.pdf'),
(26, 'HIMA SIPIL', 'Dignissimos et.', 'dignissimos-et', '2018-01-31', '2022-08-17', 'Pending', 'Non laborum assumenda aut.', '731984f8-e2e5-377f-a8fb-c3d689e75e80.pdf'),
(27, 'HIMATIFTA', 'Molestias impedit.', 'molestias-impedit', '1982-01-13', '2022-08-17', 'Pending', 'Totam magnam dolor vitae vel.', '76588f42-a55e-35ad-ac12-2a12ccc7debb.pdf'),
(28, 'HIMATIFTA', 'Sit vel fugit.', 'sit-vel-fugit', '2008-07-29', '2022-08-17', 'Pending', 'Illum alias quis quis ad vel.', 'fce99a04-2533-3bb6-a90c-21749353ffc1.pdf'),
(29, 'HIMA GEO', 'Nostrum quas quis.', 'nostrum-quas-quis', '2008-07-09', '2022-08-17', 'Pending', 'Animi deleniti et fuga.', 'a717648b-b1af-3c01-ae7d-842011cf5f4f.pdf'),
(30, 'HIMA SIPIL', 'Neque aspernatur.', 'neque-aspernatur', '2014-05-06', '2022-08-17', 'Pending', 'Officia sed ad aspernatur.', '802c775a-81ac-3837-a06a-fb09d8d5884a.pdf'),
(31, 'HIMATIFTA', 'Corporis ut.', 'corporis-ut', '2007-04-16', '2022-08-17', 'Pending', 'Sint id ut et ducimus non.', '3eb36dbf-94d0-3e79-acb3-48d4b35d4fd0.pdf'),
(32, 'HIMATIFTA', 'A consequatur non.', 'a-consequatur-non', '2018-12-10', '2022-08-17', 'Pending', 'Itaque sint repellat ut eum.', '786e006f-f87e-39f1-9e68-9292f01b7e28.pdf'),
(33, 'HIMA GEO', 'Ipsam temporibus.', 'ipsam-temporibus', '1994-03-24', '2022-08-17', 'Pending', 'Error reiciendis ullam vel.', '18eb8068-849f-34aa-8801-8b5a140f7b1f.pdf'),
(34, 'HIMATIFTA', 'Deleniti velit non.', 'deleniti-velit-non', '2002-02-26', '2022-08-17', 'Pending', 'Quas dolor minus corporis.', 'f346a9d5-35e6-32ce-a68c-7d3ebb3cdb98.pdf'),
(35, 'HIMA GEO', 'Deserunt voluptas.', 'deserunt-voluptas', '1987-03-24', '2022-08-17', 'Pending', 'Optio est aspernatur nemo.', '06f15cbd-21e4-337d-99ae-19e5fe597b14.pdf'),
(36, 'HIMA SIPIL', 'Rerum sed ea sit et.', 'rerum-sed-ea-sit-et', '1973-06-28', '2022-08-17', 'Pending', 'Molestiae eum vel velit.', '6e704b29-028a-34e2-b1d0-2af26e90baa4.pdf'),
(37, 'HIMA GEO', 'Cupiditate.', 'cupiditate', '2000-12-10', '2022-08-17', 'Pending', 'Dolores est sed quisquam sit.', '611060ec-717a-38a0-81f2-d3a795400aa1.pdf'),
(38, 'HIMATIFTA', 'Maiores vero vel.', 'maiores-vero-vel', '1978-07-18', '2022-08-17', 'Pending', 'Ut eligendi ipsam eaque.', 'ff0c43aa-db3d-3a76-95d7-ab987f79b1f4.pdf'),
(39, 'HIMATIFTA', 'Mollitia.', 'mollitia', '2011-10-30', '2022-08-17', 'Pending', 'Possimus sit cumque officiis.', '9d5c8a07-4e56-30d3-8c7c-57f4e4baad30.pdf'),
(40, 'HIMA SIPIL', 'Minima commodi eum.', 'minima-commodi-eum', '1975-10-14', '2022-08-17', 'Pending', 'Officiis sint qui ipsam vel.', 'af7f88b0-dc7f-3f5b-b97d-0835c409a36c.pdf'),
(41, 'HIMATIFTA', 'Fugiat officiis.', 'fugiat-officiis', '2000-04-06', '2022-08-17', 'Pending', 'Vel vitae qui molestiae hic.', '9cb26a29-b451-30ce-ba99-7944bc5ebe14.pdf'),
(42, 'HIMA GEO', 'Inventore nulla qui.', 'inventore-nulla-qui', '2017-04-09', '2022-08-17', 'Pending', 'Molestiae qui enim nobis et.', '1a309bb7-dd28-36c0-944f-175ee63fe93a.pdf'),
(43, 'HIMA SIPIL', 'Aut minus delectus.', 'aut-minus-delectus', '1998-01-13', '2022-08-17', 'Pending', 'Numquam est neque qui.', '020ee1a4-afc7-3604-a7d5-5fbcb0e3e569.pdf'),
(44, 'HIMATIFTA', 'Quidem pariatur ea.', 'quidem-pariatur-ea', '1979-06-05', '2022-08-17', 'Pending', 'Non ea et vitae qui sapiente.', '7f4962f6-1e9f-371f-a4aa-08d523f501c6.pdf'),
(45, 'HIMA SIPIL', 'Sit quia et qui.', 'sit-quia-et-qui', '2010-09-26', '2022-08-17', 'Pending', 'Porro rerum maxime harum.', 'a2983011-91a3-3916-b66a-e52041c29aa5.pdf'),
(46, 'HIMATIFTA', 'Velit placeat aut.', 'velit-placeat-aut', '1975-09-10', '2022-08-17', 'Pending', 'Nisi hic omnis excepturi.', 'df2ba401-5a78-392e-855c-cd4a80fbb758.pdf'),
(47, 'HIMA GEO', 'Ab nihil in aut.', 'ab-nihil-in-aut', '2000-02-08', '2022-08-17', 'Pending', 'Vel libero odit id dicta est.', 'b83764f7-9e96-3627-bd39-d9dd56a6abff.pdf'),
(48, 'HIMATIFTA', 'Corrupti.', 'corrupti', '1995-03-31', '2022-08-17', 'Pending', 'Ex porro ut sint.', '80706406-1feb-3742-83e1-fe7f812dc286.pdf'),
(49, 'HIMA GEO', 'Sit ad id libero.', 'sit-ad-id-libero', '1999-01-07', '2022-08-17', 'Pending', 'Velit odit dolore sit.', '9a82bc71-8250-39e1-8a44-7f9999ba1791.pdf'),
(50, 'HIMA SIPIL', 'Sequi tempore.', 'sequi-tempore', '2013-01-19', '2022-08-17', 'Pending', 'Aperiam vel et odit et.', '933f3835-14ca-369d-9ad0-558dd31f8e82.pdf'),
(51, 'HIMA GEO', 'Est optio cumque.', 'est-optio-cumque', '1978-08-30', '2022-08-17', 'Pending', 'Eos veniam quas maiores.', '385c5541-e355-3367-a89e-9353af79471c.pdf'),
(52, 'HIMA SIPIL', 'Nobis eos aut.', 'nobis-eos-aut', '2002-04-16', '2022-08-17', 'Pending', 'Eos dicta architecto enim id.', 'da4ae519-78bf-3cc8-b33f-60f7b4853b15.pdf'),
(53, 'HIMA SIPIL', 'Iusto aliquam unde.', 'iusto-aliquam-unde', '1986-10-02', '2022-08-17', 'Pending', 'Et velit rerum quasi vitae.', '69d22d2f-6bf0-3d9a-8095-81f159b7a1e8.pdf'),
(54, 'HIMA GEO', 'Excepturi.', 'excepturi', '2005-01-06', '2022-08-17', 'Pending', 'Libero tempore et totam.', '3238455a-f0f1-3562-82fb-0b03c80d4205.pdf'),
(55, 'HIMATIFTA', 'Et voluptas.', 'et-voluptas', '1979-04-01', '2022-08-17', 'Pending', 'Ducimus sit qui in.', 'a76f74d6-c0ed-3b46-a2f4-71008a8e7a12.pdf'),
(56, 'HIMA GEO', 'Autem voluptatibus.', 'autem-voluptatibus', '2011-12-24', '2022-08-17', 'Pending', 'Et similique at est vero.', 'e8723278-f072-378d-91f7-72e8aa018161.pdf'),
(57, 'HIMA GEO', 'Autem modi et.', 'autem-modi-et', '1983-05-31', '2022-08-17', 'Pending', 'Maxime quidem sed aut.', 'afb05c90-c92d-3cc4-96f1-0c29c76ac022.pdf'),
(58, 'HIMATIFTA', 'Qui distinctio.', 'qui-distinctio', '1998-09-07', '2022-08-17', 'Pending', 'Nobis quia alias ut totam.', '257a8497-8688-3afd-a25b-2993ef5ffefc.pdf'),
(59, 'HIMA GEO', 'Odit cum et nihil.', 'odit-cum-et-nihil', '1996-07-24', '2022-08-17', 'Pending', 'Sint quis iste dolor aut.', '4c76d6e3-a525-3ed8-bf67-10eb9c05fc57.pdf'),
(60, 'HIMA SIPIL', 'Qui dolorem sed qui.', 'qui-dolorem-sed-qui', '2003-05-28', '2022-08-17', 'Pending', 'Qui tempora saepe soluta aut.', '1f061a9e-c31a-3fc5-b178-495dbc12e138.pdf'),
(61, 'HIMATIFTA', 'Nesciunt corrupti.', 'nesciunt-corrupti', '1975-07-27', '2022-08-17', 'Pending', 'Saepe qui rerum iure.', 'c6a47296-a8bd-3555-bf52-702f1205effc.pdf'),
(62, 'HIMA GEO', 'Odit fuga explicabo.', 'odit-fuga-explicabo', '1979-01-19', '2022-08-17', 'Pending', 'Tenetur enim autem animi in.', '1b5ec1d6-0773-3ebe-8f7b-ba6157027e0d.pdf'),
(63, 'HIMA SIPIL', 'Quod a fuga numquam.', 'quod-a-fuga-numquam', '1975-03-10', '2022-08-17', 'Pending', 'Laborum et error aut et.', '8f2c8717-b0dc-3574-b90c-86da08ecfa1b.pdf'),
(64, 'HIMATIFTA', 'Voluptatem itaque.', 'voluptatem-itaque', '2017-10-30', '2022-08-17', 'Pending', 'Sequi ratione quas eum quis.', '6c913295-d584-3af4-a950-4298a6ad77c1.pdf'),
(65, 'HIMATIFTA', 'Est tenetur nihil.', 'est-tenetur-nihil', '1993-05-03', '2022-08-17', 'Pending', 'Molestiae numquam maxime ad.', '2e3a1899-c454-301e-9498-a5f0db303b65.pdf'),
(66, 'HIMA SIPIL', 'Velit nobis minus.', 'velit-nobis-minus', '1981-03-18', '2022-08-17', 'Pending', 'Eum minima quas qui ea.', '0d2fee94-e4a1-3966-b371-1bda2d13f81a.pdf'),
(67, 'HIMATIFTA', 'Pariatur tempore.', 'pariatur-tempore', '1986-10-18', '2022-08-17', 'Pending', 'Vel quidem est voluptatibus.', '7fd8b282-999c-3397-a6a9-0353529a5d22.pdf'),
(68, 'HIMATIFTA', 'Molestiae id odit.', 'molestiae-id-odit', '1974-11-12', '2022-08-17', 'Pending', 'Rerum eos excepturi eos.', '4ec00d05-87ff-3f4f-b018-0e1ae4b3b274.pdf'),
(69, 'HIMA GEO', 'Aliquid ab dicta.', 'aliquid-ab-dicta', '1990-10-12', '2022-08-17', 'Pending', 'Eos repellat at hic et nemo.', '615bae0e-7ce5-3398-bfbb-a9bfbbef04ec.pdf'),
(70, 'HIMA SIPIL', 'Omnis quod quam.', 'omnis-quod-quam', '1997-09-09', '2022-08-17', 'Pending', 'Porro nisi eos autem et.', 'df7e52dc-cbab-3b42-81c6-bfad6647c6a9.pdf'),
(71, 'HIMATIFTA', 'Magnam sed.', 'magnam-sed', '2010-12-19', '2022-08-17', 'Pending', 'Ad illo error nostrum et.', '69e5a79c-1cdc-355f-b016-cd36c70ea7bc.pdf'),
(72, 'HIMA SIPIL', 'Qui eligendi.', 'qui-eligendi', '2022-02-11', '2022-08-17', 'Pending', 'Id error minus ipsam nostrum.', '248ea688-9487-3a39-a5ef-9a7a1c93f0e1.pdf'),
(73, 'HIMA SIPIL', 'Quod totam ex est.', 'quod-totam-ex-est', '2013-02-18', '2022-08-17', 'Pending', 'Et quibusdam corrupti culpa.', 'cba0c1bd-e6ef-3d4c-ba38-f8aa4b3f9c36.pdf'),
(74, 'HIMA SIPIL', 'Corporis qui.', 'corporis-qui', '2009-12-22', '2022-08-17', 'Pending', 'Unde eum minus soluta eos.', '0aba8cad-4ad3-371a-938e-283af3968ef0.pdf'),
(75, 'HIMA SIPIL', 'Sint ea quia et.', 'sint-ea-quia-et', '2006-02-04', '2022-08-17', 'Pending', 'Ad rem et aperiam.', 'c04e6501-e071-3eb5-8d9b-af0f947398f9.pdf'),
(76, 'HIMA SIPIL', 'Necessitatibus sit.', 'necessitatibus-sit', '1997-08-28', '2022-08-17', 'Pending', 'Eum porro quia suscipit.', 'e807001e-b44b-308c-b2ee-29c90f28f0f0.pdf'),
(77, 'HIMATIFTA', 'Eveniet qui qui.', 'eveniet-qui-qui', '1978-10-31', '2022-08-17', 'Pending', 'Voluptatem nisi sed officia.', '1d6a005b-0c15-36b7-b161-ad1057b4e039.pdf'),
(78, 'HIMA SIPIL', 'Et ad non voluptas.', 'et-ad-non-voluptas', '2000-12-18', '2022-08-17', 'Pending', 'Nesciunt odit error neque et.', '53a7d951-ddd8-30ad-b720-a8454ced6875.pdf'),
(79, 'HIMA SIPIL', 'Et ea excepturi id.', 'et-ea-excepturi-id', '2007-09-26', '2022-08-17', 'Pending', 'Officia sint aut ut dolorem.', '0ec5bd69-3a0f-3491-9bf5-5f15f5f641fa.pdf'),
(80, 'HIMA GEO', 'Fuga excepturi.', 'fuga-excepturi', '2002-06-25', '2022-08-17', 'Pending', 'Tempore esse impedit quo.', '315c6289-810e-3e01-aab5-9af1f7247100.pdf'),
(81, 'HIMA SIPIL', 'Facilis ad quas et.', 'facilis-ad-quas-et', '1988-09-02', '2022-08-17', 'Pending', 'Iste ea non ut quis.', '4ef91e0e-2585-3552-ad0e-34e722180ced.pdf'),
(82, 'HIMATIFTA', 'Aut aut quia labore.', 'aut-aut-quia-labore', '2009-12-13', '2022-08-17', 'Pending', 'Est sequi nulla cupiditate.', 'f4a1f100-beec-3ade-9e6a-8261f28248e2.pdf'),
(83, 'HIMA SIPIL', 'Sit consequuntur.', 'sit-consequuntur', '2018-08-01', '2022-08-17', 'Pending', 'Fugiat facilis quas iure et.', 'c8561ca9-da0f-37d6-ab9e-4bf912b50c8f.pdf'),
(84, 'HIMA GEO', 'Alias consequatur.', 'alias-consequatur', '1994-10-31', '2022-08-17', 'Pending', 'Minus odio aut vel dolorem.', '71bc9e0f-781a-3868-b54f-5ca8d86094a9.pdf'),
(85, 'HIMA GEO', 'Provident nihil.', 'provident-nihil', '2003-06-15', '2022-08-17', 'Pending', 'Error ab aperiam est qui et.', '70d2d2a3-1684-3b32-9a8f-3645e866cf1b.pdf'),
(86, 'HIMATIFTA', 'Ipsum dolores.', 'ipsum-dolores', '2008-12-04', '2022-08-17', 'Pending', 'Dignissimos sit esse enim.', 'fa7d180c-ddc1-37d1-a9b2-26643d5bfb8d.pdf'),
(87, 'HIMATIFTA', 'Est molestias.', 'est-molestias', '1978-12-02', '2022-08-17', 'Pending', 'Id fuga modi aut fugiat.', '5c8029c7-75b5-3a6a-b30f-dcdb7246b613.pdf'),
(88, 'HIMATIFTA', 'Facere sint rem.', 'facere-sint-rem', '1973-07-21', '2022-08-17', 'Pending', 'Iure non tenetur eligendi.', '8c2208a4-6cfb-3404-b386-2c6a49995faf.pdf'),
(89, 'HIMA GEO', 'Quaerat enim sit ut.', 'quaerat-enim-sit-ut', '2009-09-11', '2022-08-17', 'Pending', 'Facere cum facere non.', 'e7cf3ef2-6587-37d5-8ec2-ee01809c919c.pdf'),
(90, 'HIMA SIPIL', 'Dignissimos ut.', 'dignissimos-ut', '1970-04-16', '2022-08-17', 'Pending', 'Sit omnis totam quas quis.', '26b33791-9924-3a9f-bd88-085a080f8563.pdf'),
(91, 'HIMATIFTA', 'Aperiam consequatur.', 'aperiam-consequatur', '2003-02-20', '2022-08-17', 'Pending', 'Aut quo totam dolor.', '42fa726a-1192-3299-9cda-758dcc3dc5c5.pdf'),
(92, 'HIMA GEO', 'Corrupti vel error.', 'corrupti-vel-error', '2011-04-02', '2022-08-17', 'Pending', 'Quia iste ut molestias aut.', 'f1879cfb-4acb-330f-a784-cb580a302d7e.pdf'),
(93, 'HIMATIFTA', 'Quo molestiae.', 'quo-molestiae', '1971-02-09', '2022-08-17', 'Pending', 'Expedita nemo ut et.', '95b9202c-9c13-31bb-94f6-f94e0edd63c0.pdf'),
(94, 'HIMA SIPIL', 'Earum deleniti.', 'earum-deleniti', '2018-08-05', '2022-08-17', 'Pending', 'Debitis quae et rem ut.', '4c58a9f4-f051-33a7-a23e-594a13ae5425.pdf'),
(95, 'HIMA GEO', 'Nam dolores.', 'nam-dolores', '1991-08-15', '2022-08-17', 'Pending', 'Et dolores molestiae et ad.', 'bb297de6-7dcf-3a2c-84c3-8b8b8a690fb2.pdf'),
(96, 'HIMA SIPIL', 'Expedita.', 'expedita', '2020-04-04', '2022-08-17', 'Pending', 'Quis aperiam pariatur et.', '623ae241-d2c1-3d1c-8c20-f310df915597.pdf'),
(97, 'HIMA GEO', 'Voluptatem.', 'voluptatem', '2003-04-05', '2022-08-17', 'Pending', 'Sit vel quo sunt natus.', 'bc47dbec-fb01-32dd-b395-d3b7743c812c.pdf'),
(98, 'HIMA SIPIL', 'Laborum voluptas.', 'laborum-voluptas', '1977-11-27', '2022-08-17', 'Pending', 'Delectus sequi aut et quo.', '1c2a4b8b-cdc2-3ae9-a955-ff8fb2c1852c.pdf'),
(99, 'HIMA SIPIL', 'Corporis vero quod.', 'corporis-vero-quod', '2002-03-02', '2022-08-17', 'Pending', 'Et dignissimos nulla ipsam.', 'e57a5f5b-a1b8-3549-be7e-72c1a4e2b3ca.pdf'),
(100, 'HIMATIFTA', 'Aliquam repellendus.', 'aliquam-repellendus', '2014-11-11', '2022-08-17', 'Pending', 'Esse qui iusto nobis quia.', '0d9c201f-0e8a-38a4-b670-6016aae83389.pdf'),
(101, 'HIMA SIPIL', 'Quibusdam.', 'quibusdam', '2020-01-24', '2022-08-17', 'Pending', 'Maiores non neque aut.', 'c7a8a45f-ee7b-34bf-99c4-aa686010aaf0.pdf');

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
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
