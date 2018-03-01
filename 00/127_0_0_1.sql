-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 12:06 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tafteet`
--
CREATE DATABASE IF NOT EXISTS `tafteet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tafteet`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-02-24 14:33:15', '2018-02-24 14:33:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, '', 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'patient_id', 'number', 'رقم المريض', 1, 1, 1, 1, 1, 1, '{\"default\":\"Default text\",\"display\":{\"width\":\"6\",\"id\":\"custom_id\"}}', 2),
(56, 7, 'patient_name', 'text', 'إسم المريض', 0, 1, 1, 1, 1, 1, '{\"   default\":\"Default text\",\"display\":{\"width\":\"4\",\"id\":\"custom_id\"}}', 3),
(57, 7, 'patient_type', 'select_dropdown', 'نوع المريض', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"default\":\"radio1\",\"options\":{\"radio1\":\"مباشر\",\"radio2\":\"محول نقدي\",\"radio3\":\"تحويل آجل\"}}', 5),
(59, 7, 'patient_diagnose', 'hidden', 'Patient Diagnose', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"},\"default\":\"Default text\"}', 7),
(60, 7, 'patient_dr_inside', 'select_dropdown', 'الطبيب المتواجد بالمركز', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"default\":\"option1\",\"options\":{\"option1\":\"Option 1 Text\",\"option2\":\"Option 2 Text\",\"option3\":\"Option 3 Text\",\"option4\":\"Option 4 Text\",\"option5\":\"Option 5 Text\",\"option6\":\"Option 6 Text\",\"option7\":\"Option 7 Text\",\"option8\":\"Option 8 Text\"}}', 4),
(61, 7, 'patient_service1', 'hidden', 'Patient Service1', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"on\":\"On Text\",\"off\":\"Off Text\",\"checked\":\"true\"}', 10),
(62, 7, 'patient_service2', 'hidden', 'Patient Service2', 0, 1, 1, 1, 1, 1, NULL, 11),
(63, 7, 'patient_service3', 'hidden', 'Patient Service3', 0, 1, 1, 1, 1, 1, NULL, 12),
(64, 7, 'patient_file1', 'image', 'خطابات', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 13),
(65, 7, 'patient_file2', 'image', 'أشعة', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 14),
(66, 7, 'patient_file3', 'image', 'روشتات', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 15),
(67, 7, 'patient_fees', 'number', 'Patient Fees', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 16),
(68, 7, 'discount', 'hidden', 'Discount', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 17),
(69, 7, 'netfee', 'hidden', 'Netfee', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 18),
(70, 7, 'notes', 'hidden', 'Notes', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"10\",\"id\":\"custom_id\"}}', 19),
(71, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 20),
(72, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 21),
(73, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 22),
(74, 7, 'dete_next_session', 'hidden', 'Dete Next Session', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 23),
(75, 7, 'dete_third_session', 'hidden', 'Dete Third Session', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 24),
(76, 7, 'dete_fourth_session', 'hidden', 'Dete Fourth Session', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 25),
(77, 7, 'session_time', 'hidden', 'Session Time', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 26),
(78, 7, 'patient_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 0, 1, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"role_id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 28),
(79, 7, 'user_id', 'hidden', 'User Id', 0, 1, 1, 0, 1, 0, '{\"display\":{\"width\":\"3\",\"id\":\"custom_id\"}}', 27),
(80, 9, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(81, 9, 'dr_id', 'number', 'Dr Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(82, 9, 'dr_name', 'text', 'Dr Name', 0, 1, 1, 1, 1, 1, NULL, 4),
(83, 9, 'spacialization', 'text', 'Spacialization', 0, 1, 1, 1, 1, 1, NULL, 5),
(84, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, NULL, 3),
(85, 9, 'address', 'text_area', 'Address', 0, 1, 1, 1, 1, 1, NULL, 6),
(86, 9, 'telephone', 'number', 'Telephone', 0, 1, 1, 1, 1, 1, NULL, 7),
(87, 9, 'rate', 'text', 'Rate', 0, 1, 1, 1, 1, 1, NULL, 8),
(88, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(89, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(90, 9, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, NULL, 11),
(97, 7, 'patient_hasone_doctor_relationship', 'relationship', 'كود الدكتور', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Doctor\",\"table\":\"doctors\",\"type\":\"belongsTo\",\"column\":\"dr_id\",\"key\":\"dr_id\",\"label\":\"dr_id\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 9),
(98, 7, 'dr_id', 'text', 'دكتور رقم', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 8),
(100, 9, 'patient_id', 'text_area', 'Patient Id', 0, 1, 1, 1, 1, 1, NULL, 12),
(101, 7, 'routed_from', 'select_dropdown', 'فقط في حالة التحويل إختر مما يلي', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"custom_id\"},\"default\":\"option1\",\"options\":{\"option1\":\"غير محول- نقدي-\",\"option2\":\"محول نقدي\",\"option3\":\"تأمين صحي\",\"option4\":\"تسماد\",\"option5\":\"كهرباء\",\"option6\":\"غزب ونسيج\",\"option7\":\"إئتمان زراعي\",\"option8\":\"غزل المحلة\"}}', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(7, 'patients', 'patients', 'Patient', 'Patients', 'voyager-people', 'App\\Patient', NULL, NULL, NULL, 1, 0, '2018-02-25 20:09:01', '2018-02-25 20:17:17'),
(9, 'doctors', 'doctors', 'Doctor', 'Doctors', NULL, 'App\\Doctor', NULL, NULL, NULL, 1, 0, '2018-02-27 11:21:01', '2018-02-27 11:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `dr_id` int(10) UNSIGNED NOT NULL,
  `dr_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spacialization` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `dr_id`, `dr_name`, `spacialization`, `title`, `address`, `telephone`, `rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 6002, 'ghjkl.;/', NULL, 'hjkl', NULL, NULL, NULL, '2018-02-28 20:51:01', '2018-02-28 20:51:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(2, 'main', '2018-02-25 20:22:42', '2018-02-26 07:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 3, '2018-02-24 14:33:15', '2018-02-28 07:44:04', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2018-02-24 14:33:15', '2018-02-28 07:44:04', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 7, '2018-02-24 14:33:15', '2018-02-28 07:43:56', 'voyager.posts.index', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2018-02-24 14:33:15', '2018-02-28 07:44:04', 'voyager.users.index', NULL),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 9, '2018-02-24 14:33:15', '2018-02-28 07:43:56', 'voyager.categories.index', NULL),
(6, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 8, '2018-02-24 14:33:15', '2018-02-28 07:43:56', 'voyager.pages.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 4, '2018-02-24 14:33:15', '2018-02-28 07:44:04', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2018-02-24 14:33:15', '2018-02-28 07:43:56', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-02-24 14:33:15', '2018-02-26 06:32:53', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-02-24 14:33:15', '2018-02-26 06:32:53', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-02-24 14:33:15', '2018-02-26 06:32:53', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2018-02-24 14:33:15', '2018-02-28 07:43:56', 'voyager.settings.index', NULL),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-02-24 14:33:16', '2018-02-26 06:32:53', 'voyager.hooks', NULL),
(14, 1, 'Patients', '/login/patients', '_self', 'voyager-people', '#ff0000', NULL, 1, '2018-02-25 20:09:01', '2018-02-26 06:33:01', NULL, ''),
(16, 2, 'Home', '/', '_self', 'voyager-smile', '#00ff40', NULL, 1, '2018-02-26 07:09:21', '2018-02-26 07:10:37', NULL, ''),
(17, 2, 'Patients', '/login/patients', '_self', 'voyager-people', '#ff0000', NULL, 2, '2018-02-26 07:10:29', '2018-02-28 07:28:29', NULL, ''),
(18, 1, 'Reports', '/index.php/reportico', '_self', 'voyager-documentation', '#5e026a', NULL, 12, '2018-02-26 19:26:52', '2018-02-28 07:43:57', NULL, ''),
(19, 1, 'Doctors', '/login/doctors', '_self', 'voyager-heart', '#000000', NULL, 2, '2018-02-27 11:21:02', '2018-02-28 07:44:04', NULL, ''),
(20, 2, 'Doctors', '/login/doctors', '_self', 'voyager-heart', '#faf305', NULL, 3, '2018-02-28 07:27:16', '2018-02-28 07:29:42', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-02-24 14:33:16', '2018-02-24 14:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_diagnose` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_dr_inside` varchar(246) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_service1` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_service2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_service3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_file1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_file2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_file3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_fees` int(10) UNSIGNED NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `netfee` int(10) UNSIGNED DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dete_next_session` datetime DEFAULT NULL,
  `dete_third_session` datetime DEFAULT NULL,
  `dete_fourth_session` datetime DEFAULT NULL,
  `session_time` time DEFAULT NULL,
  `user_id` text COLLATE utf8_unicode_ci,
  `dr_id` text COLLATE utf8_unicode_ci,
  `routed_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_id`, `patient_name`, `patient_type`, `patient_diagnose`, `patient_dr_inside`, `patient_service1`, `patient_service2`, `patient_service3`, `patient_file1`, `patient_file2`, `patient_file3`, `patient_fees`, `discount`, `netfee`, `notes`, `deleted_at`, `created_at`, `updated_at`, `dete_next_session`, `dete_third_session`, `dete_fourth_session`, `session_time`, `user_id`, `dr_id`, `routed_from`) VALUES
(2, 1, '1', 'option1', 'Default text', 'option1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2018-02-28 09:45:00', '2018-02-28 09:46:39', NULL, NULL, NULL, NULL, 'Admin', '6001', NULL),
(3, 2, 'يا مسهل', 'radio1', 'Default text', 'option1', NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, NULL, NULL, NULL, '2018-02-28 19:44:10', '2018-02-28 19:44:10', NULL, NULL, NULL, NULL, '1', NULL, 'option1');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(2, 'browse_database', NULL, '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(3, 'browse_media', NULL, '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(4, 'browse_compass', NULL, '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(5, 'browse_menus', 'menus', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(6, 'read_menus', 'menus', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(7, 'edit_menus', 'menus', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(8, 'add_menus', 'menus', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(9, 'delete_menus', 'menus', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(10, 'browse_pages', 'pages', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(11, 'read_pages', 'pages', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(12, 'edit_pages', 'pages', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(13, 'add_pages', 'pages', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(14, 'delete_pages', 'pages', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(15, 'browse_roles', 'roles', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(16, 'read_roles', 'roles', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(17, 'edit_roles', 'roles', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(18, 'add_roles', 'roles', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(19, 'delete_roles', 'roles', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(20, 'browse_users', 'users', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(21, 'read_users', 'users', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(22, 'edit_users', 'users', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(23, 'add_users', 'users', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(24, 'delete_users', 'users', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(25, 'browse_posts', 'posts', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(26, 'read_posts', 'posts', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(27, 'edit_posts', 'posts', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(28, 'add_posts', 'posts', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(29, 'delete_posts', 'posts', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(30, 'browse_categories', 'categories', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(31, 'read_categories', 'categories', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(32, 'edit_categories', 'categories', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(33, 'add_categories', 'categories', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(34, 'delete_categories', 'categories', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(35, 'browse_settings', 'settings', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(36, 'read_settings', 'settings', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(37, 'edit_settings', 'settings', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(38, 'add_settings', 'settings', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(39, 'delete_settings', 'settings', '2018-02-24 14:33:15', '2018-02-24 14:33:15', NULL),
(40, 'browse_hooks', NULL, '2018-02-24 14:33:16', '2018-02-24 14:33:16', NULL),
(41, 'browse_patients', 'patients', '2018-02-25 20:09:01', '2018-02-25 20:09:01', NULL),
(42, 'read_patients', 'patients', '2018-02-25 20:09:01', '2018-02-25 20:09:01', NULL),
(43, 'edit_patients', 'patients', '2018-02-25 20:09:01', '2018-02-25 20:09:01', NULL),
(44, 'add_patients', 'patients', '2018-02-25 20:09:01', '2018-02-25 20:09:01', NULL),
(45, 'delete_patients', 'patients', '2018-02-25 20:09:01', '2018-02-25 20:09:01', NULL),
(46, 'browse_doctors', 'doctors', '2018-02-27 11:21:02', '2018-02-27 11:21:02', NULL),
(47, 'read_doctors', 'doctors', '2018-02-27 11:21:02', '2018-02-27 11:21:02', NULL),
(48, 'edit_doctors', 'doctors', '2018-02-27 11:21:02', '2018-02-27 11:21:02', NULL),
(49, 'add_doctors', 'doctors', '2018-02-27 11:21:02', '2018-02-27 11:21:02', NULL),
(50, 'delete_doctors', 'doctors', '2018-02-27 11:21:02', '2018-02-27 11:21:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-02-24 14:33:16', '2018-02-24 14:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-02-24 14:33:15', '2018-02-24 14:33:15'),
(2, 'Cachier', 'Cachier Role', '2018-02-24 14:33:15', '2018-02-28 08:00:36'),
(3, 'receptionist', 'Receptionist Role', '2018-02-28 08:01:32', '2018-02-28 08:02:23'),
(4, 'doctor', 'Doctor Role', '2018-02-28 08:02:56', '2018-02-28 08:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'M.L.C', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/February2018/xxbjKwgtmZpIzqPC72sz.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-02-24 14:33:16', '2018-02-24 14:33:16'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-02-24 14:33:16', '2018-02-24 14:33:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@pcegyptmed.com', 'users/February2018/HGOTzP6AJZNGBXMlNN16.jpg', '$2y$10$An4JUINdJUJQ9FjKTv5zruitbKI3g7kZa4Tby3JnmAi.mdjvFR7iu', 'mulvPtckGNh8yoNOxvW0CLFA7QzOeVr54byrUuPjDkuWFEnRkttllALzmM6a', '2018-02-24 14:33:16', '2018-02-24 15:03:24'),
(2, 2, 'receptionist', 'receptionist@pcegyptmed.com', 'users/February2018/PumSsbeufqZ6TKV8b1sk.jpg', '$2y$10$6kIX6iYg8Qbhfors71.x1uXchQJ3cyqHUm2j7csGGchPQQSulRVNe', NULL, '2018-02-24 15:05:37', '2018-02-24 15:06:46'),
(3, 2, 'cashier', 'cashier@pcegyptmed.com', 'users/February2018/Cqhajw5S8V1oBZ071WiP.jpg', '$2y$10$ELoodjSquKvQfVxGzJiT/.JmTuxdRoH.aemyjknQrLJ.j1.ywrTxS', NULL, '2018-02-24 15:10:40', '2018-02-24 15:10:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctors_dr_id_index` (`dr_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patients_patient_name_index` (`patient_name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
