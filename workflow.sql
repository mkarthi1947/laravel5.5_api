-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.25-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for workflow
CREATE DATABASE IF NOT EXISTS `workflow` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `workflow`;

-- Dumping structure for table workflow.emp
CREATE TABLE IF NOT EXISTS `emp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table workflow.emp: ~12 rows (approximately)
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` (`id`, `name`, `position`, `department`, `salary`, `created_at`, `updated_at`) VALUES
	(2, 'karthi wsf', 'programmer', 'php', '30000', '2017-12-01 13:18:48', '2017-12-06 11:57:28'),
	(3, 'karthi', 'programmer', 'php', '30000', '2017-12-01 13:19:12', '2017-12-01 13:19:12'),
	(4, 'karthi25a27da1a9f9a0', 'programmer2', 'php2', '300002', '2017-12-05 15:04:01', '2017-12-06 11:52:58'),
	(5, 'karthi 3', 'programmer 3', 'php 3', '300003', '2017-12-06 03:36:54', '2017-12-06 03:36:54'),
	(6, 'karthi 4', 'programmer 4', 'php 4', '300004', '2017-12-06 03:38:03', '2017-12-06 03:38:03'),
	(7, 'test', 'test pos', 'test dept', 'test sal', '2017-12-06 10:24:00', '2017-12-06 10:24:00'),
	(9, 'karthi 55a27dab71be60', 'test pos', 'test dept', 'test sal', '2017-12-06 10:45:09', '2017-12-06 11:55:35'),
	(10, 'orange', 'test pos', 'test dept', 'test sal', '2017-12-06 10:46:50', '2017-12-06 10:46:50'),
	(11, 'yyyy', 'test pos', 'test dept', 'test sal', '2017-12-06 10:47:32', '2017-12-06 10:47:32'),
	(14, 'after5a27da4c8c1f5', 'test pos', 'test dept', 'test sal', '2017-12-06 10:53:03', '2017-12-06 11:53:48');
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;

-- Dumping structure for table workflow.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table workflow.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2017_12_01_075501_create_emp_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table workflow.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table workflow.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table workflow.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table workflow.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
