-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 29, 2022 at 03:22 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stories`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
CREATE TABLE IF NOT EXISTS `stories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `slug` varchar(80) NOT NULL,
  `content` text NOT NULL,
  `published_date` datetime DEFAULT NULL,
  `status` enum('Active','Inactive','Archived') NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `title`, `user_id`, `slug`, `content`, `published_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'My New Story', 1, 'my-new-story', '<p>Test</p>', '2022-10-28 16:32:15', 'Active', '2022-10-28 11:01:10', '2022-10-28 11:02:45'),
(2, 'My New Story', 4, '/my-new-story', '<p>Test</p>', '2022-10-28 16:32:15', 'Inactive', '2022-10-28 11:01:10', '2022-10-28 11:02:45'),
(3, 'My ABC', 1, 'my-abc', '<p>axavxvhsbvhbcjsbcskcnlkdnelwnesfknfcsfnc,sd&nbsp;</p>', '2022-10-29 07:42:45', 'Active', '2022-10-29 02:10:57', '2022-10-29 02:12:56'),
(4, 'Pulkit', 1, '/pulkit', '<p>mvnjsndcjshdjcslcskdnvjsz</p>', '2022-10-29 07:40:57', 'Active', '2022-10-29 02:11:51', '2022-10-29 02:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined_date` datetime DEFAULT NULL,
  `last_login_date` datetime NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `joined_date`, `last_login_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Nancy', 'nancy12', 'nancy28kul@gmail.com', '$2y$10$sa4qx9s5kM7nTLy6f8NdaercvK2q0vCDTZ.inbZ9euW0azxXtd1Jy', '0000-00-00 00:00:00', '2022-10-29 08:18:45', 'Active', '2022-10-26 03:08:38', '2022-10-26 03:08:38'),
(4, 'Pulkit', 'pulkit52', 'pulkit52@gmail.com', '$2y$10$AccXu/ggQj5ThCHUva4sle5dZJzt4I4oVxZfGuTXSwEKF/.wbXVty', '2022-10-28 17:18:25', '0000-00-00 00:00:00', 'Active', '2022-10-28 11:48:25', '2022-10-28 11:48:25'),
(5, 'abc', 'abc12', 'abc@gmail.com', '$2y$10$ZjdRFUCoLXxF3Dkv1hYReeEMuoNh37V62IUqJD9TooXLsOiXqopYa', '2022-10-28 17:22:53', '2022-10-28 17:22:53', 'Active', '2022-10-28 11:52:53', '2022-10-28 11:52:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
