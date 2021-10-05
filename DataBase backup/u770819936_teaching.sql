-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2021 at 02:59 PM
-- Server version: 10.4.15-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u770819936_teaching`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `classification` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(10) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(180) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `photo_dir` varchar(255) DEFAULT NULL,
  `photo_size` int(11) DEFAULT NULL,
  `photo_type` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_supper_admin` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `login_count` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `listing_id`, `title`, `first_name`, `middle_name`, `last_name`, `mobile`, `dob`, `email`, `profile_photo`, `photo_dir`, `photo_size`, `photo_type`, `password`, `is_supper_admin`, `status`, `is_verified`, `login_count`, `created`, `modified`) VALUES
(1, 1, 'Mr', 'Hanuman', 'prasad', 'Yadav', '766588035', '2020-06-11', 'yadav.manu36@gmail.com', '130679159449027045440.png', 'webroot/img/uploads/1/AdminUsers/profile_photo/', 113780, 'image/png', '$2y$10$Mu0J58R2EkSsLDyAsEyMGeoJv4K2278nHB3DCrb6CYudOfuVPMmR.', 1, 1, 1, 1, '2020-07-11 00:00:00', '2020-07-11 18:09:35'),
(2, 3, 'Mr', 'Shanker', 'Lal', 'Yadav', '7665880635', '1989-05-12', 'shanker.lal@yopmail.com', '555169159448780456015.jpeg', 'webroot/img/uploads/3/AdminUsers/profile_photo/', 13375, 'image/jpeg', '$2y$10$8MsjeCfxK6/U8OrRtru2NOwEXftFUXLGq/7CCFWza5.EajwZc5rpy', NULL, 1, 1, NULL, '2020-07-11 17:16:44', '2020-08-01 04:34:35'),
(3, 3, 'Mr', 'Aryan', 'Krishna', 'Yadav', '454546', '2010-05-12', 'aryan.krishna@tech-whiz.com', NULL, NULL, NULL, NULL, '$2y$10$UI3PC.GweKNa5mo5uLGGbu9iHojnWhRmhXQ18HDxyCHAaS8DLQyti', NULL, 1, 1, NULL, '2020-07-12 17:29:20', '2020-07-13 03:27:13'),
(4, 3, 'Mr', 'hanuman', 'yadav', 'khkjh', '6464654564', '1989-05-12', 'hanuman.tech@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-08-01 11:32:42', '2020-08-01 11:32:42'),
(5, 1, 'Mr', 'manu', 'test', 'dw', '546545456', '1989-02-05', 'manu.tech2@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-08-01 11:53:06', '2020-08-01 12:09:56'),
(6, 4, 'Mr', 'ha', 'Lal', 'Yadav', '984654654665', '1989-05-12', 'mrha@yopmail.com', '270126160225843633157.png', 'webroot/img/uploads/4/AdminUsers/profile_photo/', 27594, 'image/png', NULL, NULL, 1, NULL, NULL, '2020-10-09 15:47:16', '2020-10-10 07:32:03'),
(7, 4, 'Mr', 'Rahul', '', 'Yadav', '64654654', '1989-05-12', 'rahul@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-10-10 07:32:34', '2020-10-10 07:32:44'),
(11, 4, 'Mr', 'kamal', 'kishor', 'sharma', '765880635', '1989-05-12', 'kamal.kishor@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-10-20 18:40:23', '2020-10-20 18:40:23'),
(12, 4, 'Mr', 'Naveen', 'kumar', 'bhola', '+919818679051', '2020-10-09', 'naveenbhola@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$DGeLGqm.dDC8aLLA.pAXcuhcBcnVIi0PLaYrNj1EY03atyR0Vfbuq', NULL, 1, 1, NULL, '2020-10-22 18:01:51', '2020-10-22 18:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles`
--

CREATE TABLE `admin_users_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_users_roles`
--

INSERT INTO `admin_users_roles` (`id`, `role_id`, `admin_user_id`) VALUES
(8, 9, 6),
(9, 9, 7),
(13, 14, 11),
(14, 14, 12);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_manager_phinxlog`
--

CREATE TABLE `admin_user_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_user_manager_phinxlog`
--

INSERT INTO `admin_user_manager_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200606013305, 'CreateRoles', '2020-07-11 05:48:39', '2020-07-11 05:48:39', 0),
(20200606013326, 'CreateAdminUsers', '2020-07-11 05:48:39', '2020-07-11 05:48:39', 0),
(20200606013335, 'CreateAdminUsersRoles', '2020-07-11 05:48:39', '2020-07-11 05:48:39', 0);

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_popup` tinyint(4) DEFAULT NULL,
  `banner` varchar(250) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(5) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `listing_id`, `admin_user_id`, `title`, `slug`, `description`, `is_popup`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `status`, `created`, `modified`) VALUES
(1, 3, 1, 'Circular for Annual function', 'fgfdddddddddd-gg', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text.</p>\r\n\r\n<p>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 1, '750785159539037848597.png', 'webroot/img/uploads/3/Announcements/banner/', 1622912, 'image/png', 1, '2020-07-22 03:53:50', '2020-07-22 17:58:39'),
(2, 3, 1, 'Swimming Classes', 'swimming-classes', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n', 0, NULL, NULL, NULL, NULL, 1, '2020-07-22 17:59:12', '2020-07-22 17:59:12'),
(3, 3, 1, 'Finibus Bonorum et Malorum', 'finibus-bonorum-et-malorum', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>\r\n', 0, NULL, NULL, NULL, NULL, 1, '2020-07-22 17:59:32', '2020-07-22 17:59:32'),
(4, 3, 1, '1914 translation by H. Rackham', '1914-translation-by-h-rackham', '<p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.&quot;</p>\r\n', 0, NULL, NULL, NULL, NULL, 1, '2020-07-22 17:59:51', '2020-07-22 17:59:51'),
(5, 3, 1, 'There are many variations of passages of Lorem Ipsum available', 'there-are-many-variations-of-passages-of-lorem-ipsum-available', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 0, NULL, NULL, NULL, NULL, 1, '2020-07-22 18:00:13', '2020-07-22 18:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_phinxlog`
--

CREATE TABLE `announcement_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `announcement_phinxlog`
--

INSERT INTO `announcement_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200722030102, 'Announcements', '2020-07-21 21:31:02', '2020-07-21 21:31:02', 0),
(20200722030124, 'Announcements', '2020-07-21 21:31:24', '2020-07-21 21:31:24', 0),
(20200722030146, 'Announcements', '2020-07-21 21:31:46', '2020-07-21 21:31:46', 0),
(20200722030356, 'Snnouncements', '2020-07-21 21:33:56', '2020-07-21 21:33:56', 0),
(20200722030423, 'Announcements', '2020-07-21 21:34:23', '2020-07-21 21:34:23', 0),
(20200722030438, 'Announcement', '2020-07-21 21:34:38', '2020-07-21 21:34:38', 0),
(20200722030557, 'Initial', '2020-07-21 21:35:57', '2020-07-21 21:35:57', 0),
(20200722030720, 'Initial', '2020-07-21 21:37:20', '2020-07-21 21:37:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int(10) UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext DEFAULT NULL,
  `changed` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `admin_user_id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `created`) VALUES
(1, 1, '72a4af19-3548-4ff0-805f-080a92d426f3', 'create', 2, 'listings', NULL, '{\"id\":2,\"admin_user_id\":1,\"code\":\"C4WQV6KM\",\"listing_type_id\":1,\"title\":\"Other\",\"slug\":\"other\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ds.com\",\"status\":1,\"sort_order\":2}', '{\"id\":2,\"admin_user_id\":1,\"code\":\"C4WQV6KM\",\"listing_type_id\":1,\"title\":\"Other\",\"slug\":\"other\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ds.com\",\"status\":1,\"sort_order\":2}', '{\"ip\":\"192.168.4.35\",\"url\":\"\\/admin\\/listings\\/listings\\/quick-add\",\"user\":[]}', '2020-07-11 12:44:55'),
(2, 1, '524f2c9d-d098-40b1-9b87-8ec0f9470895', 'create', 3, 'listings', NULL, '{\"id\":3,\"admin_user_id\":1,\"code\":\"CBK3DRT7\",\"listing_type_id\":2,\"title\":\"Krishna Public School\",\"slug\":\"krishna-public-school\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ani.krishna-school.in\",\"status\":1,\"sort_order\":2}', '{\"id\":3,\"admin_user_id\":1,\"code\":\"CBK3DRT7\",\"listing_type_id\":2,\"title\":\"Krishna Public School\",\"slug\":\"krishna-public-school\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ani.krishna-school.in\",\"status\":1,\"sort_order\":2}', '{\"ip\":\"127.0.0.1\",\"url\":\"\\/admin\\/listings\\/listings\\/quick-add\",\"user\":[]}', '2020-07-11 16:43:53'),
(3, 1, '88baf609-bf4b-4c45-93e6-4768b3d3ef70', 'create', 4, 'listings', NULL, '{\"id\":4,\"admin_user_id\":1,\"code\":\"CXTJS93P\",\"listing_type_id\":3,\"title\":\"Teaching Bharat\",\"slug\":\"teaching-bharat\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ani.teaching.com\",\"status\":1,\"sort_order\":3}', '{\"id\":4,\"admin_user_id\":1,\"code\":\"CXTJS93P\",\"listing_type_id\":3,\"title\":\"Teaching Bharat\",\"slug\":\"teaching-bharat\",\"tag_line\":\"\",\"protocol\":\"http:\\/\\/\",\"domain_name\":\"ani.teaching.com\",\"status\":1,\"sort_order\":3}', '{\"ip\":\"127.0.0.1\",\"url\":\"\\/admin\\/listings\\/listings\\/quick-add\",\"user\":[]}', '2020-09-07 17:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `audit_stash_phinxlog`
--

CREATE TABLE `audit_stash_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audit_stash_phinxlog`
--

INSERT INTO `audit_stash_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20171018185609, 'CreateAuditLogs', '2020-07-11 05:26:44', '2020-07-11 05:26:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `listing_id`, `title`, `position`, `created`, `modified`) VALUES
(3, 4, 'CBSC', 1, '2020-10-10 08:14:36', '2020-10-10 08:14:36'),
(4, 4, 'ICSE', 2, '2020-10-10 08:14:55', '2020-10-10 08:14:55'),
(5, 4, 'JEE', 3, '2020-10-10 08:15:09', '2020-10-10 08:15:43');

-- --------------------------------------------------------

--
-- Table structure for table `cake_d_c_users_phinxlog`
--

CREATE TABLE `cake_d_c_users_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cake_d_c_users_phinxlog`
--

INSERT INTO `cake_d_c_users_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20150513201111, 'Initial', '2020-09-21 08:56:57', '2020-09-21 08:56:58', 0),
(20161031101316, 'AddSecretToUsers', '2020-09-21 08:56:58', '2020-09-21 08:56:59', 0),
(20190208174112, 'AddAdditionalDataToUsers', '2020-09-21 08:56:59', '2020-09-21 08:57:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `sessionId`, `course_id`, `quantity`, `created`, `modified`) VALUES
(15, '3a8fa1e8-9548-42fd-b557-b15bde9f7e7b', 'fe4f2b915cf1621d816c56946c2582b6', 5, 1, '2020-12-21 22:06:46', '2020-12-21 22:06:46'),
(16, '7bc81ce4-2ead-4b21-bfd5-c8cc27f43461', '974a09392d850db3e3bc3a99b9c68bb2', 3, 1, '2021-01-26 19:36:45', '2021-01-26 19:36:45'),
(21, '8d26c504-a9cf-4696-a326-110f634a82ff', 'b929c2aa76c21c5988a4b70e6025f171', 5, 1, '2021-02-16 20:16:49', '2021-02-16 20:16:49'),
(31, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '7b2105d55a61278815b51230ea979456', 15, 1, '2021-05-13 12:41:16', '2021-05-13 12:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `cms_phinxlog`
--

CREATE TABLE `cms_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cms_phinxlog`
--

INSERT INTO `cms_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200624172245, 'CreatePages', '2020-07-11 06:09:03', '2020-07-11 06:09:04', 0),
(20200624172312, 'CreateNavigations', '2020-07-11 06:09:04', '2020-07-11 06:09:05', 0),
(20200624172321, 'CreateModules', '2020-07-11 06:09:05', '2020-07-11 06:09:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `uses_total` int(11) NOT NULL,
  `uses_customer` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `coupon_type`, `discount`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `created`, `modified`) VALUES
(1, '20% Discount', 'TB20', 'p', '20.00', NULL, '2021-02-13', '2021-03-31', 1000, 1000, 1, '2021-02-13 16:56:02', '2021-03-06 22:09:21'),
(2, 'NKB', 'TB100', 'f', '100.00', NULL, '2021-02-13', '2021-03-31', 1000, 1000, 1, '2021-02-13 17:09:59', '2021-03-13 12:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `grading_type_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `course_type` int(11) DEFAULT NULL,
  `section_name` varchar(250) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `board_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `discount_price` decimal(8,2) DEFAULT NULL,
  `is_free` tinyint(1) DEFAULT NULL,
  `sample_video` varchar(250) DEFAULT NULL,
  `short_description` varchar(400) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 DEFAULT NULL,
  `features` text DEFAULT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `no_of_seats` int(11) DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `course_url` varchar(255) DEFAULT NULL,
  `what_learn` text DEFAULT NULL,
  `watching` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `listing_id`, `slug`, `user_id`, `parent_id`, `grading_type_id`, `title`, `course_type`, `section_name`, `code`, `board_id`, `subject_id`, `duration`, `price`, `discount_price`, `is_free`, `sample_video`, `short_description`, `description`, `features`, `is_draft`, `start_date`, `end_date`, `no_of_seats`, `lft`, `rght`, `status`, `created`, `modified`, `course_url`, `what_learn`, `watching`) VALUES
(1, 4, 'math-indian-curriculum', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', NULL, 8, 'Math - Indian curriculum', NULL, NULL, NULL, 3, 1, '80', '1500.00', '1000.00', 0, 'https://www.youtube.com/embed/8-tm9joTJHI', 'Your total points represent the progress you’ve made on this unit. Master every skill to collect all the available Mastery points.\r\nNot started (0 points)This is where you’ll start. Watch videos and practice skills if you’re new to the material or jump to a quiz or unit test if you feel more confident.\r\nAttempted (0 points)If you get less than 70% correct when practicing a skill or if', '<p>Your total points represent the progress you&rsquo;ve made on this unit. Master every skill to collect all the available Mastery points.</p>\r\n\r\n<p>Not started (0 points)This is where you&rsquo;ll start. Watch videos and practice skills if you&rsquo;re new to the material or jump to a quiz or unit test if you feel more confident.</p>\r\n\r\n<p>Attempted (0 points)If you get less than 70% correct when practicing a skill or if you get questions related to this skill incorrect on a quiz or unit test you&rsquo;ll be here.</p>\r\n\r\n<p>Familiar (50 points)Get 70% or more correct when practicing a skill. Or, correctly answer a question related to a skill on a quiz or unit test.</p>\r\n\r\n<p>Proficient (80 points)Answer 100% of the questions correct when practicing a skill or get a <strong>Familiar</strong> skill correct during a quiz or unit test.</p>\r\n\r\n<p>Mastered (100 points)Get a <strong>Proficient</strong> skill correct on the unit test.</p>\r\n', '', 0, NULL, NULL, NULL, 1, 2, 1, '2020-12-08 03:21:17', '2021-03-22 13:30:46', NULL, NULL, NULL),
(2, 4, 'math-algebra-basics', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', NULL, 8, 'Math - Algebra basics', NULL, NULL, NULL, 3, 1, '120', '8000.00', NULL, 0, 'https://www.youtube.com/embed/QUCNWDPfKSU', '\r\nLearn Algebra With Basics For #SSC_CGL_MAINS and other subtopics like - \r\nIntroduction  Algebra_??????? with a list of formulas with basic...', '<p>Learn Algebra With Basics For <a href=\"https://www.youtube.com/results?search_query=%23SSC_CGL_MAINS\">#SSC_CGL_MAINS</a> and other subtopics like - Introduction Algebra_बिजगणित with a list of formulas with basics. No. of Question Asked in SSC: 10 Must Solve Problems: Ongoing Practice Class: For solving 1000 problems for SSC CGL 2019 Tier 2 Exam visit: <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=QUCNWDPfKSU&amp;event=video_description&amp;redir_token=QUFFLUhqa1Zrd2I3MHQ2YnR3ck1YWDAtYXc0MXIwZW1EZ3xBQ3Jtc0trTHNJdF9YeHdUOWlSMDZUS1lxVUVDRUNGNmNEcExpeldiTXZacVIzZ1lDTzV2VUt1WV82VWl0aXVqNndHWnRBbGZLNFh3T0d5THlvQ0lud3hOQXRRdGhVVXd5UUhud3d0RU5PYXhxUElUTk5iYk5kWQ%3D%3D&amp;q=https%3A%2F%2Fbit.ly%2F2Wiej7A\">https://bit.ly/2Wiej7A</a> Must Check Out my Course of <a href=\"https://www.youtube.com/results?search_query=%23Unacademy\">#Unacademy</a> <a href=\"https://www.youtube.com/results?search_query=%23Special\">#Special</a> Mathematics Batch for <a href=\"https://www.youtube.com/results?search_query=%23SSCCGL\">#SSCCGL</a>, <a href=\"https://www.youtube.com/results?search_query=%23CDS\">#CDS</a>, <a href=\"https://www.youtube.com/results?search_query=%23CPO\">#CPO</a> By :-Pawan Rao For 10% Discount use code - ? PAWANLIVE ? ✅ Class Timings: 6 PM &ndash; 07.30 PM ✅PART- 1 ( From 21 Feb ) unacademy.com/plus/course/crash-course-on-important-topics-for-ssc-cgl-2019/C0QLPENT ✅PART- 2 ( From 13 March ) unacademy.com/plus/course/special-mathematics-batch-for-ssc-cgl-part-i/JU4NYHS4 ARITHMETIC+ ADVANCE MATH Telegram Channel - <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=QUCNWDPfKSU&amp;event=video_description&amp;redir_token=QUFFLUhqbEtzUWY3VUtqaWszcDNIN1YxZkpMWW1YVHBEQXxBQ3Jtc0tsSjNoR3BTeXp2SUVMOFl0bnBXNGVkS3R0eWRnc2hmbkZYWHBRN2F4ZWZsYnhBRkJqOTlfY3pvNUx1U2FSeE9COW5wSnFzM1NYOEtjdlc2SnhFdXhOSVlkaFp2OS1EUVdSNDdPLXk5UmJsVWhpYmp2OA%3D%3D&amp;q=https%3A%2F%2Ft.me%2Fmathswithpawanrao\">https://t.me/mathswithpawanrao</a> Facebook Page - <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=QUCNWDPfKSU&amp;event=video_description&amp;redir_token=QUFFLUhqazl0S3FCMnBUaTlFQVdGSEdrdEM2d2FXY3VxQXxBQ3Jtc0tuR2o3T2cyWDVnaUd2UWJsdnpjSG5peUMzRTNlVnR3R0NPLW9adnFQTTdvX1docGM1ODJjQXdxZGhWSDlhbS1waHhkbC1NNVlnbFkxcWtVd05xODdnYXNXLU05aHlyQ0paalVLN0ZDbUYwUS1ndENpUQ%3D%3D&amp;q=https%3A%2F%2Fwww.facebook.com%2FPawanRaomothers%2F\">https://www.facebook.com/PawanRaomoth...</a></p>', NULL, 0, NULL, NULL, NULL, 3, 4, 1, '2020-12-08 03:49:08', '2020-12-08 03:49:08', NULL, NULL, NULL),
(3, 4, 'physics', '08b83891-a807-4235-b8d9-b515375c0598', NULL, 9, 'Physics', NULL, NULL, NULL, 4, 2, '100', '5500.00', '500.00', 1, '', 'This is sample physics course', '<p>This is sample physics course</p>', NULL, 0, NULL, NULL, NULL, 5, 6, 1, '2020-12-10 09:27:41', '2020-12-10 09:28:21', NULL, NULL, NULL),
(4, 4, 'economics', 'a985a680-d89b-4b54-95e0-44567b2084d8', NULL, 5, 'Economics', NULL, NULL, NULL, 3, 15, '120', '5600.00', NULL, 0, 'https://www.youtube.com/embed/uYptPTvfBVg', 'Economics on Your Tips brings you yet another amazing Class 12 Session around the topic of Introductory of Macroeconomics: Types of Goods and Investment. In this Lecture, Sarthak Virmani will touch upon one of Class 12 Economics\' most important aspects of Macroeconomics.\r\n', '<p>Economics on Your Tips brings you yet another amazing Class 12 Session around the topic of Introductory of Macroeconomics: Types of Goods and Investment. In this Lecture, Sarthak Virmani will touch upon one of Class 12 Economics&#39; most important aspects of Macroeconomics.</p>\r\n', '<ul><li>Real-world skills to build real-world websites professional, beautiful and truly responsive websites</li><li>The proven 7 real-world steps from complete scratch to a fully functional and optimized website</li><li>Learn super cool jQuery effects like animations, scroll effects and &quot;sticky&quot; navigation</li><li>A huge project that will teach you everything you need to know to get started with HTML5 and CSS3</li><li>Simple-to-use web design guidelines and tips to make your website stand out from the crowd</li><li>Downloadable lectures, code and design assets for the entire project</li></ul>', 0, NULL, NULL, NULL, 7, 8, 1, '2020-12-12 04:34:47', '2020-12-12 05:07:28', NULL, NULL, NULL),
(5, 4, 'science-class-9-physics', 'a985a680-d89b-4b54-95e0-44567b2084d8', NULL, 9, 'Science - Class 9 Physics', NULL, NULL, NULL, 4, 2, '150', '15000.00', '15000.00', 0, 'https://www.youtube.com/embed/dgOLqHero24', 'DETAILED SYLLABUS REDUCTION -SCIENCE NEW LATEST SYLLABUS -AS PER 2021 BOARDS  CLASS 10 CBSE , NEW VIDEO, WHICH ALL CHAPTERS AND TOPICS ARE DELETED BY CBSE IN 2021 BOARD EXAMS FOR CLASS 10 CBSE, LATEST DETAILED VIDEO\r\n', '<p>DETAILED SYLLABUS REDUCTION -SCIENCE NEW LATEST SYLLABUS -AS PER 2021 BOARDS&nbsp; CLASS 10 CBSE , NEW VIDEO, WHICH ALL CHAPTERS AND TOPICS ARE DELETED BY CBSE IN 2021 BOARD EXAMS FOR CLASS 10 CBSE, LATEST DETAILED VIDEO</p>\r\n', '<ul><li>Real-world skills to build real-world websites professional, beautiful and truly responsive websites</li><li>The proven 7 real-world steps from complete scratch to a fully functional and optimized website</li><li>Learn super cool jQuery effects like animations, scroll effects and &quot;sticky&quot; navigation</li><li>A huge project that will teach you everything you need to know to get started with HTML5 and CSS3</li><li>Simple-to-use web design guidelines and tips to make your website stand out from the crowd</li><li>Downloadable lectures, code and design assets for the entire project</li></ul>', 0, NULL, NULL, NULL, 9, 10, 1, '2020-12-12 04:50:38', '2021-03-22 13:31:11', NULL, NULL, NULL),
(6, 4, 'resolved-translation', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', NULL, 2, 'Physics by Naveen', NULL, NULL, NULL, 4, 3, '100', '10000.00', '500.00', 0, 'https://www.teachingbharat.com/users/referral/8OFLH7GZ', 'Physics is the science of matter and its motion—the science that deals with concepts such as force, energy, mass, and charge.\r\n', '<p>Physics is the science of matter and its motion&mdash;the science that deals with concepts such as force, energy, mass, and charge.</p>\r\n\r\n<p>As an experimental science, its goal is to understand the natural world.</p>\r\n\r\n<p>In one form or another, physics is one of the oldest academic disciplines; through its modern subfield of astronomy, it may be the oldest of all.</p>\r\n\r\n<p>Sometimes synonymous with philosophy, chemistry and even certain branches of mathematics and biology during the last two millennia, physics emerged as a modern science in the 17th century and these disciplines are now generally distinct, although the boundaries remain difficult to define.</p>\r\n\r\n<p>Advances in physics often translate to the technological sector, and sometimes influence the other sciences, as well as mathematics and philosophy.</p>\r\n\r\n<p>For example, advances in the understanding of electromagnetism have led to the widespread use of electrically driven devices (televisions, computers, home appliances etc.); advances in thermodynamics led to the development of motorized transport; and advances in mechanics led to the development of the calculus, quantum chemistry, and the use of instruments like the electron microscope in microbiology.</p>\r\n\r\n<p>Today, physics is a broad and highly developed subject.</p>\r\n\r\n<p>Research is often divided into four subfields: condensed matter physics; atomic, molecular, and optical physics; high energy physics; and astronomy and astrophysics.</p>\r\n\r\n<p>Most physicists also specialize in either theoretical or experimental research, the former dealing with the development of new theories, and the latter dealing with the experimental testing of theories and the discovery of new phenomena.</p>\r\n\r\n<p>Despite important discoveries during the last four centuries, there are a number of open questions in physics, and many areas of active research.</p>\r\n\r\n<p>Although physics encompasses a wide variety of phenomena, all competent physicists are familiar with the basic theories of classical mechanics, electromagnetism, relativity, thermodynamics, and quantum mechanics.</p>\r\n\r\n<p>Each of these theories has been tested in numerous experiments and proven to be an accurate model of nature within its domain of validity.</p>\r\n\r\n<p>For example, classical mechanics correctly describes the motion of objects in everyday experience, but it breaks down at the atomic scale, where it is superseded by quantum mechanics, and at speeds approaching the speed of light, where relativistic effects become important.</p>\r\n\r\n<p>While these theories have long been well-understood, they continue to be areas of active research&mdash;for example, a remarkable aspect of classical mechanics known as chaos theory was developed in the 20th century, three centuries after the original formulation of mechanics by Isaac Newton (1642&ndash;17</p>\r\n', '<p>Physics is the science of matter and its motion&mdash;the science that deals with concepts such as force, energy, mass, and charge.</p><p>As an experimental science, its goal is to understand the natural world.</p><p>In one form or another, physics is one of the oldest academic disciplines; through its modern subfield of astronomy, it may be the oldest of all.</p><p>Sometimes synonymous with philosophy, chemistry and even certain branches of mathematics and biology during the last two millennia, physics emerged as a modern science in the 17th century and these disciplines are now generally distinct, although the boundaries remain difficult to define.</p><p>Advances in physics often translate to the technological sector, and sometimes influence the other sciences, as well as mathematics and philosophy.</p><p>For example, advances in the understanding of electromagnetism have led to the widespread use of electrically driven devices (televisions, computers, home appliances etc.); advances in thermodynamics led to the development of motorized transport; and advances in mechanics led to the development of the calculus, quantum chemistry, and the use of instruments like the electron microscope in microbiology.</p><p>Today, physics is a broad and highly developed subject.</p><p>Research is often divided into four subfields: condensed matter physics; atomic, molecular, and optical physics; high energy physics; and astronomy and astrophysics.</p><p>Most physicists also specialize in either theoretical or experimental research, the former dealing with the development of new theories, and the latter dealing with the experimental testing of theories and the discovery of new phenomena.</p><p>&nbsp;</p>', 0, NULL, NULL, NULL, 11, 12, 1, '2020-12-12 09:57:04', '2021-02-16 20:29:46', NULL, NULL, NULL),
(7, 4, 'finibus-bonorum-et-malorum', 'a985a680-d89b-4b54-95e0-44567b2084d8', NULL, 6, 'Finibus Bonorum et Malorum', 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p><p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>', '<ul><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li>Phasellus in mi a lorem sagittis pellentesque quis in lectus.</li><li>Sed pulvinar sapien quis aliquet euismod.</li><li>Nulla aliquam tellus feugiat euismod ultrices.</li><li>Donec pulvinar nisl vehicula, faucibus lorem quis, sagittis libero.</li></ul><p>&nbsp;</p><p>&nbsp;</p><ul><li>Donec quis lectus laoreet, sollicitudin tellus vitae, facilisis sem.</li><li>Etiam quis nisl a diam tempus posuere.</li><li>Nunc eget neque a mi ultrices sagittis in et augue.</li><li>Etiam sit amet libero ut enim venenatis fermentum.</li></ul><p>&nbsp;</p><p>&nbsp;</p><ul><li>In non arcu eget nibh lacinia sodales et ut nibh.</li></ul><p>&nbsp;</p><p>&nbsp;</p><ul><li>Vestibulum gravida neque id dui interdum molli</li></ul>', 0, '2021-02-03 23:30:38', '2021-02-10 23:45:44', NULL, 13, 14, 1, '2021-02-03 23:36:37', '2021-02-03 23:36:37', NULL, NULL, NULL),
(8, 4, 'how-to-make-a-space-craft', '08b83891-a807-4235-b8d9-b515375c0598', NULL, 9, 'How to make a space craft', 1, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, 'You will learn how to make a space craft with high tech teachers', '<p>SESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEWSESSION OVERVIEW</p>', 'session featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession features', 0, '2021-03-25 20:30:26', '2021-03-31 21:00:32', 1, 15, 16, 1, '2021-02-09 20:27:04', '2021-03-24 20:23:51', 'https://us02web.zoom.us/rec/share/ZM8VTjzj2BJy5UgXUgljg8fyaSWF0-AKtRyUutertX1vnYuk9uWeWTHRks-xvbfe.p9Mzy-Y1WqlmPT4b', 'How to make a space craft;How to make a space craft;How to make a space craft;How to make a space craft', NULL),
(9, 4, 'geometry-basics', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', NULL, 8, 'Geometry basics', 1, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, 'short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description short description shor', '<p>session overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overviewsession overview</p>', '<p>session featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession featuressession features</p>', 0, '2021-02-09 14:30:28', '2021-02-09 18:15:43', NULL, 17, 18, 1, '2021-02-09 20:51:23', '2021-02-09 20:51:23', '', NULL, NULL),
(10, 4, 'trigometry-advanced', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', NULL, 8, 'trigometry advanced', 1, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, 'HORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCRIPTIOHORT DESCR', '<p>SESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIESESSION OVERVIE</p>', '<p>SION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURESION FEATURE</p>', 0, '2021-02-11 21:00:49', '2021-02-11 21:30:55', NULL, 19, 20, 1, '2021-02-09 20:52:19', '2021-02-09 20:52:19', '', NULL, NULL),
(14, 4, 'join-teaching-bharat', '08b83891-a807-4235-b8d9-b515375c0598', NULL, 2, 'Join teaching bharat', 1, NULL, NULL, 3, 8, NULL, NULL, NULL, NULL, NULL, '', 'learn hindi', 'fun', 0, '2021-03-13 18:00:09', '2021-03-26 21:45:33', 1, 27, 28, 1, '2021-03-10 23:47:10', '2021-03-24 20:23:43', 'https://www.youtube.com/embed/8-tm9joTJHI', 'hindi', NULL),
(15, 4, 'mathematics-algebra', '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 9, 'Mathematics Algebra', NULL, NULL, NULL, 3, 1, '5', '1000.00', '500.00', 0, '', 'mathematics', '<p>mathematics</p>\r\n', '<p>mathematics</p>', 0, NULL, NULL, NULL, 29, 30, 1, '2021-03-13 11:33:50', '2021-03-22 13:30:57', NULL, NULL, NULL),
(16, 4, 'web-developer', '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 7, 'Web Developer', 1, NULL, NULL, 3, 3, NULL, NULL, NULL, NULL, NULL, 'hghjg', 'hgjh', 'jkjhj', 0, '2021-03-13 11:43:42', '2021-03-13 16:45:44', NULL, 31, 32, 1, '2021-03-13 11:44:02', '2021-03-23 16:51:28', 'https://www.youtube.com/embed/8-tm9joTJHI', 'Algebra', NULL),
(17, 4, 'what-is-gravity-advanced-tutorial', '08b83891-a807-4235-b8d9-b515375c0598', NULL, 9, 'What is gravity advanced tutorial', 1, NULL, NULL, 3, 2, NULL, NULL, NULL, NULL, NULL, 'What is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorial', 'What is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorial', 'What is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorialWhat is gravity advanced tutorial', 0, '2021-03-13 18:00:41', '2021-03-31 18:30:45', 1, 33, 34, 1, '2021-03-13 17:20:02', '2021-03-24 20:23:35', '', 'What is gravity advanced tutorial;What is gravity advanced tutorial;What is gravity advanced tutorial;What is gravity advanced tutorial', NULL),
(18, 4, 'what-is-nodejs', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 9, 'What is nodejs', 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'What is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejsWhat is nodejs', NULL, 0, '2021-03-14 17:00:53', '2021-03-14 23:30:01', NULL, 35, 36, 1, '2021-03-14 13:27:25', '2021-03-14 20:06:08', '', 'What is nodejs;What is nodejs;What is nodejs;What is nodejs', NULL),
(19, 4, 'what-is-angular-in-mean-stack', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 9, 'What is angular in MEAN stack', 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'What is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stackWhat is angular in MEAN stack', NULL, 0, '2021-03-14 18:00:43', '2021-03-31 22:45:53', NULL, 37, 38, 1, '2021-03-14 13:37:09', '2021-03-16 18:06:34', '', 'What is angular in MEAN stack;What is angular in MEAN stack;What is angular in MEAN stack;What is angular in MEAN stack', NULL),
(20, 4, 'what-is-reactjs-in-mern-stack', '08b83891-a807-4235-b8d9-b515375c0598', NULL, 9, 'What is reactjs in MERN stack', 1, NULL, NULL, 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, 'What is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stackWhat is reactjs in MERN stack', NULL, 0, '2021-05-14 18:00:53', '2021-05-14 19:45:59', 2, 39, 40, 1, '2021-03-14 13:44:21', '2021-05-09 18:50:49', '', 'What is reactjs in MERN stack;What is reactjs in MERN stack;What is reactjs in MERN stack;What is reactjs in MERN stack', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses_phinxlog`
--

CREATE TABLE `courses_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_phinxlog`
--

INSERT INTO `courses_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200804172353, 'CreateGradingTypes', '2020-08-04 11:58:15', '2020-08-04 11:58:15', 0),
(20200804172400, 'CreateCourses', '2020-08-04 11:58:16', '2020-08-04 11:58:16', 0),
(20200804172409, 'CreateSubjects', '2020-08-04 11:58:16', '2020-08-04 11:58:16', 0),
(20200804172418, 'CreateSubjectsTeachers', '2020-08-04 11:58:17', '2020-08-04 11:58:17', 0),
(20201010080328, 'CreateBoards', '2020-10-10 02:34:03', '2020-10-10 02:34:03', 0),
(20201105194627, 'AddSubjectNSeatsToCourses', '2020-12-07 16:43:46', '2020-12-07 16:43:46', 0),
(20201105201810, 'CreateCourseChapters', '2020-12-07 16:49:28', '2020-12-07 16:49:28', 0),
(20201113021946, 'AddUserIdToCourses', '2020-12-07 16:49:28', '2020-12-07 16:49:28', 0),
(20201123033452, 'AddSlugToCourses', '2020-12-07 16:49:28', '2020-12-07 16:49:28', 0),
(20201211150707, 'AddFeaturesToCourses', '2020-12-11 18:04:28', '2020-12-11 18:04:28', 0),
(20201212061918, 'CreateCourseCurriculums', '2020-12-19 19:01:08', '2020-12-19 19:01:08', 0),
(20210124121702, 'AddCourseTypeToCourses', '2021-01-30 15:55:26', '2021-01-30 15:55:26', 0),
(20210124132108, 'AddStartDateTypeToCourses', '2021-01-30 15:55:26', '2021-01-30 15:55:26', 0),
(20210209025710, 'AddPastCourseUrlToCourses', '2021-02-09 08:59:22', '2021-02-09 08:59:22', 0),
(20210210032747, 'AddWhatLearnToCourses', '2021-02-28 00:18:38', '2021-02-28 00:18:38', 0),
(20210213042333, 'AddWatchingToCourses', '2021-03-02 23:03:58', '2021-03-02 23:03:58', 0),
(20210214022558, 'CreateCourseWatchings', '2021-03-02 23:03:58', '2021-03-02 23:03:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_chapters`
--

CREATE TABLE `course_chapters` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter_file_dir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter_file_size` int(11) DEFAULT NULL,
  `chapter_file_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 DEFAULT NULL,
  `position` int(11) NOT NULL,
  `is_free` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_chapters`
--

INSERT INTO `course_chapters` (`id`, `course_id`, `title`, `video_url`, `chapter_file`, `chapter_file_dir`, `chapter_file_size`, `chapter_file_type`, `short_description`, `description`, `position`, `is_free`, `created`, `modified`) VALUES
(1, 1, 'Counting small numbers', 'https://www.youtube.com/embed/y2-uaPiyoxc', NULL, NULL, NULL, NULL, 'Sal counts squirrels and horses', '<p>Sal counts squirrels and horses</p>', 18, 1, '2020-12-08 03:25:17', '2020-12-08 03:25:31'),
(2, 1, 'Comparing numbers of objects', 'https://www.youtube.com/embed/__nkbr6DeTg', NULL, NULL, NULL, NULL, 'Sal talks about what \"more than\" and \"less than\" mean. Created by Sal Khan.', '<p>Sal talks about what &quot;more than&quot; and &quot;less than&quot; mean. Created by Sal Khan.</p>', 19, 0, '2020-12-08 03:27:07', '2020-12-08 03:27:07'),
(3, 1, 'Counting by category', 'https://www.youtube.com/embed/UA975j_qsTQ', NULL, NULL, NULL, NULL, 'Sal categorizes objects then count the number of things in each category. ', '<p>Sal categorizes objects then count the number of things in each category.</p>', 20, 1, '2020-12-08 03:28:52', '2020-12-08 03:28:52'),
(4, 1, 'What is addition?', 'https://www.youtube.com/embed/fsTD_jqseBA', NULL, NULL, NULL, NULL, 'Learn what it means to add. The examples used in this video are 1+1 and 2+3. Practice this lesson yourself on KhanAcademy.org right now: ', '<p>Learn what it means to add. The examples used in this video are 1+1 and 2+3. Practice this lesson yourself on KhanAcademy.org right now: <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=fsTD_jqseBA&amp;redir_token=QUFFLUhqbkhmZlhPSGRpdy1KZWM0QU4yRFB3Vi04OC1UUXxBQ3Jtc0tsanRjYUVIYmdkR2ZFTjgwdkJGS1piM0VYazZ2YXVfck5lcE1HR1QwSzYwcDl5TFNTanJ5NDRLLWJHRXdfM2hUb0haVVFUbEVjajZPX1NEOERza2pabFlVWU94dmctMUtCU3hLeTlmVmpnZmlHWko5TQ%3D%3D&amp;event=video_description&amp;q=https%3A%2F%2Fwww.khanacademy.org%2Fmath%2Fearly-math%2Fcc-early-math-add-sub-basics%2Fcc-early-math-add-sub-intro%2Fe%2Faddition_1%3Futm_source%3DYT%26utm_medium%3DDesc%26utm_campaign%3DEarlyMath\">https://www.khanacademy.org/math/earl...</a> Watch the next lesson: <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=fsTD_jqseBA&amp;redir_token=QUFFLUhqbTlNV1JHWE1yQ2ZwWTlCTklzc0tVcDl4VTFNZ3xBQ3Jtc0trbHdUeDkyTGY4X2MtRWlQUW1VczAxbDRnczZEY2ZwaUJEek1JUlhQb1J2U3pBbTYwUHE5ZjhOT1E3azlrMWdUcnExbWx0U2loX0x6UHZTQ0ZXejAzanFFTl9JVXhoSm1PQmI4UnNCb0Q2aTl6WEN6dw%3D%3D&amp;event=video_description&amp;q=https%3A%2F%2Fwww.khanacademy.org%2Fmath%2Fearly-math%2Fcc-early-math-add-sub-basics%2Fcc-early-math-add-sub-intro%2Fv%2Fsubtraction-introduction%3Futm_source%3DYT%26utm_medium%3DDesc%26utm_campaign%3DEarlyMath\">https://www.khanacademy.org/math/earl...</a> Missed the previous lesson? <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=fsTD_jqseBA&amp;redir_token=QUFFLUhqblFwcDlNUWd4OGhvdmtha0w4NUdoejRVZXRBd3xBQ3Jtc0tscDRJbHBXZFFZQmNNWEdZNmFqV3RSUnFaUWFMSzRiSnYyMnQ5Z1Ftb3A0MWdZajl4YWY4QTNjY3NrOWpNRHc2bGlWOG8ya3JnN3A0YUlvNEdWX251aGRQUXhYUjBxRTRtUUo0bTUwQkVRNWwyZU4tRQ%3D%3D&amp;event=video_description&amp;q=https%3A%2F%2Fwww.khanacademy.org%2Fmath%2Fearly-math%2Fcc-early-math-counting-topic%2Fcc-early-math-comparing-numbers%2Fv%2Fcount-by-category%3Futm_source%3DYT%26utm_medium%3DDesc%26utm_campaign%3DEarlyMath\">https://www.khanacademy.org/math/earl...</a> Early Math on Khan Academy: Math begins with counting. It&#39;s the most important skill we learn in our early years and becomes the foundation for all other math concepts. Once we can count, we can add, subtract, and measure the world around us. Shortly thereafter, we can learn about place values, plots, graphs, time, money, and shapes. These early math skills are presented in this subject&#39;s tutorials in a straightforward, understandable, and (dare we say it) fun way! Want a virtual coach for Early Math? Unlock the Early Math mission on Khan Academy here: <a target=\"_blank\" href=\"https://www.youtube.com/redirect?v=fsTD_jqseBA&amp;redir_token=QUFFLUhqbm9SR3lpQ3FyV2lEY0xLQlIyX1FIX05YRnlDZ3xBQ3Jtc0tueVJra1VvSnloaWlCNjdONDVjanpPTl9lZ1FjSWs5bHQwVzQ5TGZlY2oyOHNLMjZyXzh1NGJ0Z3IyMEo5a1NnWkt3R0IzLW8xZ2hJOTA2VVViMElrNDQtVjhhTXFZTThKYTg5TUptVmoyRmU0N1Jxaw%3D%3D&amp;event=video_description&amp;q=https%3A%2F%2Fwww.khanacademy.org%3Futm_source%3DYT%26utm_medium%3DDesc%26utm_campaign%3DEarlyMath\">https://www.khanacademy.org?utm_sourc...</a> About Khan Academy: Khan Academy offers practice exercises, instructional videos, and a personalized learning dashboard that empower learners to study at their own pace in and outside of the classroom. We tackle math, science, computer programming, history, art history, economics, and more. Our math missions guide learners from kindergarten to calculus using state-of-the-art, adaptive technology that identifies strengths and learning gaps. We&#39;ve also partnered with institutions like NASA, The Museum of Modern Art, The California Academy of Sciences, and MIT to offer specialized content.</p>', 21, 1, '2020-12-08 03:30:41', '2020-12-08 03:30:41'),
(5, 1, 'Teens as sums with 10', 'https://www.youtube.com/embed/ourH3ueWNmA', NULL, NULL, NULL, NULL, 'Sal looks at the 1 in each teen number and thinks about what it really means.  Created by Sal Khan.', '<p>Sal looks at the 1 in each teen number and thinks about what it really means.&nbsp; Created by Sal Khan.</p>', 22, 0, '2020-12-08 03:32:55', '2020-12-08 03:32:55'),
(6, 1, 'Geometry and measurement: Shapes and space', 'https://www.youtube.com/embed/uikYPJw0tnE', NULL, NULL, NULL, NULL, 'Sal decides if objects are above, below, beside, in front of, or behind other objects. ', '<p>Sal decides if objects are above, below, beside, in front of, or behind other objects.</p>', 23, 0, '2020-12-08 03:38:33', '2020-12-08 03:38:33'),
(7, 1, 'Geometry and measurement: Length and size', 'https://www.youtube.com/embed/SQmyTmO8OKw', NULL, NULL, NULL, NULL, 'Sal orders 3 objects by length and compares the lengths of 2 objects indirectly by using a third object.', '<p>Sal orders 3 objects by length and compares the lengths of 2 objects indirectly by using a third object.</p>', 24, 0, '2020-12-08 03:40:11', '2020-12-08 03:40:11'),
(8, 2, 'Negative numbers', 'https://www.youtube.com/embed/Hlal9ME2Aig', '775313160759540142047.docx', 'webroot/img/uploads/CourseChapters/chapter_file/', 58543, 'application/vnd.openxmlformats-officedocument.word', 'Here\'s a number line that should look very familiar. It starts at 0000, then counts up by 1111 from there:', '<p>Here&#39;s a number line that should look very familiar. It starts at 0000, then counts up by 1111 from there:</p><p>We know that if we were to keep going to the right, we would have 11111111, then 12121212, and so on.</p><p>What happens if we keep going to the left of 0000 though? We get negative numbers! To the left of 0000 is &minus;1-1&minus;1minus, 1, then &minus;2-2&minus;2minus, 2, then &minus;3-3&minus;3minus, 3, and so on:</p><p>Let&#39;s practice!</p><p>Problem 1A</p><p><strong>Move the dot to &minus;4-4&minus;4minus, 4.</strong></p><p>&nbsp;</p><p>Why do we need negative numbers?</p><p>Negative numbers help us describe values less than zero.</p><p>Example:</p><p>When the temperature is 8∘8^\\circ8∘8, degrees below 0∘0^\\circ0∘0, degrees, it is less than 0000. We can say the temperature is &minus;8∘-8^\\circ&minus;8∘minus, 8, degrees.</p>', 15, 1, '2020-12-08 03:53:24', '2020-12-10 10:16:41'),
(9, 2, 'Absolute value examples', 'https://www.youtube.com/embed/r6hS_8nm1jM', NULL, NULL, NULL, NULL, 'Learn how to find the absolute value of 5, -10, and 12. Created by Sal Khan and Monterey Institute for Technology and Education.', '<p>The absolute value of a number is its distance from 0000.</p><p>For example, the absolute value of 4444 is 4\\blueD44start color #11accd, 4, end color #11accd:</p><p>This seems kind of obvious. Of course the distance from 0000 to 4444 is 4\\blueD44start color #11accd, 4, end color #11accd. Where absolute value gets interesting is with negative numbers.</p><p>For example, the absolute value of &minus;4-4&minus;4minus, 4 is also 4\\blueD44start color #11accd, 4, end color #11accd:</p>', 16, 1, '2020-12-08 03:55:41', '2020-12-08 03:56:14'),
(10, 2, 'Exponents', 'https://www.youtube.com/embed/XZRQhkii0h0', NULL, NULL, NULL, NULL, 'Introduction: In this article, you\'ll learn how to square numbers!', '<p>Introduction</p><p>In this article, you&#39;ll learn how to square numbers!</p><p>Example</p><p>Here&#39;s how we square the number 3333:</p><p>32=3&times;3=9\\large3^2 = 3 \\times 3 = 932=3&times;3=9</p>', 17, 0, '2020-12-08 03:58:07', '2020-12-08 03:58:07'),
(11, 4, 'Interest and debt', 'https://www.youtube.com/embed/Rm6UdfRs3gw', '856824160774804588953.docx', 'webroot/img/uploads/CourseChapters/chapter_file/', 371916, 'application/vnd.openxmlformats-officedocument.word', 'Learn about the basics of compound interest, with examples of basic compound interest calculations. Created by Sal Khan', '<p>Learn about the basics of compound interest, with examples of basic compound interest calculations. Created by Sal Khan</p>', 9, 0, '2020-12-12 04:40:45', '2020-12-12 04:40:45'),
(12, 4, 'The rule of 72 for compound interest', 'https://www.youtube.com/embed/mec-QpjQMXY', NULL, NULL, NULL, NULL, 'Using the Rule of 72 to approximate how long it will take for an investment to double at a given interest rate. Created by Sal Khan.', '<p>Using the Rule of 72 to approximate how long it will take for an investment to double at a given interest rate. Created by Sal Khan.</p>', 10, 0, '2020-12-12 04:41:53', '2020-12-12 04:41:53'),
(13, 4, 'Introduction to interest', 'https://www.youtube.com/embed/GtaoP0skPWc', NULL, NULL, NULL, NULL, 'Interest is effectively a rent on money. In this video, we think about what an interest rate really is. Learn about the difference between simple interest and compound interest and how interest is calculated on a loan using an example of calculating the interest rate on a loan. Created by Sal Khan.', '<p>Interest is effectively a rent on money. In this video, we think about what an interest rate really is. Learn about the difference between simple interest and compound interest and how interest is calculated on a loan using an example of calculating the interest rate on a loan. Created by Sal Khan.</p>', 11, 0, '2020-12-12 04:43:15', '2020-12-12 04:43:15'),
(14, 4, 'Interest (part 2)', 'https://www.youtube.com/embed/t4zfiBw0hwM', NULL, NULL, NULL, NULL, 'In this video, we expand the equation to calculate simple interest for a single period, P*(1+r), to calculate interest when interest is charged for more than one period and that interest is compounded at different intervals. By doing so, we can better understand the difference between simple and compound interest. Created by Sal Khan.', '<p>In this video, we expand the equation to calculate simple interest for a single period, P*(1+r), to calculate interest when interest is charged for more than one period and that interest is compounded at different intervals. By doing so, we can better understand the difference between simple and compound interest. Created by Sal Khan.</p>', 12, 0, '2020-12-12 04:44:29', '2020-12-12 04:44:29'),
(15, 4, 'Annual percentage rate (APR) and effective APR', 'https://www.youtube.com/embed/RuPMsK0mQC8', NULL, NULL, NULL, NULL, 'The annual percentage rate (APR) that you are charged on a loan may not be the amount of interest you actually pay. The amount of interest you effectively pay is greater the more frequently the interest is compounded. In this video, we calculate the effective APR based on compounding the APR daily. Created by Sal Khan.', '<p>The annual percentage rate (APR) that you are charged on a loan may not be the amount of interest you actually pay. The amount of interest you effectively pay is greater the more frequently the interest is compounded. In this video, we calculate the effective APR based on compounding the APR daily. Created by Sal Khan.</p>', 13, 0, '2020-12-12 04:45:47', '2020-12-12 04:45:47'),
(16, 4, 'Institutional roles in issuing and processing credit cards', 'https://www.youtube.com/embed/IPxQQNyCxas', NULL, NULL, NULL, NULL, 'The institutions involved in processing your credit credit and how they relate to each other. Created by Sal Khan', '<p><strong>Institutional roles in issuing and processing credit&nbsp;cards</strong></p><p>The institutions involved in processing your credit credit and how they relate to each other. Created by Sal Khan</p>', 14, 0, '2020-12-12 04:47:05', '2020-12-12 04:47:05'),
(17, 5, 'Distance and displacement', 'https://www.youtube.com/embed/vQCkYm3v3aA', NULL, NULL, NULL, NULL, 'Distance is a scalar quantity, which means the distance of any object does not depend on the direction of its motion. ', '<p>Distance is a scalar quantity, which means the distance of any object does not depend on the direction of its motion. The distance of an object can be defined as the complete path travelled by an object. E.g.: if a car travels east for 5 km and takes a turn to travel north for another 8 km, the total distance travelled by car shall be 13 km. The distance can never be zero or negative and it is always more than the displacement of the object. The distance of the object gives complete information about the path travelled by the object.&nbsp;</p><p>Displacement is a vector quantity, which means that the displacement of an object depends on the direction of the motion of the object. The displacement of an object can be defined as the overall motion of the object or the minimum distance between the starting point of the object and the final position of the object. E.g.: if we consider the same example as given earlier, the total displacement of the object will be the length of the line joining the two positions. The displacement of an object is usually shorter or equal to the distance travelled by the object. The displacement of the object does not give the proper information about the path travelled by the object.&nbsp;</p><p>(image will be uploaded soon)</p><p>The below mentioned table stating the difference between distance and displacement will help you understand these two concepts better.</p><p>Distance</p><p>Displacement</p><p>1) The total or complete path travelled by an object.</p><p>1) The shortest distance between the final position and the initial position of the motion of the object.</p><p>2) It can never be negative or zero, always positive</p><p>2) It can be positive, negative or zero depending on the context.</p><p>3) It is a scalar quantity.</p><p>3) It is a vector quantity.</p><p>4) Distance doesn&rsquo;t decrease with time.</p><p>4) It decreases with time.</p><p>5) It is never less than the displacement value.</p><p>5) It is either equal to or less than the distance value.</p><p>6) It is denoted by &lsquo;d&rsquo;.</p><p>6) It is denoted by &lsquo;s&rsquo;.</p><p>7) It gives the complete information about the path travelled by the object.</p><p>7) It does not give the complete information about the path travelled by the object.</p><p>There are a few similarities between distance and displacement that you should keep in mind.</p><ul><li><p>The units of distance and displacement both are the same i.e., meters (m) in S.I. units.</p></li><li><p>Both require a reference point to be measured from.</p></li><li><p>Both are equal to each other if the motion of the object is in a straight line and that too in a single direction).</p></li><li><p>The dimensions for distance and displacement both are the same.</p></li></ul><p>Example for Distance and Displacement:</p><p>(image will be uploaded soon)</p><p>The length of the straight line segment joining the points A and B (the black line) is the displacement of the object moving from A to B. The length of the curve joining the points A and B (the red line) is the distance travelled by the object. Through this we can see that the distance travelled by the object is always more than the displacement of the object. The displacement of the object is the shortest distance that can join the initial position of the object and the final position of the object.</p><p>The application of the concept can be understood by solving the numerical problems given later and by learning the basic formula for distance and displacement. The students are advised to solve as many problems as possible as only that shall make the concept of distance and displacement completely clear.</p>', 2, 0, '2020-12-12 04:54:36', '2020-12-12 04:54:36'),
(18, 5, 'Distance and displacement in one dimension', 'https://www.youtube.com/embed/w2mbvtpQKrM', NULL, NULL, NULL, NULL, 'Kinematics is that branch of mechanics, which describes the motion of bodies without reference to the forces that either cause the motion or are generated as a result of the motion', '<p><strong><em>Kinematics </em></strong>is that branch of mechanics, which describes the motion of bodies without reference to the forces that either cause the motion or are generated as a result of the motion.&nbsp; Kinematics is often referred to as the &lsquo;<em>geometry of motion</em>&rsquo;. We start our study of kinematics by first discussing in this chapter the motion of a particle. A <strong><em>particle </em></strong>is a physical analogue of a point. A particle is a body whose physical dimensions are so small compared with the radius of curvature of its path that we can treat the motion of a particle as that of a point. Later on, we shall apply the concepts learnt here to the motion of rigid bodies, which are a collection of particles.</p><p><strong>Rest and Motion</strong></p><p>An object is said to be in <em>motion </em>if its position changes with respect to its surroundings in a given time. On the other hand, if the position of the object does not change with respect to its surroundings, it is said to be at <em>rest</em>. A car speeding on the road, a ship sailing on water and a bird flying through the air are examples of objects in motion. A book lying on a desk is at rest because its position with respect to the desk does not change with time.</p><p>If a person sitting in a boat is crossing a river, then the person with respect to the boat is in a state of rest (because his position with respect to the boat is not changing), but with respect to the shore he is in the state of motion. Similarly, if two cars are going side by side with same speed then with respect to each other they are in a state of rest, but with respect to trees and persons on the road they are in a state of motion. Thus, it is clear that description of motion depends on the observer or what is called in the language of Physics as a &lsquo;<strong><em>Frame of Reference</em></strong>&rsquo;. Thus, in the example of a person sitting in a boat and crossing the river, in a frame of reference attached to the boat, the person is at rest, while in a frame of reference attached to the shore the person is in the state of motion.</p><p>A convenient way to fix a frame of reference is to choose an origin and three mutually perpendicular axes labelled as <em>x</em>, <em>y</em> and <em>z</em> axes. Then the position of an object in space is, specified by the three coordinates. As the object moves, one or two or all the three coordinates change with time and it is the essential task of mechanics to <em>obtain </em>these coordinates as functions of time. If we know x(<em>t</em>), y(<em>t</em>) and z(<em>t</em>), then the motion of the object is completely described.</p><p>The motion of an object is said to be <strong><em>one dimensional </em></strong>when only one of the three coordinates specifying the position of the object changes with time. The motion of a car on a road, the motion of a train along a railway track or an object falling freely are examples of one dimensional motions. <em>One dimensional </em>motion is also termed as <strong><em>rectilinear motion</em></strong>. The motion of an object&nbsp; is said to be two dimensional when two of the three coordinates specifying the position of the object change with time. The motion of a planet around the sun, a body moving along the circumference of a circle are examples of motion in two dimensions. Two dimensional motion is also referred to as motion in a plane.</p><p>The actual path followed by an object in a particular reference frame is termed as its &ldquo;<em>trajectory</em>&rdquo;. Thus, the trajectory is a straight line in case of one dimensional motion whereas in case of a two dimensional motion, the trajectory can be a circle, a parabola or in general, a curve.</p><p><strong>Note</strong></p><p>AIEEE Syllabus has only the description of <em>one </em>and <em>two </em>dimensional motions. Three dimensional motions, wherein all the three coordinates specifying the position of the object change with time, will seldom occur (as for example, the motion of a charged particle when projected in a magnetic field at an angle other than 90o. Such a particle describes a helix, a three dimensional trajectory).</p><p>Bodies that have only motion of translational motion behave like particles. An observer will describe the motion as translational if the axes of a reference frame which is imagined rigidly attached to the object always maintain the same orientation in space with respect to the observer (see figure).</p><p>In addition, if these axes change their orientation with respect to the observer, the motion is said to be combined <em>translational </em>and&nbsp;<em>rotational</em>.<br />We shall learn about the rotational part of the motion in the next unit. Presently, we begin the description of translational motion.</p><p><strong>SOME BASIC DEFINITIONS</strong></p><p><strong>Distance and Displacement</strong><br />The position of a moving object changes with respect to time. The length of the actual path covered by a body in a time interval is called <strong><em>distance</em></strong>, while the difference between the <em>final </em>and <em>initial </em>positions of an object is called <strong><em>displacement</em></strong>.</p><p>In the figure, let a particle be at point A at time <em>t</em>1, its position in the x-y plane being described by position vector <em>r</em>1&rarr;&nbsp;. At a later time <em>t</em>2, let this particle be at point B, described by position vector <em>r</em>1&rarr;&nbsp;. The displacement vector describing the change in position of the particle as it moves from A to B is<br />&Delta;<em>r</em>&rarr;=<em>r</em>2&rarr;&minus;<em>r</em>1&rarr;&nbsp;The distance travelled by the particle is the length AB along the curve.&nbsp;</p><p><em>Distance </em>is a <em>scalar </em>quantity which has magnitude only. <em>Displacement </em>is a <em>vector </em>quantity which has both magnitude and direction. Suppose PIE EDUCATION is at a distance of 5 km from your house and you come to PIE EDUCATION and go back to your house. Although you have travelled a distance of 10 km but your displacement is <em>zero </em>(null vector). If a body is moving in a circular path, then after one rotation its displacement will be zero but the distance travelled will be equal to the circumference of the circle. Thus, in general, magnitude of displacement is not equal to the distance travelled. However, it can be so if the motion is along a straight line without change in direction.</p><p><strong>Average Speed and Average Velocity</strong></p><p>The <em>average speed </em>in a time interval is defined as the total distance travelled by the particle divided by the time interval. Thus<br /><em>A</em><em>v</em><em>e</em><em>r</em><em>a</em><em>g</em><em>e</em><em>s</em><em>p</em><em>e</em><em>e</em><em>d</em>=<em>T</em><em>o</em><em>t</em><em>a</em><em>l</em><em>d</em><em>i</em><em>s</em><em>t</em><em>a</em><em>n</em><em>c</em><em>e</em><em>t</em><em>r</em><em>a</em><em>v</em><em>e</em><em>l</em><em>l</em><em>e</em><em>d</em><em>T</em><em>o</em><em>t</em><em>a</em><em>l</em><em>t</em><em>i</em><em>m</em><em>e</em><em>t</em><em>a</em><em>k</em><em>e</em><em>n</em><br />Average speed is a <em>scalar </em>quantity and its unit is m/s&nbsp; or&nbsp; km/h.<br />The <em>average velocity </em>(see figure) is defined as<br />&lt;<em>v</em>⃗&nbsp;&gt;=<em>d</em><em>i</em><em>s</em><em>p</em><em>l</em><em>a</em><em>c</em><em>e</em><em>m</em><em>e</em><em>n</em><em>t</em><em>e</em><em>l</em><em>a</em><em>p</em><em>s</em><em>e</em><em>d</em><em>t</em><em>i</em><em>m</em><em>e</em>=<em>r</em>⃗&nbsp;2&minus;<em>r</em>⃗&nbsp;1<em>t</em>2&minus;<em>t</em>1=&Delta;<em>r</em>⃗&nbsp;&Delta;<em>t</em><br />The average velocity is a vector quantity having the same direction as displacement. Its unit is also meter/second or km/h.</p>', 4, 0, '2020-12-12 04:56:40', '2020-12-12 04:56:40'),
(19, 5, 'Average speed & velocity', 'https://www.youtube.com/embed/a451lmDKv9w', NULL, NULL, NULL, NULL, 'Before learning about average speed and average velocity, we must know the difference between distance and displacement.', '<p>Average Speed</p><p>The average speed of a body in a certain time interval is the distance covered by the body in that time interval divided by time. So if a particle covers a certain distance s in a time <em>t</em>1 to <em>t</em>2, then the average speed of the body is:</p><p><em>v</em><em>a</em><em>v</em>&nbsp;= <em>s</em><em>t</em>2&ndash;<em>t</em>1</p><p>In general, average speed formula is:</p><p><em>A</em><em>v</em><em>e</em><em>r</em><em>a</em><em>g</em><em>e</em>&nbsp;<em>S</em><em>p</em><em>e</em><em>e</em><em>d</em> = <em>T</em><em>o</em><em>t</em><em>a</em><em>l</em>&nbsp;<em>D</em><em>i</em><em>s</em><em>t</em><em>a</em><em>n</em><em>c</em><em>e</em><em>T</em><em>o</em><em>t</em><em>a</em><em>l</em>&nbsp;<em>T</em><em>i</em><em>m</em><em>e</em></p><p>Now let us look at some of the examples to understand this concept easily</p><p>1.) In travelling from Pune to Nagpur , Rahul drove his bike for 2 hours at 60 kmph and 3 hours at 70 kmph.</p><p><strong>Sol 1)</strong> We know that, Distance = Speed &times; Time</p><p>So, in 2 hours, distance covered = 2&nbsp;&times; 60 = 120 km</p><p>in the next 3 hours, distance covered = 3&nbsp;&times; 70 = 210 km</p><p>Total distance covered = 120 + 210 = 330 km</p><p>Total time = 2 + 3 = 5 hrs</p><p>Avg. Speed =&nbsp;<em>T</em><em>o</em><em>t</em><em>a</em><em>l</em><em>d</em><em>i</em><em>s</em><em>t</em><em>a</em><em>n</em><em>c</em><em>e</em><em>c</em><em>o</em><em>v</em><em>e</em><em>r</em><em>e</em><em>d</em><em>T</em><em>i</em><em>m</em><em>e</em><em>t</em><em>a</em><em>k</em><em>e</em><em>n</em></p><p>Avg. Speed = 330/5 = 66 kmph</p><p>Average Velocity</p><p>The average velocity of a body in a certain time interval is given as the displacement of the body in that time interval divided by time. So if a particle covers a certain displacement <em>A</em><em>B</em>&minus;&rarr;&minus; &nbsp;in a time <em>t</em>1&nbsp;to <em>t</em>2, then the average velocity of the particle is:</p><p><em>v</em><em>a</em><em>v</em>&minus;&rarr; =<em>A</em><em>B</em>&minus;&rarr;&minus;<em>t</em>2&ndash;<em>t</em>1</p><p>In general, the &nbsp;formula is:</p><p><em>A</em><em>v</em><em>e</em><em>r</em><em>a</em><em>g</em><em>e</em>&nbsp;<em>V</em><em>e</em><em>l</em><em>o</em><em>c</em><em>i</em><em>t</em><em>y</em>= <em>T</em><em>o</em><em>t</em><em>a</em><em>l</em>&nbsp;<em>D</em><em>i</em><em>s</em><em>p</em><em>l</em><em>a</em><em>c</em><em>e</em><em>m</em><em>e</em><em>n</em><em>t</em><em>T</em><em>o</em><em>t</em><em>a</em><em>l</em>&nbsp;<em>T</em><em>i</em><em>m</em><em>e</em></p><p>Understand the concept average velocity through the examples given below.</p><p><strong>1) Calculate the average velocity at a particular time interval of a person if he moves 7 m in 4 sec and 18 m in 6 sec along x-axis?</strong></p><p><strong>Sol)&nbsp;</strong>Initial distance traveled by the person, xi = 7 m,</p><p>Final distance traveled,&nbsp;xf&nbsp;&nbsp;= 18 m,</p><p>Initial time interval ti = 4 sec,</p><p>Final time interval tf&nbsp;= 6 sec,</p><p>Average velocity Vav&nbsp;=&nbsp;<em>x</em><em>i</em>&minus;<em>x</em><em>f</em><em>t</em><em>f</em>&minus;<em>t</em><em>i</em>=18&minus;76&minus;4=112 = 5.5 m/sec.</p><p>To learn more about Speed and Velocity, download&nbsp;BYJU&rsquo;S- The Learning App.</p>', 3, 0, '2020-12-12 04:59:04', '2020-12-12 04:59:04'),
(20, 5, 'Calculating average velocity or speed', 'https://www.youtube.com/embed/oRKxmXwLvUU', NULL, NULL, NULL, NULL, 'Although speed and velocity are often words used interchangeably, in physics, they are distinct concepts. Velocity (v) is a vector quantity that measures displacement (or change in position, Δs) over the change in time (Δt), represented by the equation v = Δs/Δt. Speed (or rate, r) is a scalar quantity that measures the distance traveled (d) over the change in time (Δt), represented by the equatio', '<p>Although speed and velocity are often words used interchangeably, in physics, they are distinct concepts. Velocity (v) is a vector quantity that measures displacement (or change in position, &Delta;s) over the change in time (&Delta;t), represented by the equation v = &Delta;s/&Delta;t. Speed (or rate, r) is a scalar quantity that measures the distance traveled (d) over the change in time (&Delta;t), represented by the equatio</p>', 5, 0, '2020-12-12 05:00:40', '2020-12-12 05:00:40'),
(21, 5, 'Instantaneous speed & velocity', 'https://www.youtube.com/embed/fOIGsOSr9HI', NULL, NULL, NULL, NULL, 'In simple words, the velocity of an object at that instant of time. Instantaneous velocity definition is given as “The velocity of an object under motion at a specific point of time.”\r\n\r\nIf the object possesses uniform velocity then the instantaneous velocity may be the same as its standard velocity.', '<p>In simple words, the velocity of an object at that instant of time. Instantaneous velocity definition is given as <em><strong>&ldquo;The velocity of an object under motion at a specific point of time.&rdquo;</strong></em></p><p>If the object possesses uniform velocity then the instantaneous velocity may be the same as its standard velocity.</p><p>&nbsp;</p><p>It is determined very similarly as that of average velocity, but here time period is narrowed. We know that the average velocity for a given time interval is total displacement divided by total time. As this time interval approaches zero, the displacement also approaches zero. But the limit of the ratio of displacement to time is non-zero and is called instantaneous velocity.</p><p>Instantaneous Velocity Formula</p><p>The instantaneous velocity formula is given by</p><p><em>V</em><em>i</em>=lim&Delta;<em>t</em>&rarr;0<em>d</em><em>s</em><em>d</em><em>t</em></p><p>Where,</p><ul><li>&Delta;t is the small-time interval.</li><li>Vi is the instantaneous velocity.</li><li>s is the displacement.</li><li>t is the time.</li></ul><p>Unit of Instantaneous Velocity</p><p>The SI unit of instantaneous velocity is&nbsp;<strong>m/s.&nbsp;</strong>It is a <strong>vector quantity. </strong>It can also be determined by taking the slope of the&nbsp;<a href=\"https://byjus.com/physics/distance-time-velocity-time-graph/\">distance-time graph</a> or x-t graph.</p><p>Instantaneous Velocity Example</p><p>If the displacement of the particle varies with respect to time and is given as (6t2 + 2t + 4) m, the instantaneous velocity can be found out at any given time by:</p><p>s = (6t2 + 2t + 4)</p><p>Velocity (v) =&nbsp;<em>d</em><em>s</em><em>d</em><em>t</em> =&nbsp;<em>d</em>(6<em>t</em>2+2<em>t</em>+4)<em>d</em><em>t</em> = 12t + 2</p><p>So, if we have to find out the instantaneous velocity at t = 5 sec, then we will put the value of t in the obtained expression of velocity.</p><p>Instantaneous velocity at t = 5 sec = (12&times;5 + 2) = 62 m/s</p><p>Let us calculate the average velocity now for 5 seconds now.</p><p>Displacement = (6&times;52 + 2&times;5 + 4) = 164 m</p><p>Average velocity = 1645 = 32.8 m/s</p><p>Instantaneous Speed</p><p>We know that the average speed for a given time interval is the total distance traveled divided by the total time taken. As this time interval approaches zero, the distance traveled also approaches zero. But the limit of the ratio of distance and time is non-zero and is called the instantaneous speed. To understand it in simple words we can also say that instantaneous speed at any given time is the magnitude of instantaneous velocity at that time.</p><p>Instantaneous Speed Formula</p><p>The instantaneous speed formula is given by</p><p><em>S</em><em>p</em><em>e</em><em>e</em><em>d</em>(<em>i</em>)=<em>d</em><em>s</em><em>d</em><em>t</em></p><p>Where,</p><ul><li>ds is the distance</li><li>dt is the time interval</li><li>Speed(i)&nbsp;is the instantaneous speed</li></ul><p>Unit of Instantaneous Speed</p><p>The SI unit of instantaneous speed&nbsp;<strong>m/s.&nbsp;</strong>It is a <strong>scalar quantity. </strong>Instantaneous velocity can be <a href=\"https://byjus.com/physics/angular-velocity-linear-velocity/\">linear velocity or angular velocity</a></p><p>Instantaneous Speed Example</p><p>If distance as a function of time is known to us, we can find out the instantaneous speed at any time. Let&rsquo;s understand this by the means of an example.</p><p>Let Distance (s) = 5t3 m</p><p>Substitute it in the formula <em>S</em><em>p</em><em>e</em><em>e</em><em>d</em>(<em>i</em>)=<em>d</em><em>s</em><em>d</em><em>t</em> we get-</p><p><em>S</em><em>p</em><em>e</em><em>e</em><em>d</em>(<em>i</em>)=<em>d</em>5<em>t</em>3<em>d</em><em>t</em></p><p>= 15t&sup2;<br />We can now easily find the instantaneous speed at any given time by putting the value of t in this obtained expression.</p>', 6, 0, '2020-12-12 05:02:25', '2020-12-12 05:02:25'),
(22, 5, 'Acceleration', 'https://www.youtube.com/embed/FOkQszg1-j8', NULL, NULL, NULL, NULL, 'Acceleration (a) is the change in velocity (Δv) over the change in time (Δt), represented by the equation a = Δv/Δt. This allows you to measure how fast velocity changes in meters per second squared (m/s^2). Acceleration is also a vector quantity, so it includes both magnitude and direction.', '<p>Acceleration (a) is the change in velocity (&Delta;v) over the change in time (&Delta;t), represented by the equation a = &Delta;v/&Delta;t. This allows you to measure how fast velocity changes in meters per second squared (m/s^2). Acceleration is also a vector quantity, so it includes both magnitude and direction.</p>', 7, 0, '2020-12-12 05:04:15', '2020-12-12 05:04:15'),
(23, 5, 'Position time graphs', 'https://www.youtube.com/embed/7CHvM-VfoL8', NULL, NULL, NULL, NULL, 'Our study of 1-dimensional kinematics has been concerned with the multiple means by which the motion of objects can be represented. Such means include the use of words, the use of diagrams, the use of numbers, the use of equations, and the use of graphs. Lesson 3 focuses on the use of position', '<p>Our study of 1-dimensional kinematics has been concerned with the multiple means by which the motion of objects can be represented. Such means include the use of words, the use of diagrams, the use of numbers, the use of equations, and the use of graphs. Lesson 3 focuses on the use of position vs. time graphs to describe motion. As we will learn, the specific features of the motion of objects are demonstrated by the shape and the slope of the lines on a position vs. time graph. The first part of this lesson involves a study of the relationship between the shape of a p-t graph and the motion of the object.<br /><br /><br />&nbsp;</p><p><strong>Contrasting a Constant and a Changing Velocity</strong></p><p>To begin, consider a car moving with a constant, rightward (+) velocity - say of +10 m/s.</p><p>If the position-time data for such a car were graphed, then the resulting graph would look like the graph at the right. Note that a motion described as a constant, positive velocity results in a line of constant and positive slope when plotted as a position-time graph.</p><p>Now consider a car moving with a rightward (+), changing velocity - that is, a car that is moving rightward but speeding up or <em>accelerating</em>.</p><p>If the position-time data for such a car were graphed, then the resulting graph would look like the graph at the right. Note that a motion described as a changing, positive velocity results in a line of changing and positive slope when plotted as a position-time graph.<br />&nbsp;</p><p>The position vs. time graphs for the two types of motion - constant velocity and changing velocity (<a href=\"http://www.physicsclassroom.com/Class/1DKin/U1L1e.cfm\">acceleration</a>) - are depicted as follows.</p><p>Constant Velocity<br />Positive VelocityPositive Velocity<br />Changing Velocity (acceleration)</p><p><br /><br />&nbsp;</p><p>The Importance of Slope</p><p>The shapes of the position versus time graphs for these two basic types of motion - constant velocity motion and accelerated motion (i.e., changing velocity) - reveal an important principle. The principle is that the slope of the line on a position-time graph reveals useful information about the velocity of the object. It is often said, &quot;As the slope goes, so goes the velocity.&quot; Whatever characteristics the velocity has, the slope will exhibit the same (and vice versa). If the velocity is constant, then the slope is constant (i.e., a straight line). If the velocity is changing, then the slope is changing (i.e., a curved line). If the velocity is positive, then the slope is positive (i.e., moving upwards and to the right). This very principle can be extended to any motion conceivable.</p>', 8, 1, '2020-12-12 05:06:12', '2020-12-12 05:06:12'),
(24, 6, 'Chapter 1', 'https://www.youtube.com/watch?v=Ah-ZczRHYNs', '765764160776717437738.docx', 'webroot/img/uploads/CourseChapters/chapter_file/', 58543, 'application/vnd.openxmlformats-officedocument.word', 'Physics is the science of matter and its motion—the science that deals with concepts such as force, energy, mass, and charge.\r\n', '<p>Physics is the science of matter and its motion&mdash;the science that deals with concepts such as force, energy, mass, and charge.</p><p>As an experimental science, its goal is to understand the natural world.</p><p>In one form or another, physics is one of the oldest academic disciplines; through its modern subfield of astronomy, it may be the oldest of all.</p><p>Sometimes synonymous with philosophy, chemistry and even certain branches of mathematics and biology during the last two millennia, physics emerged as a modern science in the 17th century and these disciplines are now generally distinct, although the boundaries remain difficult to define.</p><p>Advances in physics often translate to the technological sector, and sometimes influence the other sciences, as well as mathematics and philosophy.</p><p>For example, advances in the understanding of electromagnetism have led to the widespread use of electrically driven devices (televisions, computers, home appliances etc.); advances in thermodynamics led to the development of motorized transport; and advances in mechanics led to the development of the calculus, quantum chemistry, and the use of instruments like the electron microscope in microbiology.</p>', 1, 1, '2020-12-12 09:59:34', '2020-12-12 10:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `course_curriculums`
--

CREATE TABLE `course_curriculums` (
  `id` int(11) NOT NULL,
  `course_chapter_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chapter_file_dir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chapter_file_size` int(11) DEFAULT NULL,
  `chapter_file_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_watchings`
--

CREATE TABLE `course_watchings` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_watchings`
--

INSERT INTO `course_watchings` (`id`, `course_id`, `user_id`, `views`, `created`, `modified`) VALUES
(1, 12, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 22:39:09', '2021-03-06 22:39:09'),
(2, 12, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 22:39:19', '2021-03-06 22:39:19'),
(3, 13, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 23:09:57', '2021-03-06 23:09:57'),
(4, 13, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 23:12:50', '2021-03-06 23:12:50'),
(5, 13, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 23:13:02', '2021-03-06 23:13:02'),
(6, 13, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-06 23:14:19', '2021-03-06 23:14:19'),
(7, 13, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-06 23:14:29', '2021-03-06 23:14:29'),
(8, 14, '08b83891-a807-4235-b8d9-b515375c0598', 1, '2021-03-10 23:47:21', '2021-03-10 23:47:21'),
(9, 13, '8d26c504-a9cf-4696-a326-110f634a82ff', 1, '2021-03-12 19:37:15', '2021-03-12 19:37:15'),
(10, 17, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-13 17:36:28', '2021-03-13 17:36:28'),
(11, 17, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-13 17:36:38', '2021-03-13 17:36:38'),
(12, 17, '89921904-eadc-429b-b9e4-771ae51a71e7', 1, '2021-03-13 17:40:17', '2021-03-13 17:40:17'),
(13, 17, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-13 17:57:38', '2021-03-13 17:57:38'),
(14, 19, '08b83891-a807-4235-b8d9-b515375c0598', 1, '2021-03-14 13:56:59', '2021-03-14 13:56:59'),
(15, 14, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:01:14', '2021-03-14 20:01:14'),
(16, 14, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:04:13', '2021-03-14 20:04:13'),
(17, 14, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:04:26', '2021-03-14 20:04:26'),
(18, 14, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:05:06', '2021-03-14 20:05:06'),
(19, 19, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-14 20:06:35', '2021-03-14 20:06:35'),
(20, 19, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-14 20:07:32', '2021-03-14 20:07:32'),
(21, 14, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-14 20:09:53', '2021-03-14 20:09:53'),
(22, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:13:01', '2021-03-14 20:13:01'),
(23, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:13:51', '2021-03-14 20:13:51'),
(24, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:14:05', '2021-03-14 20:14:05'),
(25, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:14:25', '2021-03-14 20:14:25'),
(26, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:15:44', '2021-03-14 20:15:44'),
(27, 19, '169a68a6-12bd-46da-8e96-7582bfcc653a', 1, '2021-03-14 20:15:45', '2021-03-14 20:15:45'),
(28, 19, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-14 20:19:04', '2021-03-14 20:19:04'),
(29, 19, '08b83891-a807-4235-b8d9-b515375c0598', 1, '2021-03-16 18:35:14', '2021-03-16 18:35:14'),
(30, 17, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-16 18:40:01', '2021-03-16 18:40:01'),
(31, 8, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-16 18:40:17', '2021-03-16 18:40:17'),
(32, 8, '216ceab7-d377-4b74-829c-f52f6fd5f091', 1, '2021-03-18 12:17:31', '2021-03-18 12:17:31'),
(33, 8, '96091ff1-cd1c-4c2d-96ea-44c27170327c', 1, '2021-03-21 19:55:13', '2021-03-21 19:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `email_hooks`
--

CREATE TABLE `email_hooks` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_hooks`
--

INSERT INTO `email_hooks` (`id`, `listing_id`, `title`, `slug`, `description`, `status`, `created`, `modified`) VALUES
(2, 1, 'Welcome Email', 'welcome-email', 'when user has been registered then send welcome email for verify account.', 1, '2020-07-11 13:30:40', '2020-07-11 13:30:40'),
(3, 1, 'Forgot Password Email', 'forgot-password-email', 'when user has forgot password.', 1, '2020-07-11 13:31:01', '2020-07-11 13:31:01'),
(4, 1, 'Contact us', 'contact-us', 'when guest user send inquiry from contact us form.', 1, '2020-07-11 13:31:20', '2020-07-11 13:31:20'),
(5, 1, 'Reset Password', 'reset-password', 'Yadukul user can reset password using this slug ', 1, '2020-07-11 13:31:41', '2020-07-11 13:31:41'),
(7, 3, 'Welcome Email', 'welcome-email', 'when user has been registered then send welcome email for verify account.', 1, '2020-07-12 14:28:08', '2020-07-12 14:28:08'),
(8, 3, 'Contact us', 'contact-us', 'when guest user send inquiry from contact us form.', 1, '2020-07-12 14:28:29', '2020-07-12 14:28:29'),
(9, 3, 'Forgot Password Email', 'forgot-password-email', 'when user has forgot password.', 1, '2020-07-12 14:28:50', '2020-07-12 14:28:50'),
(10, 3, 'Reset Password', 'reset-password', 'Yadukul user can reset password using this slug ', 1, '2020-07-12 14:29:39', '2020-07-12 14:29:39'),
(11, 4, 'Student Registration Account Activate', 'registration-account-activate', 'Front user Registration Account Activation link', 1, '2020-09-23 19:16:12', '2020-10-22 03:03:15'),
(13, 4, 'Reset password', 'user-reset-password', 'Front user can reset password using this hook', 1, '2020-09-24 03:12:04', '2020-09-24 03:12:59'),
(14, 4, 'Teacher registration', 'teacher-registration', 'Front end teacher registration email', 1, '2020-10-07 18:00:35', '2020-10-07 18:00:35'),
(15, 4, 'Approval Notification to teacher', 'approval-notification', 'after admin has approved teacher profile', 1, '2020-10-22 03:14:29', '2020-10-22 03:14:29'),
(16, 4, 'Welcome Email for admin', 'welcome-email', 'when admin user has been registered then send welcome email for verify account.', 1, '2020-10-22 03:15:07', '2020-10-22 03:15:07'),
(17, 4, 'Course Purchase', 'course-purchase', 'This email send after Course Purchase', 1, '2020-12-10 16:03:17', '2020-12-10 16:03:17'),
(18, 4, 'Certificate Email', 'certificate-email', 'teacher will be send certificate email to student', 1, '2020-12-10 16:03:46', '2020-12-10 16:03:46'),
(19, 4, 'Referral email', 'referral-email', 'Referral email', 1, '2020-12-10 16:04:09', '2020-12-10 16:04:09'),
(20, 4, 'Forgot Password Email', 'forgot-password-email', 'when user has forgot password.', 1, '2020-12-10 16:05:32', '2020-12-10 16:05:32'),
(21, 4, 'Phone Number Update OTP', 'mobile-update-otp', 'when user has update phone number', 1, '2020-12-19 15:20:26', '2020-12-19 15:20:26'),
(22, 4, 'Send Session Booking Request To Teacher', 'session-booking-request', 'Send Session Booking Request To Teacher from teacher profile', 1, '2021-02-09 21:43:48', '2021-02-09 21:43:48'),
(23, 4, 'Session booking status', 'session-booking-status', 'when teacher or student changed booking status', 1, '2021-02-09 21:44:28', '2021-02-09 21:44:28'),
(24, 4, 'Session Booking has re-scheduled', 'session-booking-rescheduled', 'Session booking has rescheduled by teacher', 1, '2021-02-09 21:45:03', '2021-02-09 21:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `email_manager_phinxlog`
--

CREATE TABLE `email_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_manager_phinxlog`
--

INSERT INTO `email_manager_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20171218082425, 'CreateEmailPreferences', '2020-07-11 06:13:21', '2020-07-11 06:13:22', 0),
(20171218082436, 'CreateEmailHooks', '2020-07-11 06:13:22', '2020-07-11 06:13:22', 0),
(20171218083809, 'CreateEmailTemplates', '2020-07-11 06:13:22', '2020-07-11 06:13:22', 0),
(20201020185224, 'AddTemplateTypeToEmailTemplates', '2020-10-21 03:37:14', '2020-10-21 03:37:15', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_preferences`
--

CREATE TABLE `email_preferences` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `layout_html` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_preferences`
--

INSERT INTO `email_preferences` (`id`, `listing_id`, `title`, `layout_html`, `created`, `modified`) VALUES
(1, 1, 'Main Email Layout', '<html>\r\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /></head>\r\n<body><div>\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #dddddd;\" width=\"650\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#ffffff; border-bottom:1px solid #dddddd; padding:15px;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"##BASE_URL##\" target=\"_blank\"><img alt=\"\" border=\"0\" src=\"##SYSTEM_LOGO##\" style=\"max-height:100px;\" /></a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#ffffff; padding:15px;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#000000; font-size:16px;\">\r\n							##EMAIL_CONTENT##\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#043f8d; font-size:16px; vertical-align:middle; text-align:left; padding-top:20px;\">\r\n						##EMAIL_FOOTER##\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#043f8d; border-top:1px solid #dddddd; text-align:center; font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#ffffff; padding:12px; font-size:12px; text-transform:uppercase; font-weight:normal;\">##COPYRIGHT_TEXT##</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</body>\r\n</head>\r\n</html>', '2020-07-11 13:32:00', '2020-07-11 13:32:00'),
(2, 3, 'Main Email Layout', '<html>\r\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /></head>\r\n<body><div>\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #dddddd;\" width=\"650\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#ffffff; border-bottom:1px solid #dddddd; padding:15px;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"##BASE_URL##\" target=\"_blank\"><img alt=\"\" border=\"0\" src=\"##SYSTEM_LOGO##\" style=\"max-height:100px;\" /></a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#ffffff; padding:15px;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#000000; font-size:16px;\">\r\n							##EMAIL_CONTENT##\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#043f8d; font-size:16px; vertical-align:middle; text-align:left; padding-top:20px;\">\r\n						##EMAIL_FOOTER##\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#043f8d; border-top:1px solid #dddddd; text-align:center; font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#ffffff; padding:12px; font-size:12px; text-transform:uppercase; font-weight:normal;\">##COPYRIGHT_TEXT##</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</body>\r\n</head>\r\n</html>', '2020-07-12 14:30:10', '2020-07-12 14:30:10'),
(3, 4, 'Main Email Layout', '<html>\r\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /></head>\r\n<body><div>\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #dddddd;\" width=\"650\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#ffffff; border-bottom:1px solid #dddddd; padding:15px;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"##BASE_URL##\" target=\"_blank\"><img alt=\"\" border=\"0\" src=\"##SYSTEM_LOGO##\" style=\"max-height:100px;\" /></a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#ffffff; padding:15px;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#000000; font-size:16px;\">\r\n							##EMAIL_CONTENT##\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#043f8d; font-size:16px; vertical-align:middle; text-align:left; padding-top:20px;\">\r\n						##EMAIL_FOOTER##\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#043f8d; border-top:1px solid #dddddd; text-align:center; font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#ffffff; padding:12px; font-size:12px; text-transform:uppercase; font-weight:normal;\">##COPYRIGHT_TEXT##</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</body>\r\n</head>\r\n</html>', '2020-09-23 19:22:06', '2020-09-23 19:22:06'),
(4, 4, 'TeachingBharat Email Layout', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n	<title>Registraton</title>\r\n</head>\r\n<body style=\"background: #ddd; font-family: Arial\">\r\n	<div style=\"width: 600px; margin: 0 auto; background: #fff; border: 1px solid #ddd; min-height: 400px\">\r\n		<div style=\"background: #ed4426; text-align: center; padding: 10px;\">\r\n			<img src=\"##SYSTEM_LOGO##\">\r\n		</div>\r\n		<div style=\"\">\r\n			<img src=\"##EMAIL_BANNER_IMAGE##\" width=\"100%\">\r\n		</div>\r\n		<div style=\"padding: 30px\">\r\n			##EMAIL_CONTENT##\r\n		</div>\r\n		<div style=\"padding:0px 30px 30px 30px\">\r\n			##EMAIL_FOOTER##\r\n		</div>\r\n		<div style=\"background: #d1d1d1; margin-top: 30px; padding: 30px; text-align: center;\">\r\n			<p style=\"font-size: 12px\">If you didn\'t create an account using this email adress, please ignore this email or <a href=\"#\" style=\"color: #444\">unsubscribe</a></p>\r\n			<p style=\"font-size: 12px\">copyright <?= date(\'Y\') ?> ##SYSTEM_APPLICATION_NAME## All Rights Reserved.</p>\r\n		</div>\r\n	</div>\r\n</body>\r\n</html>', '2020-09-27 12:27:47', '2020-09-27 12:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `email_hook_id` int(11) NOT NULL,
  `template_type` int(11) DEFAULT NULL,
  `subject` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `footer_text` text NOT NULL,
  `email_preference_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `listing_id`, `email_hook_id`, `template_type`, `subject`, `description`, `footer_text`, `email_preference_id`, `status`, `created`, `modified`) VALUES
(1, 1, 2, NULL, '##USER_NAME##, a very warm welcome to the ##SYSTEM_APPLICATION_NAME##', '<p>We&rsquo;re so happy to have you with us.</p>\r\n\r\n<p>Please click on the button below to confirm we got the right email address.</p>\r\n\r\n<p><a href=\"##verify_n_password##\">VERIFY MY EMAIL</a></p>\r\n\r\n<p>Or copy and paste the link below.</p>\r\n\r\n<p>##verify_n_password##</p>\r\n\r\n<p>##USER_INFO##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:34:41', '2020-07-11 13:34:41'),
(2, 1, 3, NULL, '##USER_NAME##, to set your new password…', '<p>You Recently requested to reset your password for your admin account. Click the button below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:35:09', '2020-07-11 13:35:09'),
(3, 1, 4, NULL, 'Hello Administrtor, ##USER_NAME## want\'s to contact you', '<p>Hello Administrator,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Name :&nbsp;##USER_NAME##</p>\r\n\r\n<p>Email :&nbsp;##USER_EMAIL##</p>\r\n\r\n<p>Phone No. :&nbsp;##USERE_MOBILE##</p>\r\n\r\n<p>##MESSAGE##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:35:36', '2020-07-11 13:35:36'),
(4, 1, 5, NULL, 'Reset Password Notification', '<p>Hi ##USER_NAME##</p>\r\n\r\n<p>You recently requested to reset your password for your account. Click the link below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:36:04', '2020-07-11 13:36:04'),
(5, 3, 7, NULL, '##USER_NAME##, a very warm welcome to the ##SYSTEM_APPLICATION_NAME##', '<p>We&rsquo;re so happy to have you with us.</p>\r\n\r\n<p>Please click on the button below to confirm we got the right email address.</p>\r\n\r\n<p><a href=\"##verify_n_password##\">VERIFY MY EMAIL</a></p>\r\n\r\n<p>Or copy and paste the link below.</p>\r\n\r\n<p>##verify_n_password##</p>\r\n\r\n<p>##USER_INFO##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 2, 1, '2020-07-12 14:30:52', '2020-07-12 14:30:52'),
(6, 3, 9, NULL, '##USER_NAME##, to set your new password…', '<p>You Recently requested to reset your password for your admin account. Click the button below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 2, 1, '2020-07-13 17:10:03', '2020-07-13 17:10:03'),
(7, 4, 11, 1, 'Dear ##USER_NAME##, Verify your account', '<p>Hi ##first_name## ##last_name##</p>\r\n\r\n<p><strong>Welcome to Teachingbharat.com, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</strong></p>\r\n\r\n<p><strong>Verify your email add to start your account:</strong></p>\r\n\r\n<p><a href=\"##ACTIVATION_URL##\" style=\"padding: 10px 30px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 20px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Verify Account</a></p>\r\n\r\n<p style=\"font-size: 12px; color: #888; line-height: 1.5; margin-top: 30px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-09-23 19:27:50', '2020-10-24 17:11:29'),
(8, 4, 13, 1, 'Dear ##USER_NAME##, Reset your password', '<h3>Hello ##USER_NAME##,</h3>\r\n\r\n<h5>Welcome to Teachingbharat.com, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</h5>\r\n\r\n<h5>Click below button for reset your password:</h5>\r\n\r\n<p><a href=\"##ACTIVATION_URL##\" style=\"padding: 10px 30px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 20px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Reset Password</a></p>\r\n\r\n<p>If the link is not correctly displayed, please copy the following address in your web browser ##ACTIVATION_URL##</p>\r\n\r\n<p style=\"font-size: 12px; color: #888; line-height: 1.5; margin-top: 30px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-09-24 03:23:59', '2020-10-24 17:11:53'),
(9, 4, 14, 1, 'Response to Your Application at ##SYSTEM_APPLICATION_NAME##', '<p>Dear Teacher,</p>\r\n\r\n<p>Hope you are doing great!</p>\r\n\r\n<p>We acknowledge receipt of your application.</p>\r\n\r\n<p>Kindly allow us time to review your application and get back to you when we have a suitable<br />\r\nrequirement.</p>\r\n\r\n<p>Thanks a lot for applying at ##SYSTEM_APPLICATION_NAME##, a community of teachers by<br />\r\nchoice.</p>\r\n\r\n<p>Cheers!</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-10-07 18:09:11', '2020-10-21 03:38:10'),
(10, 4, 15, 1, 'Hello, ##USER_NAME## your profile has approved', '<h3>Hello ##USER_NAME##,</h3>\r\n\r\n<h5>Welcome to Teachingbharat.com, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</h5>\r\n\r\n<h5>Create your password and start your account:</h5>\r\n\r\n<p><a href=\"##ACTIVATION_URL##\" style=\"padding: 10px 30px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 20px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Create Password</a></p>\r\n\r\n<p>If the link is not correctly displayed, please copy the following address in your web browser ##ACTIVATION_URL##</p>\r\n\r\n<p style=\"font-size: 12px; color: #888; line-height: 1.5; margin-top: 30px\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-10-22 03:19:43', '2020-10-25 04:25:55'),
(11, 4, 16, 1, 'Hello ##USER_NAME## , you are now an administrator', '<p>We&rsquo;re so happy to have you with us.</p>\r\n\r\n<p>Please click on the button below to confirm we got the right email address.</p>\r\n\r\n<p><a href=\"##verify_n_password##\" style=\"padding: 7px 15px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 12px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">VERIFY MY EMAIL</a></p>\r\n\r\n<p>Or copy and paste the link below.</p>\r\n\r\n<p>##verify_n_password##</p>\r\n\r\n<p>##USER_INFO##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-10-22 03:20:30', '2020-10-24 17:13:26'),
(12, 4, 17, 1, 'Thank you for your purchase!', '<h3>Hello ##first_name##,</h3>\r\n\r\n<h3>Thank you for your purchase!</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>\r\n\r\n<h4>Invoice Date: ##INVOICE_DATE## | Status : ##INVOICE_STATUS##</h4>\r\n\r\n<p>##CART_TABLE##</p>\r\n\r\n<p style=\"font-size: 12px; color: #888; line-height: 1.5;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-12-10 16:09:28', '2020-12-10 16:09:28'),
(13, 4, 18, 1, 'Certificate email', '<p>Hi ##first_name##,</p>\r\n\r\n<p>Please find attached certificate</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-12-10 16:12:06', '2020-12-10 16:12:06'),
(14, 4, 19, 1, '##first_name## has sent invitation link', '<p>##first_name## has sent invitation link please check below URL:</p>\r\n\r\n<p>##INVITATION_LINK##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-12-10 16:13:19', '2020-12-10 16:13:19'),
(15, 4, 21, 1, 'Use OTP ##sms_otp## to update mobile number', '<div style=\"font-weight:bold\">Dear User,</div>\r\n\r\n<div style=\"margin-top:16px\">Use OTP <strong>##sms_otp##</strong><b> </b> to change your mobile number.</div>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2020-12-19 15:21:17', '2020-12-19 15:21:17'),
(16, 4, 22, 1, 'You have received session booking request.', '<p>Dear ##USER_NAME##</p>\r\n\r\n<p>##STUDENT## has sent you session booking request click below button to check booking requests.</p>\r\n\r\n<p><a href=\"##SESSION_REQUEST_URL##\" style=\"padding: 7px 15px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 12px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Session Requests</a></p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2021-02-09 21:46:56', '2021-02-09 21:46:56'),
(17, 4, 23, 1, 'Session Booking status has been changed', '<p>Your session booking status has been changed</p>\r\n\r\n<p>Status: ##BOOKING_STATUS##</p>\r\n\r\n<p><a href=\"##SESSION_REQUEST_URL##\" style=\"padding: 7px 15px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 12px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Session Requests</a></p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2021-02-09 21:47:46', '2021-02-13 15:12:49'),
(18, 4, 24, 1, 'Your session booking has rescheduled', '<p>Your session booking has rescheduled</p>\r\n\r\n<p><a href=\"##SESSION_REQUEST_URL##\" style=\"padding: 7px 15px; border: 1px solid #ED2939;border-radius: 100px;font-family: Helvetica, Arial, sans-serif;font-size: 12px; color: #ffffff;text-decoration: none;display: inline-block;background: #ED2939;\">Session Requests</a></p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 4, 1, '2021-02-09 21:48:31', '2021-02-09 21:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `enquiry_type` varchar(20) NOT NULL,
  `referred_by` varchar(200) DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(180) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `priority_type_id` int(11) DEFAULT NULL,
  `enquiry_status_id` int(11) DEFAULT NULL,
  `assigned_user_id` int(11) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`id`, `listing_id`, `admin_user_id`, `enquiry_type`, `referred_by`, `subject`, `full_name`, `mobile`, `email`, `address`, `description`, `remark`, `priority_type_id`, `enquiry_status_id`, `assigned_user_id`, `end_date`, `created`, `modified`) VALUES
(1, 3, 1, 'lead', NULL, 'Admission', 'Hanuman Yadav', '7665880635', 'hanuman@gmail.com', 'sanganer jaipur', 'Name: Hanuman yadav\r\nFathers name: Kajod mal yadav\r\nClass: 10th', 'This is inquiry please have a look', 2, 1, 2, '2020-10-08', '2020-07-19 09:35:20', '2020-07-19 09:49:50'),
(2, 1, 1, 'lead', NULL, 'Inquiry For website', 'Shankar Lal Yadav', '9667414098', 'yadav.manu36@gmail.com', 'Vitika, Jaipur', 'Name: Shankar Lal Yadav Vatika\r\nSchool name: Krishna Public School\r\nMobile: +91 96674 14098', 'He is interested and chasing me many time also he has provided logo and images', 17, 8, 1, '2020-07-25', '2020-07-19 12:00:21', '2020-07-19 12:22:57'),
(3, 1, 1, 'lead', NULL, 'Website for college', 'Raj kumar aswani', '9454299070', 'yadav.manu36@gmail.com', 'UP', 'Name: Raj kumar aswani\r\nSchool: Kishan Inter college\r\nMobile: +91 94542 99070', 'He is interested and also he has provide me logo and some kind of images ', 16, 8, 1, '2020-07-25', '2020-07-19 12:26:25', '2020-07-19 12:27:11'),
(4, 1, 1, 'lead', NULL, 'From Facebook page', 'Ankur Varshney ', '9929474702', 'info@silverleafschools.org', 'Sharma colony, Kartarpura near kartarpura phatak, Jaipur 302006', 'Name: Ankur Varshney\r\nSchool Name: Silver Leaf School\r\nContact Number: 0141 6550444, 9782955958\r\nAddress: Sharma colony, Kartarpura near kartarpura phatak, Jaipur 302006\r\nFacebook page: https://www.facebook.com/SilverLeafschool/', 'Look into it', 15, 7, 1, '2020-07-20', '2020-07-19 12:34:45', '2020-07-19 12:35:11'),
(5, 1, 1, 'lead', NULL, 'Personal Contact', 'Ramjatan A. Yadav', '9909425133', 'shreeji.kaila123@gmail.com', '130 shreenagar nagar , Mahadev nagar b/h narol court , 382405 Ahmedabad, Gujarat', 'KG To 12th school\r\nhttp://yadukuldirectories.com/listings/detail/sriji-kala-vidyalaya', 'He is interested to make a website ', 17, 9, 1, '2020-07-24', '2020-07-19 12:46:15', '2020-07-19 12:47:14'),
(6, 1, 1, 'lead', NULL, 'SAINT VERONA SENIOR SECONDARY SCHOOL PRATAP NAGAR', 'St. Verona high school', '8233077772', 'saintverona7@gmail.com', '110 111, Mansagar Colony, Near Sector 70, Sheopur Road, Pratap Nagar, Ward No.46 Jaipur City, Sanganer', 'School: SAINT VERONA SENIOR SECONDARY SCHOOL PRATAP NAGAR\r\nwebsite: https://st.veronahighschool.vidhyant.com/\r\n\r\nSAINT VERONA SENIOR SECONDARY SCHOOL PRATAP NAGAR\r\n110 111, Mansagar Colony, Near Sector 70, Sheopur Road, Pratap Nagar, Ward No.46 Jaipur City\r\n\r\n0141-2791501\r\n8233077772\r\n\r\nsaintverona7@gmail.com', 'His website not look good so maybe it will be interested to make new website', 15, 7, 1, '2020-07-21', '2020-07-19 13:02:22', '2020-07-19 13:04:21'),
(7, 1, 1, 'lead', NULL, 'Rebuild website', 'Golden era academy', '9314505011', 'info@goldeneraacademy.com', 'Jagatpura, Jaipur, Rajasthan 302017', '    Opp. Indra Gandhi Nagar Sector 2 ,\r\n    Jaipura Railway Crossing,\r\n    Jagatpura, Jaipur, Rajasthan 302017\r\n    info@goldeneraacademy.com\r\n    +91-9314505011, 9314115552\r\n\r\nWebsite: http://www.goldeneraacademy.com/contact\r\n', 'In the website have dummy content and website not look good so we can try to contact for batter services', 14, 7, 1, '2020-07-25', '2020-07-19 13:42:19', '2020-07-19 13:43:14'),
(8, 3, NULL, 'lead', NULL, 'Admission Inquiry', 'Hanuman Yadav', '846545646', 'hanuman@gmail.com', NULL, 'hello this is test', NULL, NULL, NULL, NULL, NULL, '2020-07-29 18:25:17', '2020-07-29 18:25:17'),
(9, 3, NULL, 'lead', NULL, 'Admission Inquiry', 'Rahul', '645564564656', 'rahul@gmail.com', NULL, 'hkjkljkl', NULL, NULL, NULL, NULL, NULL, '2020-07-29 18:27:34', '2020-07-29 18:27:34'),
(10, 3, NULL, 'lead', NULL, 'Admission Inquiry', 'hanuman test', '5416456464', 'hanuman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-30 03:05:11', '2020-07-30 03:05:11'),
(11, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'sdaw', '544', 'admined@i-whiz.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 18:31:20', '2020-09-08 18:31:20'),
(12, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'sads', 'wad', 'dots@mailinator.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 18:32:37', '2020-09-08 18:32:37'),
(13, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Hanuman Yadav', 'adw', 'shanker.lal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 18:33:09', '2020-09-08 18:33:09'),
(14, 4, NULL, 'ask-question', NULL, 'Question', ' ', ' ', 'arnav.jain@dotsquares.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 18:36:34', '2020-09-08 18:36:34'),
(15, 4, NULL, 'ask-question', NULL, 'Question', 'hanuman yadav', '655512', 'arnav.jain@dotsquares.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 18:51:49', '2020-09-08 18:51:49'),
(16, 4, NULL, 'lead', NULL, 'Admission Inquiry', 's', '5454fgh', 'arnav.jain@dotsquares.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-08 19:03:01', '2020-09-08 19:03:01'),
(17, 4, NULL, 'inquiry', NULL, 'Contact Inquiry', 'SD', '6545645h6', 'shanker.lal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-12 14:37:29', '2020-09-12 14:37:29'),
(18, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'sdsd', 'dsd', 'arnav.jain@dotsquares.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-24 17:18:17', '2020-09-24 17:18:17'),
(19, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'a', 'a', 'info@goldeneraacademy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-24 17:18:34', '2020-09-24 17:18:34'),
(20, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'sffsefsef', '65456', 'yadav.manu36@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-24 17:36:25', '2020-09-24 17:36:25'),
(21, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'test', 'fdfdf', 'sdsd@sdsd.sd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-24 10:37:32', '2020-10-24 10:37:32'),
(22, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'T M q', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-09 12:04:14', '2020-11-09 12:04:14'),
(23, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Kristin Hinder', 'Rrsvev jc', 'teachingbharat.com@teachingbharat.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 02:02:52', '2020-11-11 02:02:52'),
(24, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joe Miller', 'IYXQFS6ST', 'info@domainworld.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-12 08:38:39', '2020-11-12 08:38:39'),
(25, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'EleneKaf', '+1 2636834567', 'eleneend@mailo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 05:44:53', '2020-11-18 05:44:53'),
(26, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'Abnz Shskg', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-18 05:53:16', '2020-11-18 05:53:16'),
(27, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Michaeladasp', '82655774851', 'ahmedkirillov5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-30 14:44:05', '2020-11-30 14:44:05'),
(28, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joe Miller', 'CGDP4SM', 'info@domainworld.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-03 13:29:57', '2020-12-03 13:29:57'),
(29, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joe Miller', 'P7V70UUP', 'info@domainworld.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-03 15:55:20', '2020-12-03 15:55:20'),
(30, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Naveen kumar bhola', '+919818679051', 'naveenbhola@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 06:22:36', '2020-12-12 06:22:36'),
(31, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'Hhyfxy rkvrrat', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-19 18:38:54', '2020-12-19 18:38:54'),
(32, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'U Mcr jsvusme', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-30 14:31:48', '2020-12-30 14:31:48'),
(33, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joe Miller', 'EQ5PIL4OM', 'info@domainworld.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-08 04:09:11', '2021-01-08 04:09:11'),
(34, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'Jv vquhhtspb', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-14 11:54:11', '2021-01-14 11:54:11'),
(35, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Odessa Percival', 'U hx Q Z P Dn', 'percival.odessa@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-15 10:47:29', '2021-01-15 10:47:29'),
(36, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'Hovrgia', 'ericjonesonline@outlook.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-17 14:08:17', '2021-01-17 14:08:17'),
(37, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joe Miller', 'I5L3W', 'info@domainworld.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-17 18:38:49', '2021-01-17 18:38:49'),
(38, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Donaldteday', '89835165956', 'no-replyRiblesmibe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-15 01:42:41', '2021-02-15 01:42:41'),
(39, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Trinidad O\'Farrell', 'Bjbkvhps Xibd', 'ofarrell.trinidad32@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-03 21:32:33', '2021-03-03 21:32:33'),
(40, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Antonio Domingo', '86823892248', 'no-replyUndept@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-16 22:16:03', '2021-03-16 22:16:03'),
(41, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Donald Bollo', '82185848158', 'yokodoumba@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 22:47:16', '2021-03-23 22:47:16'),
(42, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Mohammed Hassan Ali', '87448973671', 'mmxxzx780@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-01 22:53:39', '2021-04-01 22:53:39'),
(43, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'LirryOxync', '85733428536', 'yugtyghy@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-03 02:59:47', '2021-04-03 02:59:47'),
(44, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'JamesBiady', '86358284351', 'uriyboyko777333@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-05 23:56:30', '2021-04-05 23:56:30'),
(45, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Hi Nice site https://google.com', '86912581791', 'ascehine@mail.ru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-09 04:43:49', '2021-04-09 04:43:49'),
(46, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Eric Jones', 'Qx Gqkvk Lf', 'eric.jones.z.mail@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-12 12:28:40', '2021-04-12 12:28:40'),
(47, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Joshua Wilson', '81931249284', 'no-reply@trailquest.nl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 13:17:28', '2021-04-15 13:17:28'),
(48, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Calvin Paine', 'Sxyat v', 'wo.r.dp.re.s.s.4.5.5.48.5+treppenschneide@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-24 09:47:12', '2021-04-24 09:47:12'),
(49, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'EnriqueJer', '85793738988', 'no-replyRiblesmibe@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-24 18:23:30', '2021-04-24 18:23:30'),
(50, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'James Lambert', '88293554174', 'lambertj283@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-05 18:56:44', '2021-05-05 18:56:44'),
(51, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Gabriel Angelo', '88697753686', 'ga7.6.5.2.7.1.9@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-11 18:19:26', '2021-05-11 18:19:26'),
(52, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Hectordob', '89186751187', 'floyddrreew@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-14 20:09:27', '2021-05-14 20:09:27'),
(53, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Yahoo', '86987524145', 'press@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-15 20:08:50', '2021-05-15 20:08:50'),
(54, 4, NULL, 'lead', NULL, 'Admission Inquiry', 'Linda Miller', 'Ibvbu', 'lindamillerleads@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 21:13:22', '2021-05-16 21:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_comments`
--

CREATE TABLE `enquiry_comments` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `enquiry_status_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_comments`
--

INSERT INTO `enquiry_comments` (`id`, `enquiry_id`, `admin_user_id`, `comment`, `enquiry_status_id`, `created`, `modified`) VALUES
(1, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 3, '2020-07-19 11:03:43', '2020-07-19 11:03:43'),
(2, 1, 1, 'I have call again and he is not intersted', 4, '2020-07-19 11:04:15', '2020-07-19 11:04:15'),
(3, 4, 1, 'He is not interested ', 10, '2020-07-19 12:35:33', '2020-07-19 12:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_phinxlog`
--

CREATE TABLE `enquiry_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enquiry_phinxlog`
--

INSERT INTO `enquiry_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200717101135, 'CreatePriorityTypes', '2020-07-19 03:17:11', '2020-07-19 03:17:11', 0),
(20200717101146, 'CreateEnquiryStatuses', '2020-07-19 03:17:11', '2020-07-19 03:17:11', 0),
(20200717101152, 'CreateEnquiries', '2020-07-19 03:17:12', '2020-07-19 03:17:12', 0),
(20200717101200, 'CreateEnquiryComments', '2020-07-19 03:17:12', '2020-07-19 03:17:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_statuses`
--

CREATE TABLE `enquiry_statuses` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `color` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_statuses`
--

INSERT INTO `enquiry_statuses` (`id`, `listing_id`, `title`, `color`, `created`, `modified`) VALUES
(1, 3, 'Pending', '#f51313', '2020-07-19 09:31:03', '2020-07-19 09:31:03'),
(2, 3, 'Process', '#0abfc9', '2020-07-19 09:31:24', '2020-07-19 09:31:24'),
(3, 3, 'Interested', '#2ea802', '2020-07-19 09:31:57', '2020-07-19 09:31:57'),
(4, 3, 'Not Interested', '#0d046e', '2020-07-19 09:32:32', '2020-07-19 09:32:32'),
(5, 3, 'Completed', '#267004', '2020-07-19 09:32:52', '2020-07-19 09:32:52'),
(6, 3, 'Closed', '#c000d9', '2020-07-19 09:33:11', '2020-07-19 09:33:11'),
(7, 1, 'Pending', '#e0eb17', '2020-07-19 12:15:45', '2020-07-19 13:43:44'),
(8, 1, 'Process', '#f77205', '2020-07-19 12:16:05', '2020-07-19 12:16:05'),
(9, 1, 'Interested', '#03f089', '2020-07-19 12:16:22', '2020-07-19 12:16:22'),
(10, 1, 'Not Interested', '#f00000', '2020-07-19 12:16:32', '2020-07-19 12:16:32'),
(11, 1, 'Completed', '#1dfa00', '2020-07-19 12:16:47', '2020-07-19 12:16:47');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `sub_title` varchar(250) DEFAULT NULL,
  `short_description` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `organizar_name` varchar(255) DEFAULT NULL,
  `organizer_email` varchar(255) DEFAULT NULL,
  `organizer_contact_number` varchar(20) DEFAULT NULL,
  `banner` varchar(250) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(11) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `meta_title` varchar(200) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `admin_user_id`, `listing_id`, `title`, `slug`, `sub_title`, `short_description`, `description`, `location`, `organizar_name`, `organizer_email`, `organizer_contact_number`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `start_date`, `end_date`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `position`, `created`, `modified`) VALUES
(1, 1, 3, 'Krishna public school celebrate independence day', 'krishna-public-school-celebrate-independence-day', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', '<div>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n</div>\r\n', 'Krishna public school vatika', 'Shanker Yadav', 'shanker@gmail.com', '6464654654', '315930159521254737074.jpg', 'webroot/img/uploads/3/Events/banner/', 82733, 'image/jpeg', '2020-08-15', '2020-08-15', 'Krishna public school celebrate independence day', 'Krishna public school celebrate independence day', 'Krishna public school celebrate independence day', 1, 1, '2020-07-20 02:35:47', '2020-07-20 02:44:37'),
(2, 1, 3, 'Finibus Bonorum et Malorum', 'finibus-bonorum-et-malorum', '', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas..', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur</p>\r\n', 'Krishna public school vatika', 'Shanker Yadav', 'shanker@gmail.com', '545646545', '509044159521348186755.jpeg', 'webroot/img/uploads/3/Events/banner/', 88672, 'image/jpeg', '2020-09-16', '2020-09-30', 'Sed ut perspiciatis unde omnis', 'Finibus Bonorum et Malorum', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia volupta', 1, 2, '2020-07-20 02:51:21', '2020-07-20 02:51:21'),
(3, 1, 3, 'Suspendisse molestie tortor vel orci consequat', 'suspendisse-molestie-tortor-vel-orci-consequat', 'Suspendisse molestie tortor vel orci consequat porttitor vel id sapien.', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat p', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n', 'Vatika sanganer road', 'Shanker Yadav', 'shanker@gmail.com', '766588635', '956094159521416318718.jpeg', 'webroot/img/uploads/3/Events/banner/', 56548, 'image/jpeg', '2020-10-09', '2020-10-09', 'There are many variations of passages', 'There are many variations of passages', 'There are many variations of passages of Lorem Ipsum available, but the', 1, 3, '2020-07-20 03:02:43', '2020-07-20 03:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `events_phinxlog`
--

CREATE TABLE `events_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events_phinxlog`
--

INSERT INTO `events_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200718131903, 'CreateEvents', '2020-07-18 07:49:54', '2020-07-18 07:49:54', 0),
(20200718131914, 'CreateEventDocuments', '2020-07-18 07:49:54', '2020-07-18 07:49:55', 0),
(20200718131926, 'CreateEventSocialLinks', '2020-07-18 07:49:55', '2020-07-18 07:49:55', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_documents`
--

CREATE TABLE `event_documents` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `file_type` smallint(6) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `caption` varchar(400) DEFAULT NULL,
  `banner` varchar(250) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(11) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_documents`
--

INSERT INTO `event_documents` (`id`, `event_id`, `file_type`, `title`, `caption`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `position`, `created`, `modified`) VALUES
(11, 2, 1, NULL, '', '1595146826_sm-2.jpg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 1, '2020-07-19 08:20:58', '2020-07-19 08:20:58'),
(12, 2, 1, NULL, '', '1595146854_3.png', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 2, '2020-07-19 08:20:58', '2020-07-19 08:20:58'),
(13, 1, 1, NULL, '', '1595212825_WhatsApp_Image_2020-07-05_at_4.38.49_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 3, '2020-07-20 02:40:45', '2020-07-20 02:40:45'),
(14, 1, 1, NULL, '', '1595212825_WhatsApp_Image_2020-07-05_at_4.37.42_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 1, '2020-07-20 02:40:45', '2020-07-20 02:40:45'),
(15, 1, 1, NULL, '', '1595212826_WhatsApp_Image_2020-07-05_at_4.35.26_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 2, '2020-07-20 02:40:45', '2020-07-20 02:40:45'),
(16, 2, 1, NULL, '', '1595213435_WhatsApp_Image_2020-07-05_at_4.37.42_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 2, '2020-07-20 02:51:21', '2020-07-20 02:51:21'),
(17, 2, 1, NULL, '', '1595213435_WhatsApp_Image_2020-07-05_at_4.36.00_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 3, '2020-07-20 02:51:21', '2020-07-20 02:51:21'),
(18, 2, 1, NULL, '', '1595213435_WhatsApp_Image_2020-07-05_at_4.35.46_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 4, '2020-07-20 02:51:21', '2020-07-20 02:51:21'),
(19, 2, 1, NULL, '', '1595213435_WhatsApp_Image_2020-07-05_at_4.33.55_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 1, '2020-07-20 02:51:21', '2020-07-20 02:51:21'),
(20, 3, 1, NULL, '', '1595214130_WhatsApp_Image_2020-07-05_at_4.38.49_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 2, '2020-07-20 03:02:43', '2020-07-20 03:02:43'),
(21, 3, 1, NULL, '', '1595214130_WhatsApp_Image_2020-07-05_at_4.37.42_PM.jpeg', 'webroot/img/uploads/3/Events/gallery/', NULL, NULL, 1, '2020-07-20 03:02:43', '2020-07-20 03:02:43');

-- --------------------------------------------------------

--
-- Table structure for table `event_social_links`
--

CREATE TABLE `event_social_links` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grading_types`
--

CREATE TABLE `grading_types` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grading_types`
--

INSERT INTO `grading_types` (`id`, `listing_id`, `title`, `position`, `created`, `modified`) VALUES
(1, 4, '1', 1, '2020-09-26 07:10:49', '2020-10-10 07:38:42'),
(2, 4, '2', 2, '2020-09-26 07:13:45', '2020-10-10 07:38:47'),
(3, 4, '3', 3, '2020-09-26 07:14:23', '2020-10-10 07:38:52'),
(5, 4, '4', 4, '2020-10-10 07:41:58', '2020-10-10 07:41:58'),
(6, 4, '6', 6, '2020-10-10 07:42:03', '2020-10-10 07:42:03'),
(7, 4, '7', 7, '2020-10-10 07:42:08', '2020-10-10 07:42:08'),
(8, 4, '8', 8, '2020-10-10 07:42:12', '2020-10-10 07:42:12'),
(9, 4, '9', 9, '2020-10-10 07:42:16', '2020-10-10 07:42:16');

-- --------------------------------------------------------

--
-- Table structure for table `institution_types`
--

CREATE TABLE `institution_types` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `code` varchar(5) DEFAULT NULL,
  `locale` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `image_dir` varchar(255) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_type` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `code`, `locale`, `image`, `image_dir`, `image_size`, `image_type`, `position`, `status`, `created`, `modified`) VALUES
(1, 'English', 'en', 'En_uk', NULL, NULL, NULL, NULL, 1, 1, '2020-10-10 05:13:39', '2020-10-10 05:13:39'),
(2, 'Hindi', 'hi', 'hi_IN', NULL, NULL, NULL, NULL, 2, 1, '2020-10-10 05:16:24', '2020-10-10 05:16:24'),
(3, 'Manipuri', 'min', 'min_IN', NULL, NULL, NULL, NULL, 4, 1, '2020-10-10 05:18:56', '2020-10-10 05:18:56'),
(4, 'Marathi', 'mat', 'mart_In', NULL, NULL, NULL, NULL, 3, 1, '2020-10-10 05:19:20', '2020-10-10 05:19:20'),
(5, 'Gujarati', 'gu', 'gu_IN', NULL, NULL, NULL, NULL, 5, 1, '2020-10-10 05:19:46', '2020-10-10 05:19:46');

-- --------------------------------------------------------

--
-- Table structure for table `language_phinxlog`
--

CREATE TABLE `language_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language_phinxlog`
--

INSERT INTO `language_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201010044828, 'CreateLanguages', '2020-10-09 23:34:58', '2020-10-09 23:34:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lanuage_manager_phinxlog`
--

CREATE TABLE `lanuage_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lanuage_manager_phinxlog`
--

INSERT INTO `lanuage_manager_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180227124326, 'CreateLanguages', '2020-07-15 21:14:42', '2020-07-15 21:14:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `code` varchar(180) NOT NULL,
  `listing_type_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `tag_line` varchar(250) DEFAULT NULL,
  `protocol` enum('http://','https://') NOT NULL,
  `domain_name` varchar(100) DEFAULT NULL,
  `registration_no` varchar(100) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `logo_dir` varchar(255) DEFAULT NULL,
  `logo_size` int(11) DEFAULT NULL,
  `logo_type` varchar(50) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(11) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `thumb_image` varchar(255) DEFAULT NULL,
  `thumb_image_dir` varchar(255) DEFAULT NULL,
  `thumb_image_size` int(11) DEFAULT NULL,
  `thumb_image_type` varchar(50) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `latitude` varchar(80) DEFAULT NULL,
  `longitude` varchar(80) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `admin_user_id`, `code`, `listing_type_id`, `parent_id`, `title`, `slug`, `tag_line`, `protocol`, `domain_name`, `registration_no`, `registration_date`, `logo`, `logo_dir`, `logo_size`, `logo_type`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `thumb_image`, `thumb_image_dir`, `thumb_image_size`, `thumb_image_type`, `location_id`, `address_line_1`, `address_line_2`, `postcode`, `latitude`, `longitude`, `short_description`, `description`, `meta_title`, `meta_keyword`, `meta_description`, `is_visible`, `status`, `sort_order`, `created`, `modified`) VALUES
(1, 1, '0MOASB26', 1, NULL, 'Eduhub India', 'eduhub-india', NULL, 'http://', 'ani.eduhub.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(2, 1, 'C4WQV6KM', 1, NULL, 'Other', 'other', '', 'http://', 'ds.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, '2020-07-11 12:44:55', '2020-07-11 12:44:55'),
(3, 1, 'CBK3DRT7', 2, NULL, 'Krishna Public School', 'krishna-public-school', '', 'http://', 'ani.krishna-school.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2020-07-11 16:43:53', '2020-07-11 16:43:53'),
(4, 1, 'CXTJS93P', 3, NULL, 'Teaching Bharat', 'teaching-bharat', '', 'http://', 'teachingbharat.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2020-09-07 17:12:56', '2020-09-07 17:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `listings_phinxlog`
--

CREATE TABLE `listings_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `listings_phinxlog`
--

INSERT INTO `listings_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200613160937, 'CreateListingTypes', '2020-07-11 06:07:12', '2020-07-11 06:07:12', 0),
(20200613160943, 'CreateListingTypeCategories', '2020-07-11 06:07:12', '2020-07-11 06:07:12', 0),
(20200613160955, 'CreateListings', '2020-07-11 06:07:12', '2020-07-11 06:07:12', 0),
(20200613161004, 'CreateInstitutionTypes', '2020-07-11 06:07:12', '2020-07-11 06:07:13', 0),
(20200613161015, 'CreateListingDetails', '2020-07-11 06:07:13', '2020-07-11 06:07:13', 0),
(20200613161024, 'CreateAcademicYears', '2020-07-11 06:07:13', '2020-07-11 06:07:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `listing_details`
--

CREATE TABLE `listing_details` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `listing_type_category_id` int(11) NOT NULL,
  `institution_type_id` int(11) NOT NULL,
  `classification` varchar(100) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listing_types`
--

CREATE TABLE `listing_types` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(180) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listing_types`
--

INSERT INTO `listing_types` (`id`, `title`, `slug`, `sort_order`, `created`, `modified`) VALUES
(1, 'Provider', 'provider', 1, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(2, 'School', 'school', 2, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(3, 'Coaching Center', 'coaching-center', 3, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(4, 'Collage', 'collages', 4, '2020-07-11 00:00:00', '2020-07-11 00:00:00'),
(5, 'Vendor', 'vendors', 5, '2020-07-11 00:00:00', '2020-07-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `listing_type_categories`
--

CREATE TABLE `listing_type_categories` (
  `id` int(11) NOT NULL,
  `listing_type_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(220) DEFAULT NULL,
  `latitude` varchar(80) DEFAULT NULL,
  `longitude` varchar(80) DEFAULT NULL,
  `iso_alpha2_code` varchar(10) DEFAULT NULL,
  `iso_alpha3_code` varchar(10) DEFAULT NULL,
  `iso_numeric_code` int(5) DEFAULT NULL,
  `formatted_address` text DEFAULT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `meta_title` varchar(250) DEFAULT NULL,
  `meta_keyword` varchar(300) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `parent_id`, `title`, `slug`, `latitude`, `longitude`, `iso_alpha2_code`, `iso_alpha3_code`, `iso_numeric_code`, `formatted_address`, `lft`, `rght`, `meta_title`, `meta_keyword`, `meta_description`, `created`, `modified`) VALUES
(1, NULL, 'Rajasthan', 'rajasthan', '', '', '', '', NULL, '', 1, 4, NULL, NULL, NULL, '2020-10-10 06:28:11', '2020-10-10 06:28:11'),
(2, 1, 'Jaipur', 'jaipur', '', '', '', '', NULL, '', 2, 3, NULL, NULL, NULL, '2020-10-10 06:28:20', '2020-10-10 06:29:26'),
(3, NULL, 'Uttar Pradesh', 'uttar-pradesh', '', '', 'up', 'up', NULL, '', 5, 6, NULL, NULL, NULL, '2020-10-10 06:29:06', '2020-10-10 06:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `locations_phinxlog`
--

CREATE TABLE `locations_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations_phinxlog`
--

INSERT INTO `locations_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201010062558, 'CreateLocations', '2020-10-10 00:57:41', '2020-10-10 00:57:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `media_type` enum('banner','gallery','video','download') NOT NULL,
  `title` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`id`, `listing_id`, `media_type`, `title`, `status`, `position`, `created`, `modified`) VALUES
(1, 1, 'banner', 'Test', 1, 8, '2020-07-11 14:05:20', '2020-07-11 14:51:45'),
(2, 3, 'banner', 'Home page banner', 1, 6, '2020-07-14 03:05:31', '2020-07-29 16:59:45'),
(3, 3, 'banner', 'About Banner', 1, 7, '2020-07-15 03:23:44', '2020-07-15 03:30:09'),
(4, 3, 'gallery', 'Institution', 1, 1, '2020-07-26 11:42:50', '2020-07-30 18:05:19'),
(5, 3, 'download', 'Admission Form', 1, 1, '2020-07-30 16:15:05', '2020-07-30 16:15:05'),
(6, 3, 'download', 'Timetable', 1, 2, '2020-07-30 16:54:40', '2020-07-30 18:10:11'),
(7, 3, 'gallery', 'Sport Activity', 1, 2, '2020-07-30 18:03:48', '2020-07-30 18:05:26'),
(8, 4, 'banner', 'Home Page', 1, 1, '2020-09-25 16:22:54', '2020-10-22 17:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `sub_title` varchar(250) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `media_image` varchar(255) DEFAULT NULL,
  `media_image_dir` varchar(255) DEFAULT NULL,
  `media_image_size` int(11) DEFAULT NULL,
  `media_image_type` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `media_id`, `title`, `sub_title`, `description`, `external_link`, `media_image`, `media_image_dir`, `media_image_size`, `media_image_type`, `position`, `status`, `created`, `modified`) VALUES
(2, 1, 'sdsd', NULL, 'asda', 'sd', '188898159447856951931.png', 'webroot/img/uploads/1/MediaFiles/media_image/', 12520, 'image/png', 0, NULL, '2020-07-11 14:35:37', '2020-07-11 14:51:45'),
(5, 1, 'sad', NULL, 'w', 'sd', '521632159447910581294.jpeg', 'webroot/img/uploads/1/MediaFiles/media_image/', 17864, 'image/jpeg', 8, NULL, '2020-07-11 14:51:45', '2020-07-11 14:51:45'),
(6, 2, 'Lorem lipsum simply dummy text', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 'http://ani.krishna-school.in/admin/media/medias/add', '476881159469593114130.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 56548, 'image/jpeg', 8, NULL, '2020-07-14 03:05:31', '2020-07-29 16:59:45'),
(7, 2, 'There are many variations of passages', NULL, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour', 'https://www.lipsum.com/', '670517159595276748764.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 25163, 'image/jpeg', 9, NULL, '2020-07-14 03:15:49', '2020-07-29 16:59:45'),
(8, 2, 'Finibus Bonorum et Malorum', NULL, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium', 'https://book.cakephp.org/4/en/views/helpers.html', '668273159604198540771.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 98751, 'image/jpeg', 9, NULL, '2020-07-14 03:15:49', '2020-07-29 16:59:45'),
(11, 3, 'About Us', NULL, 'About Us', '', '606946159478372084586.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 56548, 'image/jpeg', 8, NULL, '2020-07-15 03:28:40', '2020-07-15 03:30:09'),
(12, 3, 'About Us', NULL, 'About Us', '', '141969159478372075547.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 93413, 'image/jpeg', 9, NULL, '2020-07-15 03:28:40', '2020-07-15 03:30:09'),
(13, 3, 'About Us', NULL, 'About Us', '', '991748159478374030450.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 61110, 'image/jpeg', 9, NULL, '2020-07-15 03:28:40', '2020-07-15 03:30:09'),
(14, 3, 'About Us', NULL, 'About Us', 'About Us', '511968159478380974614.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 56490, 'image/jpeg', 9, NULL, '2020-07-15 03:30:09', '2020-07-15 03:30:09'),
(15, 3, 'About Us', NULL, 'About Us', '', '584919159478380923503.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 25163, 'image/jpeg', 9, NULL, '2020-07-15 03:30:09', '2020-07-15 03:30:09'),
(16, 4, 'dvdz', NULL, 'xzc', 'z', '138402159587042011563.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 129076, 'image/jpeg', 8, NULL, '2020-07-26 11:42:50', '2020-07-30 18:05:19'),
(17, 4, 'sf', NULL, 'dsd', 'sas', '875101159587044880028.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 93413, 'image/jpeg', 9, NULL, '2020-07-26 11:42:50', '2020-07-30 18:05:19'),
(25, 4, 'fg', NULL, 'd', '', '647964159587037318319.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 25163, 'image/jpeg', 9, NULL, '2020-07-27 17:19:33', '2020-07-30 18:05:19'),
(26, 4, 'dfgdf', NULL, 'gsrg', '', '509997159587037396854.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 56548, 'image/jpeg', 9, NULL, '2020-07-27 17:19:33', '2020-07-30 18:05:19'),
(27, 4, 'fdgdfg', NULL, 'dgf', '', '202296159587039149695.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 88672, 'image/jpeg', 9, NULL, '2020-07-27 17:19:33', '2020-07-30 18:05:19'),
(28, 4, 'fgfg', NULL, 'g', 'fg', '787602159587037311734.jpeg', 'webroot/img/uploads/3/MediaFiles/media_image/', 56490, 'image/jpeg', 10, NULL, '2020-07-27 17:19:33', '2020-07-30 18:05:19'),
(29, 4, 'kjh', NULL, '', '', '783641159604736481299.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 51313, 'image/jpeg', 11, NULL, '2020-07-27 17:26:01', '2020-07-30 18:05:19'),
(30, 2, 'independence day activity', NULL, 'independence day activity', '', '603333159604183172878.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 86938, 'image/jpeg', 8, NULL, '2020-07-29 16:57:11', '2020-07-29 16:59:45'),
(31, 4, 'tour', NULL, '', '', '336369159604736438171.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 98751, 'image/jpeg', 12, NULL, '2020-07-29 18:29:24', '2020-07-30 18:05:19'),
(32, 4, 'Activity', NULL, '', '', '902712159604744217162.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 101245, 'image/jpeg', 13, NULL, '2020-07-29 18:30:42', '2020-07-30 18:05:19'),
(33, 5, 'Admission Form 1', NULL, 'lorem lipsum simply dummy text', '', '414128159612570514853.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 55610, 'image/jpeg', 6, NULL, '2020-07-30 16:15:05', '2020-07-30 16:15:05'),
(34, 5, 'Admission Form 2', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout', '', '171294159612570569615.zip', 'webroot/img/uploads/3/MediaFiles/media_image/', 254821, 'application/zip', 7, NULL, '2020-07-30 16:15:05', '2020-07-30 16:15:05'),
(35, 6, 'Time Table Class 9th', NULL, '', '', '184717159612808091777.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 325831, 'image/jpeg', 3, NULL, '2020-07-30 16:54:40', '2020-07-30 18:10:11'),
(36, 6, 'Time Table Class 10th', NULL, '', '', '131535159612808059002.png', 'webroot/img/uploads/3/MediaFiles/media_image/', 322067, 'image/png', 4, NULL, '2020-07-30 16:54:40', '2020-07-30 18:10:11'),
(37, 6, 'Time Table Class 11th', NULL, '', '', '131532159612816027425.sql', 'webroot/img/uploads/3/MediaFiles/media_image/', 35931, 'application/sql', 5, NULL, '2020-07-30 16:56:00', '2020-07-30 18:10:11'),
(38, 7, 'Lorem lipsum simply dummy text', NULL, '', '', '210585159613222889339.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 299406, 'image/jpeg', 1, NULL, '2020-07-30 18:03:48', '2020-07-30 18:05:26'),
(39, 7, 'Time Table Class 10th', NULL, '', '', '717706159613222897948.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 75026, 'image/jpeg', 2, NULL, '2020-07-30 18:03:48', '2020-07-30 18:05:26'),
(40, 8, 'Engage to Excel', '', 'Learn Anytime-Anywhere…\r\nLive, Online, and with Ease!', 'http://ani.teachingbharat.in/', '877950160338952762991.png', 'webroot/img/uploads/4/MediaFiles/media_image/', 162734, 'image/png', 1, NULL, '2020-09-25 16:22:54', '2020-10-22 17:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `media_phinxlog`
--

CREATE TABLE `media_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media_phinxlog`
--

INSERT INTO `media_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200707181128, 'CreateMedias', '2020-07-11 06:09:47', '2020-07-11 06:09:47', 0),
(20200707181343, 'CreateMediaFiles', '2020-07-11 06:09:47', '2020-07-11 06:09:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `plugin` varchar(120) DEFAULT NULL,
  `controller` varchar(120) NOT NULL,
  `action` varchar(100) NOT NULL,
  `json_path` varchar(700) DEFAULT NULL,
  `query_string` varchar(250) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(11) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(300) NOT NULL,
  `meta_description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `listing_id`, `title`, `plugin`, `controller`, `action`, `json_path`, `query_string`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `meta_title`, `meta_keyword`, `meta_description`, `created`, `modified`) VALUES
(1, 1, 'Home', NULL, 'PagesController', 'display', '{\"plugin\":null,\"controller\":\"PagesController\",\"action\":\"display\"}', '', '819650159447339033449.png', 'webroot/img/uploads/1/Modules/banner/', 488216, 'image/png', 'Home', 'Home', 'Home', '2020-07-11 13:12:49', '2020-07-11 13:16:30'),
(2, 3, 'Home', 'CommonTheme', 'Pages', 'display', '{\"plugin\":\"CommonTheme\",\"controller\":\"Pages\",\"action\":\"display\"}', '', NULL, NULL, NULL, NULL, 'Krishna Public School', 'Hindi medium school, English medium school', 'Hindi medium school, English medium school', '2020-07-19 13:22:02', '2020-07-19 13:22:02'),
(3, 3, 'News', 'News', 'Newsposts', 'index', '{\"plugin\":\"News\",\"controller\":\"Newsposts\",\"action\":\"index\"}', '', '840668159529965116092.jpg', 'webroot/img/uploads/3/Modules/banner/', 284959, 'image/jpeg', 'Krishna public school news', 'Krishna public school news', 'Krishna public school news', '2020-07-21 02:47:31', '2020-07-21 02:47:31'),
(4, 3, 'Events', 'Events', 'Events', 'index', '{\"plugin\":\"Events\",\"controller\":\"Events\",\"action\":\"index\"}', '', '502672159534862646415.png', 'webroot/img/uploads/3/Modules/banner/', 1622912, 'image/png', 'Krishna public school events', 'Krishna public school events', 'Krishna public school events', '2020-07-21 16:23:46', '2020-07-21 16:23:46'),
(5, 3, 'Announcement', 'Announcement', 'Announcements', 'index', '{\"plugin\":\"Announcement\",\"controller\":\"Announcements\",\"action\":\"index\"}', '', '194289159544282782524.jpg', 'webroot/img/uploads/3/Modules/banner/', 57157, 'image/jpeg', 'Announcement', 'Announcement', 'Announcement', '2020-07-22 18:33:47', '2020-07-22 18:33:47'),
(6, 3, 'Facilities', 'Services', 'Services', 'index', '{\"plugin\":\"Services\",\"controller\":\"Services\",\"action\":\"index\"}', '', '835323159595394034698.jpg', 'webroot/img/uploads/3/Modules/banner/', 102353, 'image/jpeg', 'Krishna public school facilities', 'Krishna public school facilities', 'Krishna public school facilities', '2020-07-28 16:18:01', '2020-07-28 16:32:20'),
(7, 3, 'Contact US', 'Enquiry', 'Enquiries', 'index', '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', '', '899746159607742323229.jpg', 'webroot/img/uploads/3/Modules/banner/', 24646, 'image/jpeg', 'Krishna public school contact inquiries', 'Krishna public school contact inquiries', 'Krishna public school contact inquiries', '2020-07-30 02:27:08', '2020-07-30 02:50:23'),
(8, 3, 'Photo Gallery', 'Media', 'Medias', 'gallery', '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', '', '808346159607908486327.jpg', 'webroot/img/uploads/3/Modules/banner/', 55610, 'image/jpeg', 'Krishna public school photo gallery', 'Krishna public school photo gallery', 'Krishna public school photo gallery', '2020-07-30 03:18:04', '2020-07-30 03:18:04'),
(9, 3, 'Downloads', 'Media', 'Medias', 'downloads', '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"downloads\"}', '', '637860159612862498284.jpg', 'webroot/img/uploads/3/Modules/banner/', 148904, 'image/jpeg', 'Krishna public school downloads', 'Krishna public school downloads', 'Krishna public school downloads', '2020-07-30 17:03:44', '2020-07-30 17:03:44'),
(10, 4, 'Home', 'TeachingTheme', 'Pages', 'display', '{\"plugin\":\"TeachingTheme\",\"controller\":\"Pages\",\"action\":\"display\"}', '', '925912160231263679831.jpg', 'webroot/img/uploads/4/Modules/banner/', 645805, 'image/jpeg', 'Teaching Bharat', 'Teaching Bharat', 'Teaching Bharat', '2020-09-07 19:15:53', '2020-10-10 06:50:36'),
(11, 4, 'Contact US', 'Enquiry', 'Enquiries', 'index', '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', '', '262849160096774286412.jpg', 'webroot/img/uploads/4/Modules/banner/', 645805, 'image/jpeg', 'Contact Us', 'Contact Us', 'Contact Us', '2020-09-07 19:27:59', '2020-09-24 17:15:42'),
(12, 4, 'Ask Question', 'Enquiry', 'Enquiries', 'askQuestion', '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"askQuestion\"}', '', NULL, NULL, NULL, NULL, 'ASK QUESTION', 'ASK QUESTION', 'ASK QUESTION', '2020-09-08 18:09:21', '2020-09-08 18:09:21'),
(13, 4, 'Explore Courses', 'Courses', 'Courses', 'index', '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', '', NULL, NULL, NULL, NULL, 'Explore Courses', 'Explore Courses', 'Explore Courses', '2020-09-25 16:49:53', '2020-09-25 16:49:53'),
(14, 4, 'live classes', 'Courses', 'Courses', 'sessions', '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"sessions\"}', '', NULL, NULL, NULL, NULL, 'live classes', 'live classes', 'live classes', '2020-09-25 16:59:36', '2021-02-03 23:12:26'),
(15, 4, 'FREE RESOURCES', 'Courses', 'Courses', 'resources', '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"resources\"}', '', NULL, NULL, NULL, NULL, 'FREE RESOURCES', 'FREE RESOURCES', 'FREE RESOURCES', '2020-09-25 17:33:39', '2020-09-25 17:33:39'),
(16, 4, 'Teacher registration', 'UserManager', 'Users', 'teacherRegistration', '{\"plugin\":\"UserManager\",\"controller\":\"Users\",\"action\":\"teacherRegistration\"}', '', NULL, NULL, NULL, NULL, 'Teacher registration', 'Teacher registration', 'Teacher registration', '2020-09-25 17:40:27', '2020-09-25 17:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_link` varchar(255) NOT NULL,
  `is_nav_type` int(2) NOT NULL,
  `target` enum('_self','_blank') NOT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `is_top` tinyint(1) DEFAULT NULL,
  `is_bottom` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `listing_id`, `title`, `slug`, `parent_id`, `menu_link`, `is_nav_type`, `target`, `lft`, `rght`, `status`, `is_top`, `is_bottom`, `position`, `created`, `modified`) VALUES
(1, 3, 'Home', 'home', NULL, '{\"plugin\":\"CommonTheme\",\"controller\":\"Pages\",\"action\":\"display\"}', 3, '_self', 1, 2, 1, 1, 0, 1, '2020-07-13 18:07:17', '2020-07-21 17:40:43'),
(2, 3, 'About us', 'about-us', NULL, '#', 2, '_self', 3, 18, 1, 1, 0, 2, '2020-07-13 18:16:43', '2020-07-15 17:56:24'),
(3, 3, 'Vision', 'vision', 2, '#', 2, '_self', 18, 3, 1, 1, 0, NULL, '2020-07-13 18:18:12', '2020-07-13 18:18:12'),
(4, 3, 'Mission', 'mission', 2, '#', 2, '_self', 18, 17, 1, 1, 0, NULL, '2020-07-13 18:18:32', '2020-07-13 18:18:32'),
(5, 3, 'Academics', 'academics', NULL, '#', 2, '_self', 19, 34, 1, 1, 0, NULL, '2020-07-13 18:21:00', '2020-07-13 18:21:00'),
(6, 3, 'Admission', 'admission', NULL, '#', 2, '_self', 35, 48, 1, 1, 0, NULL, '2020-07-13 18:21:17', '2020-07-13 18:21:17'),
(7, 3, 'Circulars & Notices', 'circulars-and-notices', NULL, '#', 2, '_self', 49, 64, 1, 1, 0, NULL, '2020-07-13 18:21:35', '2020-07-13 18:21:35'),
(8, 3, 'Announcement', 'announcement', 7, '{\"plugin\":\"Announcement\",\"controller\":\"Announcements\",\"action\":\"index\"}', 3, '_self', 60, 61, 1, 1, 0, NULL, '2020-07-13 18:21:52', '2020-07-30 17:34:01'),
(9, 3, 'Downloads', 'downloads', 7, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"downloads\"}', 3, '_self', 62, 63, 1, 1, 0, NULL, '2020-07-13 18:22:11', '2020-07-30 17:34:12'),
(11, 3, 'Student Corner', 'student-corner', NULL, '#', 2, '_self', 65, 66, 1, 1, 0, NULL, '2020-07-13 18:24:09', '2020-07-13 18:24:09'),
(12, 3, 'Facilities', 'facilities', NULL, '{\"plugin\":\"Services\",\"controller\":\"Services\",\"action\":\"index\"}', 3, '_self', 65, 66, 1, 1, 0, NULL, '2020-07-13 18:24:24', '2020-07-28 16:18:43'),
(13, 3, 'Media', 'media', NULL, '#', 2, '_self', 67, 72, 1, 1, 0, NULL, '2020-07-13 18:24:47', '2020-07-13 18:24:47'),
(14, 3, 'Photo Gallery', 'photo-gallery', 13, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 68, 69, 1, 1, 0, NULL, '2020-07-13 18:25:14', '2020-07-30 17:35:12'),
(16, 3, 'Institution News', 'institution-news', 13, '{\"plugin\":\"News\",\"controller\":\"Newsposts\",\"action\":\"index\"}', 3, '_self', 70, 71, 1, 1, 0, NULL, '2020-07-13 18:26:13', '2020-07-30 17:36:44'),
(17, 3, 'Contact Us', 'contact-us', NULL, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', 3, '_self', 73, 74, 1, 1, 0, NULL, '2020-07-13 18:26:36', '2020-07-30 02:27:34'),
(18, 3, 'About us', 'about-us-1', 2, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 18, 13, 1, 1, 0, NULL, '2020-07-15 17:56:47', '2020-07-15 17:56:47'),
(19, 3, 'Pages', 'pages', NULL, '#', 2, '_self', 75, 86, 1, 0, 1, NULL, '2020-07-28 03:38:43', '2020-07-28 03:38:43'),
(20, 3, 'About US', 'about-us-2', 19, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 76, 77, 1, 0, 1, NULL, '2020-07-28 03:39:23', '2020-07-28 03:39:46'),
(21, 3, 'Privacy Policy', 'privacy-policy', 19, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 84, 85, 1, 0, 1, NULL, '2020-07-28 03:40:32', '2020-07-30 03:14:59'),
(22, 3, 'News', 'news', 19, '{\"plugin\":\"News\",\"controller\":\"Newsposts\",\"action\":\"index\"}', 3, '_self', 80, 81, 1, 0, 1, NULL, '2020-07-28 03:41:02', '2020-07-28 03:41:02'),
(23, 3, 'Events', 'events', 19, '{\"plugin\":\"Events\",\"controller\":\"Events\",\"action\":\"index\"}', 3, '_self', 82, 83, 1, 0, 1, NULL, '2020-07-30 03:14:31', '2020-07-30 03:14:31'),
(24, 3, 'Photo Gallery', 'photo-gallery-1', 19, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 78, 79, 1, 0, 1, NULL, '2020-07-30 03:18:27', '2020-07-30 03:18:27'),
(25, 3, 'Quick Links', 'quick-links', NULL, '#', 2, '_self', 87, 98, 1, 0, 1, NULL, '2020-07-30 15:50:47', '2020-07-30 15:50:47'),
(26, 3, 'Facilities', 'facilities-1', 25, '{\"plugin\":\"Services\",\"controller\":\"Services\",\"action\":\"index\"}', 3, '_self', 88, 89, 1, 0, 1, NULL, '2020-07-30 15:51:27', '2020-07-30 15:51:27'),
(27, 3, 'Contact us', 'contact-us-1', 25, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', 3, '_self', 90, 91, 1, 0, 1, NULL, '2020-07-30 15:51:53', '2020-07-30 15:51:53'),
(28, 3, 'Photo Gallery', 'photo-gallery-2', 25, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 92, 93, 1, 0, 1, NULL, '2020-07-30 15:53:25', '2020-07-30 15:53:25'),
(29, 3, 'Circulars & Notices', 'circulars-and-notices-1', 25, '{\"plugin\":\"Announcement\",\"controller\":\"Announcements\",\"action\":\"index\"}', 3, '_self', 94, 95, 1, 0, 1, NULL, '2020-07-30 15:54:07', '2020-07-30 15:54:38'),
(30, 3, 'Downloads', 'downloads-1', 25, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"downloads\"}', 3, '_self', 96, 97, 1, 0, 1, NULL, '2020-07-30 17:04:05', '2020-07-30 17:04:05'),
(31, 4, 'Home', 'home', NULL, '{\"plugin\":\"TeachingTheme\",\"controller\":\"Pages\",\"action\":\"display\"}', 3, '_self', 1, 2, 1, 1, 0, NULL, '2020-09-07 19:17:41', '2020-09-07 19:17:41'),
(40, 4, 'Company', 'company', NULL, '#', 2, '_self', 3, 18, 1, 0, 1, NULL, '2020-09-07 19:22:34', '2020-09-07 19:22:34'),
(41, 4, 'About us', 'about-us', 40, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-teaching-bharat\"}', 1, '_self', 4, 5, 1, 0, 1, NULL, '2020-09-07 19:22:56', '2020-09-07 19:22:56'),
(42, 4, 'Our Story', 'our-story', 40, '#', 2, '_self', 6, 7, 1, 0, 1, NULL, '2020-09-07 19:24:42', '2020-09-07 19:24:42'),
(43, 4, 'Blog', 'blog', 40, '#', 2, '_self', 8, 9, 1, 0, 1, NULL, '2020-09-07 19:24:57', '2020-09-07 19:24:57'),
(44, 4, 'Press Release', 'press-release', 40, '#', 2, '_self', 10, 11, 1, 0, 1, NULL, '2020-09-07 19:25:13', '2020-09-07 19:25:13'),
(45, 4, 'Contact us', 'contact-us', 40, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', 3, '_self', 12, 13, 1, 0, 1, NULL, '2020-09-07 19:28:13', '2020-09-07 19:28:22'),
(46, 4, 'Terms of use', 'terms-of-use', 40, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"terms-of-use\"}', 1, '_self', 14, 15, 1, 0, 1, NULL, '2020-09-07 19:31:47', '2020-09-07 19:31:47'),
(47, 4, 'Privacy Policy', 'privacy-policy', 40, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"privacy-policy\"}', 1, '_self', 16, 17, 1, 0, 1, NULL, '2020-09-07 19:32:38', '2020-09-07 19:32:38'),
(48, 4, 'Imp. Links', 'imp-links', NULL, '#', 2, '_self', 19, 34, 1, 0, 1, NULL, '2020-09-07 19:33:48', '2020-09-22 16:59:13'),
(49, 4, 'How it works', 'how-it-works', 48, '#', 2, '_self', 20, 21, 1, 0, 1, NULL, '2020-09-07 19:34:24', '2020-09-07 19:34:24'),
(50, 4, 'Need Help?', 'need-helpquestion', 48, '#', 2, '_self', 22, 23, 1, 0, 1, NULL, '2020-09-07 19:34:37', '2020-09-07 19:34:37'),
(51, 4, 'Support', 'support', 48, '#', 2, '_self', 24, 25, 1, 0, 1, NULL, '2020-09-07 19:34:50', '2020-09-07 19:34:50'),
(52, 4, 'Suggest Course', 'suggest-course', 48, '#', 2, '_self', 26, 27, 1, 0, 1, NULL, '2020-09-07 19:35:06', '2020-09-07 19:35:06'),
(53, 4, 'Ask Question', 'ask-question', 48, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"askQuestion\"}', 3, '_self', 28, 29, 1, 0, 1, NULL, '2020-09-07 19:35:30', '2020-09-08 18:09:42'),
(54, 4, 'Student FAQs', 'student-faqs', 48, '#', 2, '_self', 30, 31, 1, 0, 1, NULL, '2020-09-07 19:35:47', '2020-09-07 19:35:47'),
(55, 4, 'General FAQs', 'general-faqs', 48, '#', 2, '_self', 32, 33, 1, 0, 1, NULL, '2020-09-07 19:36:16', '2020-09-07 19:36:16'),
(56, 4, 'Free Resources', 'free-resources', NULL, '#', 2, '_self', 35, 48, 1, 0, 1, NULL, '2020-09-07 19:36:37', '2020-10-22 16:48:05'),
(57, 4, 'Content', 'content', 56, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-teaching-bharat\"}', 1, '_self', 36, 37, 1, 0, 1, NULL, '2020-09-07 19:36:55', '2020-09-26 17:03:54'),
(58, 4, 'Resources link', 'resources-link-1', 56, '#', 2, '_self', 38, 39, 1, 0, 1, NULL, '2020-09-07 19:37:06', '2020-09-07 19:37:06'),
(59, 4, 'Resources link', 'resources-link-2', 56, '#', 2, '_self', 40, 41, 1, 0, 1, NULL, '2020-09-07 19:37:16', '2020-09-07 19:37:16'),
(60, 4, 'Resources link', 'resources-link-3', 56, '#', 2, '_self', 42, 43, 1, 0, 1, NULL, '2020-09-07 19:37:39', '2020-09-07 19:37:39'),
(61, 4, 'Resources link', 'resources-link-4', 56, '#', 2, '_self', 44, 45, 1, 0, 1, NULL, '2020-09-07 19:37:50', '2020-09-07 19:37:50'),
(62, 4, 'Explore', 'explore', NULL, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 49, 60, 1, 1, 0, NULL, '2020-09-08 02:37:53', '2020-09-25 16:50:16'),
(63, 4, 'Live Classes <sup class=\"menu-sup\">New</sup></a>', 'live-classes-sup-class-menu-sup-new-sup-a', NULL, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"sessions\"}', 3, '_self', 61, 62, 1, 1, 0, NULL, '2020-09-08 02:38:12', '2021-02-03 23:19:42'),
(64, 4, 'Study Materials', 'study-materials', NULL, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"resources\"}', 3, '_self', 63, 64, 1, 1, 0, NULL, '2020-09-08 02:38:32', '2020-09-25 17:33:48'),
(65, 4, 'Get Scholarship', 'get-scholarship', NULL, '#', 2, '_self', 65, 66, 1, 1, 0, NULL, '2020-09-22 14:13:52', '2020-09-22 14:13:52'),
(66, 4, 'For Tutors', 'for-tutors', NULL, '{\"plugin\":\"UserManager\",\"controller\":\"Users\",\"action\":\"teacherRegistration\"}', 3, '_self', 67, 68, 1, 1, 0, NULL, '2020-09-22 14:14:28', '2020-09-25 17:40:34'),
(67, 4, '1st - 12th Grade Courses', '1st-12th-grade-courses', 62, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 50, 51, 1, 1, 0, NULL, '2020-09-25 16:42:32', '2020-09-25 16:50:39'),
(68, 4, 'Kids Video Courses', 'kids-video-courses', 62, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 52, 53, 1, 1, 0, NULL, '2020-09-25 16:43:17', '2020-09-25 16:50:57'),
(69, 4, 'Entrance Exam Practice', 'entrance-exam-practice', 62, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 54, 55, 1, 1, 0, NULL, '2020-09-25 16:44:05', '2020-09-25 16:51:01'),
(70, 4, 'Competitive Exams', 'competitive-exams', 62, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 56, 57, 1, 1, 0, NULL, '2020-09-25 16:44:27', '2020-09-25 16:51:06'),
(71, 4, 'Languages Learning', 'languages-learning', 62, '{\"plugin\":\"Courses\",\"controller\":\"Courses\",\"action\":\"index\"}', 3, '_self', 58, 59, 1, 1, 0, NULL, '2020-09-25 16:44:50', '2020-09-25 16:51:11'),
(72, 4, 'new link', 'new-link', 56, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"askQuestion\"}', 3, '_self', 46, 47, 1, 0, 1, NULL, '2020-09-26 17:05:12', '2020-09-26 17:05:12');

-- --------------------------------------------------------

--
-- Table structure for table `newsposts`
--

CREATE TABLE `newsposts` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` varchar(255) DEFAULT NULL,
  `banner_type` varchar(255) DEFAULT NULL,
  `header_image` varchar(255) DEFAULT NULL,
  `header_dir` varchar(255) DEFAULT NULL,
  `header_size` int(11) DEFAULT NULL,
  `header_type` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsposts`
--

INSERT INTO `newsposts` (`id`, `listing_id`, `admin_user_id`, `title`, `slug`, `short_description`, `description`, `banner_image`, `banner_dir`, `banner_size`, `banner_type`, `header_image`, `header_dir`, `header_size`, `header_type`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `position`, `created`, `modified`) VALUES
(3, 3, 1, 'Krishna public school Sports Extravaganza', 'krishna-public-school-sports-extravaganza', 'Krishna public school witnessed the sportsman spirit and impudence of young daredevils during the SRN Sports Week. The Sports meet was inaugurated by Chairman of the school Mr shanker yadav...', '<p>Krishna public school witnessed the sportsman spirit and impudence of young daredevils during the SRN Sports Week. The Sports meet was inaugurated by Chairman of the school Mr shanker yadav. It was a great opportunity to encourage young students to get linked with sport and games.</p>\r\n\r\n<p>School Chairman Mr. shanker yadav illuminated the Sports baton to announce &lsquo;the Sports Week open&rsquo;. The occurrence was loaded with many interesting race for the kids like Swatch Bharat, Jhansi ki Rani, Sunflower race, Hot Air balloon race, Butterfly race, and for the seniors athletics&nbsp; like 50 mts. 100 mts., 200 mts., 400 meter races, relay race, long and high jump, short put, disc throw, javelin throw and many more. The boys and girls participated under sub-junior, junior, sub-senior and senior categories.&nbsp; Students from Harmony, Serene, Quest and Valour performed considerably well. They showcased their actual grit which peaked to zenith at the crucial time of culmination.</p>\r\n\r\n<p>Chairperson and Principal of the school distributed the medals. Optimum Gold Medals were bagged by&nbsp; House Valour House and declared as the Winner. Chairperson Mr. Ravi Shankar eulogized the endeavors of students and enlightened that sports are an essential element and helps developing the special intelligence, logistic intelligence and intra structural potentialities.</p>\r\n', '756962159516673210125.jpeg', 'webroot/img/uploads/3/Newsposts/banner_image/', '43753', 'image/jpeg', '720856159516673384528.jpeg', 'webroot/img/uploads/3/Newsposts/header_image/', 25163, 'image/jpeg', 'Krishna public school Sports Extravaganza', 'Krishna public school Sports Extravaganza', 'Krishna public school Sports Extravaganza', 1, 1, '2020-07-19 13:52:12', '2020-07-19 13:52:12'),
(4, 3, 1, 'Inter-School Cricket Tournament', 'inter-school-cricket-tournament', 'Krishna public school will organize Inter-School Cricket Tournament in next month. so please fill the registration form on our website', '<p>Krishna public school will organize Inter-School Cricket Tournament in next month. so please fill the registration form on our website</p>\r\n', '727329159516717158503.jpg', 'webroot/img/uploads/3/Newsposts/banner_image/', '75026', 'image/jpeg', '747530159516717114221.jpg', 'webroot/img/uploads/3/Newsposts/header_image/', 299406, 'image/jpeg', 'Inter-School Cricket Tournament', 'Inter-School Cricket Tournament', 'Inter-School Cricket Tournament', 1, 2, '2020-07-19 13:59:31', '2020-07-19 13:59:31'),
(5, 3, 1, 'Lorem ipsum dolor sit amet', 'lorem-ipsum-dolor-sit-amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor...', '<p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n\r\n<p class=\"mb-15\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n\r\n<blockquote class=\"theme-colored pt-20 pb-20\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n\r\n<footer>Someone famous in <cite title=\"Source Title\">Source Title</cite></footer>\r\n</blockquote>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna et sed aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n\r\n<div class=\"mt-30 mb-0\">\r\n<h5 class=\"pull-left mt-10 mr-20 text-theme-colored\">Share:</h5>\r\n\r\n<ul class=\"styled-icons icon-circled m-0\">\r\n	<li><a data-bg-color=\"#3A5795\" href=\"#\"><i class=\"fa fa-facebook text-white\"></i></a></li>\r\n	<li><a data-bg-color=\"#55ACEE\" href=\"#\"><i class=\"fa fa-twitter text-white\"></i></a></li>\r\n	<li><a data-bg-color=\"#A11312\" href=\"#\"><i class=\"fa fa-google-plus text-white\"></i></a></li>\r\n</ul>\r\n</div>\r\n', '601108159521672025418.jpeg', 'webroot/img/uploads/3/Newsposts/banner_image/', '56548', 'image/jpeg', '674242159521672085727.jpeg', 'webroot/img/uploads/3/Newsposts/header_image/', 25163, 'image/jpeg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 1, 3, '2020-07-20 03:45:20', '2020-07-20 03:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `news_phinxlog`
--

CREATE TABLE `news_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_phinxlog`
--

INSERT INTO `news_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20190125131146, 'CreateNewsposts', '2020-07-16 21:33:40', '2020-07-16 21:33:41', 0);

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `title`, `status`, `created`, `modified`) VALUES
(1, 'Ful-Time Teacher', 1, '2020-09-27 11:23:19', '2020-09-27 11:24:05'),
(2, 'Freelancer', 1, '2020-09-27 11:24:11', '2020-09-27 11:24:11'),
(3, 'Working Professional', 1, '2020-09-27 11:24:19', '2020-09-27 11:24:19'),
(4, 'Freelancer', 1, '2020-09-27 14:23:13', '2020-09-27 14:23:13'),
(5, 'Working Professional', 1, '2020-09-27 14:23:26', '2020-09-27 14:23:26'),
(6, 'Student', 1, '2020-09-27 14:23:36', '2020-09-27 14:23:36'),
(7, 'Not Working', 1, '2020-09-27 14:23:46', '2020-09-27 14:23:46'),
(8, 'Other', 1, '2020-09-27 14:24:06', '2020-09-27 14:24:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `total_amount` decimal(8,2) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `razorpay_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_responce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `additional_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_certificate_sent` smallint(6) DEFAULT NULL,
  `certificate_issue_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_no`, `user_id`, `amount`, `discount`, `total_amount`, `order_date`, `razorpay_order`, `note`, `invoice_file`, `payment_method`, `transaction_status`, `transactionId`, `signature`, `transaction_responce`, `created`, `modified`, `additional_options`, `is_certificate_sent`, `certificate_issue_date`) VALUES
(1, NULL, 'ea7623f4-8de3-4472-80a5-3da9102cd040', '8000.00', '0.00', '8000.00', '2020-12-08 16:48:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 16:48:17', '2020-12-08 16:48:17', NULL, NULL, NULL),
(2, NULL, 'ea7623f4-8de3-4472-80a5-3da9102cd040', '8000.00', '0.00', '8000.00', '2020-12-08 16:48:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 16:48:40', '2020-12-08 16:48:40', NULL, NULL, NULL),
(3, NULL, 'ea7623f4-8de3-4472-80a5-3da9102cd040', '8000.00', '0.00', '8000.00', '2020-12-08 16:53:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 16:53:07', '2020-12-08 16:53:07', NULL, NULL, NULL),
(4, NULL, 'ea7623f4-8de3-4472-80a5-3da9102cd040', '8000.00', '0.00', '8000.00', '2020-12-08 16:56:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-08 16:56:31', '2020-12-08 16:56:31', NULL, NULL, NULL),
(5, NULL, '1796c411-e5d5-4251-a080-589f1700f1e9', '1500.00', '500.00', '1000.00', '2020-12-09 17:17:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-09 17:17:51', '2020-12-09 17:17:51', NULL, NULL, NULL),
(6, NULL, '1796c411-e5d5-4251-a080-589f1700f1e9', '1500.00', '500.00', '1000.00', '2020-12-09 17:23:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-09 17:23:20', '2020-12-09 17:23:20', NULL, NULL, NULL),
(7, 'INV-2020-12-7', '1796c411-e5d5-4251-a080-589f1700f1e9', '1500.00', '500.00', '1000.00', '2020-12-09 17:26:42', 'order_GB1UujxLsrSctv', NULL, NULL, 'Razorpay', '1', 'pay_GB1nyl4deEzYrr', NULL, NULL, '2020-12-09 17:26:42', '2020-12-09 17:44:50', NULL, NULL, '2020-12-20 09:17:43'),
(8, 'INV-2020-12-8', '4bac188b-a4b2-4aae-a822-7f5884060969', '8000.00', '0.00', '8000.00', '2020-12-10 07:41:45', 'order_GBG48pecXxeMAz', NULL, NULL, 'Razorpay', '1', 'pay_GBG52slb168j54', NULL, NULL, '2020-12-10 07:41:45', '2020-12-10 07:42:42', NULL, 1, NULL),
(9, 'INV-2020-12-9', 'ea7623f4-8de3-4472-80a5-3da9102cd040', '8000.00', '0.00', '8000.00', '2020-12-10 07:56:28', 'order_GBGJfV0VUUp10y', NULL, NULL, 'Razorpay', '1', 'pay_GBGKgg8aev7GB3', NULL, NULL, '2020-12-10 07:56:28', '2020-12-10 07:57:45', NULL, NULL, NULL),
(10, 'INV-2020-12-10', 'ea7623f4-8de3-4472-80a5-3da9102cd040', '5500.00', '500.00', '5000.00', '2020-12-10 09:39:21', 'order_GBI4Lh9B73NwzM', NULL, NULL, 'Razorpay', '1', 'pay_GBI4mruUXuKGN4', NULL, NULL, '2020-12-10 09:39:21', '2020-12-10 09:39:49', NULL, NULL, NULL),
(11, 'INV-2020-12-11', '216ceab7-d377-4b74-829c-f52f6fd5f091', '5600.00', '0.00', '5600.00', '2020-12-12 05:35:16', 'order_GC0ylJqt5lsMLX', NULL, NULL, 'Razorpay', '1', 'pay_GC0zW9gYPdnmQV', NULL, NULL, '2020-12-12 05:35:16', '2020-12-12 05:36:03', NULL, NULL, NULL),
(12, 'INV-2020-12-12', 'ea7623f4-8de3-4472-80a5-3da9102cd040', '1500.00', '500.00', '1000.00', '2020-12-12 05:52:41', 'order_GC1H9MoL4YmLoS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 05:52:41', '2020-12-12 05:52:41', NULL, NULL, NULL),
(13, 'INV-2020-12-13', '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '5600.00', '0.00', '5100.00', '2020-12-12 09:20:20', 'order_GC4oVG0ddhFmcn', NULL, NULL, 'Razorpay', '1', 'pay_GC4rzQiq4eZK6k', NULL, NULL, '2020-12-12 09:20:20', '2020-12-12 09:23:43', '{\"referral_withdraw\":500,\"referral_deposit\":0}', NULL, NULL),
(14, 'INV-2020-12-14', '5fd9e871-5add-4992-bd24-dd7c91831186', '15000.00', '0.00', '15000.00', '2020-12-12 10:07:23', 'order_GC5cCEpP24c70s', NULL, NULL, 'Razorpay', '1', 'pay_GC5cOgqAa8e7YT', NULL, NULL, '2020-12-12 10:07:23', '2020-12-12 10:07:39', NULL, NULL, NULL),
(15, 'INV-2020-12-15', 'cc420355-3cd7-4a13-9a5b-504dad09610d', '8000.00', '0.00', '8000.00', '2020-12-20 08:01:33', 'order_GFDkFqFb7eextj', NULL, NULL, 'Razorpay', '1', 'pay_GFDkZISkb7ucYa', NULL, NULL, '2020-12-20 08:01:33', '2020-12-20 08:02:06', NULL, 1, '2020-12-20 09:17:54'),
(16, 'INV-2021-02-16', 'a985a680-d89b-4b54-95e0-44567b2084d8', '0.00', NULL, '0.00', '2021-02-03 23:37:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-03 23:37:15', '2021-02-03 23:37:15', NULL, NULL, NULL),
(17, 'INV-2021-02-17', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-06 18:08:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 18:08:31', '2021-02-06 18:08:31', NULL, NULL, NULL),
(18, 'INV-2021-02-18', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-06 18:08:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 18:08:36', '2021-02-06 18:08:36', NULL, NULL, NULL),
(19, 'INV-2021-02-19', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-06 18:08:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 18:08:37', '2021-02-06 18:08:37', NULL, NULL, NULL),
(20, 'INV-2021-02-20', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-09 20:31:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-09 20:31:31', '2021-02-09 20:31:31', NULL, NULL, NULL),
(21, 'INV-2021-02-21', '5fd9e871-5add-4992-bd24-dd7c91831186', '0.00', NULL, '0.00', '2021-02-09 20:57:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-09 20:57:20', '2021-02-09 20:57:20', NULL, NULL, NULL),
(22, 'INV-2021-02-22', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-10 20:14:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-10 20:14:45', '2021-02-10 20:14:45', NULL, NULL, NULL),
(23, 'INV-2021-02-23', '5fd9e871-5add-4992-bd24-dd7c91831186', '8000.00', '0.00', '6400.00', '2021-02-13 17:00:44', 'order_Gb2gqcEvW0sv9A', NULL, NULL, 'Razorpay', '1', 'pay_Gb2iK107uCoTnq', NULL, NULL, '2021-02-13 17:00:44', '2021-02-13 17:02:14', NULL, NULL, NULL),
(24, 'INV-2021-02-24', '5fd9e871-5add-4992-bd24-dd7c91831186', '5600.00', '0.00', '5500.00', '2021-02-13 17:10:43', 'order_Gb2rO4XvLqRIVw', NULL, NULL, 'Razorpay', '1', 'pay_Gb2rzEA1SiEoxX', NULL, NULL, '2021-02-13 17:10:43', '2021-02-13 17:11:27', NULL, NULL, NULL),
(25, 'INV-2021-02-25', '1796c411-e5d5-4251-a080-589f1700f1e9', '5500.00', '500.00', '5000.00', '2021-02-15 22:36:41', 'order_GbvTyC1XrjIj5p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-15 22:36:41', '2021-02-15 22:36:41', NULL, NULL, NULL),
(26, 'INV-2021-02-26', '5fd9e871-5add-4992-bd24-dd7c91831186', '10000.00', '500.00', '9500.00', '2021-02-16 20:25:22', 'order_GcHmNdeYdCzW0c', NULL, NULL, 'Razorpay', '1', 'pay_GcHmhRCKlrmPsg', NULL, NULL, '2021-02-16 20:25:23', '2021-02-16 20:25:46', NULL, NULL, '2021-02-16 22:39:15'),
(27, 'INV-2021-02-27', '5fd9e871-5add-4992-bd24-dd7c91831186', '1500.00', '500.00', '1000.00', '2021-02-16 22:31:10', 'order_GcJvGFgTS5sOz3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-16 22:31:10', '2021-02-16 22:31:10', NULL, NULL, NULL),
(28, 'INV-2021-02-28', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-02-17 12:35:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-17 12:35:29', '2021-02-17 12:35:29', NULL, NULL, NULL),
(29, 'INV-2021-03-29', 'af8e5db2-2cfb-423b-8380-ba5c7e35d600', '5600.00', '0.00', '5600.00', '2021-03-02 22:03:01', 'order_GhqvDXvpHDZOxf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 22:03:01', '2021-03-02 22:03:01', NULL, NULL, NULL),
(30, 'INV-2021-03-30', '216ceab7-d377-4b74-829c-f52f6fd5f091', '8000.00', '0.00', '6400.00', '2021-03-06 22:10:14', 'order_GjRBJX9cG3shCA', NULL, NULL, 'Razorpay', '1', 'pay_GjRCwmJMVdWLsz', NULL, NULL, '2021-03-06 22:10:14', '2021-03-06 22:11:53', NULL, NULL, NULL),
(31, 'INV-2021-03-31', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-13 11:45:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 11:45:39', '2021-03-13 11:45:39', NULL, NULL, NULL),
(32, 'INV-2021-03-32', '216ceab7-d377-4b74-829c-f52f6fd5f091', '5500.00', '500.00', '4900.00', '2021-03-13 12:48:52', 'order_Gm3MBu6SgSFteF', NULL, NULL, 'Razorpay', '1', 'pay_Gm3Nr1GRHIDJ2M', NULL, NULL, '2021-03-13 12:48:52', '2021-03-13 12:50:34', NULL, NULL, NULL),
(33, 'INV-2021-03-33', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-13 16:48:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 16:48:36', '2021-03-13 16:48:36', NULL, NULL, NULL),
(34, 'INV-2021-03-34', '8d26c504-a9cf-4696-a326-110f634a82ff', '0.00', NULL, '0.00', '2021-03-13 17:15:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:15:15', '2021-03-13 17:15:15', NULL, NULL, NULL),
(35, 'INV-2021-03-35', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-13 17:15:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:15:50', '2021-03-13 17:15:50', NULL, NULL, NULL),
(36, 'INV-2021-03-36', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-13 17:36:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:36:17', '2021-03-13 17:36:17', NULL, NULL, NULL),
(37, 'INV-2021-03-37', '89921904-eadc-429b-b9e4-771ae51a71e7', '0.00', NULL, '0.00', '2021-03-13 17:40:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:40:10', '2021-03-13 17:40:10', NULL, NULL, NULL),
(38, 'INV-2021-03-38', '169a68a6-12bd-46da-8e96-7582bfcc653a', '0.00', NULL, '0.00', '2021-03-14 13:19:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:19:10', '2021-03-14 13:19:10', NULL, NULL, NULL),
(39, 'INV-2021-03-39', '169a68a6-12bd-46da-8e96-7582bfcc653a', '0.00', NULL, '0.00', '2021-03-14 13:20:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:20:04', '2021-03-14 13:20:04', NULL, NULL, NULL),
(40, 'INV-2021-03-40', '169a68a6-12bd-46da-8e96-7582bfcc653a', '0.00', NULL, '0.00', '2021-03-14 13:20:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:20:40', '2021-03-14 13:20:40', NULL, NULL, NULL),
(41, 'INV-2021-03-41', '08b83891-a807-4235-b8d9-b515375c0598', '0.00', NULL, '0.00', '2021-03-14 13:55:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:55:58', '2021-03-14 13:55:58', NULL, NULL, NULL),
(42, 'INV-2021-03-42', '08b83891-a807-4235-b8d9-b515375c0598', '0.00', NULL, '0.00', '2021-03-14 13:57:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:57:28', '2021-03-14 13:57:28', NULL, NULL, NULL),
(43, 'INV-2021-03-43', '169a68a6-12bd-46da-8e96-7582bfcc653a', '0.00', NULL, '0.00', '2021-03-14 13:58:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 13:58:23', '2021-03-14 13:58:23', NULL, NULL, NULL),
(44, 'INV-2021-03-44', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:14:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:14:11', '2021-03-14 14:14:11', NULL, NULL, NULL),
(45, 'INV-2021-03-45', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:14:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:14:15', '2021-03-14 14:14:15', NULL, NULL, NULL),
(46, 'INV-2021-03-46', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:14:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:14:18', '2021-03-14 14:14:18', NULL, NULL, NULL),
(47, 'INV-2021-03-47', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:14:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:14:19', '2021-03-14 14:14:19', NULL, NULL, NULL),
(48, 'INV-2021-03-48', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:18:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:18:28', '2021-03-14 14:18:28', NULL, NULL, NULL),
(49, 'INV-2021-03-49', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-14 14:19:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:19:26', '2021-03-14 14:19:26', NULL, NULL, NULL),
(50, 'INV-2021-03-50', '92da02c7-25e5-4a8c-b89f-188bd36721f1', '0.00', NULL, '0.00', '2021-03-17 23:01:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-17 23:01:43', '2021-03-17 23:01:43', NULL, NULL, NULL),
(51, 'INV-2021-03-51', '96091ff1-cd1c-4c2d-96ea-44c27170327c', '0.00', NULL, '0.00', '2021-03-21 19:54:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-21 19:54:52', '2021-03-21 19:54:52', NULL, NULL, NULL),
(52, 'INV-2021-03-52', '96091ff1-cd1c-4c2d-96ea-44c27170327c', '0.00', NULL, '0.00', '2021-03-21 19:54:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-21 19:54:57', '2021-03-21 19:54:57', NULL, NULL, NULL),
(53, NULL, '216ceab7-d377-4b74-829c-f52f6fd5f091', '1500.00', '1000.00', '0.00', '2021-03-22 13:09:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 13:09:58', '2021-03-22 13:09:58', '{\"referral_withdraw\":500,\"referral_deposit\":0}', NULL, NULL),
(54, 'INV-2021-03-54', '216ceab7-d377-4b74-829c-f52f6fd5f091', '1500.00', '1000.00', '500.00', '2021-03-22 13:10:08', 'order_GpcWhNpUoYQ96n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 13:10:08', '2021-03-22 13:10:08', NULL, NULL, NULL),
(55, NULL, '216ceab7-d377-4b74-829c-f52f6fd5f091', '15000.00', '15000.00', '0.00', '2021-03-22 13:13:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 13:13:44', '2021-03-22 13:13:44', NULL, NULL, NULL),
(56, 'INV-2021-03-56', 'a985a680-d89b-4b54-95e0-44567b2084d8', '0.00', NULL, '0.00', '2021-03-23 16:00:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 16:00:55', '2021-03-23 16:00:55', NULL, NULL, NULL),
(57, 'INV-2021-03-57', 'a985a680-d89b-4b54-95e0-44567b2084d8', '0.00', NULL, '0.00', '2021-03-23 16:01:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 16:01:54', '2021-03-23 16:01:54', NULL, NULL, NULL),
(58, 'INV-2021-03-58', 'a985a680-d89b-4b54-95e0-44567b2084d8', '0.00', NULL, '0.00', '2021-03-23 16:02:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 16:02:31', '2021-03-23 16:02:31', NULL, NULL, NULL),
(59, 'INV-2021-03-59', 'a985a680-d89b-4b54-95e0-44567b2084d8', '0.00', NULL, '0.00', '2021-03-23 16:42:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 16:42:12', '2021-03-23 16:42:12', NULL, NULL, NULL),
(60, 'INV-2021-03-60', '216ceab7-d377-4b74-829c-f52f6fd5f091', '0.00', NULL, '0.00', '2021-03-24 20:19:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:19:11', '2021-03-24 20:19:11', NULL, NULL, NULL),
(61, 'INV-2021-03-61', '7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', '0.00', NULL, '0.00', '2021-03-24 20:20:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:20:10', '2021-03-24 20:20:10', NULL, NULL, NULL),
(62, 'INV-2021-03-62', '7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', '0.00', NULL, '0.00', '2021-03-24 20:22:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:22:45', '2021-03-24 20:22:45', NULL, NULL, NULL),
(63, 'INV-2021-03-63', '7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', '0.00', NULL, '0.00', '2021-03-24 20:24:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:24:08', '2021-03-24 20:24:08', NULL, NULL, NULL),
(64, 'INV-2021-03-64', '7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', '0.00', NULL, '0.00', '2021-03-24 20:25:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:25:16', '2021-03-24 20:25:16', NULL, NULL, NULL),
(65, 'INV-2021-03-65', '92da02c7-25e5-4a8c-b89f-188bd36721f1', '0.00', NULL, '0.00', '2021-03-24 20:25:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:25:47', '2021-03-24 20:25:47', NULL, NULL, NULL),
(66, 'INV-2021-03-66', '92da02c7-25e5-4a8c-b89f-188bd36721f1', '0.00', NULL, '0.00', '2021-03-24 20:26:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:26:02', '2021-03-24 20:26:02', NULL, NULL, NULL),
(67, 'INV-2021-03-67', '388fa280-1a41-4ab3-9736-980df3ce0abb', '0.00', NULL, '0.00', '2021-03-24 20:48:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:48:03', '2021-03-24 20:48:03', NULL, NULL, NULL),
(68, 'INV-2021-03-68', '388fa280-1a41-4ab3-9736-980df3ce0abb', '0.00', NULL, '0.00', '2021-03-24 20:49:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:49:08', '2021-03-24 20:49:08', NULL, NULL, NULL),
(69, 'INV-2021-03-69', '96091ff1-cd1c-4c2d-96ea-44c27170327c', '0.00', NULL, '0.00', '2021-03-29 22:33:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-29 22:33:53', '2021-03-29 22:33:53', NULL, NULL, NULL),
(70, 'INV-2021-03-70', '96091ff1-cd1c-4c2d-96ea-44c27170327c', '0.00', NULL, '0.00', '2021-03-29 22:33:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-29 22:33:55', '2021-03-29 22:33:55', NULL, NULL, NULL),
(71, 'INV-2021-03-71', '96091ff1-cd1c-4c2d-96ea-44c27170327c', '0.00', NULL, '0.00', '2021-03-29 22:35:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-29 22:35:07', '2021-03-29 22:35:07', NULL, NULL, NULL),
(72, 'INV-2021-05-72', '216ceab7-d377-4b74-829c-f52f6fd5f091', '1000.00', '500.00', '500.00', '2021-05-16 16:20:08', 'order_HBR92ij2zBBWuQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 16:20:08', '2021-05-16 16:20:08', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_phinxlog`
--

CREATE TABLE `orders_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_phinxlog`
--

INSERT INTO `orders_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201124181251, 'CreateCarts', '2020-12-06 10:46:51', '2020-12-06 10:46:51', 0),
(20201124181300, 'CreateOrders', '2020-12-06 10:46:51', '2020-12-06 10:46:51', 0),
(20201124181307, 'CreateOrderCourses', '2020-12-06 10:46:51', '2020-12-06 10:46:51', 0),
(20201126041554, 'AddPaymentFieldsToOrders', '2020-12-06 10:46:51', '2020-12-06 10:46:51', 0),
(20201210044524, 'AddAdditionalOptionsToOrders', '2020-12-10 07:32:00', '2020-12-10 07:32:00', 0),
(20201219153904, 'AddIsCertificateSentToOrders', '2020-12-19 19:12:26', '2020-12-19 19:12:26', 0),
(20201220084723, 'AddCertificateIssueDateToOrders', '2020-12-20 09:03:16', '2020-12-20 09:03:16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_coupons`
--

CREATE TABLE `order_coupons` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_coupons`
--

INSERT INTO `order_coupons` (`id`, `order_id`, `coupon_id`, `user_id`, `amount`, `created`, `modified`) VALUES
(1, 23, 1, '5fd9e871-5add-4992-bd24-dd7c91831186', '1600.00', '2021-02-13 17:00:44', '2021-02-13 17:00:44'),
(2, 24, 2, '5fd9e871-5add-4992-bd24-dd7c91831186', '100.00', '2021-02-13 17:10:43', '2021-02-13 17:10:43'),
(3, 25, 0, '', NULL, '2021-02-15 22:36:41', '2021-02-15 22:36:41'),
(4, 26, 0, '', NULL, '2021-02-16 20:25:23', '2021-02-16 20:25:23'),
(5, 27, 0, '', NULL, '2021-02-16 22:31:11', '2021-02-16 22:31:11'),
(6, 30, 1, '216ceab7-d377-4b74-829c-f52f6fd5f091', '1600.00', '2021-03-06 22:10:14', '2021-03-06 22:10:14'),
(7, 32, 2, '216ceab7-d377-4b74-829c-f52f6fd5f091', '100.00', '2021-03-13 12:48:52', '2021-03-13 12:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `order_courses`
--

CREATE TABLE `order_courses` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `discount` decimal(8,2) DEFAULT NULL,
  `total_amount` decimal(8,2) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_courses`
--

INSERT INTO `order_courses` (`id`, `order_id`, `course_id`, `amount`, `discount`, `total_amount`, `created`, `modified`) VALUES
(1, 1, 2, '8000.00', NULL, '8000.00', '2020-12-08 16:48:17', '2020-12-08 16:48:17'),
(2, 2, 2, '8000.00', NULL, '8000.00', '2020-12-08 16:48:40', '2020-12-08 16:48:40'),
(3, 3, 2, '8000.00', NULL, '8000.00', '2020-12-08 16:53:07', '2020-12-08 16:53:07'),
(4, 4, 2, '8000.00', NULL, '8000.00', '2020-12-08 16:56:31', '2020-12-08 16:56:31'),
(5, 5, 1, '1500.00', '500.00', '1000.00', '2020-12-09 17:17:51', '2020-12-09 17:17:51'),
(6, 6, 1, '1500.00', '500.00', '1000.00', '2020-12-09 17:23:20', '2020-12-09 17:23:20'),
(7, 7, 1, '1500.00', '500.00', '1000.00', '2020-12-09 17:26:42', '2020-12-09 17:26:42'),
(8, 8, 2, '8000.00', NULL, '8000.00', '2020-12-10 07:41:45', '2020-12-10 07:41:45'),
(9, 9, 2, '8000.00', NULL, '8000.00', '2020-12-10 07:56:28', '2020-12-10 07:56:28'),
(10, 10, 3, '5500.00', '500.00', '5000.00', '2020-12-10 09:39:21', '2020-12-10 09:39:21'),
(11, 11, 4, '5600.00', NULL, '5600.00', '2020-12-12 05:35:16', '2020-12-12 05:35:16'),
(12, 12, 1, '1500.00', '500.00', '1000.00', '2020-12-12 05:52:41', '2020-12-12 05:52:41'),
(13, 13, 4, '5600.00', NULL, '5600.00', '2020-12-12 09:20:20', '2020-12-12 09:20:20'),
(14, 14, 5, '15000.00', NULL, '15000.00', '2020-12-12 10:07:23', '2020-12-12 10:07:23'),
(15, 15, 2, '8000.00', NULL, '8000.00', '2020-12-20 08:01:33', '2020-12-20 08:01:33'),
(16, 16, 7, NULL, NULL, NULL, '2021-02-03 23:37:15', '2021-02-03 23:37:15'),
(17, 17, 7, NULL, NULL, NULL, '2021-02-06 18:08:31', '2021-02-06 18:08:31'),
(18, 18, 7, NULL, NULL, NULL, '2021-02-06 18:08:36', '2021-02-06 18:08:36'),
(19, 19, 7, NULL, NULL, NULL, '2021-02-06 18:08:37', '2021-02-06 18:08:37'),
(20, 20, 8, NULL, NULL, NULL, '2021-02-09 20:31:31', '2021-02-09 20:31:31'),
(21, 21, 10, NULL, NULL, NULL, '2021-02-09 20:57:20', '2021-02-09 20:57:20'),
(22, 22, 10, NULL, NULL, NULL, '2021-02-10 20:14:45', '2021-02-10 20:14:45'),
(23, 23, 2, '8000.00', NULL, '8000.00', '2021-02-13 17:00:44', '2021-02-13 17:00:44'),
(24, 24, 4, '5600.00', NULL, '5600.00', '2021-02-13 17:10:43', '2021-02-13 17:10:43'),
(25, 25, 3, '5500.00', '500.00', '5000.00', '2021-02-15 22:36:41', '2021-02-15 22:36:41'),
(26, 26, 6, '10000.00', '500.00', '9500.00', '2021-02-16 20:25:23', '2021-02-16 20:25:23'),
(27, 27, 1, '1500.00', '500.00', '1000.00', '2021-02-16 22:31:10', '2021-02-16 22:31:10'),
(28, 28, 12, NULL, NULL, NULL, '2021-02-17 12:35:29', '2021-02-17 12:35:29'),
(29, 29, 4, '5600.00', NULL, '5600.00', '2021-03-02 22:03:01', '2021-03-02 22:03:01'),
(30, 30, 2, '8000.00', NULL, '8000.00', '2021-03-06 22:10:14', '2021-03-06 22:10:14'),
(31, 31, 16, NULL, NULL, NULL, '2021-03-13 11:45:39', '2021-03-13 11:45:39'),
(32, 32, 3, '5500.00', '500.00', '5000.00', '2021-03-13 12:48:52', '2021-03-13 12:48:52'),
(33, 33, 13, NULL, NULL, NULL, '2021-03-13 16:48:36', '2021-03-13 16:48:36'),
(34, 34, 14, NULL, NULL, NULL, '2021-03-13 17:15:15', '2021-03-13 17:15:15'),
(35, 35, 14, NULL, NULL, NULL, '2021-03-13 17:15:50', '2021-03-13 17:15:50'),
(36, 36, 17, NULL, NULL, NULL, '2021-03-13 17:36:17', '2021-03-13 17:36:17'),
(37, 37, 17, NULL, NULL, NULL, '2021-03-13 17:40:10', '2021-03-13 17:40:10'),
(38, 38, 16, NULL, NULL, NULL, '2021-03-14 13:19:10', '2021-03-14 13:19:10'),
(39, 39, 17, NULL, NULL, NULL, '2021-03-14 13:20:04', '2021-03-14 13:20:04'),
(40, 40, 14, NULL, NULL, NULL, '2021-03-14 13:20:40', '2021-03-14 13:20:40'),
(41, 41, 19, NULL, NULL, NULL, '2021-03-14 13:55:58', '2021-03-14 13:55:58'),
(42, 42, 18, NULL, NULL, NULL, '2021-03-14 13:57:28', '2021-03-14 13:57:28'),
(43, 43, 20, NULL, NULL, NULL, '2021-03-14 13:58:23', '2021-03-14 13:58:23'),
(44, 44, 20, NULL, NULL, NULL, '2021-03-14 14:14:11', '2021-03-14 14:14:11'),
(45, 45, 20, NULL, NULL, NULL, '2021-03-14 14:14:15', '2021-03-14 14:14:15'),
(46, 46, 20, NULL, NULL, NULL, '2021-03-14 14:14:18', '2021-03-14 14:14:18'),
(47, 47, 20, NULL, NULL, NULL, '2021-03-14 14:14:19', '2021-03-14 14:14:19'),
(48, 48, 19, NULL, NULL, NULL, '2021-03-14 14:18:28', '2021-03-14 14:18:28'),
(49, 49, 18, NULL, NULL, NULL, '2021-03-14 14:19:26', '2021-03-14 14:19:26'),
(50, 50, 8, NULL, NULL, NULL, '2021-03-17 23:01:43', '2021-03-17 23:01:43'),
(51, 51, 8, NULL, NULL, NULL, '2021-03-21 19:54:52', '2021-03-21 19:54:52'),
(52, 52, 8, NULL, NULL, NULL, '2021-03-21 19:54:57', '2021-03-21 19:54:57'),
(53, 53, 1, '1500.00', '1000.00', '500.00', '2021-03-22 13:09:58', '2021-03-22 13:09:58'),
(54, 54, 1, '1500.00', '1000.00', '500.00', '2021-03-22 13:10:08', '2021-03-22 13:10:08'),
(55, 55, 5, '15000.00', '15000.00', '0.00', '2021-03-22 13:13:44', '2021-03-22 13:13:44'),
(56, 56, 8, NULL, NULL, NULL, '2021-03-23 16:00:55', '2021-03-23 16:00:55'),
(57, 57, 20, NULL, NULL, NULL, '2021-03-23 16:01:54', '2021-03-23 16:01:54'),
(58, 58, 19, NULL, NULL, NULL, '2021-03-23 16:02:31', '2021-03-23 16:02:31'),
(59, 59, 17, NULL, NULL, NULL, '2021-03-23 16:42:12', '2021-03-23 16:42:12'),
(60, 60, 9, NULL, NULL, NULL, '2021-03-24 20:19:11', '2021-03-24 20:19:11'),
(61, 61, 8, NULL, NULL, NULL, '2021-03-24 20:20:10', '2021-03-24 20:20:10'),
(62, 62, 20, NULL, NULL, NULL, '2021-03-24 20:22:45', '2021-03-24 20:22:45'),
(63, 63, 17, NULL, NULL, NULL, '2021-03-24 20:24:08', '2021-03-24 20:24:08'),
(64, 64, 14, NULL, NULL, NULL, '2021-03-24 20:25:16', '2021-03-24 20:25:16'),
(65, 65, 17, NULL, NULL, NULL, '2021-03-24 20:25:47', '2021-03-24 20:25:47'),
(66, 66, 20, NULL, NULL, NULL, '2021-03-24 20:26:02', '2021-03-24 20:26:02'),
(67, 67, 10, NULL, NULL, NULL, '2021-03-24 20:48:03', '2021-03-24 20:48:03'),
(68, 68, 8, NULL, NULL, NULL, '2021-03-24 20:49:08', '2021-03-24 20:49:08'),
(69, 69, 17, NULL, NULL, NULL, '2021-03-29 22:33:53', '2021-03-29 22:33:53'),
(70, 70, 17, NULL, NULL, NULL, '2021-03-29 22:33:55', '2021-03-29 22:33:55'),
(71, 71, 20, NULL, NULL, NULL, '2021-03-29 22:35:07', '2021-03-29 22:35:07'),
(72, 72, 15, '1000.00', '500.00', '500.00', '2021-05-16 16:20:08', '2021-05-16 16:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `sub_title` varchar(250) DEFAULT NULL,
  `slug` varchar(250) NOT NULL,
  `short_description` varchar(700) NOT NULL,
  `description` longtext NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `banner_dir` varchar(255) DEFAULT NULL,
  `banner_size` int(11) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(300) NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `listing_id`, `title`, `sub_title`, `slug`, `short_description`, `description`, `banner`, `banner_dir`, `banner_size`, `banner_type`, `meta_title`, `meta_keyword`, `meta_description`, `status`, `created`, `modified`) VALUES
(1, 1, 'About US', '', 'about-us', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nWhy do we use it?\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\nWhere does it come from?\r\n\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\nWhere can I get some?\r\n\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '', 'webroot/img/uploads/1/Pages/banner/', 195256, 'image/jpeg', 'About US', 'About US', 'About US', NULL, '2020-07-11 12:52:48', '2020-07-11 13:12:01'),
(3, 3, 'About Krishna Public school', '', 'welcome-page', 'lorem lipsum', '<p>Tech-Whiz Academi is one of the best-equipped schools in India with facilities that support excellence in all areas. The infrastructure has been suitably planned to accommodate learning and an all round development of the child. The School provides the best possible education to its students. The main objective is to ensure that the youthful energies of all students are channelized towards a holistic development..</p>\r\n\r\n<div class=\"row mt-30 mb-30 ml-20\">\r\n<div class=\"col-xs-6\">\r\n<ul class=\"mt-10\">\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;World-Class Infrastructure</li>\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;Safety First</li>\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;Thoughtfully Designed Curriculum</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"col-xs-6\">\r\n<ul class=\"mt-10\">\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;Ideal Teacher Student Ratio</li>\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;Beyond Academics</li>\r\n	<li class=\"mb-10\"><i class=\"fa fa-check-circle text-theme-colored\"></i>&emsp;Small Batches</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectet adipisicing elit. Quas, veniam nobis minima. Delectus, dolorem rerum, eos nemo dolore amet quis, eum debiti modi voluptatibus ducimus molestiae laborum itaque quam maxime dolor amit laboriosam aperiam exercitationem.</p>\r\n', NULL, NULL, NULL, NULL, 'lorem lipsum', 'lorem lipsum', 'lorem lipsum', NULL, '2020-07-11 17:15:02', '2020-07-15 17:37:15'),
(4, 3, 'About Us', '', 'about-us', 'VSI International Sr Sec school is Affiliated to Board of Secondary Education, Rajasthan. The English medium school is located in Pratap Nagar, Sanganer Jaipur, Rajasthan, India.It was founded in 1979, currently headed by Ms. Sangeeta Shrivastava and directed by Chartered Accountant R.C. Sharma.The school is managed by Blue Bells Shiksha Samiti (BBSS).', '<div class=\"column-grid column-grid-1 column-narrow\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<p style=\"text-align: justify;\"><b>VSI International Sr Sec school</b>&nbsp;is Affiliated to Board of Secondary Education, Rajasthan. The English medium school is located in&nbsp;Pratap Nagar,&nbsp;Sanganer Jaipur,&nbsp;Rajasthan,&nbsp;India.It was founded in 1979, currently headed by Ms. Sangeeta Shrivastava and directed by&nbsp;Chartered Accountant&nbsp;R.C. Sharma.The school is managed by&nbsp;<b>Blue Bells Shiksha Samiti (BBSS).</b></p>\r\n\r\n<p style=\"text-align: justify;\">VSI International Sr Sec School is Awarded as the Emerging School of the Year 2017 by the Honorable education minister.<br />\r\nThe School is the <strong><a href=\"http://vsiinternational.in/\">Best English Medium School in Jaipur</a></strong> (Pratap Nagar, Sanganer) with all prominent facilities.<br />\r\nWe have a fully air-conditioned school in Jaipur, having admission available for play&nbsp;Playgroup, Primary, and Senior Secondary level.<br />\r\nOur top class faculty always provides great results for Science, Commerce, and Arts stream.<br />\r\nStudents get enormous exposure to extracurricular activities like dancing, music, singing, sports etc. under the guidance of our field specialists.</p>\r\n\r\n<h3 style=\"text-align: justify;\"><span class=\"mw-headline\" id=\"Academics.5B2.5D\">Academics</span></h3>\r\n\r\n<p style=\"text-align: justify;\">School provides education from pre-primary to class XII, However, they also have&nbsp;playgroup&nbsp;classes. So their academic classes are grouped into four categories:-</p>\r\n\r\n<p style=\"text-align: justify;\"><b>Play Group</b>: Playgroup classes are generally for 2-3-year-old children.&nbsp;<strong><a href=\"http://vsiinternational.in/primary-school-jaipur/\">Pre-school/playgroup</a></strong>&nbsp;is for providing essential smooth transaction from home to school.</p>\r\n\r\n<p style=\"text-align: justify;\"><b>Pre-primary (Nursery, K.G. &amp; Prep)</b>&nbsp;: It involves classes for 3-5-year-old children. Various activities like story telling, group games, toy games, reading, writing are conducted for providing them necessary basic knowledge.</p>\r\n\r\n<p style=\"text-align: justify;\"><b>Junior Wing (Classes I to VII)</b>&nbsp;: The junior wing or <strong><a href=\"http://vsiinternational.in/primary-school-jaipur/\">Primary school</a></strong>&nbsp;generally involves students from age group between 5-13 here.The actual academic career starts from the Junior wing.</p>\r\n\r\n<p style=\"text-align: justify;\"><b>Senior Wing (Classes IX to XII)</b>&nbsp;: Usually, Students between 14-18 students in the <a href=\"http://vsiinternational.in/senior-secondary-school-jaipur/\">Senior wing</a>. They have following subjects to study:-</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><b>for class IX-X</b>\r\n\r\n	<ul>\r\n		<li>Language: -Hindi, English, Sanskrit</li>\r\n		<li>Science: &ndash; Chemistry, Biology, Physics</li>\r\n		<li>Math</li>\r\n		<li>Social Science: &ndash; Economics, History, Geography, Civics.</li>\r\n	</ul>\r\n	</li>\r\n	<li><b>for class XI-XII</b>\r\n	<ul>\r\n		<li style=\"text-align: justify;\">Language: &ndash; Hindi, English</li>\r\n		<li style=\"text-align: justify;\">Science with Math</li>\r\n		<li style=\"text-align: justify;\">Commerce</li>\r\n		<li style=\"text-align: justify;\">Arts</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid column-grid-3\">\r\n<div class=\"column-grid column-grid-1 column-narrow\" style=\"margin-bottom: 20px;\">\r\n<h4 class=\"title-content\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/school.png\" width=\"16px\" /> Admission Details</h4>\r\n\r\n<div class=\"entry-content-wrap admission\" itemprop=\"description\">\r\n<p style=\"text-align: justify;\">Student has to fill out a registration form which will be &nbsp;available at reception. At the time of submission of form, a photo copy of birth certificate duly attested by a gazetted officer and three photographs of the student applicant are to be attached with the form.</p>\r\n\r\n<p style=\"text-align: justify;\">Prescribed registration fee must be deposited along with the application form. This&nbsp;<a href=\"http://vsiinternational.in/fee/\">fee</a>&nbsp;is neither refundable nor adjustable. Registration of the student is by no means a guarantee of his/her admission.</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid column-grid-3 column-narrow\" style=\"border: 1px dashed #c3c3c3;box-sizing: border-box; padding: 0 10px 10px;width: 100%;\">\r\n<div class=\"column-grid-3 column-span-1 column-narrow box-content\" style=\"margin-top: 20px;\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/education-1.png\" width=\"16px\" />Medium of Instruction</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"address-data\" itemprop=\"streetAddress\">\r\n<ul style=\"list-style: inside none disc;\">\r\n	<li>English</li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/ratio.png\" width=\"16px\" />Student Teacher Ratio</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"address-data\" itemprop=\"streetAddress\">30:1</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid-3 column-span-1 column-narrow box-content\" style=\"margin-top: 20px;margin-right: 60px;\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/education.png\" width=\"16px\" />Educational Board</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"board-name\"><span style=\"white-space:nowrap\">Board Name: </span></div>\r\n\r\n<div class=\"address-data\" itemprop=\"streetAddress\">State Board</div>\r\n</div>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"board-name\"><span style=\"white-space:nowrap\">Affiliation Status:&nbsp;</span></div>\r\n\r\n<div class=\"address-data\" itemprop=\"streetAddress\">Affiliated</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid-3 column-span-1 column-narrow box-content\" style=\"margin-top: 20px;\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/school-1.png\" width=\"16px\" />School Type</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"address-data\" itemprop=\"streetAddress\">\r\n<ul style=\"list-style: inside none disc;\">\r\n	<li>Co-Education</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid-3 column-span-1 column-narrow box-content\" style=\"margin-top: 20px;\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/building.png\" width=\"16px\" />Facilities</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"address-data\" itemprop=\"streetAddress\">\r\n<ul style=\"list-style: inside none disc;\">\r\n	<li>Computers</li>\r\n	<li>Library</li>\r\n	<li>Medical Facility</li>\r\n	<li>Playground</li>\r\n	<li>Canteen</li>\r\n	<li>Transportation</li>\r\n	<li>Smart Classroom</li>\r\n	<li>A/C Classroom</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"column-grid-3 column-span-1 column-narrow box-content\" style=\"margin-top: 20px;margin-right: 60px;\">\r\n<div class=\"entry-content-wrap\" itemprop=\"description\">\r\n<h4 class=\"title-content\" style=\"margin: 0 0 6px !important;\"><img class=\"title-icon load-finished\" height=\"16px\" src=\"https://www.mypaathshala.in/wp-content/themes/addon/icon/player.png\" width=\"16px\" />Sports</h4>\r\n\r\n<div class=\"address-row row-postal-address\">\r\n<div class=\"address-data\" itemprop=\"streetAddress\">\r\n<ul style=\"list-style: inside none disc;\">\r\n	<li>Badminton</li>\r\n	<li>Tennis</li>\r\n	<li>Table Tennis</li>\r\n	<li>Cricket</li>\r\n	<li>Volleyball</li>\r\n	<li>Yoga</li>\r\n	<li>Kho Kho</li>\r\n	<li>Kabaddi</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '494612159483669343437.jpg', 'webroot/img/uploads/3/Pages/banner/', 80562, 'image/jpeg', 'About Us', 'About Us', 'About Us', NULL, '2020-07-15 17:46:17', '2020-07-15 18:11:33'),
(5, 4, 'About <span>TeachingBharat.<span>com</span></span>', '', 'about-teaching-bharat', 'India\'s Best online tution at affordable price on Teaching Bharat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '457633160096726726819.jpg', 'webroot/img/uploads/4/Pages/banner/', 645805, 'image/jpeg', 'About Teaching Bharat', 'About Teaching Bharat', 'About Teaching Bharat', NULL, '2020-09-07 19:18:24', '2020-09-24 17:08:27'),
(6, 4, 'TERMS OF <span>USE</span>', '', 'terms-of-use', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '740408160096903257678.jpg', 'webroot/img/uploads/4/Pages/banner/', 645805, 'image/jpeg', 'Terms of use', 'Terms of use', 'Terms of use', NULL, '2020-09-07 19:30:30', '2020-09-24 17:39:50'),
(7, 4, 'PRIVACY <span>POLICY</span>', '', 'privacy-policy', 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '767908160096904055232.jpg', 'webroot/img/uploads/4/Pages/banner/', 645805, 'image/jpeg', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', NULL, '2020-09-07 19:31:06', '2020-09-24 17:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200621095309, 'AddAdminUserIdToAuditLogs', '2020-07-11 05:50:28', '2020-07-11 05:50:28', 0),
(20200712081103, 'CreateUserTokens', '2020-07-12 02:41:35', '2020-07-12 02:41:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `priority_types`
--

CREATE TABLE `priority_types` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `priority_types`
--

INSERT INTO `priority_types` (`id`, `listing_id`, `title`, `position`, `created`, `modified`) VALUES
(10, 3, 'Law', 1, '2020-07-19 12:06:48', '2020-07-19 12:13:41'),
(11, 3, 'Medium', 2, '2020-07-19 12:06:55', '2020-07-19 12:13:35'),
(12, 3, 'High', 3, '2020-07-19 12:07:03', '2020-07-19 12:12:04'),
(13, 3, 'Very High', 4, '2020-07-19 12:07:13', '2020-07-19 12:11:40'),
(14, 1, 'Law', 1, '2020-07-19 12:07:48', '2020-07-19 12:15:08'),
(15, 1, 'Medium', 2, '2020-07-19 12:07:56', '2020-07-19 12:14:39'),
(16, 1, 'High', 3, '2020-07-19 12:08:04', '2020-07-19 12:14:04'),
(17, 1, 'Very High', 4, '2020-07-19 12:08:14', '2020-07-19 12:15:14');

-- --------------------------------------------------------

--
-- Table structure for table `promotions_phinxlog`
--

CREATE TABLE `promotions_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promotions_phinxlog`
--

INSERT INTO `promotions_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201230184037, 'CreateCoupons', '2021-01-30 16:00:37', '2021-01-30 16:00:37', 0),
(20210108170649, 'CreateOrderCoupons', '2021-01-30 16:00:37', '2021-01-30 16:00:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `queued_jobs`
--

CREATE TABLE `queued_jobs` (
  `id` int(11) NOT NULL,
  `job_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text DEFAULT NULL,
  `job_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `notbefore` datetime DEFAULT NULL,
  `fetched` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `progress` float DEFAULT NULL,
  `failed` int(11) NOT NULL DEFAULT 0,
  `failure_message` text DEFAULT NULL,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(3) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `queue_phinxlog`
--

CREATE TABLE `queue_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue_phinxlog`
--

INSERT INTO `queue_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20150425180802, 'Init', '2020-07-11 05:26:05', '2020-07-11 05:26:05', 0),
(20150511062806, 'Fixmissing', '2020-07-11 05:26:05', '2020-07-11 05:26:06', 0),
(20150911132343, 'ImprovementsForMysql', '2020-07-11 05:26:06', '2020-07-11 05:26:06', 0),
(20161319000000, 'IncreaseDataSize', '2020-07-11 05:26:06', '2020-07-11 05:26:06', 0),
(20161319000001, 'Priority', '2020-07-11 05:26:06', '2020-07-11 05:26:06', 0),
(20161319000002, 'Rename', '2020-07-11 05:26:06', '2020-07-11 05:26:06', 0),
(20161319000003, 'Processes', '2020-07-11 05:26:06', '2020-07-11 05:26:07', 0),
(20171013131845, 'AlterQueuedJobs', '2020-07-11 05:26:07', '2020-07-11 05:26:07', 0),
(20171013133145, 'Utf8mb4Fix', '2020-07-11 05:26:07', '2020-07-11 05:26:08', 0),
(20171019083500, 'ColumnLength', '2020-07-11 05:26:08', '2020-07-11 05:26:08', 0),
(20171019083501, 'MigrationQueueNull', '2020-07-11 05:26:08', '2020-07-11 05:26:09', 0),
(20171019083502, 'MigrationQueueStatus', '2020-07-11 05:26:09', '2020-07-11 05:26:09', 0),
(20171019083503, 'MigrationQueueProcesses', '2020-07-11 05:26:09', '2020-07-11 05:26:10', 0),
(20171019083505, 'MigrationQueueProcessesIndex', '2020-07-11 05:26:10', '2020-07-11 05:26:10', 0),
(20171019083506, 'MigrationQueueProcessesKey', '2020-07-11 05:26:10', '2020-07-11 05:26:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `queue_processes`
--

CREATE TABLE `queue_processes` (
  `id` int(11) NOT NULL,
  `pid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `terminate` tinyint(1) NOT NULL DEFAULT 0,
  `server` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue_processes`
--

INSERT INTO `queue_processes` (`id`, `pid`, `created`, `modified`, `terminate`, `server`, `workerkey`) VALUES
(117637, '305424', '2021-05-17 20:28:03', '2021-05-17 20:29:13', 0, 'nl-srv-web222.main-hosting.eu', '6be36d170c19adb9ea77ffeef394bfbed7f8cde5');

-- --------------------------------------------------------

--
-- Table structure for table `referrals_phinxlog`
--

CREATE TABLE `referrals_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referrals_phinxlog`
--

INSERT INTO `referrals_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201128042423, 'AddCodeNReferralToUsers', '2020-12-06 10:51:26', '2020-12-06 10:51:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_dir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_size` int(6) DEFAULT NULL,
  `photo_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `review_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `course_id`, `name`, `rating`, `description`, `photo`, `photo_dir`, `photo_size`, `photo_type`, `status`, `created`, `modified`, `review_type`, `designation`, `location`) VALUES
(1, NULL, 2, 'yoyo', 5, 'good course to learn and enhance our skill', NULL, NULL, NULL, NULL, 1, '2020-12-10 10:27:26', '2020-12-10 10:27:26', NULL, NULL, NULL),
(2, NULL, 2, 'Naveen Bhola', 1, 'bad course', NULL, NULL, NULL, NULL, 1, '2020-12-10 10:28:29', '2020-12-10 10:28:29', NULL, NULL, NULL),
(3, NULL, 4, 'Hanuman Yadav', 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL, NULL, NULL, NULL, 1, '2020-12-12 05:33:14', '2020-12-12 05:33:14', NULL, NULL, NULL),
(4, NULL, 4, 'Manu', 4, 'enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', NULL, NULL, NULL, NULL, 1, '2020-12-12 05:33:33', '2020-12-12 05:33:33', NULL, NULL, NULL),
(5, NULL, 4, 'Aryan Krishna', 4, 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL, NULL, NULL, 1, '2020-12-12 05:34:21', '2020-12-12 05:34:21', NULL, NULL, NULL),
(6, NULL, 8, 'Naveen kumar bhola', 3, 'review good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good reviewreview good review', NULL, NULL, NULL, NULL, 1, '2021-02-09 20:44:34', '2021-02-09 20:44:34', 'session', NULL, NULL),
(7, NULL, 2, 'NKB', 4, 'it was very good', NULL, NULL, NULL, NULL, 1, '2021-02-13 16:12:31', '2021-02-13 16:12:31', 'course', NULL, NULL),
(8, '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 'NKB', 5, 'he is very good', NULL, NULL, NULL, NULL, 1, '2021-02-13 16:15:38', '2021-03-14 13:22:34', 'user', '', ''),
(9, '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 'Akash kumar', 4, 'he is very good', NULL, NULL, NULL, NULL, 1, '2021-02-16 11:24:49', '2021-03-14 13:22:24', 'user', '', ''),
(10, '08b83891-a807-4235-b8d9-b515375c0598', NULL, 'Shubham', 5, 'Awesome teaching skills, understanding very good and knowledgeable', '498083161561810028394.png', 'webroot/img/uploads//Reviews/photo/', 210746, 'image/png', 1, '2021-03-13 12:18:20', '2021-03-18 11:44:36', 'user', '8th CBSE', 'New Delhi'),
(11, '08b83891-a807-4235-b8d9-b515375c0598', NULL, 'Gold', 4, 'he is very good teacher', NULL, NULL, NULL, NULL, 1, '2021-03-18 11:46:57', '2021-03-18 11:46:57', 'user', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `reviews_phinxlog`
--

CREATE TABLE `reviews_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews_phinxlog`
--

INSERT INTO `reviews_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201209192446, 'CreateReviews', '2020-12-10 07:30:06', '2020-12-10 07:30:07', 0),
(20201224172609, 'AddReviewTypeToReviews', '2021-01-30 15:56:24', '2021-01-30 15:56:24', 0),
(20210210181443, 'AddLocationNDesignationToReviews', '2021-03-14 08:27:17', '2021-03-14 08:27:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `listing_type_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `listing_type_id`, `title`, `sort_order`, `created`, `modified`) VALUES
(9, 3, 'Super Admin', 1, '2020-07-12 17:02:21', '2020-10-10 07:31:39'),
(14, 3, 'Staff Member', 2, '2020-10-10 07:31:54', '2020-10-10 07:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `service_icon` varchar(150) NOT NULL,
  `short_description` varchar(400) NOT NULL,
  `description` longtext NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `banner_dir` varchar(250) DEFAULT NULL,
  `banner_size` int(5) DEFAULT NULL,
  `banner_type` varchar(50) DEFAULT NULL,
  `header_image` varchar(250) DEFAULT NULL,
  `header_dir` varchar(250) DEFAULT NULL,
  `header_size` int(5) DEFAULT NULL,
  `header_type` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `listing_id`, `title`, `slug`, `service_icon`, `short_description`, `description`, `banner_image`, `banner_dir`, `banner_size`, `banner_type`, `header_image`, `header_dir`, `header_size`, `header_type`, `status`, `position`, `created`, `modified`) VALUES
(1, 3, 'Comuter Lab', 'comuter-lab', 'desktop', 'Well-designed and separate computer labs for kids and older children, run by a well-educated and qualified faculty, with one-on-one access, which means there is one computer for each child. Pre – primary kids learn words through PowerPoint presentations and innovative software.\r\n\r\nWe have invested in new ERP software which would further raise teaching-learning-working at Udgam to contemporary tec', '<div class=\"so-panel widget widget_text panel-first-child\" data-index=\"0\" id=\"panel-4106-0-0-0\">\r\n<div class=\"textwidget\">\r\n<div align=\"justify\">\r\n<p>Well-designed and separate computer labs for kids and older children, run by a well-educated and qualified faculty, with one-on-one access, which means there is one computer for each child. Pre &ndash; primary kids learn words through PowerPoint presentations and innovative software.</p>\r\n</div>\r\n\r\n<p align=\"justify\">We have invested in new ERP software which would further raise teaching-learning-working at Udgam to contemporary technological standards.</p>\r\n\r\n<p align=\"justify\">There are 200 computers in our labs currently. They are state-of-the-art with multimedia, most of them with 17&Prime; LCD monitors that are easier on eyes, generate less heat and consume less power thereby keeping the classroom atmosphere comfortable for children. We use our own LAN with Windows XP for teaching-learning, documentation and presentations. Currently we can claim 1:10 as the &lsquo;student to computer ratio&rsquo; on campus.</p>\r\n</div>\r\n</div>\r\n', '426300159599482791066.jpg', 'webroot/img/uploads/3/Services/banner_image/', 57157, 'image/jpeg', '588816159599482795708.jpg', 'webroot/img/uploads/3/Services/header_image/', 163512, 'image/jpeg', 1, 1, '2020-07-26 10:21:13', '2020-07-29 03:53:47'),
(2, 3, 'Audio Visual Room', 'audio-visual-room', 'video-camera', 'The audio visual room is equipped with state-of-the-art technology. We have a team of experienced, knowledgeable and technical staff members that ensures seamless and hassle-free working', '<div style=\"text-align: justify;\">The audio-visual room is a place where the students of all classes experience learning in an effective way. The audio-visual method appeals most to the senses. It leaves a deeper impact as it involves greater attention in the act of learning and helps the child to retain the concepts taught through these aids.</div>\r\n\r\n<div style=\"text-align: justify;\">&nbsp;</div>\r\n\r\n<div style=\"text-align: justify;\">OP Jindal Modern School also has access to the educational, primarily the scientific channels of the world wide television network. The school has a fully furnished and well maintained video room and has a wide collection of educational and library videopaedia. Here, our aspirants watch sundry topics through computers, CDs, Video Cassettes, OHPs, LCDs etc.</div>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 2, '2020-07-26 10:35:40', '2020-07-26 10:57:12'),
(3, 3, 'Dance & Music', 'dance-and-music', 'music', 'We have a big room equipped with all the necessary musical instruments and walls which are equipped with big mirrors. Here students get training under the observation of Profession', '<p>We have a big room equipped with all the necessary musical instruments and walls which are equipped with big mirrors. Here students get training under the observation of Profession</p>\r\n', '742432159607875539025.jpg', 'webroot/img/uploads/3/Services/banner_image/', 53917, 'image/jpeg', '582829159607858321067.jpg', 'webroot/img/uploads/3/Services/header_image/', 102353, 'image/jpeg', 1, 3, '2020-07-26 10:42:43', '2020-07-30 03:12:35'),
(4, 3, 'Laboratories', 'laboratories', 'mars-stroke-v', 'We understand the power of practical knowledge of Science, so we provide an advanced science laboratory wherein the students are encouraged to learn', '<p>We understand the power of practical knowledge of Science, so we provide an advanced science laboratory wherein the students are encouraged to learn</p>\r\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 4, '2020-07-26 10:44:10', '2020-07-26 10:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `services_phinxlog`
--

CREATE TABLE `services_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_phinxlog`
--

INSERT INTO `services_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200722191649, 'CreateServices', '2020-07-22 13:54:18', '2020-07-22 13:54:18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sessions_phinxlog`
--

CREATE TABLE `sessions_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions_phinxlog`
--

INSERT INTO `sessions_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20210117074551, 'CreateSessionBookings', '2021-02-03 23:22:13', '2021-02-03 23:22:14', 0),
(20210118024025, 'AddTeacherIdToSessionBookings', '2021-02-03 23:22:14', '2021-02-03 23:22:14', 0),
(20210121033943, 'AddTopicStatusToSessionBookings', '2021-02-03 23:22:14', '2021-02-03 23:22:14', 0),
(20210205080618, 'CreateZoomMeetings', '2021-01-20 00:33:25', '2021-02-02 00:33:25', 0),
(20210222172722, 'AddStartNEndToSessionBookings', '2021-03-02 23:01:29', '2021-03-02 23:01:29', 0),
(20210226180232, 'AddTeacherCommentToSessionBookings', '2021-03-02 23:01:29', '2021-03-02 23:01:29', 0),
(20210228174012, 'AddCourseIdZoomMeetings', '2021-03-06 09:07:00', '2021-03-06 09:07:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `session_bookings`
--

CREATE TABLE `session_bookings` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `grading_type_id` int(11) DEFAULT NULL,
  `board_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_status` int(6) DEFAULT NULL,
  `teacher_schedule_id` int(11) DEFAULT NULL,
  `razorpay_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transactionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_responce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `teacher_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `session_bookings`
--

INSERT INTO `session_bookings` (`id`, `user_id`, `teacher_id`, `subject_id`, `grading_type_id`, `board_id`, `booking_date`, `topic`, `comment`, `session_status`, `teacher_schedule_id`, `razorpay_order`, `note`, `payment_method`, `transaction_status`, `transactionId`, `signature`, `transaction_responce`, `created`, `modified`, `start_date`, `end_date`, `teacher_comment`) VALUES
(1, '216ceab7-d377-4b74-829c-f52f6fd5f091', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, NULL, NULL, NULL, 'session about part 1', NULL, NULL, NULL, NULL, 'session about physics part 1', NULL, NULL, NULL, NULL, NULL, '2021-03-03 14:19:56', '2021-03-03 14:23:24', '2021-03-03 14:00:32', '2021-03-03 16:00:39', 'please put your comment'),
(2, '216ceab7-d377-4b74-829c-f52f6fd5f091', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'What is Mental Stress', NULL, NULL, NULL, NULL, 'Know more about mental stress', NULL, NULL, NULL, NULL, NULL, '2021-03-06 22:51:07', '2021-03-06 22:51:07', '2021-03-07 22:50:35', '2021-03-08 22:50:52', NULL),
(3, '216ceab7-d377-4b74-829c-f52f6fd5f091', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'How to make a solr search', NULL, NULL, NULL, NULL, 'How to make a solr search How to make a solr search How to make a solr search', NULL, NULL, NULL, NULL, NULL, '2021-03-06 23:25:03', '2021-03-06 23:25:03', '2021-03-07 18:00:45', '2021-03-07 19:00:51', NULL),
(4, '216ceab7-d377-4b74-829c-f52f6fd5f091', 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', NULL, NULL, NULL, NULL, 'session about part 1', NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, '2021-03-10 22:55:59', '2021-03-10 22:55:59', '2021-03-11 22:55:46', '2021-03-15 22:55:50', NULL),
(5, '216ceab7-d377-4b74-829c-f52f6fd5f091', 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', NULL, NULL, NULL, NULL, 'session about part  2', NULL, NULL, NULL, NULL, 'test', NULL, NULL, NULL, NULL, NULL, '2021-03-10 23:12:39', '2021-03-10 23:12:39', '2021-03-11 23:12:29', '2021-03-16 23:12:31', NULL),
(6, '216ceab7-d377-4b74-829c-f52f6fd5f091', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'session about part 11', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-03-10 23:25:00', '2021-03-10 23:25:00', '2021-03-11 23:24:53', '2021-03-15 23:24:56', NULL),
(7, '216ceab7-d377-4b74-829c-f52f6fd5f091', '8d26c504-a9cf-4696-a326-110f634a82ff', NULL, NULL, NULL, NULL, 'How mobile phone works', NULL, 1, NULL, NULL, 'How mobile phone worksHow mobile phone worksHow mobile phone worksHow mobile phone worksHow mobile phone works', NULL, NULL, NULL, NULL, NULL, '2021-03-12 19:48:15', '2021-03-12 19:56:38', '2021-03-12 20:00:01', '2021-03-12 21:00:05', NULL),
(8, '216ceab7-d377-4b74-829c-f52f6fd5f091', '8d26c504-a9cf-4696-a326-110f634a82ff', NULL, NULL, NULL, NULL, 'What is palindrome', NULL, 1, NULL, NULL, 'What is palindromeWhat is palindromeWhat is palindromeWhat is palindromeWhat is palindromeWhat is palindrome', NULL, NULL, NULL, NULL, NULL, '2021-03-13 11:38:03', '2021-03-13 11:38:21', '2021-03-13 12:00:54', '2021-03-13 13:00:59', NULL),
(9, '216ceab7-d377-4b74-829c-f52f6fd5f091', '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, NULL, NULL, NULL, 'biometric attendance', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, '2021-03-13 11:39:10', '2021-03-13 17:59:45', '2021-03-13 11:38:56', '2021-03-13 22:00:59', NULL),
(10, '216ceab7-d377-4b74-829c-f52f6fd5f091', '8d26c504-a9cf-4696-a326-110f634a82ff', NULL, NULL, NULL, NULL, 'What is factorial', NULL, 1, NULL, NULL, 'What is factorialWhat is factorialWhat is factorialWhat is factorialWhat is factorialWhat is factorialWhat is factorial', NULL, NULL, NULL, NULL, NULL, '2021-03-13 16:42:08', '2021-03-13 16:42:20', '2021-03-13 17:00:00', '2021-03-13 18:00:04', NULL),
(11, '216ceab7-d377-4b74-829c-f52f6fd5f091', '8d26c504-a9cf-4696-a326-110f634a82ff', NULL, NULL, NULL, NULL, 'What is data structure', NULL, 1, NULL, NULL, 'What is data structureWhat is data structureWhat is data structureWhat is data structureWhat is data structureWhat is data structureWhat is data structureWhat is data structure', NULL, NULL, NULL, NULL, NULL, '2021-03-13 16:46:07', '2021-03-13 16:46:34', '2021-03-14 17:00:56', '2021-03-14 18:00:01', NULL),
(12, '216ceab7-d377-4b74-829c-f52f6fd5f091', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, NULL, NULL, NULL, 'What is stack', NULL, NULL, NULL, NULL, 'What is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stackWhat is stack', NULL, NULL, NULL, NULL, NULL, '2021-03-13 23:30:09', '2021-03-13 23:30:09', '2021-03-13 00:00:00', '2021-03-13 01:00:05', NULL),
(13, '216ceab7-d377-4b74-829c-f52f6fd5f091', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, NULL, NULL, NULL, 'What is queue', NULL, 2, NULL, NULL, 'What is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queue', NULL, NULL, NULL, NULL, NULL, '2021-03-13 23:39:51', '2021-03-13 23:47:40', '2021-03-14 02:00:26', '2021-03-14 03:00:29', 'Time changed'),
(14, '216ceab7-d377-4b74-829c-f52f6fd5f091', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, NULL, NULL, NULL, 'What is queue', NULL, 1, NULL, NULL, 'What is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queueWhat is queue', NULL, NULL, NULL, NULL, NULL, '2021-03-13 23:56:46', '2021-03-13 23:57:32', '2021-03-14 02:00:36', '2021-03-14 04:00:40', NULL),
(15, '216ceab7-d377-4b74-829c-f52f6fd5f091', '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, NULL, NULL, NULL, 'What is Mean stack', NULL, 1, NULL, NULL, 'What is Mean stackWhat is Mean stackWhat is Mean stackWhat is Mean stackWhat is Mean stackWhat is Mean stackWhat is Mean stackWhat is Mean stack', NULL, NULL, NULL, NULL, NULL, '2021-03-14 14:10:02', '2021-03-14 14:11:43', '2021-03-14 14:00:55', '2021-03-14 15:00:59', NULL),
(16, '216ceab7-d377-4b74-829c-f52f6fd5f091', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'What is data binding in angular', NULL, 1, NULL, NULL, 'What is data binding in angular', NULL, NULL, NULL, NULL, NULL, '2021-03-18 11:13:09', '2021-03-18 11:13:40', '2021-03-19 11:12:59', '2021-03-19 15:00:03', NULL),
(17, '216ceab7-d377-4b74-829c-f52f6fd5f091', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'What is factorial', NULL, 1, NULL, NULL, 'What is factorial. Please explain me in detail', NULL, NULL, NULL, NULL, NULL, '2021-03-18 11:57:35', '2021-03-18 11:57:58', '2021-03-19 13:00:51', '2021-03-19 14:00:57', NULL),
(18, '92da02c7-25e5-4a8c-b89f-188bd36721f1', '08b83891-a807-4235-b8d9-b515375c0598', NULL, NULL, NULL, NULL, 'What is palindrome', NULL, NULL, NULL, NULL, 'what is palindrome . Discuss in detail', NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:32:55', '2021-03-24 20:32:55', '2021-03-25 21:00:39', '2021-03-25 22:00:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `config_value` text NOT NULL,
  `manager` varchar(50) NOT NULL,
  `field_type` varchar(150) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `listing_id`, `title`, `slug`, `config_value`, `manager`, `field_type`, `created`, `modified`) VALUES
(1, 1, 'Website Title', 'SITE_TITLE', 'Dotsquares Pvt. Ltd', 'general', 'text', '2020-07-11 13:37:32', '2020-07-11 13:38:40'),
(2, 1, 'System Application Name', 'SYSTEM_APPLICATION_NAME', 'DS academy', 'general', 'text', '2020-07-11 13:39:19', '2020-07-11 13:39:19'),
(3, 1, 'Admin Date Format', 'ADMIN_DATE_FORMAT', 'd F, Y', 'general', 'text', '2020-07-11 13:39:58', '2020-07-11 13:40:32'),
(4, 1, 'Admin Date Time Format', 'ADMIN_DATE_TIME_FORMAT', 'd F, Y H:i A', 'general', 'text', '2020-07-11 13:41:00', '2020-07-11 13:41:00'),
(5, 1, 'Front Page Limit', 'FRONT_PAGE_LIMIT', '20', 'general', 'text', '2020-07-11 13:41:29', '2020-07-11 13:41:29'),
(6, 1, 'Admin Page Limit', 'ADMIN_PAGE_LIMIT', '50', 'general', 'text', '2020-07-11 13:41:55', '2020-07-11 13:41:55'),
(7, 1, 'Logo 1', 'MAIN_LOGO', '1594474975_logo-1.png', 'logos', 'text', '2020-07-11 13:43:06', '2020-07-12 07:49:52'),
(8, 1, 'Logo 2', 'MAIN_LOGO_2', '1594474985_logo-2.png', 'logos', 'text', '2020-07-11 13:43:06', '2020-07-11 13:43:06'),
(9, 1, 'Website Owner', 'WEBSITE_OWNER', 'Hanuman Prasad Yadav', 'general', 'text', '2020-07-11 18:30:46', '2020-07-11 18:30:46'),
(10, 3, 'Logo 1', 'MAIN_LOGO', '1594539994_WhatsApp_Image_2020-07-05_at_4.33.03_PM.jpeg', 'logos', 'text', '2020-07-12 07:46:51', '2020-07-12 07:46:51'),
(11, 3, 'Logo 2', 'MAIN_FAVICON', '1594540000_WhatsApp_Image_2020-07-05_at_4.33.03_PM.jpeg', 'logos', 'text', '2020-07-12 07:46:51', '2020-07-12 07:46:51'),
(12, 3, 'Website Title', 'SITE_TITLE', 'Krishna Public School', 'general', 'text', '2020-07-14 02:27:26', '2020-07-14 02:27:26'),
(13, 3, 'Application Name', 'SYSTEM_APPLICATION_NAME', 'Krishna Public School', 'general', 'text', '2020-07-14 02:28:42', '2020-07-14 02:28:42'),
(14, 3, 'Website Owner', 'WEBSITE_OWNER', 'Shanker lal yadav', 'general', 'text', '2020-07-14 02:29:12', '2020-07-14 02:29:12'),
(15, 3, 'Telephone', 'TELEPHONE', '+91-7665880635', 'general', 'text', '2020-07-14 02:29:48', '2020-07-14 02:29:48'),
(16, 3, 'Admin Email', 'ADMIN_EMAIL', 'yadav.manu36@gmail.com', 'general', 'text', '2020-07-14 02:33:02', '2020-07-14 02:33:02'),
(17, 3, 'Affiliation No', 'REGISTRATION_NUMBER', 'CBSE Affiliation No. - 116/2016', 'general', 'text', '2020-07-14 02:37:33', '2020-07-29 16:50:09'),
(18, 3, 'Date Time Format', 'ADMIN_DATE_TIME_FORMAT', 'd F, Y H:i A', 'general', 'text', '2020-07-14 03:17:51', '2020-07-14 03:17:51'),
(19, 3, 'About Us banner', 'ABOUT_US_BANNER', '3', 'general', 'text', '2020-07-15 03:57:05', '2020-07-15 04:04:06'),
(20, 3, 'Date Format', 'ADMIN_DATE_FORMAT', 'd F, Y', 'general', 'text', '2020-07-19 09:48:16', '2020-07-19 09:48:16'),
(21, 1, 'Logo 3', 'MAIN_FAVICON', '1595165415_logo-1.png', 'logos', 'text', '2020-07-19 13:30:16', '2020-07-19 13:30:16'),
(22, 3, 'Office Address', 'OFFICE_ADDRESS', 'B-42, Gayetri Nager sanganer jaipur 302020, India', 'general', 'text', '2020-07-28 03:34:52', '2020-07-28 03:34:52'),
(23, 3, 'Facebook Url', 'FACEBOOK_URL', 'https://www.facebook.com/Krishna-Public-school-watika-167400023886203', 'general', 'text', '2020-07-29 16:52:12', '2020-07-29 16:52:12'),
(24, 3, 'Twitter url', 'TWITTER_URL', 'https://twitter.com/kpsbhilai?lang=en', 'general', 'text', '2020-07-29 16:55:39', '2020-07-29 16:55:39'),
(25, 4, 'Logo 1', 'MAIN_LOGO', '1604424562_1600697578_logo.png', 'logos', 'text', '2020-09-07 18:13:34', '2020-11-03 17:29:47'),
(26, 4, 'Logo 2', 'MAIN_FAVICON', '1604424568_1600697607_LogoIcon.png', 'logos', 'text', '2020-09-07 18:13:35', '2020-11-03 17:29:47'),
(27, 4, 'Website Title', 'SITE_TITLE', 'Teaching Bharat', 'general', 'text', '2020-09-07 18:55:28', '2020-09-07 18:55:28'),
(28, 4, 'Application Name', 'SYSTEM_APPLICATION_NAME', 'Teaching Bharat', 'general', 'text', '2020-09-07 18:56:02', '2020-09-07 18:56:02'),
(29, 4, 'Telephone', 'TELEPHONE', '1800 133 432', 'general', 'text', '2020-09-07 18:59:21', '2020-09-07 18:59:21'),
(30, 4, 'Admin Email', 'ADMIN_EMAIL', 'yadav.manu36@gmail.com', 'general', 'text', '2020-09-07 18:59:59', '2020-09-07 18:59:59'),
(31, 4, 'Logo 3', 'ADMIN_LOGO', '1604424576_1600966360_Screenshot_2020-09-24_About_Teaching_Bharat.png', 'logos', 'text', '2020-09-24 16:52:42', '2020-11-03 17:29:47'),
(32, 4, 'Website Owner', 'WEBSITE_OWNER', 'Hanuman', 'general', 'text', '2020-09-25 16:35:13', '2020-10-24 08:08:35'),
(33, 4, 'Admin Date Time Format', 'ADMIN_DATE_TIME_FORMAT', 'd F, Y H:i A', 'general', 'text', '2020-09-25 16:35:37', '2020-09-25 16:35:37'),
(34, 4, 'Admin Date Format', 'ADMIN_DATE_FORMAT', 'd F, Y', 'general', 'text', '2020-09-25 16:35:58', '2020-09-25 16:35:58'),
(35, 4, 'Office Address', 'OFFICE_ADDRESS', 'B-42, Gayetri Nager,\r\nsanganer jaipur,\r\n302020, India', 'general', 'text', '2020-09-25 16:36:19', '2020-10-09 15:58:14'),
(36, 4, 'Logo 4', 'EMAIL_BANNER_IMAGE', '1604424581_1601209947_banner.png', 'logos', 'text', '2020-09-27 12:32:28', '2020-11-03 17:29:47'),
(37, 4, 'Contact Us Text', 'CONTACT_TEXT', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est.', 'general', 'text', '2020-10-09 15:59:25', '2020-11-03 17:28:13'),
(38, 4, 'Razorpay Mode', 'RAZORPAY_MODE', '0', 'general', 'text', '2020-12-09 17:24:40', '2020-12-09 17:24:40'),
(39, 4, 'Razorpay sandbox Key Secret', 'RAZORPAY_SANDBOX_SECRET', '1VLUKfQomZnewjSU79doBjvu', 'general', 'text', '2020-12-09 17:25:54', '2020-12-09 17:25:54'),
(40, 4, 'Razorpay sanbox Key', 'RAZORPAY_SANDBOX_KEY', 'rzp_test_RFSNqGN4tZdRV9', 'general', 'text', '2020-12-09 17:26:29', '2020-12-09 17:26:29'),
(41, 4, 'Admin Page Limit', 'ADMIN_PAGE_LIMIT', '20', 'general', 'text', '2020-12-12 05:14:35', '2020-12-12 05:14:35'),
(42, 4, 'Page Limit', 'PAGE_LIMIT', '25', 'general', 'text', '2020-12-12 05:15:07', '2020-12-12 05:15:07'),
(43, 4, 'Generate Zoom Auth Token', 'zoom_auth_token', 'true', 'general', 'text', '2021-02-13 13:11:51', '2021-02-13 13:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `settings_phinxlog`
--

CREATE TABLE `settings_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings_phinxlog`
--

INSERT INTO `settings_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200704071427, 'CreateSettings', '2020-07-11 06:13:31', '2020-07-11 06:13:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `reference` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `token` varchar(500) NOT NULL,
  `token_secret` varchar(500) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `user_id`, `provider`, `username`, `reference`, `avatar`, `description`, `link`, `token`, `token_secret`, `token_expires`, `active`, `data`, `created`, `modified`) VALUES
('026ef763-d5a8-4d7f-9bb5-026236d6b8ca', 'af8e5db2-2cfb-423b-8380-ba5c7e35d600', 'facebook', NULL, '4043079269036818', 'https://graph.facebook.com/4043079269036818/picture?type=large', NULL, '#', 'EAAKl6xU8ZBE8BAPDuixdD7NwJGtPZAYWkLnob89ZBR2GZBYglM87p5aD3WPda2VeDmaZB5GcdJrnZBUToROJRiGG3XupTVxP2befinrxfjSMvcJZBOvNVX7ZBlZBdRHfmoQAHo45sY9T5uNgsV8g06kSXCMbpBiZCZCaVXmWjRiPzo9KQZDZD', NULL, '2021-05-01 22:01:12', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:182:\"EAAKl6xU8ZBE8BAPDuixdD7NwJGtPZAYWkLnob89ZBR2GZBYglM87p5aD3WPda2VeDmaZB5GcdJrnZBUToROJRiGG3XupTVxP2befinrxfjSMvcJZBOvNVX7ZBlZBdRHfmoQAHo45sY9T5uNgsV8g06kSXCMbpBiZCZCaVXmWjRiPzo9KQZDZD\";s:10:\"\0*\0expires\";i:1619886672;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:16:\"4043079269036818\";s:4:\"name\";s:11:\"Anil Sharma\";s:10:\"first_name\";s:4:\"Anil\";s:9:\"last_name\";s:6:\"Sharma\";s:5:\"email\";s:27:\"anil_sharma1983@hotmail.com\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=4043079269036818&height=200&width=200&ext=1617294674&hash=AeRawu8hpyYcoSRiAcA\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=4043079269036818&height=200&width=200&ext=1617294674&hash=AeRawu8hpyYcoSRiAcA\";s:13:\"is_silhouette\";b:0;}', '2021-03-02 22:01:15', '2021-03-02 22:01:15'),
('03a46318-4571-4302-8298-b4dcb3ee24a0', 'e15ce4e8-eb13-41a5-b77a-30e8e5c898c7', 'google', NULL, '113019107454285246613', 'https://lh3.googleusercontent.com/a-/AOh14GiA9TJ2z8I0ApUDHGoxW1K9ujholMOGkMAa8_3fxA=s96-c', NULL, '#', 'ya29.a0AfH6SMBV9qigM2sjlpHKhSZQfT9hR0sia-ivRIZzjrluWXOTvyWk2E0OTe68-LrDy8o8FjXrNIDy6KolbFu_KOjJr_6d9ZzruAECUu6Byk-IV8UJH4B6f1YPNiMbRYhPGT1WrQN0XxoZIOkFzbzk5WA0HG9y', NULL, '2021-03-09 04:00:22', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.a0AfH6SMBV9qigM2sjlpHKhSZQfT9hR0sia-ivRIZzjrluWXOTvyWk2E0OTe68-LrDy8o8FjXrNIDy6KolbFu_KOjJr_6d9ZzruAECUu6Byk-IV8UJH4B6f1YPNiMbRYhPGT1WrQN0XxoZIOkFzbzk5WA0HG9y\";s:10:\"\0*\0expires\";i:1615242622;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1153:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImU4NzMyZGIwNjI4NzUxNTU1NjIxM2I4MGFjYmNmZDA4Y2ZiMzAyYTkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTMwMTkxMDc0NTQyODUyNDY2MTMiLCJlbWFpbCI6ImFyaWZzYWlmaTQ0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiTW5hMExIUFpXb3dyYWRIQXB5UnJyQSIsIm5hbWUiOiJhcmlmIHNhaWZpIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BT2gxNEdpQTlUSjJ6OEkwQXBVREhHb3hXMUs5dWpob2xNT0drTUFhOF8zZnhBPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6ImFyaWYiLCJmYW1pbHlfbmFtZSI6InNhaWZpIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTUyMzkwMjMsImV4cCI6MTYxNTI0MjYyM30.otA_IhwU30NLGwJNFQlIovtLHRghjpahF_5z8m5I_J6hUTxpSv9JxNMlykFwQpGO3Cf1zo9s3OHvrgI08bPGtreawnFIiyCu8HFJfFK7jRqlUa1vLcPNT7UHGiXiAV6zxKDBZHqhpX7Ai3O_dzavYooUXgAvyPRsA75n0GXKby5lXKllODYCjanTbtQucQKslwuX8uWsjfrKX-PDMr-Yo_Evb9htr40UqxnEW0qEWDKxSYvrkW-X965VlCFre9Zf9I_TdcG3g3U5Y7Xu__EfBwyhzL8s8wppkDULN7SAvCM7V73UadUK4ueRQMNBNMKuW7VbDGRUqZWDNEc_8LpCWQ\";}}s:3:\"sub\";s:21:\"113019107454285246613\";s:4:\"name\";s:10:\"arif saifi\";s:10:\"given_name\";s:4:\"arif\";s:11:\"family_name\";s:5:\"saifi\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GiA9TJ2z8I0ApUDHGoxW1K9ujholMOGkMAa8_3fxA=s96-c\";s:5:\"email\";s:21:\"arifsaifi44@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-03-09 02:48:40', '2021-03-09 03:00:23'),
('08b4a6fd-0ee4-42fe-bfe4-289266d690a5', 'd2b5d881-b288-47e4-ad07-3aeebc4aad82', 'facebook', NULL, '570673553925273', 'https://graph.facebook.com/570673553925273/picture?type=large', NULL, '#', 'EAAKc3lnKi5ABAKQmNrTIOn7kCqNop5uSBJR5k4hr0kFBGLheSBL77Tc2KZBOI0FZA0zsDFwEOUaEdxFXaA7i4PZCKjnfmJrr4ikW0E5GkMtiRqaQKcKy63GSKZBlMdcrW6PbeqaLOfptZCa9ttMY5EiLVjLblJHyy4Ad8Sk8DSwZDZD', NULL, '2021-05-19 23:33:24', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:176:\"EAAKc3lnKi5ABAKQmNrTIOn7kCqNop5uSBJR5k4hr0kFBGLheSBL77Tc2KZBOI0FZA0zsDFwEOUaEdxFXaA7i4PZCKjnfmJrr4ikW0E5GkMtiRqaQKcKy63GSKZBlMdcrW6PbeqaLOfptZCa9ttMY5EiLVjLblJHyy4Ad8Sk8DSwZDZD\";s:10:\"\0*\0expires\";i:1621447404;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:15:\"570673553925273\";s:4:\"name\";s:71:\"?????? ??????? ??????????\";s:10:\"first_name\";s:18:\"??????\";s:9:\"last_name\";s:30:\"??????????\";s:5:\"email\";s:21:\"sevasatkarm@gmail.com\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:139:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=570673553925273&height=200&width=200&ext=1618920618&hash=AeSM4sWdKKTZUi_qm5o\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:139:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=570673553925273&height=200&width=200&ext=1618920618&hash=AeSM4sWdKKTZUi_qm5o\";s:13:\"is_silhouette\";b:0;}', '2021-03-20 23:33:27', '2021-03-21 17:40:18'),
('0a20f9ed-145c-4c32-885c-55f5baf8c7e1', '09b27773-e5a1-442b-b6de-afd8cfcca3b0', 'google', NULL, '115493805902839398259', 'https://lh3.googleusercontent.com/a-/AOh14Gi2P__uAAXPl3p8EV0ak6U7KOSpCDbTrQEO8VEgog=s96-c', NULL, '#', 'ya29.A0AfH6SMAoNzeIK8SaHL9wejA4NtwaTPgW9XvyIW19E4yHmgYOMAq4yfotrU0KKnDDfHTp-IBUzdzxWoaEDV6GkmLz8OvPVSwChMLia5L1JVO2Sen6qxE0Aes8kq7DXxZTLCDmjE094Yu46HwkxB0fHHTVvvlJ', NULL, '2021-02-25 14:04:54', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.A0AfH6SMAoNzeIK8SaHL9wejA4NtwaTPgW9XvyIW19E4yHmgYOMAq4yfotrU0KKnDDfHTp-IBUzdzxWoaEDV6GkmLz8OvPVSwChMLia5L1JVO2Sen6qxE0Aes8kq7DXxZTLCDmjE094Yu46HwkxB0fHHTVvvlJ\";s:10:\"\0*\0expires\";i:1614242094;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile openid\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1166:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZlZDgwZmVjNTZkYjk5MjMzZDRiNGY2MGZiYWZkYmFlYjkxODZjNzMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTU0OTM4MDU5MDI4MzkzOTgyNTkiLCJlbWFpbCI6ImFuYW50aGlrYXJtMjAxMEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjduRVNuQmdiaVJ6T2hfNTFUMXJPZEEiLCJuYW1lIjoiQW5hbmF0aGlrYSBSTSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaTJQX191QUFYUGwzcDhFVjBhazZVN0tPU3BDRGJUclFFTzhWRWdvZz1zOTYtYyIsImdpdmVuX25hbWUiOiJBbmFuYXRoaWthIiwiZmFtaWx5X25hbWUiOiJSTSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjE0MjM4NDk1LCJleHAiOjE2MTQyNDIwOTV9.QVWxynJEf8p95b1H5RYBMLv5ZsADT1gBfina7tUV3JmKlLm8731P2TISqYxUw9clvhXh819K82tstwp9mepEc54uazi71nM9OTimoi6YW0MDaUNYFrs7u4jMi0YYJwErYrs1ULgvc7MxDSOwcWIIwALYryVc0rhBru7mzp0E2aEWvGyQBhbBmZarHausRYczhcqyfD8Ble4YtU5QQzqPhLW_z0HlUxCFoVft4QYtgymL4xQ0lUUE7e4nklO-0uWtAslkhdqniRJWyHsOD_74BifOjF3dDXIyoGg8o2SObW_hbuCm4_zF1PR9Sr2DhON6XhdH1XeXObKPArXjdl62XQ\";}}s:3:\"sub\";s:21:\"115493805902839398259\";s:4:\"name\";s:13:\"Ananathika RM\";s:10:\"given_name\";s:10:\"Ananathika\";s:11:\"family_name\";s:2:\"RM\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14Gi2P__uAAXPl3p8EV0ak6U7KOSpCDbTrQEO8VEgog=s96-c\";s:5:\"email\";s:25:\"ananthikarm2010@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-25 13:04:55', '2021-02-25 13:04:55'),
('1f412da0-626b-4e97-a20a-f0db0bfc8aef', '4b04eab1-2458-47bf-ac24-48aa3d7fddca', 'facebook', NULL, '10150003294245560', 'https://graph.facebook.com/10150003294245560/picture?type=large', NULL, '#', 'EAAKl6xU8ZBE8BAAzvo7vTwBvKhtZBx9pGd8KcFwRK8JeZAAHiwwgxx7FRG8A1I3crqmMbQR81NS1OZCCE3HyrDk0bbkvsr87L6XDW7kwUzutQXdm3KuVIbSiU0bj1y5MmBQULb7ZBeDGWBxhMabbUY8ZA3h3XOrO7dM7ZBrFs2xJ3UJ2NAtWROh', NULL, '2021-04-25 13:44:09', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:184:\"EAAKl6xU8ZBE8BAAzvo7vTwBvKhtZBx9pGd8KcFwRK8JeZAAHiwwgxx7FRG8A1I3crqmMbQR81NS1OZCCE3HyrDk0bbkvsr87L6XDW7kwUzutQXdm3KuVIbSiU0bj1y5MmBQULb7ZBeDGWBxhMabbUY8ZA3h3XOrO7dM7ZBrFs2xJ3UJ2NAtWROh\";s:10:\"\0*\0expires\";i:1619338449;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:17:\"10150003294245560\";s:4:\"name\";s:10:\"Joe Talaez\";s:10:\"first_name\";s:3:\"Joe\";s:9:\"last_name\";s:6:\"Talaez\";s:5:\"email\";s:31:\"gupqeuhhpd_1574355172@tfbnw.net\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:262:\"https://scontent-ams4-1.xx.fbcdn.net/v/t1.30497-1/c59.0.200.200a/p200x200/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=3&_nc_sid=12b3be&_nc_ohc=rSvmUWtUAVUAX_1p0Kw&_nc_ht=scontent-ams4-1.xx&tp=27&oh=9574a249abc441e4557162109ac08173&oe=6059CBB9\";s:13:\"is_silhouette\";b:1;}}s:11:\"picture_url\";s:262:\"https://scontent-ams4-1.xx.fbcdn.net/v/t1.30497-1/c59.0.200.200a/p200x200/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=3&_nc_sid=12b3be&_nc_ohc=rSvmUWtUAVUAX_1p0Kw&_nc_ht=scontent-ams4-1.xx&tp=27&oh=9574a249abc441e4557162109ac08173&oe=6059CBB9\";s:13:\"is_silhouette\";b:1;}', '2021-02-24 13:44:11', '2021-02-24 13:44:11'),
('2ac1e1d1-9653-419b-aeec-d982e47c9eff', '59148e27-a526-41a9-84a8-177aeb76833e', 'google', NULL, '114394492537218808841', 'https://lh3.googleusercontent.com/-9JKL2A96e5M/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclvO5PVfO8LJjGdf1es1hOdLWxVDw/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMBfSX3OHRc9sUW2UqbjqOTvWHmm_90GNaEGE3WEtIsXJiC9IjOIjD0bhZFj0wUtThy-9fbmoDrXkGt2iZ26553fQEbEHzC8J-1rmWSU2GTE6Bg8N_fUcZ1TwLQ92RW3aFEdIxMieh7laIcqqFO-6F2K42mYkNlA9PX577k', NULL, '2021-01-12 09:47:53', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMBfSX3OHRc9sUW2UqbjqOTvWHmm_90GNaEGE3WEtIsXJiC9IjOIjD0bhZFj0wUtThy-9fbmoDrXkGt2iZ26553fQEbEHzC8J-1rmWSU2GTE6Bg8N_fUcZ1TwLQ92RW3aFEdIxMieh7laIcqqFO-6F2K42mYkNlA9PX577k\";s:10:\"\0*\0expires\";i:1610425073;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1210:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjI1MmZjYjk3ZGY1YjZiNGY2ZDFhODg1ZjFlNjNkYzRhOWNkMjMwYzUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTQzOTQ0OTI1MzcyMTg4MDg4NDEiLCJlbWFpbCI6ImFudXJhZ25hbmRpMjAwN0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IkZ0NkRjTHliaElSaHN3QmkwOUIxS1EiLCJuYW1lIjoiQW51cmFnIE5hbmRpIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS8tOUpLTDJBOTZlNU0vQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQU1adXVjbHZPNVBWZk84TEpqR2RmMWVzMWhPZExXeFZEdy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiQW51cmFnIiwiZmFtaWx5X25hbWUiOiJOYW5kaSIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjEwNDIxNDczLCJleHAiOjE2MTA0MjUwNzN9.MpeMgh6eNv8BTcVvqOWmV8oveToG2XZ6lbw9Qo1DarAk4w_gMl8wC_qhCRpgjsoIAPsxnltDbDR_LrH1tzbx6VpYb0ZNQTdI1Au6HqWHDwF3H9pdXGcf5V4UmFxSXsj5JFA2iPEDSO1XLfLMyRqh_beQMFsg47oP4NhlYsCD-2VxYbj2YQF3CDU4ngZb20f5HhYaVfuiqOGX4l8bi3zkUkzVoPr9Ix2pVg6Z2Auj8qvpd7x4MGi8iH6fWOBuaKcswaFoOwp56K5akZMX86a1C9vikMP5dkkCNHJjlMn8MmXtFSVNsAm36DQy8kc8__Is_V1uhD86uEdR5tkUBl2Idw\";}}s:3:\"sub\";s:21:\"114394492537218808841\";s:4:\"name\";s:12:\"Anurag Nandi\";s:10:\"given_name\";s:6:\"Anurag\";s:11:\"family_name\";s:5:\"Nandi\";s:7:\"picture\";s:121:\"https://lh3.googleusercontent.com/-9JKL2A96e5M/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclvO5PVfO8LJjGdf1es1hOdLWxVDw/s96-c/photo.jpg\";s:5:\"email\";s:25:\"anuragnandi2007@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-01-12 08:47:55', '2021-01-12 08:47:55'),
('2bb8492e-be7a-4673-8c22-d1d08e553db4', '7bc81ce4-2ead-4b21-bfd5-c8cc27f43461', 'google', NULL, '100934277849295657013', 'https://lh5.googleusercontent.com/-waX4IgpGh5Y/AAAAAAAAAAI/AAAAAAAAAc4/AMZuucn6HOBJjqPs1_iWjiOKz7nUcN6vpA/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMBaMs-bzIaeksZ7zCtQ1azXQPRu9l-bfpqaJ1-At4PqTgPTt2abKFgZz-2UT7TP-gbj0VDv5_83VnemG_Jo8F0b4ZV07D4TBJBXlz3KdERlU3HePjc6vH0HvmtxIXdKSgUV23LxZ72XlNjoOo13k7rSSAq2f9FGvQHNiH0', NULL, '2021-01-26 20:34:51', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMBaMs-bzIaeksZ7zCtQ1azXQPRu9l-bfpqaJ1-At4PqTgPTt2abKFgZz-2UT7TP-gbj0VDv5_83VnemG_Jo8F0b4ZV07D4TBJBXlz3KdERlU3HePjc6vH0HvmtxIXdKSgUV23LxZ72XlNjoOo13k7rSSAq2f9FGvQHNiH0\";s:10:\"\0*\0expires\";i:1611673491;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1212:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImVlYTFiMWY0MjgwN2E4Y2MxMzZhMDNhM2MxNmQyOWRiODI5NmRhZjAiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDA5MzQyNzc4NDkyOTU2NTcwMTMiLCJlbWFpbCI6InBva2Vtb25nZW5nYXI3QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiMVFtZ3BWeFNoc1IwNzh0MGZ2X3lNZyIsIm5hbWUiOiJQcmF0aWsgQm9ya2FyIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8td2FYNElncEdoNVkvQUFBQUFBQUFBQUkvQUFBQUFBQUFBYzQvQU1adXVjbjZIT0JKanFQczFfaVdqaU9LejduVWNONnZwQS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoiUHJhdGlrIiwiZmFtaWx5X25hbWUiOiJCb3JrYXIiLCJsb2NhbGUiOiJlbi1HQiIsImlhdCI6MTYxMTY2OTg5MiwiZXhwIjoxNjExNjczNDkyfQ.Ky4waq7-gIv05hyFPWBW8uhgB5w51KIk_vVj64_jR95rsoSqtCPTZjeKdLqV1bQY6AB7eu2jDR2jbi9920q9aObXPzWsDnpzFX3cyK4q5EuveQ-LH-O-BEHMRWuBo_SGXh3cjKEkPgcutEc7n2AlQCekeBNpFH1fJMtQl5TnDi91zut9AUEX2rkCQtFGqC51Zp4aO9oY1aftyA4bKLCsDTUanVlZ1HO9NSNFwkFiGVAS1g4aW1sFIXdDUX2S5Cm5N3pF7BsKXLPLlZnVPb2z8ylGqpMnwdw-LAvFP-ZZ4qmzSgE6hw3-blhbtgb_DcgyUfzwxua9UF69BbvnhUnRqw\";}}s:3:\"sub\";s:21:\"100934277849295657013\";s:4:\"name\";s:13:\"Pratik Borkar\";s:10:\"given_name\";s:6:\"Pratik\";s:11:\"family_name\";s:6:\"Borkar\";s:7:\"picture\";s:121:\"https://lh5.googleusercontent.com/-waX4IgpGh5Y/AAAAAAAAAAI/AAAAAAAAAc4/AMZuucn6HOBJjqPs1_iWjiOKz7nUcN6vpA/s96-c/photo.jpg\";s:5:\"email\";s:24:\"pokemongengar7@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-01-26 19:34:53', '2021-01-26 19:34:53'),
('2f398538-e8e4-4f47-afa9-98e1a150ff26', '2799dc5e-69c6-49fe-adb1-78ef670f5645', 'google', NULL, '108561374507983399334', 'https://lh3.googleusercontent.com/a-/AOh14GhIv2kxzDJ1aQ3kDHvnM4rBnDm5osvvPW5NTvzdYA=s96-c', NULL, '#', 'ya29.a0AfH6SMBoZz64xcOVDAxypxJwn5SG8MGF7EAPjea5OKBFfV2-BUKkjOlVt9HwZqy2ErlX40Swk9VxWd-C4UKbKTbACu-hhagz8c-b8Z3PxPHr3JLfjxelKRfIC9Gg7GajliCbsrPOgyaggvAhKm3baK9jmdfk', NULL, '2021-03-28 04:43:18', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.a0AfH6SMBoZz64xcOVDAxypxJwn5SG8MGF7EAPjea5OKBFfV2-BUKkjOlVt9HwZqy2ErlX40Swk9VxWd-C4UKbKTbACu-hhagz8c-b8Z3PxPHr3JLfjxelKRfIC9Gg7GajliCbsrPOgyaggvAhKm3baK9jmdfk\";s:10:\"\0*\0expires\";i:1616886798;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile openid\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1146:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjEzZThkNDVhNDNjYjIyNDIxNTRjN2Y0ZGFmYWMyOTMzZmVhMjAzNzQiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDg1NjEzNzQ1MDc5ODMzOTkzMzQiLCJlbWFpbCI6ImxpZ3lsdWtlQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiVVJiaHJFMEtFcUZYb0VLRU9Vb25uUSIsIm5hbWUiOiJMaWd5IEx1a2UiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hJdjJreHpESjFhUTNrREh2bk00ckJuRG01b3N2dlBXNU5UdnpkWUE9czk2LWMiLCJnaXZlbl9uYW1lIjoiTGlneSIsImZhbWlseV9uYW1lIjoiTHVrZSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjE2ODgzMTk5LCJleHAiOjE2MTY4ODY3OTl9.N1vFiR-JW6reILoDi6Ska5b0ywDk3XCwHDrWturSfliYlPSTPuBUOYspbD2dvjmbFRsrdkcLJ4niEXSNUGPqPGGdllqNgoVYhIcyaeYW61tOk71mRrarXwZmhlZwSBmAY8x45EnQDSdGPub8CO2GNWvwmDpF4UL5iQOPwDZHrbg8J1uATzkgpa0QIJbIduJ9Rk6i4ZPIetCkyQqY9BJb4U5V_8wqBQ_8PBGEe8rL19W2hIVhKDp4evP2eU1Ido3oz05j3-PIZ7L4ktuh0jA8MOxKbQsoNkK5WVndtPwGiYhfO9mRGB1pXohfQ5IGllYJ0O8rcKqnB4NlDC_cwJTCwA\";}}s:3:\"sub\";s:21:\"108561374507983399334\";s:4:\"name\";s:9:\"Ligy Luke\";s:10:\"given_name\";s:4:\"Ligy\";s:11:\"family_name\";s:4:\"Luke\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GhIv2kxzDJ1aQ3kDHvnM4rBnDm5osvvPW5NTvzdYA=s96-c\";s:5:\"email\";s:18:\"ligyluke@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-03-28 03:43:20', '2021-03-28 03:43:20'),
('40d31bad-6a6b-424e-806a-7d4991389f46', 'f93f4a43-ea41-41f7-950c-62511637ce63', 'facebook', NULL, '1487790557939030', 'https://graph.facebook.com/1487790557939030/picture?type=large', NULL, 'https://www.facebook.com/app_scoped_user_id/YXNpZADpBWEd1UzNTZAVNGXzQyNUgxZAjUwVmFmNHdXLW5DUm1TSGdlTVdxb1N1Y1c5b2hZAbllPVlFrY0s3SnNHeFU4MVRUdERZAd2M5WldNR1Bkd3VvZAVExX3gtcHhaMGpQSTZApeFVmcHBnaV9fMExWOU56ZA2N0/', 'EAAKl6xU8ZBE8BAEIHP6zeUrZAtai3BCxNSseLtnQ64zqvBzZCBHmTaUsUQrX86UneF0TM5LBGnYXr3zj2mZBdGZCFv6DqEkrYPjYSHHgDM9ZCdnspm08n4FtOmLJr9fhB5arZB8YQWgyi9CfYRj8O4NuvVyY0czFBnuevj0ZBfzC3AZDZD', NULL, '2021-05-19 22:31:17', 1, 'a:12:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:179:\"EAAKl6xU8ZBE8BAEIHP6zeUrZAtai3BCxNSseLtnQ64zqvBzZCBHmTaUsUQrX86UneF0TM5LBGnYXr3zj2mZBdGZCFv6DqEkrYPjYSHHgDM9ZCdnspm08n4FtOmLJr9fhB5arZB8YQWgyi9CfYRj8O4NuvVyY0czFBnuevj0ZBfzC3AZDZD\";s:10:\"\0*\0expires\";i:1621443677;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:16:\"1487790557939030\";s:4:\"name\";s:13:\"Hanuman Yadav\";s:10:\"first_name\";s:7:\"Hanuman\";s:9:\"last_name\";s:5:\"Yadav\";s:5:\"email\";s:22:\"yadav.manu36@gmail.com\";s:8:\"hometown\";a:2:{s:2:\"id\";s:15:\"113386378672754\";s:4:\"name\";s:23:\"Phagi, Rajasthan, India\";}s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1487790557939030&height=200&width=200&ext=1618851679&hash=AeSMAd-QtiOrBkMd4x4\";s:13:\"is_silhouette\";b:0;}}s:6:\"gender\";s:4:\"male\";s:4:\"link\";s:209:\"https://www.facebook.com/app_scoped_user_id/YXNpZADpBWEd1UzNTZAVNGXzQyNUgxZAjUwVmFmNHdXLW5DUm1TSGdlTVdxb1N1Y1c5b2hZAbllPVlFrY0s3SnNHeFU4MVRUdERZAd2M5WldNR1Bkd3VvZAVExX3gtcHhaMGpQSTZApeFVmcHBnaV9fMExWOU56ZA2N0/\";s:11:\"picture_url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1487790557939030&height=200&width=200&ext=1618851679&hash=AeSMAd-QtiOrBkMd4x4\";s:13:\"is_silhouette\";b:0;}', '2021-03-14 18:02:17', '2021-03-20 22:31:20'),
('42f4d794-ca16-4e90-b05b-1c6a8229c400', '4371dd8d-9eb8-4ab6-8c51-17cf4cca91b5', 'google', NULL, '110704181269420064466', 'https://lh3.googleusercontent.com/a-/AOh14GgJjUYPYimPui9Lj_LuzBRRz7S5J3-d57gK1M6h1Q=s96-c', NULL, '#', 'ya29.a0AfH6SMAfmcsBRYoh8Zmt_dtKbteUIBbblpTS-V9eMpst25KVQ8y8E5ZGMIrE7qq65JWkR666_bIoIRkvTiDJSY7kdt39pDw_MRTYt3ZmiV59fodvgZ6ZZnvOXN2K4JfJXsdtc5rEZxwcE103KwzmRP-NgSelbGJdDovI1t38UOw', NULL, '2021-01-08 21:29:53', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMAfmcsBRYoh8Zmt_dtKbteUIBbblpTS-V9eMpst25KVQ8y8E5ZGMIrE7qq65JWkR666_bIoIRkvTiDJSY7kdt39pDw_MRTYt3ZmiV59fodvgZ6ZZnvOXN2K4JfJXsdtc5rEZxwcE103KwzmRP-NgSelbGJdDovI1t38UOw\";s:10:\"\0*\0expires\";i:1610121593;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1172:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjI1MmZjYjk3ZGY1YjZiNGY2ZDFhODg1ZjFlNjNkYzRhOWNkMjMwYzUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTA3MDQxODEyNjk0MjAwNjQ0NjYiLCJlbWFpbCI6ImRhcndpbi5oaW1hbnNoQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiNXhiTXRwWjNPLUIwS0NsWEhkVGNYZyIsIm5hbWUiOiJkYXJ3aW4gaGltYW5zaCIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ0pqVVlQWWltUHVpOUxqX0x1ekJSUno3UzVKMy1kNTdnSzFNNmgxUT1zOTYtYyIsImdpdmVuX25hbWUiOiJkYXJ3aW4iLCJmYW1pbHlfbmFtZSI6ImhpbWFuc2giLCJsb2NhbGUiOiJlbi1HQiIsImlhdCI6MTYxMDExNzk5NCwiZXhwIjoxNjEwMTIxNTk0fQ.sDiGmSm47l8eGcGJKc1QmvQqHJu5kjyEfhebJxt5BNN4x09bn9UoeapF9xFLdI3qa1jusMeZzzFpfSr-38RWCUby42472m04AaHckbn5WFq5fGO-EHwju4Gza7JFTt8WNmVNFKdAlpkJMCj-CEkradE9sPmE4eyUwtcP4aH_KGomlcXt_kJtk50cOzkQe3ckT2bgb0qd1GfpP8K68_sKY300Hpj7PLFN8t7knalq2y_AIasIBBWdy9sqvpdt-LJEYTHYpwicYwsaMcAPiEtfJQhIgYqPZa3theObtE4OeRJUsSro5QjRwGNeXqsfodri7SNosGWMCLgnGXNO-Meoyg\";}}s:3:\"sub\";s:21:\"110704181269420064466\";s:4:\"name\";s:14:\"darwin himansh\";s:10:\"given_name\";s:6:\"darwin\";s:11:\"family_name\";s:7:\"himansh\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GgJjUYPYimPui9Lj_LuzBRRz7S5J3-d57gK1M6h1Q=s96-c\";s:5:\"email\";s:24:\"darwin.himansh@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-01-08 20:29:56', '2021-01-08 20:29:56'),
('4fec36e0-b704-4524-b49c-70c9a7dc9779', '65af9592-4e35-41d3-b428-60ab868d7e25', 'facebook', NULL, '10150003295786423', 'https://graph.facebook.com/10150003295786423/picture?type=large', NULL, '#', 'EAAKl6xU8ZBE8BAFOAtXGuwUZCRsZBLRfMZCT5ZABHZCEEQ5oLwWhiusVrlvZAZC9SLskowhtUiWODZB2mqpJvGvDmA9bkVIVG7hG7qtwN4ZCkzqm5kEAxtxTxj3lnLPSe9B4kHgYy4ho2em812GwCqh65HgnZCUmEAhUFn9bqLlHVYipXKH3TGFdPrP', NULL, '2021-04-25 15:46:40', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:188:\"EAAKl6xU8ZBE8BAFOAtXGuwUZCRsZBLRfMZCT5ZABHZCEEQ5oLwWhiusVrlvZAZC9SLskowhtUiWODZB2mqpJvGvDmA9bkVIVG7hG7qtwN4ZCkzqm5kEAxtxTxj3lnLPSe9B4kHgYy4ho2em812GwCqh65HgnZCUmEAhUFn9bqLlHVYipXKH3TGFdPrP\";s:10:\"\0*\0expires\";i:1619345800;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:17:\"10150003295786423\";s:4:\"name\";s:21:\"Prash Shrewsberryescu\";s:10:\"first_name\";s:5:\"Prash\";s:9:\"last_name\";s:15:\"Shrewsberryescu\";s:5:\"email\";s:31:\"piodelrzoa_1574354870@tfbnw.net\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10150003295786423&height=200&width=200&ext=1616753802&hash=AeTrlm1P9d89yO1bMxo\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10150003295786423&height=200&width=200&ext=1616753802&hash=AeTrlm1P9d89yO1bMxo\";s:13:\"is_silhouette\";b:0;}', '2021-02-24 15:46:42', '2021-02-24 15:46:42'),
('57452933-b6c7-4457-b1b7-e1774388be57', 'a614b5e3-3e97-4c85-a0fe-b712f84dca2f', 'google', NULL, '103794573113363153167', 'https://lh4.googleusercontent.com/-4ybNkwAcKvs/AAAAAAAAAAI/AAAAAAAAAHk/AMZuuclmV0OWjj7keu3neTr4CXKW_INC5g/s96-c/photo.jpg', NULL, '#', 'ya29.A0AfH6SMAxo9QlMOMhTZbUfRsUi_y03u5u84mWHPWpHHKRFjoLzdA7TWi-pVSP4t-7hSW8CJ9Tn4Js53JSaqTzeIZoogp-_69zAL4rfBg8IR4JvS0eQM_K-YldHeJ3r9SII9rGbYa5gZbYUH6J_s1EkiCyZr08sQ', NULL, '2021-02-03 11:45:26', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:165:\"ya29.A0AfH6SMAxo9QlMOMhTZbUfRsUi_y03u5u84mWHPWpHHKRFjoLzdA7TWi-pVSP4t-7hSW8CJ9Tn4Js53JSaqTzeIZoogp-_69zAL4rfBg8IR4JvS0eQM_K-YldHeJ3r9SII9rGbYa5gZbYUH6J_s1EkiCyZr08sQ\";s:10:\"\0*\0expires\";i:1612332926;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1218:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjAzYjJkMjJjMmZlY2Y4NzNlZDE5ZTViOGNmNzA0YWZiN2UyZWQ0YmUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDM3OTQ1NzMxMTMzNjMxNTMxNjciLCJlbWFpbCI6Im1yaXR1bmpheXNyZWU3OS5pbkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9Fa3JYMnJMMjREVHh5aEdNcnJfUGciLCJuYW1lIjoic3JlZSBNcml0eXVuamF5IiwicGljdHVyZSI6Imh0dHBzOi8vbGg0Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tNHliTmt3QWNLdnMvQUFBQUFBQUFBQUkvQUFBQUFBQUFBSGsvQU1adXVjbG1WME9Xamo3a2V1M25lVHI0Q1hLV19JTkM1Zy9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoic3JlZSIsImZhbWlseV9uYW1lIjoiTXJpdHl1bmpheSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjEyMzI5MzI3LCJleHAiOjE2MTIzMzI5Mjd9.EuCCHemA42fs85SdeNQPSYkahxyGA8cn03Rt7GOmae5EIbFxtGL5CmErSD7N_xwfQ8hMua_q8VPqbGlYrH7ISnD476sw5I_t6Jx15yQIEh8_c4U12MZdJXkA2kdE_zmt0ymAwfQgl5j03L9DwBC4Y-pIxNh0UU-hRNLBib4J46xedKbUoMoensr_rClRkXEWPVNCbkyHRprfBIh_MslKxufWnrSmpzeXdjf_Bla6BN-1nGG3ziIdHfYwd0ZsvmTX2n2eiZamwRXIU08tKWZxjiONaWuB5dily1wsnmEpfGhWCAlWB8o3bQv4RivTsPB6nR00B9_syf2kieaaPxwPPA\";}}s:3:\"sub\";s:21:\"103794573113363153167\";s:4:\"name\";s:15:\"sree Mrityunjay\";s:10:\"given_name\";s:4:\"sree\";s:11:\"family_name\";s:10:\"Mrityunjay\";s:7:\"picture\";s:121:\"https://lh4.googleusercontent.com/-4ybNkwAcKvs/AAAAAAAAAAI/AAAAAAAAAHk/AMZuuclmV0OWjj7keu3neTr4CXKW_INC5g/s96-c/photo.jpg\";s:5:\"email\";s:28:\"mritunjaysree79.in@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-02 19:49:24', '2021-02-03 10:45:27'),
('5cace84b-2b74-4ec4-8e15-2daf22198eb9', 'a484ce44-9b72-43c3-bf4c-a594c5310054', 'google', NULL, '106943330045608203102', 'https://lh3.googleusercontent.com/-gpZbRZe03x0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckwy9OxnXRND97vNHICgZyo14o_RA/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMB1XbMkbWQvbA0EZnqXez9WXk5UmXB1lpRnNzSYe9KDhZ4YwhC1UOD8Te-ITuyZTNazJ5XTYN68NYUhvbHgCiziptOkYUMpZy_yvkQND05FR3QMJmvtIbomoh-tpzBI3NEUgCdwsTWmb3ZTe9wI8orX-mEDqwes1H3ffpk', NULL, '2020-12-12 08:29:36', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMB1XbMkbWQvbA0EZnqXez9WXk5UmXB1lpRnNzSYe9KDhZ4YwhC1UOD8Te-ITuyZTNazJ5XTYN68NYUhvbHgCiziptOkYUMpZy_yvkQND05FR3QMJmvtIbomoh-tpzBI3NEUgCdwsTWmb3ZTe9wI8orX-mEDqwes1H3ffpk\";s:10:\"\0*\0expires\";i:1607761776;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1209:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ0Y2JhMjVlNTYzNjYwYTkwMDlkODIwYTFjMDIwMjIwNzA1NzRlODIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDY5NDMzMzAwNDU2MDgyMDMxMDIiLCJlbWFpbCI6ImFyeWFua3Jpc2huYWpwckBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik1CR0JzUk9XOElLdl9ENGNZbEhSVHciLCJuYW1lIjoiQXJ5YW4gS3Jpc2huYSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vLWdwWmJSWmUwM3gwL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2t3eTlPeG5YUk5EOTd2TkhJQ2daeW8xNG9fUkEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6IkFyeWFuIiwiZmFtaWx5X25hbWUiOiJLcmlzaG5hIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MDc3NTgxNzcsImV4cCI6MTYwNzc2MTc3N30.OwfY_Plua_lB3fheZJV5xHZZrAUX5vMP3eZPK74YUnzZYpLAuoy9pIxmohLOqgdFnIW16cqD5YH4mZH-Jvhx5Oc2mWfhyRFSsuhiK3lMXpjGURWDIEbOD2OFHwj_q7xsEOjuLG46SftPEjNF44FYQOQbgEsueMDbSYSBYf_jPiPsa_AlQawWX2QUmya4hpEK1kAIL0M0Lj3CSGcoCSt1opuAPH0DgjldfZ8oBWuCmbOauCmQ3OcL_c7u5Q2Pn5Tbt8XmZDQtLEmqyIH9PBYDoWnnk-GVzgDjh6lTtP-1i_ZlG91bQax98cBWH3Q3a2y6IOjtvddlppnOBAUsN_HApA\";}}s:3:\"sub\";s:21:\"106943330045608203102\";s:4:\"name\";s:13:\"Aryan Krishna\";s:10:\"given_name\";s:5:\"Aryan\";s:11:\"family_name\";s:7:\"Krishna\";s:7:\"picture\";s:121:\"https://lh3.googleusercontent.com/-gpZbRZe03x0/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuckwy9OxnXRND97vNHICgZyo14o_RA/s96-c/photo.jpg\";s:5:\"email\";s:25:\"aryankrishnajpr@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-12 07:14:44', '2020-12-12 07:29:37'),
('5ffc8c02-3e5e-4c8a-ab9c-8fbb5be6e34c', '1a0cf0b1-237f-4a09-9f74-18a5b778c152', 'google', NULL, '118145013707723329460', 'https://lh3.googleusercontent.com/a-/AOh14GjhPxJAj4z873WokWHIGuQRg3Ac9oHe0OUekeeH=s96-c', NULL, '#', 'ya29.a0AfH6SMDP3HJR-IlrTEl0pe8qcC70zaPsU326GuoL__Wlx9G8-2m9ki0qjz_Nd2lqLUjZ8_ADAXmF-HN-6n1sUH_XPCpr98SWlJm-u5iih19h5Lw4Ak5qVjL6dLZBMejJG839FXulncH7jwyl9zLFH9lYih40MfOOv8k9_hdvt-4', NULL, '2020-12-12 08:58:25', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMDP3HJR-IlrTEl0pe8qcC70zaPsU326GuoL__Wlx9G8-2m9ki0qjz_Nd2lqLUjZ8_ADAXmF-HN-6n1sUH_XPCpr98SWlJm-u5iih19h5Lw4Ak5qVjL6dLZBMejJG839FXulncH7jwyl9zLFH9lYih40MfOOv8k9_hdvt-4\";s:10:\"\0*\0expires\";i:1607763505;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.profile openid https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1150:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ0Y2JhMjVlNTYzNjYwYTkwMDlkODIwYTFjMDIwMjIwNzA1NzRlODIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTgxNDUwMTM3MDc3MjMzMjk0NjAiLCJlbWFpbCI6Inlzc3Z0MTk4OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IkVVYVB2YmFXTEU2LXZzaFdTS2dkQVEiLCJuYW1lIjoiWXNzdnQgVHJ1c3QiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2poUHhKQWo0ejg3M1dva1dISUd1UVJnM0FjOW9IZTBPVWVrZWVIPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6Illzc3Z0IiwiZmFtaWx5X25hbWUiOiJUcnVzdCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjA3NzU5OTA2LCJleHAiOjE2MDc3NjM1MDZ9.EivaVbREey8C6gWJ2wO5aHwSwvwaaV6T5EZbyMXPAFMbK_rTojR6hDbZlsKXM21gbva4itgcwplt7BtoRFEAPad3SyTA3kWwhuB57Oh7zAnnLkEL6WV61P_Wz0VLpKb3UTZgu1xzsSUKIht02qEl4MFx9r5V1zKke3RH1in8ZcEPCEFX0WqUwW_hitE1XeEQoe8dctwrE4UWFkIKkKMMSoBQQtgBJsxvgFG-kwccPSTPLHv9NsQTwkRcamsppjnNRzikIvQbjEx3ET6Tyh4doXubcmKGu9aR6WPznFD6DINeO-30Ab7e849MF0NgukzZC5USxYDgLG3yC7l7JS2j5g\";}}s:3:\"sub\";s:21:\"118145013707723329460\";s:4:\"name\";s:11:\"Yssvt Trust\";s:10:\"given_name\";s:5:\"Yssvt\";s:11:\"family_name\";s:5:\"Trust\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GjhPxJAj4z873WokWHIGuQRg3Ac9oHe0OUekeeH=s96-c\";s:5:\"email\";s:19:\"yssvt1989@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-12 07:58:26', '2020-12-12 07:58:26'),
('708d7561-2950-4bdf-a6d2-88a8b4742545', '88735225-b5ce-4f4d-943b-d288fda09128', 'google', NULL, '104578102467426206674', 'https://lh3.googleusercontent.com/a-/AOh14GgCqoJAnjaHBA2YjpyjNfo6GAmCz8ObtxMShyzH=s96-c', NULL, '#', 'ya29.a0AfH6SMAMnm8Cd1YPwLQEimVkULf0Lm4oj8BjESWZshid-w9IXseCNB6oDn0937s2sEuAe3VZGN71WE1wmC2vYBWbVW1vOB-sord5jS0nvFqeqMmLXShTQCcKy7WlHWUoteHlnIryOpWH2fq35GeTgzBI0O2xy0CjtQc0Qywun78', NULL, '2021-02-12 15:47:26', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMAMnm8Cd1YPwLQEimVkULf0Lm4oj8BjESWZshid-w9IXseCNB6oDn0937s2sEuAe3VZGN71WE1wmC2vYBWbVW1vOB-sord5jS0nvFqeqMmLXShTQCcKy7WlHWUoteHlnIryOpWH2fq35GeTgzBI0O2xy0CjtQc0Qywun78\";s:10:\"\0*\0expires\";i:1613125046;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email openid https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1168:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZkMjg1ZWQ0ZmViY2IxYWVhZmU3ODA0NjJiYzU2OWQyMzhjNTA2ZDkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDQ1NzgxMDI0Njc0MjYyMDY2NzQiLCJlbWFpbCI6Imd1bHNoYW4ua3VtYXJoMDQ3OUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6ImpleFF1bDlYdVVxUHhsWVNKX2czV1EiLCJuYW1lIjoiR3Vsc2hhbiBLdW1hciIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ0Nxb0pBbmphSEJBMllqcHlqTmZvNkdBbUN6OE9idHhNU2h5ekg9czk2LWMiLCJnaXZlbl9uYW1lIjoiR3Vsc2hhbiIsImZhbWlseV9uYW1lIjoiS3VtYXIiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTYxMzEyMTQ0NywiZXhwIjoxNjEzMTI1MDQ3fQ.auFjUtuQxzJOS9Lrp33MDc4K7Q2uCSSBNkR0gQzdJip1yHpdeKt-v-bAtJzcAaAYb4fx-gUkNsKSlfsiKEhp5KaxDbvr3E4IJsQEh_oT7N0GCZWwtL8oThPKJ5kxXehNRXkLWuvPBgYxxbJ5I4TsDrUAuRAmtxk2feQCX5bp3Ll4aPXc1hc_L5kbMk4wmMzVcfzjOw73QlNZO_UDZcuUWnPH6oX2DPi3Xi88qLT2gdcv0exGRcb9_lAnuD0VKdwiRogKOg7_vFJUlhkwRbtVjbXoZPdBJ6Gqms_Nt1VtCYW2ynt5GzwRYm2YfVtiHyQzmIjMYjDIZ4SaYJTn3M8HUg\";}}s:3:\"sub\";s:21:\"104578102467426206674\";s:4:\"name\";s:13:\"Gulshan Kumar\";s:10:\"given_name\";s:7:\"Gulshan\";s:11:\"family_name\";s:5:\"Kumar\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GgCqoJAnjaHBA2YjpyjNfo6GAmCz8ObtxMShyzH=s96-c\";s:5:\"email\";s:28:\"gulshan.kumarh0479@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-12 14:47:27', '2021-02-12 14:47:27'),
('73d8cba0-3a5b-4d5f-8292-7a6b8c78fb6d', '3a8fa1e8-9548-42fd-b557-b15bde9f7e7b', 'google', NULL, '105372630036085406984', 'https://lh3.googleusercontent.com/a-/AOh14Gi94ICi1uiKfiYAArTVpqkhRWkN38ZRwyc6bxloZA=s96-c', NULL, '#', 'ya29.a0AfH6SMDs9mOpTU08azFa8iH9t91FYPS2vbJElh7MUHZYZKabEqkJ4YSdyPWvJgX3qIg7V8rjo4QpeC8fbSOxAfxhgX9P9izWIKO7J2pTWnVPSe5YjLPMNRPAzZMlTAdiMbEd24fH5QggkBtUbO0B0TMQdy0umYkvPcP0Vgsa1rI', NULL, '2020-12-21 23:05:51', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMDs9mOpTU08azFa8iH9t91FYPS2vbJElh7MUHZYZKabEqkJ4YSdyPWvJgX3qIg7V8rjo4QpeC8fbSOxAfxhgX9P9izWIKO7J2pTWnVPSe5YjLPMNRPAzZMlTAdiMbEd24fH5QggkBtUbO0B0TMQdy0umYkvPcP0Vgsa1rI\";s:10:\"\0*\0expires\";i:1608572151;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.profile openid https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1154:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImUxOTdiZjJlODdiZDE5MDU1NzVmOWI2ZTVlYjQyNmVkYTVkNTc0ZTMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDUzNzI2MzAwMzYwODU0MDY5ODQiLCJlbWFpbCI6ImhhbnNkYTE0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoicHNwS28wa2l0TlNOX2hjZ0NGUldodyIsIm5hbWUiOiJBbmFuZCBIYW5zZGEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2k5NElDaTF1aUtmaVlBQXJUVnBxa2hSV2tOMzhaUnd5YzZieGxvWkE9czk2LWMiLCJnaXZlbl9uYW1lIjoiQW5hbmQiLCJmYW1pbHlfbmFtZSI6IkhhbnNkYSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjA4NTY4NTUxLCJleHAiOjE2MDg1NzIxNTF9.RP_cB-3dWL_58zYhWm29Cd8llXqptaVXRO-dKADGFA0_wAexH_4YQi4Q0gV5c9zJvtrRVY4ftd2YZiGtKgNR2YvZVsCEk2MU1Xzf-CsSc62ddk1bubq4YulUaba_XiZCV7SrXNGfX3r-RgtXXL4P_zmiL8GupwkjipQqBX0h5vQ04y34DtVRiYJAguvKzwxnU44d8ODnPM-dMVPlIHXmPHkB2lRKSLCy_8GTqxn7b1XqpQdnznYTf2NBRM8Gr6TgDQFUQSn9XE10NR914QCsgp-ga2lIrM90o5Cib8-q_BhXXi_ExMevRlZUkrmWVNe2xdoyx3tym2kLVwz5ZMP8_A\";}}s:3:\"sub\";s:21:\"105372630036085406984\";s:4:\"name\";s:12:\"Anand Hansda\";s:10:\"given_name\";s:5:\"Anand\";s:11:\"family_name\";s:6:\"Hansda\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14Gi94ICi1uiKfiYAArTVpqkhRWkN38ZRwyc6bxloZA=s96-c\";s:5:\"email\";s:18:\"hansda14@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-21 22:05:53', '2020-12-21 22:05:53'),
('77610a34-5e15-46d3-9a1a-2e5364a9ebf6', '5c597911-90a2-4153-99a0-a4af6e2a9c48', 'google', NULL, '114718846240149252821', 'https://lh3.googleusercontent.com/a-/AOh14GjB5IzSzU5g5fmKHtAtzjQFm-d0sQyZ1qblJs7mnKQ=s96-c', NULL, '#', 'ya29.a0AfH6SMCg3K8oJO-8_JwZoAF9jlsW1gRLRqxgHYC_J9eb6OnxOpiAkjbr8NatGhQkGFjffjxcSGbYd4EdGpgez7ovAAMv4ie6sZYJigYpYcICP1a5FAiWFihOo8vJ70JM3kFpJMlz24wl0L5rfm1uBT-IHOGggiBryuCnYzAtQ4Y', NULL, '2020-12-22 16:20:57', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMCg3K8oJO-8_JwZoAF9jlsW1gRLRqxgHYC_J9eb6OnxOpiAkjbr8NatGhQkGFjffjxcSGbYd4EdGpgez7ovAAMv4ie6sZYJigYpYcICP1a5FAiWFihOo8vJ70JM3kFpJMlz24wl0L5rfm1uBT-IHOGggiBryuCnYzAtQ4Y\";s:10:\"\0*\0expires\";i:1608634257;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email openid\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1178:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjZhZGMxMDFjYzc0OThjMDljMDEwZGMzZDUxNzZmYTk3Yzk2MjdlY2IiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTQ3MTg4NDYyNDAxNDkyNTI4MjEiLCJlbWFpbCI6ImpvZWxtYXRodXJhYWx3YUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6ImR1c2RKN2VvWm1rMGt0cy16S1pTUnciLCJuYW1lIjoiSm9lbCBNYXRodXJhIEFsd2EiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2pCNUl6U3pVNWc1Zm1LSHRBdHpqUUZtLWQwc1F5WjFxYmxKczdtbktRPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IkpvZWwgTWF0aHVyYSIsImZhbWlseV9uYW1lIjoiQWx3YSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjA4NjMwNjU4LCJleHAiOjE2MDg2MzQyNTh9.XKQvK86fyyazkL0KsgK3kxtHzDnoprWD7FYy7Y8xHHXDqdSaSfw2rALQipfFBWXuZ6sDBxN3iaCpKw6EONKx-_ywHQXCa8A2qo_0_dAYCaFkC_Y7nubrNbuBYs5v2dqnrcwRqTezRavYDnFF3EfpGgmatYZ6g-lhisATDoFedPAbyfYYRGmUW0PgRf0ztnki0NhH31EZ9WkEPE8DzS_aZ4vvr0Fuy4FyReV8drrlkcJNawsdYejPspD48VyUDZPlHRe6eKBXRqEMni9nJepTghZqHDDY5fZhYb65mm2hyr3fEvS5Bf3uFSL4IAOwoaytIrCakRMlGOs2H4nzMNkLdw\";}}s:3:\"sub\";s:21:\"114718846240149252821\";s:4:\"name\";s:17:\"Joel Mathura Alwa\";s:10:\"given_name\";s:12:\"Joel Mathura\";s:11:\"family_name\";s:4:\"Alwa\";s:7:\"picture\";s:90:\"https://lh3.googleusercontent.com/a-/AOh14GjB5IzSzU5g5fmKHtAtzjQFm-d0sQyZ1qblJs7mnKQ=s96-c\";s:5:\"email\";s:25:\"joelmathuraalwa@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-22 15:20:58', '2020-12-22 15:20:58'),
('7ec2065d-dbe4-40e0-b8fc-3de1ca9193dd', '46392ac0-57f0-478b-8d0f-ff68942841da', 'facebook', NULL, '1673612869515416', 'https://graph.facebook.com/1673612869515416/picture?type=large', NULL, '#', 'EAAGQR5GhN1cBALtU6rkx4gyDZBKWPN3YgjGeJ6Uj5Hs0tXk8RG4u5Bi5wHhnxR0iIlHL8nZBcSZBlVSZB5HIvVryZCtlkQup9N17MoQ4bN4oyZBy7HtRR9kgyPiQwMIWwdEpZBvxOTTICusNHSbxTN2IJ6IC8uqWtJksZCGPpFIdogZDZD', NULL, '2021-05-23 18:49:34', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:179:\"EAAGQR5GhN1cBALtU6rkx4gyDZBKWPN3YgjGeJ6Uj5Hs0tXk8RG4u5Bi5wHhnxR0iIlHL8nZBcSZBlVSZB5HIvVryZCtlkQup9N17MoQ4bN4oyZBy7HtRR9kgyPiQwMIWwdEpZBvxOTTICusNHSbxTN2IJ6IC8uqWtJksZCGPpFIdogZDZD\";s:10:\"\0*\0expires\";i:1621775974;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:16:\"1673612869515416\";s:4:\"name\";s:10:\"Mohit Saha\";s:10:\"first_name\";s:5:\"Mohit\";s:9:\"last_name\";s:4:\"Saha\";s:5:\"email\";s:23:\"goyal.rohit@hotmail.com\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1673612869515416&height=200&width=200&ext=1619183977&hash=AeTQB8koumVjFZWBoMA\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:140:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1673612869515416&height=200&width=200&ext=1619183977&hash=AeTQB8koumVjFZWBoMA\";s:13:\"is_silhouette\";b:0;}', '2021-03-24 18:49:38', '2021-03-24 18:49:38'),
('956a0bcb-20ac-4ce1-aac5-10ae14c85c39', 'cadfb699-e36b-42af-9e96-c3a26927d421', 'google', NULL, '111383585746716920121', 'https://lh6.googleusercontent.com/-4Sq0Fdwz9p4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnvJfr34RKQLXUnAuTxiOMdsoiRMQ/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMD02xm0CKLLbTzlKDkU7LpqmmnWOraio8sF3QfkqDzaGs_TYpogiAE-9HcpTK-abLXo2t-iccaSZ3XgYwo0M-f0XNQumdL5DDNlfJFzulmrdiDdyxvRUS5pOy5FBkk3xHrKHHmFpHaSZS2Wo3UM0hFuWoYO69q_Xae274c', NULL, '2021-02-10 12:26:55', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMD02xm0CKLLbTzlKDkU7LpqmmnWOraio8sF3QfkqDzaGs_TYpogiAE-9HcpTK-abLXo2t-iccaSZ3XgYwo0M-f0XNQumdL5DDNlfJFzulmrdiDdyxvRUS5pOy5FBkk3xHrKHHmFpHaSZS2Wo3UM0hFuWoYO69q_Xae274c\";s:10:\"\0*\0expires\";i:1612940215;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1209:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZkMjg1ZWQ0ZmViY2IxYWVhZmU3ODA0NjJiYzU2OWQyMzhjNTA2ZDkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTEzODM1ODU3NDY3MTY5MjAxMjEiLCJlbWFpbCI6InJhaHVsbWVzaHJhbTY0NUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IlNqTHktaF9oZzRQWlJlX0poNVlsbWciLCJuYW1lIjoiUmFodWwgTWVzaHJhbSIsInBpY3R1cmUiOiJodHRwczovL2xoNi5nb29nbGV1c2VyY29udGVudC5jb20vLTRTcTBGZHd6OXA0L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y252SmZyMzRSS1FMWFVuQXVUeGlPTWRzb2lSTVEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6IlJhaHVsIiwiZmFtaWx5X25hbWUiOiJNZXNocmFtIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTI5MzY2MTYsImV4cCI6MTYxMjk0MDIxNn0.FhjPFx9WY05sGALHYawwg0nhYOgZmQzJ80twzlgcU5H3T62J4rAwCXDhqxEH1bxdLr64cPKp1DEfVPLHd8cqLL6hH6iCK1Sim0hXl43IJkjpAiXPpngUmq02yvT6CU8K41tKHE2hppqfNYb6-WkZD4KsLkuLtgegP55uByeYsK40L4NyXnTjr7l-ll-Ou3IqAPAscTOv5abb0ctUl7OCLcp7CeSf9exkutvszb0f5wELvkOId9N8W5cPuj9tTTqB5M5IOyzsifd_zMF0E6IukowQw_P649suT4VjU5GXE5ofNXB6NXf2B8TAgnybDbKhGUfFoeePsFt2YGC7gE4zCw\";}}s:3:\"sub\";s:21:\"111383585746716920121\";s:4:\"name\";s:13:\"Rahul Meshram\";s:10:\"given_name\";s:5:\"Rahul\";s:11:\"family_name\";s:7:\"Meshram\";s:7:\"picture\";s:121:\"https://lh6.googleusercontent.com/-4Sq0Fdwz9p4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnvJfr34RKQLXUnAuTxiOMdsoiRMQ/s96-c/photo.jpg\";s:5:\"email\";s:25:\"rahulmeshram645@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-10 11:26:57', '2021-02-10 11:26:57'),
('9a008464-12cc-43bf-a224-bdefb7e41999', 'a7d6a365-dab7-4f16-b677-b487a5ef3139', 'google', NULL, '118219470207659087207', 'https://lh5.googleusercontent.com/-8M9Qjptt-uE/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclFJQbzMiEryZQR_PxcTOWjpYiJ7A/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMBqrevVEoOavvy8fpmfHYpPTHeBVkakg4Qk-99nBOb7HZs9FK0RuH8cBg-_L62VVirf-hwXkIXZc4clhxmkdDprpaguOerCv0Zzxqu-gwdmxzLzUgWoV3GYsAGzGEQzR9naRpDXRLTaoY1m_iE1V93OLZDQmNrrPVuUgdw', NULL, '2021-02-11 20:09:25', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMBqrevVEoOavvy8fpmfHYpPTHeBVkakg4Qk-99nBOb7HZs9FK0RuH8cBg-_L62VVirf-hwXkIXZc4clhxmkdDprpaguOerCv0Zzxqu-gwdmxzLzUgWoV3GYsAGzGEQzR9naRpDXRLTaoY1m_iE1V93OLZDQmNrrPVuUgdw\";s:10:\"\0*\0expires\";i:1613054365;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile openid\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1202:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZkMjg1ZWQ0ZmViY2IxYWVhZmU3ODA0NjJiYzU2OWQyMzhjNTA2ZDkiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTgyMTk0NzAyMDc2NTkwODcyMDciLCJlbWFpbCI6Imljc2VtYXRoc3R1dG9yQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiWEkwUEE1T2dwUzJzZlRHbkJJbFNqZyIsIm5hbWUiOiJNYXRocyBUdXRvciIsInBpY3R1cmUiOiJodHRwczovL2xoNS5nb29nbGV1c2VyY29udGVudC5jb20vLThNOVFqcHR0LXVFL0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y2xGSlFiek1pRXJ5WlFSX1B4Y1RPV2pwWWlKN0Evczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6Ik1hdGhzIiwiZmFtaWx5X25hbWUiOiJUdXRvciIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjEzMDUwNzY2LCJleHAiOjE2MTMwNTQzNjZ9.TSchYRnNZAYbMc6Z1FC0y6Sqext2ZnJgDwdNotbs93ylvV8BpQlfW-JmP1wgrYgNnonb0S0YhkKRcpovy9FPDqhJsYKn8QNSESAnoOz-syB3vfyO7HSKt7uNEOlxDG0YQaK6V-UVf0le5quRjaZcc8YTBqZdqc2G732YdnfNjppq6pT8CXiQeS2P0VHPVlVIjviL2NQhRoNjP851T5KTb2JYxNh-5WP9zWRjuUmAVbPmI4st2WfPaqMl3hZVfwW83V2K-RY2m5Qn26isZ9r1SJnrEiAPRksvHixjpC2u0QEcplG8AUZg9q1p_8w2K2pBTNq79WjyIKuXlrYFify9Bg\";}}s:3:\"sub\";s:21:\"118219470207659087207\";s:4:\"name\";s:11:\"Maths Tutor\";s:10:\"given_name\";s:5:\"Maths\";s:11:\"family_name\";s:5:\"Tutor\";s:7:\"picture\";s:121:\"https://lh5.googleusercontent.com/-8M9Qjptt-uE/AAAAAAAAAAI/AAAAAAAAAAA/AMZuuclFJQbzMiEryZQR_PxcTOWjpYiJ7A/s96-c/photo.jpg\";s:5:\"email\";s:24:\"icsemathstutor@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-11 19:09:27', '2021-02-11 19:09:27');
INSERT INTO `social_accounts` (`id`, `user_id`, `provider`, `username`, `reference`, `avatar`, `description`, `link`, `token`, `token_secret`, `token_expires`, `active`, `data`, `created`, `modified`) VALUES
('9cad72cd-2871-4389-b3ac-0769e72941a8', '9307365e-d9f6-486d-ae34-435456d7fa62', 'google', NULL, '117687218994478550568', 'https://lh3.googleusercontent.com/a-/AOh14Gj-0rtfBohZhdpAYgFV2p2BCjOlcxThywxZinnTgQ=s96-c', NULL, '#', 'ya29.a0AfH6SMBf5-jxgXPXiU-0WJOmLVHJcHJHFifYZa24jZVt8FccaftIh3p1SMAC9TDmFL0CjiI0HN_jXCEiR1nasp-j61K-VPJ2YZ0Y84sGJe6et3bjuGfU88mLHfkQQQW_WJuMQKEBm83wrUBiAurWS2upE3cThtoZQ55f1VQH9XM', NULL, '2020-12-12 10:52:29', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMBf5-jxgXPXiU-0WJOmLVHJcHJHFifYZa24jZVt8FccaftIh3p1SMAC9TDmFL0CjiI0HN_jXCEiR1nasp-j61K-VPJ2YZ0Y84sGJe6et3bjuGfU88mLHfkQQQW_WJuMQKEBm83wrUBiAurWS2upE3cThtoZQ55f1VQH9XM\";s:10:\"\0*\0expires\";i:1607770349;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email openid https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1170:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ0Y2JhMjVlNTYzNjYwYTkwMDlkODIwYTFjMDIwMjIwNzA1NzRlODIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTc2ODcyMTg5OTQ0Nzg1NTA1NjgiLCJlbWFpbCI6InNhbmpheXRpd2FyaTM0NUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Imhic0d1NzNVZ3YwWnBsQjJlNHBHd0EiLCJuYW1lIjoic2FuamF5IHRpd2FyaSIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHai0wcnRmQm9oWmhkcEFZZ0ZWMnAyQkNqT2xjeFRoeXd4WmlublRnUT1zOTYtYyIsImdpdmVuX25hbWUiOiJzYW5qYXkiLCJmYW1pbHlfbmFtZSI6InRpd2FyaSIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjA3NzY2NzUwLCJleHAiOjE2MDc3NzAzNTB9.iHOsrAH_XbjoavaMTmgZI93tw-mpLWODtejmnIPXaEktIJPPNj5_8tjdTN7jpSaeCdB-_S_qoXhz_wllRRWfRufpIXH1unyLyF0xj9it8cTwnu_30qKcoJgCCpLEbtV32v9er_I6-xPFynjJRHuvbkxTB2hc_SSBihLcnxrFaAQfW3qcwME4rqm5GuUPsrUpAaXlSmH3S63WKfVYayJFLZK8rGZMyAuvPEUrMH1EXKk7NSrXitpsXb6AzAoYLefJRvRspdi5c5wqYVuaIZhaHRtc1gMehN7IQz0Iahd3lDDpIQERPV6uTfhBtzJ56UzPMhVY8aOC96qGVftEn1i9QA\";}}s:3:\"sub\";s:21:\"117687218994478550568\";s:4:\"name\";s:13:\"sanjay tiwari\";s:10:\"given_name\";s:6:\"sanjay\";s:11:\"family_name\";s:6:\"tiwari\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14Gj-0rtfBohZhdpAYgFV2p2BCjOlcxThywxZinnTgQ=s96-c\";s:5:\"email\";s:25:\"sanjaytiwari345@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2020-12-12 09:52:30', '2020-12-12 09:52:30'),
('a47d9cb3-6722-408b-89d3-8921c9e51cad', '898f8753-4657-4f40-b286-b39931ad0718', 'google', NULL, '113551153891274405972', 'https://lh5.googleusercontent.com/-yPz-zqSFtU4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucm3xHhPb24xxKOBZHzrvI0umUY3EA/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMBpX9lNaRIcRd6DvUuCQUjAmI-n5yZWe1keSqcuQtjBcAMSmUgTTv-XKcXl9xb613zRrXrX7keVarGnEUyUDb0RQjyPgYp5il4nrY0X09Qit8hlHtScdyv6qCbrnGFCXRiHLx0NA20Y0Bj2zV8DjXnP', NULL, '2021-03-23 22:36:29', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.a0AfH6SMBpX9lNaRIcRd6DvUuCQUjAmI-n5yZWe1keSqcuQtjBcAMSmUgTTv-XKcXl9xb613zRrXrX7keVarGnEUyUDb0RQjyPgYp5il4nrY0X09Qit8hlHtScdyv6qCbrnGFCXRiHLx0NA20Y0Bj2zV8DjXnP\";s:10:\"\0*\0expires\";i:1616519189;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile openid\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1212:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjZhOGJhNTY1MmE3MDQ0MTIxZDRmZWRhYzhmMTRkMTRjNTRlNDg5NWIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTM1NTExNTM4OTEyNzQ0MDU5NzIiLCJlbWFpbCI6ImNvb2xzaGFuZWxsMThAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJtcWR3M2k4S05uc01ZNy1WcVJYZzlnIiwibmFtZSI6IlNoYW5lbGwgQW50aG9ueSIsInBpY3R1cmUiOiJodHRwczovL2xoNS5nb29nbGV1c2VyY29udGVudC5jb20vLXlQei16cVNGdFU0L0FBQUFBQUFBQUFJL0FBQUFBQUFBQUFBL0FNWnV1Y20zeEhoUGIyNHh4S09CWkh6cnZJMHVtVVkzRUEvczk2LWMvcGhvdG8uanBnIiwiZ2l2ZW5fbmFtZSI6IlNoYW5lbGwiLCJmYW1pbHlfbmFtZSI6IkFudGhvbnkiLCJsb2NhbGUiOiJlbiIsImlhdCI6MTYxNjUxNTU5MCwiZXhwIjoxNjE2NTE5MTkwfQ.J2770kaF9FuOeEW_ddzAVvgqdzJg5zJBGs7FKY1xcnrmdd4sfkTzpv98XY3hjY3OohY9ZsAgxeWuThRpmdE2OtmUUgaN3yWFP-Pz19ZK39UoICyjcXH5pWrtuiKE2XfDkgr4qySRn9Zs2fm8H_Tat-da2YicfOgGeMPvgduEdUL_2OomMdY-BMuPWLjQcJoyZKP5masVh49PgVEGzXaTgxRTyEFBuvMNFdl9S2vfAqnsgDH2HHjgB1t2xOi1_CeQBopf5-ysTP8bVSYL7fo0wQGlRjV9lqhHuGXfEmRKYyQC6MLZs4GvOcOl9DUaemKuihhB0KRttob3-q3SpTNN6g\";}}s:3:\"sub\";s:21:\"113551153891274405972\";s:4:\"name\";s:15:\"Shanell Anthony\";s:10:\"given_name\";s:7:\"Shanell\";s:11:\"family_name\";s:7:\"Anthony\";s:7:\"picture\";s:121:\"https://lh5.googleusercontent.com/-yPz-zqSFtU4/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucm3xHhPb24xxKOBZHzrvI0umUY3EA/s96-c/photo.jpg\";s:5:\"email\";s:23:\"coolshanell18@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-03-23 21:36:31', '2021-03-23 21:36:31'),
('a6fa730d-c4d3-4b35-aad4-08520f5e5839', 'b5b12c12-9318-45ca-b901-5bea5a774392', 'google', NULL, '117967062078939922593', 'https://lh5.googleusercontent.com/-a1zYyubXfcA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnuD4_FeHR4KT2raO2YsZ6Ieo5uhA/s96-c/photo.jpg', NULL, '#', 'ya29.a0AfH6SMBW8gYMXni-FqWQ9agHt4ohyk9M_9Rx2AYtz8TIHusNWDDHIVOYcnHVX0Eo1jpdtJV05FMd-QJ2Uozc6MR0Vpzp8OEp7S_sfR9I8mqlkgqe1o35brm4fpauzUzCV71UV23siFE-GTwHLO91BxrHXT7Fli0Likr9LPlMbKJv', NULL, '2020-12-12 08:08:23', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:179:\"ya29.a0AfH6SMBW8gYMXni-FqWQ9agHt4ohyk9M_9Rx2AYtz8TIHusNWDDHIVOYcnHVX0Eo1jpdtJV05FMd-QJ2Uozc6MR0Vpzp8OEp7S_sfR9I8mqlkgqe1o35brm4fpauzUzCV71UV23siFE-GTwHLO91BxrHXT7Fli0Likr9LPlMbKJv\";s:10:\"\0*\0expires\";i:1607760503;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1201:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ0Y2JhMjVlNTYzNjYwYTkwMDlkODIwYTFjMDIwMjIwNzA1NzRlODIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTc5NjcwNjIwNzg5Mzk5MjI1OTMiLCJlbWFpbCI6Imd1cmphcm1hbnU2MjZAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJvd2dBSXUySmFNcTE2TUJDWVJ6WVJ3IiwibmFtZSI6Im1hbnUgZ3VyamFyIiwicGljdHVyZSI6Imh0dHBzOi8vbGg1Lmdvb2dsZXVzZXJjb250ZW50LmNvbS8tYTF6WXl1YlhmY0EvQUFBQUFBQUFBQUkvQUFBQUFBQUFBQUEvQU1adXVjbnVENF9GZUhSNEtUMnJhTzJZc1o2SWVvNXVoQS9zOTYtYy9waG90by5qcGciLCJnaXZlbl9uYW1lIjoibWFudSIsImZhbWlseV9uYW1lIjoiZ3VyamFyIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MDc3NTY5MDQsImV4cCI6MTYwNzc2MDUwNH0.PEpUAxTO0nXp7u5Xm2StQwZJToSouAoqmVE6mtOgiCj7GgHXrhpZHqrblh9-VxJRQHCuXLOKhgzWqXGAs_CYMN3BDqk5hk4cfLoIaWaDx2AFInpvjzt-70Ejp_WjT692BxN7-ndGIBRSNV1h59eUzoKw_waYjNWaNoErNxLKPsGeydx4JDToe8rUCDUwNaM6_isfaZ6yW6p1Qkl5V7tJ2bWHn6sH47LH3Qagd4XWQxJqgMycrUmyTj9ix85Hi85CE9K_EqIbO96hmZUZ-eA-bsW-3FNAD3i7AHgkFRziGQUUPMaOOWkss8MoI-3WTZzQCLEYI22fvRSxpUhsKHu40g\";}}s:3:\"sub\";s:21:\"117967062078939922593\";s:4:\"name\";s:11:\"manu gurjar\";s:10:\"given_name\";s:4:\"manu\";s:11:\"family_name\";s:6:\"gurjar\";s:7:\"picture\";s:121:\"https://lh5.googleusercontent.com/-a1zYyubXfcA/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucnuD4_FeHR4KT2raO2YsZ6Ieo5uhA/s96-c/photo.jpg\";s:5:\"email\";s:23:\"gurjarmanu626@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-11 04:27:38', '2020-12-12 07:08:24'),
('ac96a84f-e099-45d5-a987-d5ee963d1128', '89921904-eadc-429b-b9e4-771ae51a71e7', 'facebook', NULL, '10159085577064784', 'https://graph.facebook.com/10159085577064784/picture?type=large', NULL, '#', 'EAAGQR5GhN1cBAALZCNx3HKDjiigWIYmN7FHtm8Q2h8SoRw7VHN8SPjQER2szmoKeIhSAIQCjU2Ffq9wj4TPVe0ekEMWytVHiT4pAuyguCJfuZBb3hSZBMa60JUUmhqACLPOUhQzljsHZBYLcLqVzkikiFJxgl2EZD', NULL, '2021-05-23 20:42:01', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:162:\"EAAGQR5GhN1cBAALZCNx3HKDjiigWIYmN7FHtm8Q2h8SoRw7VHN8SPjQER2szmoKeIhSAIQCjU2Ffq9wj4TPVe0ekEMWytVHiT4pAuyguCJfuZBb3hSZBMa60JUUmhqACLPOUhQzljsHZBYLcLqVzkikiFJxgl2EZD\";s:10:\"\0*\0expires\";i:1621782721;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:17:\"10159085577064784\";s:4:\"name\";s:12:\"Naveen Bhola\";s:10:\"first_name\";s:6:\"Naveen\";s:9:\"last_name\";s:5:\"Bhola\";s:5:\"email\";s:23:\"naveenbhola@yahoo.co.in\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10159085577064784&height=200&width=200&ext=1619190723&hash=AeTvRI_igiMS1_6AkIE\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10159085577064784&height=200&width=200&ext=1619190723&hash=AeTvRI_igiMS1_6AkIE\";s:13:\"is_silhouette\";b:0;}', '2021-03-24 20:42:03', '2021-03-24 20:42:03'),
('ae401e00-dd8a-4bf8-865f-24df1860c470', '1f2491e5-5451-45af-810c-9e0b7e4a903b', 'google', NULL, '104079020029088490322', 'https://lh3.googleusercontent.com/a-/AOh14GgVoFDIg5HQHRugnSU1ZdB0rRAHH9WE6wZ5n069=s96-c', NULL, '#', 'ya29.A0AfH6SMDykyk2P6khTp8Am24RP1CjNx1Wrh01pImZdZBUJWpvna0zaSKdx5Mnh-7eDKUKrSwyI5RIv69BCQ-Wh5ZJwylCUadP7-Q1Cexr9szY5kp1EQMKTV8279MPEhVmcPR_THCiSkmAU3hKewS6mROvidmG', NULL, '2021-02-06 21:48:29', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.A0AfH6SMDykyk2P6khTp8Am24RP1CjNx1Wrh01pImZdZBUJWpvna0zaSKdx5Mnh-7eDKUKrSwyI5RIv69BCQ-Wh5ZJwylCUadP7-Q1Cexr9szY5kp1EQMKTV8279MPEhVmcPR_THCiSkmAU3hKewS6mROvidmG\";s:10:\"\0*\0expires\";i:1612628309;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1158:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjAzYjJkMjJjMmZlY2Y4NzNlZDE5ZTViOGNmNzA0YWZiN2UyZWQ0YmUiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDQwNzkwMjAwMjkwODg0OTAzMjIiLCJlbWFpbCI6ImRocnV2YWdhMTIzQGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiY2FXNHVkNERmaDZNVElQcXZJN0hNQSIsIm5hbWUiOiJEaHJ1diBBZ2Fyd2FsIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hLS9BT2gxNEdnVm9GRElnNUhRSFJ1Z25TVTFaZEIwclJBSEg5V0U2d1o1bjA2OT1zOTYtYyIsImdpdmVuX25hbWUiOiJEaHJ1diIsImZhbWlseV9uYW1lIjoiQWdhcndhbCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjEyNjI0NzEwLCJleHAiOjE2MTI2MjgzMTB9.JrUxFbCb-IqIZvWW3WBDEW5ASx_84UCHHpLT279ZbOAba8H1kX-cUY3M7THW8E2CZwSFO8QzkkYgUmd_TEsmg_c6abmiYI7g0dcCCF_qOM8Sud3ViCDZ4AJotU8YDHO2Y50BkMDfQbBGVH36AMUOT703o-pY5512GhefrN1c61Jc93BwBQlCqpxg7CZ5Vxmahbj3Uyl96AepePwCPLDNXFxUOlUkV8rFpsIktuk_ltauS6iRtMOpcB9qnukIC92VF-WdyOXAzpebqLQ3oGKZSTB8WO_e0WiZdQStSqk31w873TCnJq4oueJTkXCB1OSyMWC0bI26DvylnVH331JI1A\";}}s:3:\"sub\";s:21:\"104079020029088490322\";s:4:\"name\";s:13:\"Dhruv Agarwal\";s:10:\"given_name\";s:5:\"Dhruv\";s:11:\"family_name\";s:7:\"Agarwal\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GgVoFDIg5HQHRugnSU1ZdB0rRAHH9WE6wZ5n069=s96-c\";s:5:\"email\";s:21:\"dhruvaga123@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-06 20:47:55', '2021-02-06 20:48:30'),
('ba6e735f-a89c-42fd-b0e6-fb60d0458b7f', '69f7b802-388d-4ca9-9de5-7e1e7ecc2e1d', 'google', NULL, '109132976331984282060', 'https://lh3.googleusercontent.com/a-/AOh14GhXk_hGIRWMzBRdI7dD8Ps7XU-DN7Qi3gJkUv3e=s96-c', NULL, '#', 'ya29.a0AfH6SMD_ed4M4f4r2jkOmaVqCLJXZWIHQx2rc8EvSExJ3uGEk_riW-YJjmbtF2BOfwesYAH5peiCpPfhsk2arLStdOS7GpJtgYrF-cOXYWhK1UC98MuX0eabhKsJ7i7LHX1Ot_5JNU6xEQICkou2__Geypg3', NULL, '2021-04-07 21:22:30', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.a0AfH6SMD_ed4M4f4r2jkOmaVqCLJXZWIHQx2rc8EvSExJ3uGEk_riW-YJjmbtF2BOfwesYAH5peiCpPfhsk2arLStdOS7GpJtgYrF-cOXYWhK1UC98MuX0eabhKsJ7i7LHX1Ot_5JNU6xEQICkou2__Geypg3\";s:10:\"\0*\0expires\";i:1617810750;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1166:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImUxYWMzOWI2Y2NlZGEzM2NjOGNhNDNlOWNiYzE0ZjY2ZmFiODVhNGMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDkxMzI5NzYzMzE5ODQyODIwNjAiLCJlbWFpbCI6ImFtYmVzaC5zaW5oYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6Ik9oenk4U20wUWd3U0dndmtHMUFxVFEiLCJuYW1lIjoiQW1iZXNoIFNoZWtoYXIiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hYa19oR0lSV016QlJkSTdkRDhQczdYVS1ETjdRaTNnSmtVdjNlPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IkFtYmVzaCIsImZhbWlseV9uYW1lIjoiU2hla2hhciIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjE3ODA3MTUxLCJleHAiOjE2MTc4MTA3NTF9.WljRBl9PXwmY3rwbbir3jJp1fP3rxqcIuHWYLnPSJ3H1rEUXrZBSjVo-3pfGJRtr2gxunAPBMsdK4NKkaz6SwTMCIG44o_VDHgzyn0TRO8LKbJvzUj6i__nlcWeGqYDs9qJNVeRvf1D8ouDPhbTNvBNOvsPl9frnsDLT7FKyss0Eo4aslRZkSdNorCL3cLD5s1v27eUxvstVTW29u83GG7bHFlqdb7aVLZtrRu0n0GSFiOQbCk9Q16_KidK45lfIMArjhclAcPc-NWKtKG5_PHdZyQuBV5k9xzVRnLUO8bNWBJDXtRMl3bc9hMgLtdd_iNmavxI0cKvPzDWveA_eyg\";}}s:3:\"sub\";s:21:\"109132976331984282060\";s:4:\"name\";s:14:\"Ambesh Shekhar\";s:10:\"given_name\";s:6:\"Ambesh\";s:11:\"family_name\";s:7:\"Shekhar\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GhXk_hGIRWMzBRdI7dD8Ps7XU-DN7Qi3gJkUv3e=s96-c\";s:5:\"email\";s:22:\"ambesh.sinha@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-04-07 20:22:32', '2021-04-07 20:22:32'),
('bd079cc0-1d46-46bb-b532-f87315378e5f', '5bc2a20a-b1bb-415d-ac2c-a00ca2fc87b6', 'facebook', NULL, '10150003294504544', 'https://graph.facebook.com/10150003294504544/picture?type=large', NULL, '#', 'EAAKl6xU8ZBE8BAFsfRrV7qHrVkMFrtZA8n31z8Xw07TwsVqEsGXUTu1InKkRzhvuP0DtcS81QcdAZAK5W7lC7JMHhBkWu9mAXdCYsZA7BvjkBOP7P3DGQpGbQIn1uNTladSYoz6WpHFbLLXYDCh8M0RpmKfLgSy2zEqcXVzaTVoDBooTkW2t', NULL, '2021-04-25 14:04:23', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:181:\"EAAKl6xU8ZBE8BAFsfRrV7qHrVkMFrtZA8n31z8Xw07TwsVqEsGXUTu1InKkRzhvuP0DtcS81QcdAZAK5W7lC7JMHhBkWu9mAXdCYsZA7BvjkBOP7P3DGQpGbQIn1uNTladSYoz6WpHFbLLXYDCh8M0RpmKfLgSy2zEqcXVzaTVoDBooTkW2t\";s:10:\"\0*\0expires\";i:1619339663;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:1:{s:10:\"token_type\";s:6:\"bearer\";}}s:2:\"id\";s:17:\"10150003294504544\";s:4:\"name\";s:16:\"Carol Adeagboson\";s:10:\"first_name\";s:5:\"Carol\";s:9:\"last_name\";s:10:\"Adeagboson\";s:5:\"email\";s:31:\"tqycmzuhxh_1576839437@tfbnw.net\";s:7:\"picture\";a:1:{s:4:\"data\";a:2:{s:3:\"url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10150003294504544&height=200&width=200&ext=1616747665&hash=AeTWRN8Fjg5KkYn1mww\";s:13:\"is_silhouette\";b:0;}}s:11:\"picture_url\";s:141:\"https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10150003294504544&height=200&width=200&ext=1616747665&hash=AeTWRN8Fjg5KkYn1mww\";s:13:\"is_silhouette\";b:0;}', '2021-02-24 14:04:25', '2021-02-24 14:04:25'),
('c06eeb34-15b3-4005-a490-f5183333a9c7', '14a2d37e-3cd6-4ea4-9bab-d3f194df7273', 'google', NULL, '114872418941964929605', 'https://lh3.googleusercontent.com/a-/AOh14GjzAZy8P2S9I5NEBHEkxWPs0ui0bxyqAJsxvwYxQA=s96-c', NULL, '#', 'ya29.A0AfH6SMCd-_m9X_6rBfFfqenk1Jb9yvG0zhai64KVDrZz3rJ-3yLMc1Smp4hn1QFPW8g6kJuQ7OOJdWC2XxiFIaXPyNYWOhYsBclJjrB6ysqX-UjORwxgvadx4VessF7Bj0ps51BnUXEGyNcNBMq5j3KHSXPi', NULL, '2021-02-16 18:21:24', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.A0AfH6SMCd-_m9X_6rBfFfqenk1Jb9yvG0zhai64KVDrZz3rJ-3yLMc1Smp4hn1QFPW8g6kJuQ7OOJdWC2XxiFIaXPyNYWOhYsBclJjrB6ysqX-UjORwxgvadx4VessF7Bj0ps51BnUXEGyNcNBMq5j3KHSXPi\";s:10:\"\0*\0expires\";i:1613479884;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1161:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZkYjQwZTJmOTM1M2M1OGFkZDY0OGI2MzYzNGU1YmJmNjNlNGY1MDIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMTQ4NzI0MTg5NDE5NjQ5Mjk2MDUiLCJlbWFpbCI6InJhbS5wdXNocGFsYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6ImVqS0dQQUNtdWFTVV9aUm1mOFRKRkEiLCJuYW1lIjoiTWFydXRoaSBSYW0iLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2p6QVp5OFAyUzlJNU5FQkhFa3hXUHMwdWkwYnh5cUFKc3h2d1l4UUE9czk2LWMiLCJnaXZlbl9uYW1lIjoiTWFydXRoaSIsImZhbWlseV9uYW1lIjoiUmFtIiwibG9jYWxlIjoiZW4tR0IiLCJpYXQiOjE2MTM0NzYyODUsImV4cCI6MTYxMzQ3OTg4NX0.IiXyzVOVErjkr0xnQYvuqXoan9VMhiH25xDHHnPv51dXpir9PNUwHNCQTDvUryoMrTy2wOgDDLGMuUbv68-bOwxBM2dghniyA3fGNpy13APJFTIuRbP_8Zm-tOXiFmM9ulMeg6v0TF5RYUsu7HgFsK7WywoPNRXc37hkEx2aB1l0JT5dyI4rVPziF84NKhucBDLT2fNlXUIYUQ_lPsVpLiwVYIwFHRopcahJwWapRfMetQ_6hBbP3pEiyeFnSi8ihNLNXbL6SSge9cyHa1CWmnBpnI7qjMAZ9QpFjWYUY1cwQw2ZzbRMjj5pw2PE_qMAIIECd6rYsXe1JH8GMbX5Sg\";}}s:3:\"sub\";s:21:\"114872418941964929605\";s:4:\"name\";s:11:\"Maruthi Ram\";s:10:\"given_name\";s:7:\"Maruthi\";s:11:\"family_name\";s:3:\"Ram\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GjzAZy8P2S9I5NEBHEkxWPs0ui0bxyqAJsxvwYxQA=s96-c\";s:5:\"email\";s:22:\"ram.pushpala@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-02-16 17:21:25', '2021-02-16 17:21:25'),
('cbc070b1-dd20-4f89-b91f-f36bc51d0ec1', '9c7cdfe9-4bdd-4bcc-ba92-54fcd6350c90', 'google', NULL, '102153783232540354620', 'https://lh3.googleusercontent.com/a-/AOh14GhdSUCnY8L_2LZvdJgPI8JiHo6Gs9-wSYvf2hBBPg=s96-c', NULL, '#', 'ya29.a0AfH6SMCfZeGPcWCZIhRCd9rXNmaTe18iAIKI1UZ4-ohCkJxoR4IZVF2s26qK3bWuRTTPj0cGMYEMnfho4r8pS0taiUpIFCQXwpYMskj-9POvMJPIQTh3HzRML5yabozXj4Blstj3IySoeZBRIAiokCWZ2Fpt', NULL, '2021-04-15 09:38:18', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:163:\"ya29.a0AfH6SMCfZeGPcWCZIhRCd9rXNmaTe18iAIKI1UZ4-ohCkJxoR4IZVF2s26qK3bWuRTTPj0cGMYEMnfho4r8pS0taiUpIFCQXwpYMskj-9POvMJPIQTh3HzRML5yabozXj4Blstj3IySoeZBRIAiokCWZ2Fpt\";s:10:\"\0*\0expires\";i:1618459698;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1169:\"eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc3NDU3MzIxOGM2ZjZhMmZlNTBlMjlhY2JjNjg2NDMyODYzZmM5YzMiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDIxNTM3ODMyMzI1NDAzNTQ2MjAiLCJlbWFpbCI6ImRldmFqaXNzYUBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6ImNLWHFBMWxadlVvWmNuWEJCYlNSUmciLCJuYW1lIjoic2lkZGhpIGRldmFwdXRocmEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hkU1VDblk4TF8yTFp2ZEpnUEk4SmlIbzZHczktd1NZdmYyaEJCUGc9czk2LWMiLCJnaXZlbl9uYW1lIjoic2lkZGhpIiwiZmFtaWx5X25hbWUiOiJkZXZhcHV0aHJhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTg0NTYwOTksImV4cCI6MTYxODQ1OTY5OX0.XjbKu75bUAWX8Hm50OgEmniDrUERsaPTsz6BjeplnMGbnuy_beeYKode8cEmAXrDPJyZC8nGUb4qgh5GlS8jVqNc_RgJEB8jBM8PHS2smWe4IF0DMY1xSc-3tvRFHHr1t99Q7CCjCSSzQG26q_suzal5u2MtXqOt6krKCictINRCEMZAd5cMKeyjeU-3XUxC7ybJ-8WqjKM_o5SH6OW45Vy1p7wrg_E0MTVo5tnOYJAydjavp3y_ZaQ7aGiJQ2IHSWNfBrIncCehg40lqZ2GVVSUko5X_KcaxSlzjmEk_AzVwFN7H7nDLlEUKE9xh7hc6nr2yUtnASrBy72mgCOWWQ\";}}s:3:\"sub\";s:21:\"102153783232540354620\";s:4:\"name\";s:17:\"siddhi devaputhra\";s:10:\"given_name\";s:6:\"siddhi\";s:11:\"family_name\";s:10:\"devaputhra\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GhdSUCnY8L_2LZvdJgPI8JiHo6Gs9-wSYvf2hBBPg=s96-c\";s:5:\"email\";s:19:\"devajissa@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-04-15 08:38:19', '2021-04-15 08:38:19'),
('d4f5dfa7-fc39-49e6-b60a-52b59f9242e6', '470e116b-687e-4c92-a5d7-c8d8ac7cbb8a', 'google', NULL, '106288150392637177395', 'https://lh3.googleusercontent.com/a-/AOh14GiSN2PM8aXLsH-CqYz5tc8n13_0wUu496WNXVdI=s96-c', NULL, '#', 'ya29.a0AfH6SMAz4ueWFAf1nnIU59eWfm9gkSTa3cCkkokak-W26fOBv67uWQU0-zVgJUV3r8VSfinsKvQRtsqPI5W_iSglqtKo-kjE6RK3sAoR8bvlattwvT0N54eeERt9aPqBCo9TU4mp03D46sfiKC4FvwFL830lyPkajXn0DzMP1rQ', NULL, '2021-02-16 22:06:13', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMAz4ueWFAf1nnIU59eWfm9gkSTa3cCkkokak-W26fOBv67uWQU0-zVgJUV3r8VSfinsKvQRtsqPI5W_iSglqtKo-kjE6RK3sAoR8bvlattwvT0N54eeERt9aPqBCo9TU4mp03D46sfiKC4FvwFL830lyPkajXn0DzMP1rQ\";s:10:\"\0*\0expires\";i:1613493373;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1153:\"eyJhbGciOiJSUzI1NiIsImtpZCI6ImZkYjQwZTJmOTM1M2M1OGFkZDY0OGI2MzYzNGU1YmJmNjNlNGY1MDIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDYyODgxNTAzOTI2MzcxNzczOTUiLCJlbWFpbCI6ImFuc2hndXB0YTEwdGhAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJCSGRuRGZ6ZFl2Q0NVeUd3NGd0bS13IiwibmFtZSI6IkFuc2ggR3VwdGEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2lTTjJQTThhWExzSC1DcVl6NXRjOG4xM18wd1V1NDk2V05YVmRJPXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6IkFuc2giLCJmYW1pbHlfbmFtZSI6Ikd1cHRhIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MTM0ODk3NzQsImV4cCI6MTYxMzQ5MzM3NH0.W2DMrDPUlBYowoXqrv5Y_JQcaVWCGgJaP-gHCBS8SLiYY9sQClf9rou-pbU73JcYPqCIbaDK3jjO_PRw3110-HbMccIeMn6N2V_av0HJw0dvmoR3zSi_oXNcxkdu-gYDjqZCpEuN3nL3nasVS_xB78025S7NIuuv-jTzOvptA4eeA0A9G93Mopw7jMYZltskgjzg_zmwozLeseYXopQg1LJ50Lm10BV4FM9HLHvITHPRVPVOKGFPHD27vt2t2ZAQlEU0d3O5wJOyT3lCErXx3okGWYBLo7tQ-W3Dox9hSJIehf9zyOpfVQA1zRaKTejnjwXcP1G5ucrf40wm_O3emg\";}}s:3:\"sub\";s:21:\"106288150392637177395\";s:4:\"name\";s:10:\"Ansh Gupta\";s:10:\"given_name\";s:4:\"Ansh\";s:11:\"family_name\";s:5:\"Gupta\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GiSN2PM8aXLsH-CqYz5tc8n13_0wUu496WNXVdI=s96-c\";s:5:\"email\";s:23:\"anshgupta10th@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2021-02-16 21:06:15', '2021-02-16 21:06:15'),
('eaf2c806-cdbf-4ccf-b4d2-a3091c0b06c9', 'f93f4a43-ea41-41f7-950c-62511637ce63', 'google', NULL, '103248940943364685488', 'https://lh3.googleusercontent.com/a-/AOh14GjcBgnPEMCoBreXLvAZ9NRzH-peltzCEQpKgo7THw=s96-c', NULL, '#', 'ya29.a0AfH6SMDx48d94EacUUYZgj4sXT6yItbJAhgZFWHXP3rAeuX5qTSuPssH-pRshOooIJEOwiWzIntt6Lw6JK-hLX-PuKUVLqUUjdap-ZK5X6BlWsh7F-f0o1dLQQ6vUMvwmI3q9-l533YXUVzMNzLqWyS3nGEGZQ', NULL, '2021-03-14 19:02:47', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:165:\"ya29.a0AfH6SMDx48d94EacUUYZgj4sXT6yItbJAhgZFWHXP3rAeuX5qTSuPssH-pRshOooIJEOwiWzIntt6Lw6JK-hLX-PuKUVLqUUjdap-ZK5X6BlWsh7F-f0o1dLQQ6vUMvwmI3q9-l533YXUVzMNzLqWyS3nGEGZQ\";s:10:\"\0*\0expires\";i:1615728767;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1166:\"eyJhbGciOiJSUzI1NiIsImtpZCI6Ijg0NjJhNzFkYTRmNmQ2MTFmYzBmZWNmMGZjNGJhOWMzN2Q2NWU2Y2QiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDMyNDg5NDA5NDMzNjQ2ODU0ODgiLCJlbWFpbCI6InlhZGF2Lm1hbnUzNkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IlhRX0NyYjFMWU9TQXJLQUpUdDVPZUEiLCJuYW1lIjoiSGFudW1hbiB5YWRhdiIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHamNCZ25QRU1Db0JyZVhMdkFaOU5SekgtcGVsdHpDRVFwS2dvN1RIdz1zOTYtYyIsImdpdmVuX25hbWUiOiJIYW51bWFuIiwiZmFtaWx5X25hbWUiOiJ5YWRhdiIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjE1NzI1MTY4LCJleHAiOjE2MTU3Mjg3Njh9.YHYSjbspdsbibocMgF3bd14Xpbv6EI5B2uTxEFoDlslobVQb4pqOx7xaEcV9gVe6BIvTL8y1-tHbB4751S9c6DR74WTKQKj9ojhhbYGupmX7vG_lRECqAh1oJeZUXa3Ps8aP_D0YK_p05dlPg7WXA3ZrDyfv6LCvKxJPS7_w_HFvzeqT711HCIYXPgH07ykolpalOZk9-AZGwhfFx_SSn9ySi5YHGMlm4u5Ils7G86O-1dyLkXoQ37-P1AsCE4O9ig3RaxOlfWD5GdMjxy0Na5VEX1NxY6gx-bR7TgYrKnGRNJmBDkU9GYrM3oBQGj8dD1L41RfrTL_FtAxUVLqj0g\";}}s:3:\"sub\";s:21:\"103248940943364685488\";s:4:\"name\";s:13:\"Hanuman yadav\";s:10:\"given_name\";s:7:\"Hanuman\";s:11:\"family_name\";s:5:\"yadav\";s:7:\"picture\";s:89:\"https://lh3.googleusercontent.com/a-/AOh14GjcBgnPEMCoBreXLvAZ9NRzH-peltzCEQpKgo7THw=s96-c\";s:5:\"email\";s:22:\"yadav.manu36@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:5:\"en-GB\";}', '2021-03-14 18:02:48', '2021-03-14 18:02:48'),
('fca52391-59bf-4f59-a926-d50daf49a2e1', 'ccbd5d8a-6fa4-4dd1-8ab1-80b3996e7b34', 'google', NULL, '107464231432840483280', 'https://lh3.googleusercontent.com/a-/AOh14GhFEh1MNzVKzdMud0iQkVG-JVstIn_tELG5G38f=s96-c', NULL, '#', 'ya29.a0AfH6SMDymaNN4z3NDxZzx20LX6ARzrsWLJJEFZx6Z1Ayyl_y9Ag4GsZ7bfSgc8JFIaPhBTa_FzscdlIh6lMFbtOYrBU1XgfobFgnM8PuZO1f4efXYlzminYrncWAn2uvksnPGyFPk45Ri61u4iLaOZc3zSUIO-CjZA5aoWnyO04', NULL, '2020-12-25 10:26:38', 1, 'a:9:{s:5:\"token\";O:38:\"League\\OAuth2\\Client\\Token\\AccessToken\":5:{s:14:\"\0*\0accessToken\";s:178:\"ya29.a0AfH6SMDymaNN4z3NDxZzx20LX6ARzrsWLJJEFZx6Z1Ayyl_y9Ag4GsZ7bfSgc8JFIaPhBTa_FzscdlIh6lMFbtOYrBU1XgfobFgnM8PuZO1f4efXYlzminYrncWAn2uvksnPGyFPk45Ri61u4iLaOZc3zSUIO-CjZA5aoWnyO04\";s:10:\"\0*\0expires\";i:1608872198;s:15:\"\0*\0refreshToken\";N;s:18:\"\0*\0resourceOwnerId\";N;s:9:\"\0*\0values\";a:3:{s:5:\"scope\";s:102:\"openid https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile\";s:10:\"token_type\";s:6:\"Bearer\";s:8:\"id_token\";s:1205:\"eyJhbGciOiJSUzI1NiIsImtpZCI6IjZhZGMxMDFjYzc0OThjMDljMDEwZGMzZDUxNzZmYTk3Yzk2MjdlY2IiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJodHRwczovL2FjY291bnRzLmdvb2dsZS5jb20iLCJhenAiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJhdWQiOiI4OTcxNjk4MjA3MTktb2FiY2thMGJuM2lsNjdlbDBzdHBjY3NmNGo1bWI2Z3MuYXBwcy5nb29nbGV1c2VyY29udGVudC5jb20iLCJzdWIiOiIxMDc0NjQyMzE0MzI4NDA0ODMyODAiLCJlbWFpbCI6InlhZGF2YXJ1bjE1OTk0QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiQ1hqeHdMZ0xlUDRIZjZZb0RwZ0Z1dyIsIm5hbWUiOiJTdHVkZW50IGtpIHJhc29pIGhlYWx0aHkgdGlwcyIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaEZFaDFNTnpWS3pkTXVkMGlRa1ZHLUpWc3RJbl90RUxHNUczOGY9czk2LWMiLCJnaXZlbl9uYW1lIjoiU3R1ZGVudCBraSByYXNvaSIsImZhbWlseV9uYW1lIjoiaGVhbHRoeSB0aXBzIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2MDg4Njg2MDAsImV4cCI6MTYwODg3MjIwMH0.sM_y28uFZWzioK_E0YcUwVMfnimGTkK07kTTRG_KN5iL-hx6VTNj5OPtU7m82Tu6x2SmMSlQmsO61Wa6RwLGnzEC0bbCZz9BjLfc7dZ7-SdWSqoO6NjPiC9bHCgwGRy0c_HSfPxaczmkrVqyIYITltk64I2ITR8TLrVx6CzrOgzfcoo3Qy-t4eT2rZiz9rnZQuDYBGCoEeDUlIAJ9OVlq4ielYCkev_i1zxPlglDg1EZI86vTdgvQfu1QGGP74nZ0tex1dFjpNrh-ioyuhF89ETW3Na9GNRz4NFPz90RXoJcRUmpPVdovqIP8CWpvF-K7u_RGDAhefT1WXwQm0lxWQ\";}}s:3:\"sub\";s:21:\"107464231432840483280\";s:4:\"name\";s:29:\"Student ki rasoi healthy tips\";s:10:\"given_name\";s:16:\"Student ki rasoi\";s:11:\"family_name\";s:12:\"healthy tips\";s:7:\"picture\";s:87:\"https://lh3.googleusercontent.com/a-/AOh14GhFEh1MNzVKzdMud0iQkVG-JVstIn_tELG5G38f=s96-c\";s:5:\"email\";s:24:\"yadavarun15994@gmail.com\";s:14:\"email_verified\";b:1;s:6:\"locale\";s:2:\"en\";}', '2020-12-25 09:26:04', '2020-12-25 09:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `max_weekly_classes` int(5) DEFAULT NULL,
  `credit_hours` int(5) DEFAULT NULL,
  `is_activity` tinyint(1) DEFAULT NULL,
  `is_exam` tinyint(1) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `course_id`, `title`, `max_weekly_classes`, `credit_hours`, `is_activity`, `is_exam`, `position`, `created`, `modified`) VALUES
(1, NULL, 'Mathematics ', NULL, NULL, NULL, NULL, 1, '2020-10-05 16:30:26', '2020-10-05 16:31:40'),
(2, NULL, 'Physics', NULL, NULL, NULL, NULL, 2, '2020-10-05 16:31:53', '2020-10-05 16:31:53'),
(3, NULL, 'Chemistry', NULL, NULL, NULL, NULL, 3, '2020-10-05 16:32:08', '2020-10-05 16:32:08'),
(4, NULL, 'Biology', NULL, NULL, NULL, NULL, 4, '2020-10-05 16:32:17', '2020-10-05 16:32:17'),
(5, NULL, 'Coding for Kids (1st - 6th Grades)', NULL, NULL, NULL, NULL, 5, '2020-10-05 16:35:02', '2020-10-05 16:35:08'),
(6, NULL, 'Computer Science', NULL, NULL, NULL, NULL, 10, '2020-10-05 16:35:53', '2020-10-05 16:36:54'),
(7, NULL, 'English', NULL, NULL, NULL, NULL, 7, '2020-10-05 16:36:01', '2020-10-05 16:36:01'),
(8, NULL, 'Hindi', NULL, NULL, NULL, NULL, 8, '2020-10-05 16:36:09', '2020-10-05 16:36:09'),
(9, NULL, 'Sanskrit', NULL, NULL, NULL, NULL, 9, '2020-10-05 16:36:16', '2020-10-05 16:36:16'),
(10, NULL, 'German', NULL, NULL, NULL, NULL, 11, '2020-10-05 16:36:24', '2020-10-05 16:36:24'),
(11, NULL, 'French', NULL, NULL, NULL, NULL, 12, '2020-10-05 16:36:37', '2020-10-05 16:36:37'),
(12, NULL, 'Social Studies', NULL, NULL, NULL, NULL, 13, '2020-10-05 16:37:18', '2020-10-05 16:37:18'),
(13, NULL, 'EVS', NULL, NULL, NULL, NULL, 18, '2020-10-05 16:37:27', '2020-10-05 16:37:27'),
(14, NULL, 'Business Studies', NULL, NULL, NULL, NULL, 14, '2020-10-05 16:37:36', '2020-10-05 16:37:36'),
(15, NULL, 'Economics', NULL, NULL, NULL, NULL, 16, '2020-10-05 16:37:44', '2020-10-05 16:37:44'),
(16, NULL, 'Accountancy', NULL, NULL, NULL, NULL, 15, '2020-10-05 16:38:03', '2020-10-05 16:38:03'),
(17, NULL, 'Arabic', NULL, NULL, NULL, NULL, 17, '2020-10-05 16:38:41', '2020-10-05 16:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_teachers`
--

CREATE TABLE `subjects_teachers` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_schedules`
--

CREATE TABLE `teacher_schedules` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `start_at` time(6) NOT NULL,
  `end_at` time(6) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_schedules`
--

INSERT INTO `teacher_schedules` (`id`, `title`, `start_at`, `end_at`, `status`, `created`, `modified`) VALUES
(1, '6-7 AM', '06:00:00.000000', '07:00:00.000000', 1, '2020-10-05 15:54:28', '2020-10-05 15:58:09'),
(2, '8-9 AM', '08:00:00.000000', '09:00:00.000000', 1, '2020-10-05 15:58:39', '2021-02-13 16:26:01'),
(4, '7-8 AM', '07:00:00.000000', '08:00:00.000000', 1, '2021-02-13 16:27:24', '2021-02-13 16:27:24');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `designation` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `listing_id`, `name`, `designation`, `description`, `status`, `created`, `modified`) VALUES
(1, 3, 'Hanuman yadav', 'Software developer', 'school counsellor helps children in all ways, be it academic, social, behavioural or emotional. They work in collaboration with the teachers, parents and special educators to create a healthy learning environment that makes them feel comfortable. They also help to provide specific solutions to children with particular problems', 0, '2020-07-27 18:55:01', '2020-07-27 18:58:14'),
(2, 3, 'Nakul Jain', 'Business Man', 'Very good school', 1, '2020-07-27 18:59:05', '2020-07-27 18:59:05'),
(3, 3, 'Rajesh Jangid', 'Teacher', 'Sport activity and all other services are good', 1, '2020-07-27 19:00:08', '2020-07-27 19:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials_phinxlog`
--

CREATE TABLE `testimonials_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials_phinxlog`
--

INSERT INTO `testimonials_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200727181850, 'CreateTestimonials', '2020-07-27 12:50:47', '2020-07-27 12:50:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `access_token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `access_token`) VALUES
(1, '{\"access_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiIwNDlhMGFiZS1kZGQxLTRkN2MtYTk2MC0yMzJjODY4YjliOGMifQ.eyJ2ZXIiOjcsImF1aWQiOiJiNTEwNjU2MTAzMDFiMjdkNGU1YjA5Y2JhYzQxZTZkMSIsImNvZGUiOiJROU83WDJpVmZjX1UzY2tfUURnU0VhcjdacE12Vm9EMFEiLCJpc3MiOiJ6bTpjaWQ6RWhMcmZKT0tUeFNOb2hQUENfM3MyUSIsImdubyI6MCwidHlwZSI6MCwidGlkIjo4LCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwibmJmIjoxNjE2MzE4NTA3LCJleHAiOjE2MTYzMjIxMDcsImlhdCI6MTYxNjMxODUwNywiYWlkIjoiVy1aSV8wV1dRWGFNbG1BWllPUzFzUSIsImp0aSI6ImZmMGMxZWZlLTBmZDctNDhmZC05OTIzLWNiNTI4ZWIwYzM1NSJ9.GlFAh6tps9GYUraqO6cUkN3AdBWdvP0MWUGUctUVwL29zGx5OO30PjXy4v5JNqVWZd9TBnokNP2pPMy29jQNbQ\",\"token_type\":\"bearer\",\"refresh_token\":\"eyJhbGciOiJIUzUxMiIsInYiOiIyLjAiLCJraWQiOiJhZDQ3ZjY1Ny1jOWEyLTQ5OTUtOGVlZC0xODU3NGIwNmFhNDMifQ.eyJ2ZXIiOjcsImF1aWQiOiJiNTEwNjU2MTAzMDFiMjdkNGU1YjA5Y2JhYzQxZTZkMSIsImNvZGUiOiJROU83WDJpVmZjX1UzY2tfUURnU0VhcjdacE12Vm9EMFEiLCJpc3MiOiJ6bTpjaWQ6RWhMcmZKT0tUeFNOb2hQUENfM3MyUSIsImdubyI6MCwidHlwZSI6MSwidGlkIjo4LCJhdWQiOiJodHRwczovL29hdXRoLnpvb20udXMiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwibmJmIjoxNjE2MzE4NTA3LCJleHAiOjIwODkzNTg1MDcsImlhdCI6MTYxNjMxODUwNywiYWlkIjoiVy1aSV8wV1dRWGFNbG1BWllPUzFzUSIsImp0aSI6IjU2YzEwNWI0LWQxY2EtNGU3ZC1iOThlLTcwYzcxNDdiY2Q0NCJ9.Z_CNQUYubZDKdfwVnzDDC4KPY2vCjfE6ZMzG6272F8RFKLVEo6q00dqXvov4hsrQVUzdQ3AZXg4te3ZxvwTKCw\",\"expires_in\":3599,\"scope\":\"meeting:master meeting:read:admin meeting:write:admin recording:master recording:read:admin recording:write:admin\"}');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `transactionId` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_responce` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `payment_method`, `transaction_type`, `transaction_status`, `amount`, `transactionId`, `transaction_responce`, `note`, `created`, `modified`) VALUES
(1, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 'referral', '2', '1', '500.00', NULL, NULL, 'This is referral amount', '2020-12-10 10:04:23', '2020-12-10 10:04:23'),
(2, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 'referral', '1', '1', '500.00', NULL, NULL, 'This is referral amount', '2020-12-12 09:52:14', '2020-12-12 09:52:14'),
(3, '216ceab7-d377-4b74-829c-f52f6fd5f091', 'referral', '2', '1', '500.00', NULL, NULL, 'This is referral amount', '2021-03-22 12:57:38', '2021-03-22 12:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `transactions_phinxlog`
--

CREATE TABLE `transactions_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions_phinxlog`
--

INSERT INTO `transactions_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20201128103740, 'CreateTransactions', '2020-12-10 07:41:13', '2020-12-10 07:41:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `zoom_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `activation_date` datetime DEFAULT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `secret_verified` tinyint(1) DEFAULT NULL,
  `tos_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `is_superuser` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(255) DEFAULT 'user',
  `comment` text DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `photo_dir` varchar(255) DEFAULT NULL,
  `photo_size` int(6) DEFAULT NULL,
  `photo_type` varchar(255) DEFAULT NULL,
  `referred_by` char(36) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `additional_data` text DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `code`, `username`, `email`, `zoom_email`, `password`, `first_name`, `last_name`, `token`, `token_expires`, `api_token`, `activation_date`, `secret`, `secret_verified`, `tos_date`, `active`, `is_superuser`, `role`, `comment`, `profile_photo`, `photo_dir`, `photo_size`, `photo_type`, `referred_by`, `created`, `modified`, `additional_data`, `listing_id`) VALUES
('08b83891-a807-4235-b8d9-b515375c0598', 'H35Q7FIN', 'naveenbhola@gmail.com', 'naveenbhola@gmail.com', 'naveenbhola@gmail.com', '$2y$10$wbh1CLgT7AUqoH/Jv.jXduXdn/u9wXn870Uc8bxZS4pPz0bWnbVq6', 'Nbhola', '@g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', '', '942855161573527630204.png', 'webroot/img/uploads/Users/profile_photo/', 81006, 'image/png', NULL, '2020-12-10 09:17:09', '2021-03-16 18:30:56', NULL, 4),
('0905cd30-dcf0-40f0-b255-4e02c1c8fe98', 'AZFS7EV8', 'rohit@yopmail', 'rohit@yopmail', NULL, NULL, 'Rohit', 'goyal', 'b6a6af9cf9e9611011513cd571ed7604', '2020-10-22 18:40:47', NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', '', NULL, NULL, NULL, NULL, NULL, '2020-10-10 07:04:22', '2020-10-22 17:40:47', NULL, 4),
('09b27773-e5a1-442b-b6de-afd8cfcca3b0', 'ACN3SRVY', 'ANANTHIKA.RM', 'ananthikarm2010@gmail.com', NULL, '$2y$10$Ua3IOInT2bRi7s11snLfwOqaWiq5a3EN3prk4P9/tGrBXopINQMsu', 'ananthika', 'Rm', '038cba977753c02b7e9005a3e0407138', '2021-02-25 14:04:29', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 13:04:29', '2021-02-25 13:04:55', NULL, 4),
('0c99bacd-3b03-489a-a04d-53013d8716f0', '7PENCV3I', 'HEERA/DUGAR/200821', 'champadevidugar@gmail.com', NULL, '$2y$10$JlHv0drPXN38IFbhqgePdehDAyqSmLNqqYNO.oOcxes/3Ue9.gF.C', 'Heera', 'Dugar', '8b5386a01f87da24af939d01e3840702', '2021-01-21 19:51:15', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:51:15', '2021-01-21 18:51:15', NULL, 4),
('119aa6e1-5751-4a12-b734-b2110bdc06af', 'DGR2VAZU', 'joelmathura0512@outlook.com', 'joelmathura0512@outlook.com', NULL, NULL, 'Joel Mathura', 'Alwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-22 15:19:04', '2020-12-22 15:19:04', NULL, 4),
('11ef64a2-337e-4b47-aa96-ad98929f32fe', 'NBFS6EV8', 'rajendra@yopmail.com', 'rajendra@yopmail.com', NULL, '$2y$10$RWQp3malTMGqQ6AGsgu5VuBWOYxdWpZVn6qFoniSrMZ9EngFe2cwW', 'Rajendra', 'singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'hello test', NULL, NULL, NULL, NULL, NULL, '2020-10-24 08:05:28', '2020-11-04 16:59:16', NULL, 4),
('14a2d37e-3cd6-4ea4-9bab-d3f194df7273', 'NJG32LDS', 'ram.pushpala', 'ram.pushpala@gmail.com', NULL, '$2y$10$5Qgt9jUfXyAWScwBrrwwrOk5/aUyfqPcpoOswae8bE.IrIi3Q3CFi', 'Maruthi', 'Ram', NULL, NULL, NULL, '2021-02-16 17:21:25', NULL, NULL, '2021-02-16 17:21:25', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-16 17:21:25', '2021-02-16 17:21:25', NULL, 4),
('1544dd7e-80a3-4b7d-a47d-a40968efd5df', 'AZFKPDV1', 'superadmin', 'superadmin@example.com', NULL, '$2y$10$A4VSPBLBCa7NkZKiOr2U7umn7hXjU0jMbkCrfzgNLROndUKCeweXW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'superuser', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-21 14:27:08', '2020-09-21 14:27:08', NULL, 4),
('169a68a6-12bd-46da-8e96-7582bfcc653a', 'NROGHP9T', 'vijsunaina1@gmail.com', 'vijsunaina1@gmail.com', 'vijsunaina1@gmail.com', '$2y$10$BCizRmYR7CljrVP80X1EV.3TXApn47wfGD.eN0WZNalpHI3uxpBXS', 'Raghav', 'Vij', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'Approved', '354379161573519877318.jpeg', 'webroot/img/uploads/Users/profile_photo/', 14448, 'image/jpeg', NULL, '2021-02-13 15:38:05', '2021-03-14 20:49:58', NULL, 4),
('1796c411-e5d5-4251-a080-589f1700f1e9', 'ALKS6EV8', 'aryan', 'aryan.krishna123@yopmail.com', NULL, '$2y$10$vrMZXlsSEceiC5jVGVeoXuODBCzqfi8ZLVuXznWtalIMzJhTlmOQa', 'aryan', 'yadav', '57de40f3691afe7b46f2d23a915e2b38', NULL, NULL, '2020-09-26 17:16:36', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-26 17:15:38', '2020-09-26 17:16:36', NULL, 4),
('191b0a3d-0417-46d3-9d1e-cdc76d48b0d3', 'C73K5NJ0', 'Dhruv Agarwal1', '1gamer1gaming@gmail.com', NULL, '$2y$10$79k4T79SIhZOuvF4PN9yFeKki6StMClbDsIHNMdq.binOTbkFyLJC', 'Dhruv', 'Agrawal', 'c3f8c3994253c66736631f50dbdb5e19', '2021-02-06 21:51:07', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 20:51:07', '2021-02-06 20:51:07', NULL, 4),
('1a0cf0b1-237f-4a09-9f74-18a5b778c152', '2UDMNKO6', 'yssvt', 'yssvt1989@gmail.com', NULL, '$2y$10$gmJB0IscPHetFiUBfVgFkeNPG0A13MMNDJtiV.OnSHib1ZpBT1olK', 'mane', 'yssvt1989', '7558c52f1165a8ae7a4bc775f54b4881', '2020-12-12 08:57:56', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 07:57:56', '2020-12-12 07:58:26', NULL, 4),
('1aed3c70-08c4-4f6a-b8c4-85da4b8b5d42', 'ZUBXANI1', 'Autrija', 'vishwas.123arti@gmail.com', NULL, '$2y$10$9rABIef4Lo3bCH2dZH5RRuEoOAau4Arpu332INJ9/Sd7jW6VpN9Wu', 'Autrija Biswas', 'Biswas', 'da13336ed82671cf2b68672f39562f1d', '2021-02-15 13:16:07', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-15 12:16:07', '2021-02-15 12:16:07', NULL, 4),
('1ca1def3-5c26-47d1-b50d-8161010635fa', 'OBGS6EV8', 'Ankit kr', 'ankitkrsharma8470@gmail.com', NULL, '$2y$10$IrCdAMGo1S59nMoQ4/Gv0.tOFxaBTMcD6ctczLFcRb7lkJmg2UQS.', 'ANKIT ', 'Kumar', '1573b43a8b16c0a00b66dc63a6260528', '2020-11-29 20:08:34', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 19:08:34', '2020-11-29 19:08:34', NULL, 4),
('1d04b6cf-f9d6-404f-ae57-b670e17d50cc', 'FR7QEPN5', 'Ayush123@#', 'rajayushabhi@gmail.com', NULL, '$2y$10$DgEO7m.FNwlWa1U74EXrRexC3ROQApEmXGhBX4XHqG8SKDjiW98Ya', 'AYUSH', 'Sinha', '63c5b9b75575d07ce58a5a33eb348b9a', '2021-03-01 23:33:11', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-01 22:33:11', '2021-03-01 22:33:11', NULL, 4),
('1f2491e5-5451-45af-810c-9e0b7e4a903b', 'Z4J1RUTP', 'dhruv agarwal', 'dhruvaga123@gmail.com', NULL, '$2y$10$jA26UUPpoFloc8s1AJE5qee.yxVcj2sw5DBRb4M/4awabCdBs1t8S', 'dhruv', 'agrawal', 'f500795debdf5474ee9afd4d87d6e4dd', '2021-02-06 21:46:36', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 20:46:36', '2021-02-06 20:47:55', NULL, 4),
('21210a11-8150-462f-98c8-2b5f1540d80f', 'AZFS6ELK', 'raghav.singh@yopmail.com', 'raghav.singh@yopmail.com', NULL, NULL, 'Raghav', 'singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-04 17:04:18', '2020-11-04 17:04:18', NULL, 4),
('216ceab7-d377-4b74-829c-f52f6fd5f091', 'JY9S2WQ7', 'student', 'student@yopmail.com', NULL, '$2y$10$GuGG69YakYYMidR2KxKSfOzazZ9Mp7wCjlioSRuGLZQzRE1G1ZVLu', 'Student', 'lipsum', '9fdeb57fc4afd76b0499a48738c73842', NULL, NULL, '2020-12-12 05:28:37', NULL, NULL, NULL, 1, 0, 'student', NULL, '775617161573523262330.jpeg', 'webroot/img/uploads/Users/profile_photo/', 19292, 'image/jpeg', NULL, '2020-12-12 05:27:56', '2021-03-14 20:50:32', NULL, 4),
('2799dc5e-69c6-49fe-adb1-78ef670f5645', 'CFYU9PBL', 'ligyluke', 'ligyluke@gmail.com', NULL, '$2y$10$LM8Hyq3KAsFv0r/FVYwDret5IpPCqUgwe8sh9edSVhCtc1RuGYZP6', 'Ligy', 'Luke', NULL, NULL, NULL, '2021-03-28 03:43:20', NULL, NULL, '2021-03-28 03:43:20', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-28 03:43:20', '2021-03-28 03:43:20', NULL, 4),
('27f2db4f-33ec-4ede-b037-dc3f56703108', 'TOIU3GAB', 'himanshuxarma28@gmail.com', 'himanshuxarma28@gmail.com', 'himanshuxarma28@gmail.com', '$2y$10$kICMijOGvGfKVqZz/TXOgublx.b7N10Em4JvnX5rVaYmD7i31fVn6', 'Himanshu', 'Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'Approved', NULL, NULL, NULL, NULL, NULL, '2021-02-13 14:08:07', '2021-03-12 23:55:59', NULL, 4),
('2c55c2cd-39be-40cf-8506-35cbd982b86a', 'THK86EV8', 'arnav.45@dotsquares.com', 'arnav.jain@dotsquares.com', NULL, NULL, 'Mahendra', 'Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 03:31:54', '2020-10-08 03:31:54', NULL, 4),
('2c9d292e-0661-485b-883a-1ac7b822ccfe', '7E9GMSUD', 'Pratibhaa', 'pratibhaannegiri@gmail.com', NULL, '$2y$10$VkSUIKESHY36EmHtuiL95uysGp6JCRu4a9J.mbo8ImHXHWp0UgTJW', 'Shreesh', 'Annegiri', '26503f2908fb40557fe5002f8571eb3d', NULL, NULL, '2021-04-11 08:57:55', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-11 08:55:25', '2021-04-11 08:57:55', NULL, 4),
('388fa280-1a41-4ab3-9736-980df3ce0abb', 'BRY5WNCG', 'Remas_Alhashmi71', 'Remas.Alhashmi71@gmail.com', NULL, '$2y$10$yprlh/LhxWeSQ/YO58WIyuQEkR50I3JQg1rYMbjV9QJhUSUflDvyC', 'Remas', 'Alhashmi', '095d7995deb75b24c7bff9d215925b41', NULL, NULL, '2021-03-24 20:46:43', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:45:28', '2021-03-24 20:46:43', NULL, 4),
('3a8fa1e8-9548-42fd-b557-b15bde9f7e7b', 'IPF6KORL', 'hansda14', 'hansda14@gmail.com', NULL, '$2y$10$SHJEgCOsiUKPeLjGhyYXsO8o7CklhVAQvGbWdMkdNZToIdsHQTU9m', 'Anand', 'Hansda', NULL, NULL, NULL, '2020-12-21 22:05:52', NULL, NULL, '2020-12-21 22:05:52', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-21 22:05:52', '2020-12-21 22:05:52', NULL, 4),
('4371dd8d-9eb8-4ab6-8c51-17cf4cca91b5', '4VCT3YWM', 'darwin.himansh', 'darwin.himansh@gmail.com', NULL, '$2y$10$y71Li1442hqLNVkuQYL5Weh7zog/kSBSWPytKcHwmVXviTLkEIsxG', 'darwin', 'himansh', NULL, NULL, NULL, '2021-01-08 20:29:55', NULL, NULL, '2021-01-08 20:29:55', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-08 20:29:55', '2021-01-08 20:29:55', NULL, 4),
('46392ac0-57f0-478b-8d0f-ff68942841da', 'KJRIE0HP', 'goyal.rohit', 'goyal.rohit@hotmail.com', NULL, '$2y$10$0T4S.OcrBAjXCc33ap4j9eGzXof0JB5zJVmMa6QsECa/apP2wrNZy', 'Mohit', 'Saha', NULL, NULL, NULL, '2021-03-24 18:49:38', NULL, NULL, '2021-03-24 18:49:38', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 18:49:38', '2021-03-24 18:49:38', NULL, 4),
('46ad086f-9249-4b82-b8ad-c68efde461dc', '41QEZB8N', 'Fatima Naimi R ', 'FatimaNaimi136@gmail.com', NULL, '$2y$10$Wbi8x8Am8knnA5eTeQCxhOgf1ywJXlvo33utXXVPLa47QTUuCDHzu', 'Fatima ', 'Naimi', 'f5f63fbb06d4be84c51811490c6c6b38', '2021-01-10 22:21:02', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-10 21:21:02', '2021-01-10 21:21:02', NULL, 4),
('470e116b-687e-4c92-a5d7-c8d8ac7cbb8a', 'EHPWVAU3', 'anshgupta10th', 'anshgupta10th@gmail.com', NULL, '$2y$10$MueRXqTEDJgKgHZur7HiwunGj81zWVsDvJP/SOAjNKIMXC7qG7QAS', 'Ansh', 'Gupta', NULL, NULL, NULL, '2021-02-16 21:06:15', NULL, NULL, '2021-02-16 21:06:14', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-16 21:06:15', '2021-02-16 21:06:15', NULL, 4),
('4b04eab1-2458-47bf-ac24-48aa3d7fddca', 'CH4GO3RT', 'gupqeuhhpd_1574355172', 'gupqeuhhpd_1574355172@tfbnw.net', NULL, '$2y$10$OLdAuwoXG47RVGyXl.Ia7.Ivk7F76FyCYTkQlBwnCY33JHyT7DcFm', 'Joe', 'Talaez', NULL, NULL, NULL, '2021-02-24 13:44:11', NULL, NULL, '2021-02-24 13:44:11', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-24 13:44:11', '2021-02-24 13:44:11', NULL, 4),
('4bac188b-a4b2-4aae-a822-7f5884060969', 'MBYS6EV8', 'raghav', 'raghav.jain@yopmail.com', NULL, '$2y$10$mPKghFjd7m7sDt5vOK3bKe1IoV7UU0Jh435i2/rgQM04mPzfLzIs6', 'Raghav', 'jain', '9bddec836dc8c0df76f9622aa2f7a72d', NULL, NULL, '2020-10-17 10:26:35', NULL, NULL, NULL, 1, 0, 'student', NULL, '887511160293047161379.jpeg', 'webroot/img/uploads/Users/profile_photo/', 13868, 'image/jpeg', NULL, '2020-10-17 10:26:00', '2020-10-17 10:27:51', NULL, 4),
('544417cc-ccf4-4a72-8e2d-a878f53101e1', 'NEMAT3PK', 'naveenbhola1@gmail.com', 'naveenbhola1@gmail.com', 'banveenbhola1@gmail.com', NULL, 'nbhola1', '@gmail', '9751a975db0bc19f91790569fa5572af', '2020-12-10 10:14:15', NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', '', NULL, NULL, NULL, NULL, NULL, '2020-12-10 09:13:59', '2021-03-14 13:23:44', NULL, 4),
('57c05907-75d1-4f97-9cf8-ae5b988f1e64', 'PE58BHY3', 'yadav.manu36', 'yadav.manu36123456987@gmail.com', NULL, '$2y$10$WVN8JZbjyTlXkur2KQ7EdeBPSLbpXYEYU4G6z5m2DZVzkkWYBxP9a', 'Hanuman', 'Yadav', NULL, NULL, NULL, '2021-03-08 09:02:35', NULL, NULL, '2021-03-08 09:02:35', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-08 09:02:35', '2021-03-13 22:12:02', NULL, 4),
('59148e27-a526-41a9-84a8-177aeb76833e', 'WUDX09MB', 'anuragnandi2007', 'anuragnandi2007@gmail.com', NULL, '$2y$10$N3qWE5iHp3fnB/e5GKQ.x.gWahtuHgVs7515hyr/wkAMddedbCw/m', 'Anurag', 'Nandi', NULL, NULL, NULL, '2021-01-12 08:47:54', NULL, NULL, '2021-01-12 08:47:54', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-12 08:47:55', '2021-01-12 08:47:55', NULL, 4),
('5b7e53cd-1f7f-4350-85db-a3baa6033eab', 'MZFS6E78', 'code961@gmail.com', 'code961@gmail.com', NULL, NULL, 'aryan', 'krishna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 03:44:03', '2020-10-08 03:44:03', NULL, 4),
('5bc2a20a-b1bb-415d-ac2c-a00ca2fc87b6', 'T9W3SLPF', 'tqycmzuhxh_1576839437', 'tqycmzuhxh_1576839437@tfbnw.net', NULL, '$2y$10$LjwOIXhRV9y3Bgzt0cSr4eWmX5CqHuHIAC3Ap8YccFEh5uzlAva2C', 'Carol', 'Adeagboson', NULL, NULL, NULL, '2021-02-24 14:04:25', NULL, NULL, '2021-02-24 14:04:25', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-24 14:04:25', '2021-02-24 14:04:25', NULL, 4),
('5c597911-90a2-4153-99a0-a4af6e2a9c48', '6WML9IFQ', 'joelmathuraalwa', 'joelmathuraalwa@gmail.com', NULL, '$2y$10$zeKYw6W1rlfuiqACjOZsEur.WlQ6KhKujbrKeD.jF3Nih6.fxd7Oq', 'Joel Mathura', 'Alwa', NULL, NULL, NULL, '2020-12-22 15:20:58', NULL, NULL, '2020-12-22 15:20:58', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-22 15:20:58', '2020-12-22 15:20:58', NULL, 4),
('65af9592-4e35-41d3-b428-60ab868d7e25', 'WBS1YIAK', 'piodelrzoa_1574354870', 'piodelrzoa_1574354870@tfbnw.net', NULL, '$2y$10$RE4FqAUBHfwRGizEHdKcm.wOteN1q41SgvS7eU45n0MkS3nXMt9A2', 'Prash', 'Shrewsberryescu', NULL, NULL, NULL, '2021-02-24 15:46:42', NULL, NULL, '2021-02-24 15:46:42', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-24 15:46:42', '2021-02-24 15:46:42', NULL, 4),
('69f7b802-388d-4ca9-9de5-7e1e7ecc2e1d', '2HMIDY4O', 'ambesh.sinha', 'ambesh.sinha@gmail.com', NULL, '$2y$10$mGCZQ9Nu9hWcqWuhvwY.8uL2ztNuu/0yVrkpsrZlAWBqWSNiZEr/.', 'Ambesh', 'Shekhar', NULL, NULL, NULL, '2021-04-07 20:22:32', NULL, NULL, '2021-04-07 20:22:32', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-07 20:22:32', '2021-04-07 20:22:32', NULL, 4),
('715d6703-9d56-4192-8494-e3e69a19015a', 'FZ97UARL', 'Aliza', 'annasaliza15@gmail.com', NULL, '$2y$10$9ieSD1tcqLMcsrMKRS2KneS5CVVml2pGIitTHXANqpPo5movQWbES', 'aliza', 'rabbani', 'bc7357043e06a206c651ba967651aaf5', '2021-03-19 12:09:34', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-19 11:09:35', '2021-03-19 11:09:35', NULL, 4),
('7846bc06-e539-485e-b292-898bb7b95009', '6RCG5WLN', 'Naveen Kumar Bhola', 'naveenstudent@gmail.com', NULL, '$2y$10$JdrO1q/KcXdGEBeYkAb0xuwpSA26UFxdLCsIcnaxpwneqCwXfgXEi', 'Naveen', 'Student', '9cd4a2e7d6da24ff35308b5892c1edd5', '2020-12-10 11:04:21', NULL, NULL, NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '2020-12-10 10:04:21', '2021-03-13 17:03:02', NULL, 4),
('7bc81ce4-2ead-4b21-bfd5-c8cc27f43461', 'JK1LDFIW', 'pokemongengar7', 'pokemongengar7@gmail.com', NULL, '$2y$10$ut30sLTyHLbYYG4EuOwDJ.2/ega0D8eaJjiciO283aDlJ9NMwbXhy', 'Pratik', 'Borkar', NULL, NULL, NULL, '2021-01-26 19:34:53', NULL, NULL, '2021-01-26 19:34:53', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-26 19:34:53', '2021-01-26 19:34:53', NULL, 4),
('7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', 'A4DYVBFU', 'naveen.bhola', 'naveen.bhola@gmail.com', NULL, '$2y$10$qzyNCf1ObvyJLbiZNvKlyewqiVWQLY5fysSTuIURnNljhZGSZivDW', 'naveen.bhola', '@g', 'c5c86697f8145386bc1b513116ec45dd', NULL, NULL, '2021-03-22 13:04:11', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, '216ceab7-d377-4b74-829c-f52f6fd5f091', '2021-03-22 12:57:36', '2021-03-22 13:04:11', NULL, 4),
('88735225-b5ce-4f4d-943b-d288fda09128', 'W5RAYQJ0', 'gulshan.kumarh0479', 'gulshan.kumarh0479@gmail.com', NULL, '$2y$10$/WIjhKGvhCCg0ldMgs6M6OD424R.GI4U3xA7EBcFcikv.BHXzDej.', 'Gulshan', 'Kumar', NULL, NULL, NULL, '2021-02-12 14:47:27', NULL, NULL, '2021-02-12 14:47:27', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-12 14:47:27', '2021-02-12 14:47:27', NULL, 4),
('898f8753-4657-4f40-b286-b39931ad0718', 'DG4JF1ZV', 'coolshanell18', 'coolshanell18@gmail.com', NULL, '$2y$10$WCe6JxKY3FVGfwTZ8r2H5uQJ2IQwd94zqPT35f8jJ6n2GgcP37sFS', 'Shanell', 'Anthony', NULL, NULL, NULL, '2021-03-23 21:36:31', NULL, NULL, '2021-03-23 21:36:31', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23 21:36:31', '2021-03-23 21:36:31', NULL, 4),
('89921904-eadc-429b-b9e4-771ae51a71e7', '3DS1TH4N', 'naveenbholayahoo', 'naveenbhola@yahoo.co.in', NULL, '$2y$10$Hl93iKE1kOSN7k.zDfBp/eTdoBlnQ4g1deAcWM7whohPR/COwB/eK', 'naveenbhola', '@yahoo', '9dcef3197ea5a0e43bfc393a0dd9028f', NULL, NULL, '2021-03-13 17:39:06', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:38:50', '2021-03-24 20:42:03', NULL, 4),
('8f49a533-4077-44e4-bb4c-e5f0d6dd4033', 'CPUT3A1X', 'Kboy2980', 'kefasadahebit@gmail.com', NULL, '$2y$10$7ckH.RwOcRwBezHjJ48vJuU4DoK2lQSY.qZ0IazqCFGC7CnhEafXW', 'Kefas Adah', 'Ebit', 'f0202bcae6a078212d9da57f3083c820', NULL, NULL, '2021-02-11 13:41:22', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 13:40:05', '2021-02-11 13:41:22', NULL, 4),
('90e24518-3692-4366-9fc1-43c25832c47c', 'AZFS6EDD', 'code961@gmail.coms', 'code961@gmail.com', NULL, NULL, 'aryan', 'krishna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 03:40:16', '2020-10-08 03:40:16', NULL, 4),
('92da02c7-25e5-4a8c-b89f-188bd36721f1', 'ITQ67SV9', 'manu36', 'yadav.manu36545@gmail.com', NULL, '$2y$10$VbNFy2lv6EKqQN9LXNopmuWeHdXx69ITZBEnV20O382ndGHuS3LeC', 'manu', 'yadav', 'bf24cdae437fc95842439129c3bf6a5b', '2021-03-13 23:14:33', NULL, NULL, NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 22:14:33', '2021-03-14 09:29:01', NULL, 4),
('9307365e-d9f6-486d-ae34-435456d7fa62', 'Z021C5HV', 'sanjaytiwari', 'sanjaytiwari345@gmail.com', NULL, '$2y$10$YDBPPVuuSCqqeDHpuOc1/u0Vc689p208bCpfGWXdO65LrvB9sd5ma', 'sanjay', 'tiwari', 'f1da1080b80a67f2d21353418b490b7b', '2020-12-12 10:52:12', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '2020-12-12 09:52:12', '2020-12-12 09:52:30', NULL, 4),
('941c144c-e69b-4b6d-8c6b-27c2b044617a', 'QTP658BJ', 'Fatima Naimi', 'FatimaNaimi148@gmail.com', NULL, '$2y$10$N9cXDjah8OuffWTr.hUeSOrSV8bvwEblEQ2pyjSrSufJhFregU6di', 'Fatima ', 'Naimi', 'f9a507365694392b3116accd298e1b1e', '2021-01-10 22:18:42', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-10 21:18:42', '2021-01-10 21:18:42', NULL, 4),
('96091ff1-cd1c-4c2d-96ea-44c27170327c', '3X6KUWL9', 'rohit08890@gmail.com', 'rohit08890@gmail.com', 'rohit08890@gmail.com', '$2y$10$wc3EOfX1vouJyG80DQj9TOqb/Zzf6lD2Fk7w5zvoyaUzlJmkUVFN.', 'Rohit', 'Goyal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'Good Teacher', NULL, NULL, NULL, NULL, NULL, '2021-02-13 14:04:08', '2021-03-12 23:56:30', NULL, 4),
('97fe9e50-b386-4ceb-96a4-fcde66b552a1', 'SBED13L5', 'Heera Dugar', 'heeradugar2008@gmail.com', NULL, '$2y$10$RwoxoiJvYqkRX1.kzfSV/eC5Du29R7inDkSJWlk25dz..eyQLN8VC', 'Heera', 'Dugar', '314bba7ec9dfd7fcc75f3008899c5020', '2021-01-21 19:37:36', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:37:36', '2021-01-21 18:37:36', NULL, 4),
('9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '8OFLH7GZ', 'vikash.soni@yopmail.com', 'vikash.soni@yopmail.com', NULL, '$2y$10$h0T4LC9dWOxB79LM4M1IbOHIiUUqVzHEOxyuMaEtUKU1BBDFbU6c2', 'Vikash', 'Soni', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'lorem lipsum', '641925161288475287252.jpeg', 'webroot/img/uploads/Users/profile_photo/', 15931, 'image/jpeg', NULL, '2020-12-08 03:07:15', '2021-02-09 21:02:32', NULL, 4),
('9c7cdfe9-4bdd-4bcc-ba92-54fcd6350c90', 'KHV6C7GB', 'GAGANPUTHRA', 'devajissa@gmail.com', NULL, '$2y$10$aP1Rn/kzwxMbatiwQqHpSOz9HyYP1gN0R/I2GjC1oPJAY2FWLNiGW', 'Gagan', 'puthra', '84634a05ea67e4a89537af7f521e05ae', NULL, NULL, '2021-04-15 08:39:05', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 08:37:28', '2021-04-15 08:39:05', NULL, 4),
('9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 'AZFS6123', 'arnav.jain@dotsquares.com', 'arnav.jain@dotsquares.com', NULL, NULL, 'sdfdfes', 'pkk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-08 03:49:58', '2020-10-08 03:49:58', NULL, 4),
('a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', '25I806XL', 'sandhu@yahoo.com', 'sandhu@yahoo.com', '', '$2y$10$hM984PDWFXkVwmb9K7af9uz/f/lvIhypbzQmilGBCSS6Uo8eL0VNu', 'Sandhu', 'Sandhu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', '', NULL, NULL, NULL, NULL, NULL, '2020-12-12 09:43:47', '2021-03-14 13:18:07', NULL, 4),
('a484ce44-9b72-43c3-bf4c-a594c5310054', '96X4SF73', 'aryankrishnajpr', 'aryankrishnajpr@gmail.com', NULL, '$2y$10$IFQbz3wJ47FAiuZPT3rVB.W0OvCxHZqKKjp0G1rf7KfwDaCcFZpRy', 'Aryan', 'Krishna', NULL, NULL, NULL, '2020-12-12 07:14:44', NULL, NULL, '2020-12-12 07:14:44', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 07:14:44', '2020-12-12 07:14:44', NULL, 4),
('a614b5e3-3e97-4c85-a0fe-b712f84dca2f', 'X40GIKA5', 'mritunjaysree79.in', 'mritunjaysree79.in@gmail.com', NULL, '$2y$10$KO1cWs1upQmyVpkm.TZJQ.ETyzXdw1vXkjdCyztbiEYV2Rgq9yOIW', 'sree', 'Mrityunjay', NULL, NULL, NULL, '2021-02-02 19:49:24', NULL, NULL, '2021-02-02 19:49:24', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-02 19:49:24', '2021-02-02 19:49:24', NULL, 4),
('a7d6a365-dab7-4f16-b677-b487a5ef3139', '0KX4U8V9', 'icsemathstutor', 'icsemathstutor@gmail.com', NULL, '$2y$10$FCdAgmvor2lQXmoyXWkWl.z.Ig8HOujvTOvhzrekuAMzo/ILr59Qa', 'Maths', 'Tutor', NULL, NULL, NULL, '2021-02-11 19:09:27', NULL, NULL, '2021-02-11 19:09:26', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 19:09:27', '2021-02-11 19:09:27', NULL, 4),
('a985a680-d89b-4b54-95e0-44567b2084d8', '43LM61GD', 'aryan.krishna@yopmail.com', 'aryan.krishna@yopmail.com', 'abc@abc.com', '$2y$10$shtRvubF9Kl5KuN4cJBYeuAnszDJSg5oyHoAWe3NtYl0rFGKzarJ6', 'Aryan', 'krishna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'approve', NULL, NULL, NULL, NULL, NULL, '2020-12-12 04:28:57', '2021-03-13 12:32:20', NULL, 4),
('aea0b124-c4fb-421c-9521-32d23a738295', 'G5ZMLJUP', 'Fatima Naimi12', 'YoutubeAccount@gmail.com', NULL, '$2y$10$YUji8chxTGZ3oCAQhWOpge1K2QAdGHRTP66qaVsu4bggdJC82bps2', 'Fatima ', 'Naimi', '24aafc4e2b87be4ab8bee0da3b4c865b', '2021-01-13 11:23:57', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 10:23:57', '2021-01-13 10:23:57', NULL, 4),
('af8e5db2-2cfb-423b-8380-ba5c7e35d600', '56CVLJ8I', 'anil_sharma1983', 'anil_sharma1983@hotmail.com', NULL, '$2y$10$hb5Jn.h2hLauZyu641E.zOhxph6BmjPT4quNGmf40M7YvJF6WuUvW', 'Anil', 'Sharma', NULL, NULL, NULL, '2021-03-02 22:01:15', NULL, NULL, '2021-03-02 22:01:15', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 22:01:15', '2021-03-02 22:01:15', NULL, 4),
('b5b12c12-9318-45ca-b901-5bea5a774392', 'ZHJP76A9', 'gurjarmanu626', 'gurjarmanu626@gmail.com', NULL, '$2y$10$yYW9mjEWHwH/oec9gn.yt.0.H6krgWkQIS4EdRVxGqH3pISFgSw1a', 'manu', 'gurjar', NULL, NULL, NULL, '2020-12-11 04:27:38', NULL, NULL, '2020-12-11 04:27:37', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-11 04:27:38', '2020-12-11 04:27:38', NULL, 4),
('b8d61795-090b-457c-9154-bfd15e28ba3d', 'LLKS6EV8', 'hanuman1236', 'hanuman.yadav1235@yopmail.com', NULL, '$2y$10$peePDFOK26eKkZpbLovNJ.hvnq/snJIvUdSdWD06lV8DqXnPls4cK', 'Shanker', 'Yadav', NULL, NULL, NULL, '2020-09-23 19:39:28', NULL, NULL, NULL, 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-23 19:38:50', '2020-09-24 03:47:20', NULL, 4),
('bf7b91bc-c0c6-4ca1-9203-5a8dfd1b2c6b', '6GCXH2Q1', 'Fatima Naimi123', '13553@jaipuria.com', NULL, '$2y$10$vJyNX7ubkMMjeiQ8ivE/BuuVEYd/v05deLo8ZDnkWGrKTe6gkXyB.', 'Fatima ', 'Naimi', 'a0d498ea769d63eff0b974e800d92a4c', '2021-01-11 10:35:43', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 09:35:43', '2021-01-11 09:35:43', NULL, 4),
('cadfb699-e36b-42af-9e96-c3a26927d421', 'G91P0QAD', 'rahulmeshram645', 'rahulmeshram645@gmail.com', NULL, '$2y$10$y5f0AMbHNJkSqHuXdszPpeymu29cPJkWbY4YJDr85.6MVgGRS941G', 'Rahul', 'Meshram', NULL, NULL, NULL, '2021-02-10 11:26:57', NULL, NULL, '2021-02-10 11:26:57', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-10 11:26:57', '2021-02-10 11:26:57', NULL, 4),
('ccbd5d8a-6fa4-4dd1-8ab1-80b3996e7b34', 'K5UT3078', '9546255387', 'yadavarun15994@gmail.com', NULL, '$2y$10$zgmhmsRu0BTzDR33eQOPUuFU1grhIVVbxj5b/BdS3k8a3yYbM3/He', 'Arun', 'Kumar', '212c79659d3b20e8a066b277a6a5477d', '2020-12-25 10:25:16', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-25 09:25:17', '2020-12-25 09:26:04', NULL, 4),
('d2b5d881-b288-47e4-ad07-3aeebc4aad82', 'N249QLZC', 'sevasatkarm', 'sevasatkarm@gmail.com', NULL, '$2y$10$dejzksz.kSOiHQu/1sWf1ub6jCHxu.47AkIkS2lDyaWS5V2SJXL7C', '??????', '??????????', NULL, NULL, NULL, '2021-03-20 23:33:27', NULL, NULL, '2021-03-20 23:33:27', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-20 23:33:27', '2021-03-20 23:33:27', NULL, 4),
('da485551-bc37-49d5-bbef-9a883f0a4166', '8KLS6EV8', 'hello.lal@yopmail.com', 'hello.lal@yopmail.com', NULL, NULL, 'hello ', 'dear', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 'teacher', NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-09 19:32:02', '2020-10-09 19:32:02', NULL, 4),
('df52b934-e5a8-4663-90ea-e96d3a65af8c', '2LFS6EV8', 'ankitsharma8470', 'sharmadinesh8470@gmail.com', NULL, '$2y$10$mJGBbRKWzyBZ/4u5QTelSuXCgMmRdQ/2Ih5DxW2T93CiJTZyTye6G', 'ANKIT ', 'Kumar', '9db3e2ff750818b99026c5b01a4221fc', '2020-11-29 20:15:11', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 19:15:11', '2020-11-29 19:15:11', NULL, 4),
('e0d3f2dc-2e5b-4366-8a39-7c734249083b', 'AZDS6EV8', 'bharat.yadav@yopmail.com', 'bharat.yadav@yopmail.com', NULL, '$2y$10$ZDNF9K8dvo7VjjsIFjqwWO9YQwHU25BIsvjfhA1e6gpUVtpbFfs5q', 'Bharat', 'Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', 'approved', NULL, NULL, NULL, NULL, NULL, '2020-11-05 17:38:39', '2020-11-05 18:07:44', NULL, 4),
('e15ce4e8-eb13-41a5-b77a-30e8e5c898c7', 'WU32FJYC', 'arifsaifi44', 'arifsaifi44@gmail.com', NULL, '$2y$10$unH3v031LtrAUGoN75GKueX.R/fOhy.IrsUP3aTV9Kekbabmg9Y9y', 'arif', 'saifi', NULL, NULL, NULL, '2021-03-09 02:48:40', NULL, NULL, '2021-03-09 02:48:40', 1, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-09 02:48:40', '2021-03-09 02:48:40', NULL, 4),
('e6371f79-6800-4682-aa22-61137782761c', 'WXITPN1G', 'Yeshwariya Pandey', 'gobardhanpandey685@gmail.com', NULL, '$2y$10$Gyy86ApZlWgj8FKeCshTaOaQ4gWsF3Sm9WKNds7EsXDYnnmGVrNku', 'Yeshwariya', 'Pandey', '7173bbd37b262a9e9cb942ad601a4db4', '2021-03-02 09:15:59', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 08:15:59', '2021-03-02 08:15:59', NULL, 4),
('f1ecb1e6-c4a3-4a15-aaea-2d329093afad', 'YWO7X8DV', 'HeeraDugar2008/21', 'heeradugar395@gmail.com', NULL, '$2y$10$shlfvN46saFYKVWhtCau1e5LPLOPCTOZlZApJrf1SrBhc5AUhUpO.', 'Heera', 'Dugar', '520df0bb99123e3497b9b4d5f62b211b', '2021-01-21 19:46:28', NULL, NULL, NULL, NULL, NULL, 0, 0, 'student', NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:46:28', '2021-01-21 18:46:28', NULL, 4),
('f93f4a43-ea41-41f7-950c-62511637ce63', 'W3ZJFTX8', 'yadav.manu36@gmail.com', 'yadav.manu36@gmail.com', NULL, '$2y$10$UXmuJ4j3Glf3KMwGzw8hVOpNuZf1EtCjG8GsPMQq4D.POKnaz1trK', 'love', 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 'teacher', '', NULL, NULL, NULL, NULL, NULL, '2021-03-14 17:36:00', '2021-03-14 18:02:48', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users_boards`
--

CREATE TABLE `users_boards` (
  `id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `board_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_boards`
--

INSERT INTO `users_boards` (`id`, `user_id`, `board_id`) VALUES
(4, '21210a11-8150-462f-98c8-2b5f1540d80f', 3),
(5, '21210a11-8150-462f-98c8-2b5f1540d80f', 4),
(8, 'e0d3f2dc-2e5b-4366-8a39-7c734249083b', 3),
(9, 'e0d3f2dc-2e5b-4366-8a39-7c734249083b', 4),
(10, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 3),
(11, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 4),
(12, '544417cc-ccf4-4a72-8e2d-a878f53101e1', 3),
(17, 'a985a680-d89b-4b54-95e0-44567b2084d8', 3),
(18, 'a985a680-d89b-4b54-95e0-44567b2084d8', 4),
(19, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 3),
(20, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 4),
(21, '119aa6e1-5751-4a12-b734-b2110bdc06af', 3),
(22, '119aa6e1-5751-4a12-b734-b2110bdc06af', 4),
(23, '96091ff1-cd1c-4c2d-96ea-44c27170327c', 3),
(24, '96091ff1-cd1c-4c2d-96ea-44c27170327c', 4),
(25, '27f2db4f-33ec-4ede-b037-dc3f56703108', 4),
(26, '27f2db4f-33ec-4ede-b037-dc3f56703108', 5),
(35, 'f93f4a43-ea41-41f7-950c-62511637ce63', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users_grading_types`
--

CREATE TABLE `users_grading_types` (
  `id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `grading_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_grading_types`
--

INSERT INTO `users_grading_types` (`id`, `user_id`, `grading_type_id`) VALUES
(3, '5b7e53cd-1f7f-4350-85db-a3baa6033eab', 2),
(4, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 1),
(5, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 2),
(6, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 3),
(11, 'da485551-bc37-49d5-bbef-9a883f0a4166', 1),
(12, 'da485551-bc37-49d5-bbef-9a883f0a4166', 2),
(13, '0905cd30-dcf0-40f0-b255-4e02c1c8fe98', 1),
(14, '0905cd30-dcf0-40f0-b255-4e02c1c8fe98', 2),
(15, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 7),
(16, 'a985a680-d89b-4b54-95e0-44567b2084d8', 9),
(18, '169a68a6-12bd-46da-8e96-7582bfcc653a', 9),
(19, '544417cc-ccf4-4a72-8e2d-a878f53101e1', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users_languages`
--

CREATE TABLE `users_languages` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_languages`
--

INSERT INTO `users_languages` (`id`, `user_id`, `language_id`) VALUES
(1, '4bac188b-a4b2-4aae-a822-7f5884060969', 3),
(2, '4bac188b-a4b2-4aae-a822-7f5884060969', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users_teacher_schedules`
--

CREATE TABLE `users_teacher_schedules` (
  `id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `teacher_schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_teacher_schedules`
--

INSERT INTO `users_teacher_schedules` (`id`, `user_id`, `teacher_schedule_id`) VALUES
(3, '5b7e53cd-1f7f-4350-85db-a3baa6033eab', 2),
(4, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 1),
(5, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', 2),
(9, 'da485551-bc37-49d5-bbef-9a883f0a4166', 1),
(10, 'da485551-bc37-49d5-bbef-9a883f0a4166', 2),
(11, '0905cd30-dcf0-40f0-b255-4e02c1c8fe98', 1),
(12, '0905cd30-dcf0-40f0-b255-4e02c1c8fe98', 2),
(13, '11ef64a2-337e-4b47-aa96-ad98929f32fe', 1),
(14, '11ef64a2-337e-4b47-aa96-ad98929f32fe', 2),
(19, '21210a11-8150-462f-98c8-2b5f1540d80f', 1),
(22, 'e0d3f2dc-2e5b-4366-8a39-7c734249083b', 1),
(23, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 1),
(24, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 2),
(25, '544417cc-ccf4-4a72-8e2d-a878f53101e1', 1),
(26, '544417cc-ccf4-4a72-8e2d-a878f53101e1', 2),
(29, 'a985a680-d89b-4b54-95e0-44567b2084d8', 1),
(30, 'a985a680-d89b-4b54-95e0-44567b2084d8', 2),
(31, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 1),
(32, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 2),
(33, '119aa6e1-5751-4a12-b734-b2110bdc06af', 2),
(34, '96091ff1-cd1c-4c2d-96ea-44c27170327c', 2),
(35, '27f2db4f-33ec-4ede-b037-dc3f56703108', 1),
(36, '27f2db4f-33ec-4ede-b037-dc3f56703108', 2),
(44, 'f93f4a43-ea41-41f7-950c-62511637ce63', 1),
(45, 'f93f4a43-ea41-41f7-950c-62511637ce63', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` int(11) NOT NULL,
  `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `document_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_dir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_size` int(8) DEFAULT NULL,
  `document_type` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_documents`
--

INSERT INTO `user_documents` (`id`, `user_id`, `document_type_id`, `document_file`, `document_dir`, `document_size`, `document_type`, `created`, `modified`) VALUES
(1, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 4, '402322160771020086929.png', 'webroot/img/uploads/UserDocuments/document_file/', 337121, 'image/png', '2020-12-11 18:10:00', '2020-12-11 18:10:00'),
(2, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', 1, '798591160775338050710.docx', 'webroot/img/uploads/UserDocuments/document_file/', 58543, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2020-12-12 06:09:40', '2020-12-12 06:09:40'),
(3, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', 3, '928481160776633336479.docx', 'webroot/img/uploads/UserDocuments/document_file/', 58543, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '2020-12-12 09:45:33', '2020-12-12 09:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_manager_phinxlog`
--

CREATE TABLE `user_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_manager_phinxlog`
--

INSERT INTO `user_manager_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200927103923, 'CreateOccupations', '2020-09-27 05:30:26', '2020-09-27 05:30:26', 0),
(20200927103940, 'CreateUsersGradingTypes', '2020-09-27 05:30:26', '2020-09-27 05:30:28', 0),
(20200927103944, 'CreateUserProfiles', '2020-09-27 05:30:28', '2020-09-27 05:30:29', 0),
(20201003035839, 'CreateTeacherSchedules', '2020-10-02 23:16:14', '2020-10-02 23:16:15', 0),
(20201003035853, 'CreateUsersTeacherSchedules', '2020-10-02 23:16:15', '2020-10-02 23:16:15', 0),
(20201008032319, 'AddListingIdToUsers', '2020-10-07 21:54:10', '2020-10-07 21:54:11', 0),
(20201009171327, 'AddProfilePhotoToUsers', '2020-10-09 11:45:43', '2020-10-09 11:45:44', 0),
(20201010082218, 'CreateUsersBoards', '2020-10-10 02:52:29', '2020-10-10 02:52:29', 0),
(20201014032144, 'CreateUsersLanguages', '2020-10-17 10:16:12', '2020-10-17 10:16:12', 0),
(20201014040637, 'AddGradingTypeIdToUserProfiles', '2020-10-17 10:16:12', '2020-10-17 10:16:12', 0),
(20201017074126, 'AddCommentToUsers', '2020-10-17 10:16:12', '2020-10-17 10:16:12', 0),
(20201029033854, 'AddRateToUserProfiles', '2020-12-06 10:46:18', '2020-12-06 10:46:19', 0),
(20201121095919, 'AddMobileVerifyNOptToUserProfiles', '2020-12-06 10:46:19', '2020-12-06 10:46:19', 0),
(20201211105740, 'CreateUserDocuments', '2020-12-11 18:08:57', '2020-12-11 18:08:57', 0),
(20210208032804, 'AddNewColumnToUserProfiles', '2021-02-08 09:30:52', '2021-02-08 09:30:52', 0),
(20210228061237, 'AddExperienceMonthToUserProfiles', '2021-03-02 23:06:25', '2021-03-02 23:06:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `is_mobile_verified` tinyint(1) DEFAULT NULL,
  `sms_otp` varchar(20) DEFAULT NULL,
  `alt_mobile` varchar(20) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `postcode` varchar(8) DEFAULT NULL,
  `latitude` varchar(80) DEFAULT NULL,
  `longitude` varchar(80) DEFAULT NULL,
  `pin_number` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `grading_type_id` int(11) DEFAULT NULL,
  `qualification` varchar(250) DEFAULT NULL,
  `college_university` varchar(250) DEFAULT NULL,
  `occupation_id` int(11) DEFAULT NULL,
  `experience` varchar(50) DEFAULT NULL,
  `experience_month` int(11) DEFAULT NULL,
  `rate` decimal(8,2) DEFAULT NULL,
  `primary_subject_id` int(11) DEFAULT NULL,
  `secondary_subject_id` int(11) DEFAULT NULL,
  `hours_inweekdays` varchar(255) DEFAULT NULL,
  `hours_inweekend` varchar(255) DEFAULT NULL,
  `is_digital_pen_tablet` tinyint(1) DEFAULT NULL,
  `is_internet_speed_mbps` tinyint(1) DEFAULT NULL,
  `source_of_rudraa` varchar(255) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `resume_dir` varchar(255) DEFAULT NULL,
  `resume_size` int(11) DEFAULT NULL,
  `resume_type` varchar(80) DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `achievement` varchar(250) DEFAULT NULL,
  `other_achievement` varchar(250) DEFAULT NULL,
  `digital_experience` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `mobile`, `is_mobile_verified`, `sms_otp`, `alt_mobile`, `dob`, `location_id`, `address_line_1`, `address_line_2`, `postcode`, `latitude`, `longitude`, `pin_number`, `gender`, `grading_type_id`, `qualification`, `college_university`, `occupation_id`, `experience`, `experience_month`, `rate`, `primary_subject_id`, `secondary_subject_id`, `hours_inweekdays`, `hours_inweekend`, `is_digital_pen_tablet`, `is_internet_speed_mbps`, `source_of_rudraa`, `resume`, `resume_dir`, `resume_size`, `resume_type`, `about_me`, `created`, `modified`, `achievement`, `other_achievement`, `digital_experience`) VALUES
(1, '9ce3f85a-c06c-45e0-9dab-6b04b2a23582', NULL, NULL, NULL, '', '2018-08-06', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'B.A', 'Rajasthan University', 2, '7 year', NULL, NULL, 12, 2, '2', '2', NULL, 1, '', NULL, NULL, NULL, NULL, NULL, '2020-10-08 03:49:58', '2020-10-08 03:49:58', NULL, NULL, NULL),
(4, 'da485551-bc37-49d5-bbef-9a883f0a4166', NULL, NULL, NULL, '454564', '1989-02-05', 3, 'sanganer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BCA', 'Rajasthan University', 2, '7 year', NULL, NULL, 2, 2, '7', '6', NULL, 1, 'Facebook', '705178160227192239844.jpg', 'webroot/img/uploads/UserProfiles/resume/', 709973, 'image/jpeg', NULL, '2020-10-09 19:32:02', '2020-10-09 19:32:02', NULL, NULL, NULL),
(5, '0905cd30-dcf0-40f0-b255-4e02c1c8fe98', NULL, NULL, NULL, '', '1989-05-12', 1, 'sanganer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BCA', 'Rajasthan University', 3, '7 year', NULL, NULL, 9, 11, '4', '4', NULL, 1, 'Facebook', '797675160231346295585.docx', 'webroot/img/uploads/UserProfiles/resume/', 84146, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', NULL, '2020-10-10 07:04:22', '2020-10-10 07:04:22', NULL, NULL, NULL),
(6, '4bac188b-a4b2-4aae-a822-7f5884060969', '7665880635', NULL, NULL, NULL, NULL, 1, 'sanganer', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', '2020-10-17 10:27:51', '2020-10-17 10:27:51', NULL, NULL, NULL),
(9, '11ef64a2-337e-4b47-aa96-ad98929f32fe', '6456454564565', NULL, NULL, '', '1989-05-12', 1, 'sanganer', NULL, NULL, NULL, NULL, '4654654', NULL, NULL, 'BCA', 'Rajasthan University', 2, '7 year', NULL, NULL, 11, 12, '4', '5', NULL, 1, 'Facebook', '173075160352672821807.pdf', 'webroot/img/uploads/UserProfiles/resume/', 576322, 'application/pdf', NULL, '2020-10-24 08:05:28', '2020-10-24 08:05:28', NULL, NULL, NULL),
(15, '21210a11-8150-462f-98c8-2b5f1540d80f', '564544564456', NULL, NULL, '', '1989-05-15', 1, 'sanganer', NULL, NULL, NULL, NULL, '4654654', NULL, NULL, 'BCA', 'Rajasthan University', 3, '7 year', NULL, NULL, 4, 11, '4', '6', NULL, 1, 'Facebook', '646833160450945891204.pdf', 'webroot/img/uploads/UserProfiles/resume/', 242000, 'application/pdf', NULL, '2020-11-04 17:04:18', '2020-11-04 17:04:18', NULL, NULL, NULL),
(18, 'e0d3f2dc-2e5b-4366-8a39-7c734249083b', '7665880635', NULL, NULL, '', '2018-11-14', 1, 'sanganer', NULL, NULL, NULL, NULL, '4654654', NULL, NULL, 'B.A', 'Rajasthan University', 2, '7 year', NULL, NULL, 2, 4, '4', '6', NULL, 1, 'Facebook', '973579160459791997842.pdf', 'webroot/img/uploads/UserProfiles/resume/', 576322, 'application/pdf', NULL, '2020-11-05 17:38:39', '2020-11-05 17:38:39', NULL, NULL, NULL),
(19, '1ca1def3-5c26-47d1-b50d-8161010635fa', '8986626389', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 19:08:34', '2020-11-29 19:08:34', NULL, NULL, NULL),
(20, 'df52b934-e5a8-4663-90ea-e96d3a65af8c', '8986626389', NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-29 19:15:11', '2020-11-29 19:15:11', NULL, NULL, NULL),
(21, '9c4a4d4b-5020-4b2e-aec5-eeae2bf09ddf', '+919818679053', NULL, '1756', '', '1989-12-05', 2, 'sanganer update', NULL, NULL, NULL, NULL, '', NULL, NULL, 'BCA', 'Rajasthan University', 1, '10 year', NULL, '550.00', 6, 1, '8', '6', NULL, 1, 'Facebook', '216521160739683518613.pdf', 'webroot/img/uploads/UserProfiles/resume/', 242000, 'application/pdf', '', '2020-12-08 03:07:15', '2021-02-09 21:02:33', '', '', ''),
(22, '544417cc-ccf4-4a72-8e2d-a878f53101e1', '+919818679051', NULL, '9488', '', '2020-12-03', 1, 'E-14, Vishwas Park, Som Bazar Road,, Uttam Nagar', NULL, NULL, NULL, NULL, '', NULL, NULL, 'BE', 'MDU', 1, '12', NULL, NULL, 7, 13, '6', '6', NULL, NULL, 'friends', '191712160759163926394.docx', 'webroot/img/uploads/UserProfiles/resume/', 58543, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', NULL, '2020-12-10 09:13:59', '2021-03-14 13:23:44', '', '', ''),
(23, '08b83891-a807-4235-b8d9-b515375c0598', '9818679051', 1, NULL, '', '2020-12-04', 2, 'E-14, Vishwas Park, Som Bazar Road,, Uttam Nagar', NULL, NULL, NULL, NULL, '', NULL, NULL, 'BE', 'MDUuuuuuuu', 2, '12', NULL, '550.00', 7, 12, '6', '1', NULL, 1, 'friends', '860446160759182967319.docx', 'webroot/img/uploads/UserProfiles/resume/', 58543, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '', '2020-12-10 09:17:09', '2021-03-16 18:30:56', 'Professional', 'Digital Experience', 'Subject Matter Expert'),
(24, '7846bc06-e539-485e-b292-898bb7b95009', '+919818679051', NULL, '7388', '', '2021-03-03', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-10 10:04:21', '2021-03-13 17:03:02', NULL, NULL, NULL),
(25, 'a985a680-d89b-4b54-95e0-44567b2084d8', '7665880635', NULL, '1920', '', '1989-05-12', 2, 'sanganer update', NULL, NULL, NULL, NULL, '4654654', NULL, NULL, 'BCA', 'Rajasthan University', 2, '7', NULL, NULL, 7, 12, '5', '5', NULL, 1, 'Facebook', '284617160774733773787.docx', 'webroot/img/uploads/UserProfiles/resume/', 21768, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', NULL, '2020-12-12 04:28:57', '2021-03-13 12:32:20', '', '', ''),
(26, '216ceab7-d377-4b74-829c-f52f6fd5f091', '7665880634', NULL, '8598', NULL, NULL, 2, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2020-12-12 05:27:56', '2021-04-03 16:51:13', NULL, NULL, NULL),
(27, '1a0cf0b1-237f-4a09-9f74-18a5b778c152', '7665880635', NULL, '9627', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 07:57:56', '2020-12-12 07:57:56', NULL, NULL, NULL),
(28, 'a0aeb7ce-40ef-4d35-9fd2-1285656e74a6', '+919818679051', NULL, '6236', '', '2020-12-02', 1, 'E-14, Vishwas Park, Som Bazar Road,', NULL, NULL, NULL, NULL, '', NULL, NULL, 'BSC', 'MDU', 1, '12', NULL, '500.00', 3, 4, '2', '2', NULL, 1, 'friends', '129289160776622741631.docx', 'webroot/img/uploads/UserProfiles/resume/', 58543, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '', '2020-12-12 09:43:47', '2021-03-14 13:18:07', '', '', ''),
(29, '9307365e-d9f6-486d-ae34-435456d7fa62', '9818679051', NULL, '9694', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-12 09:52:12', '2020-12-12 09:52:12', NULL, NULL, NULL),
(30, '119aa6e1-5751-4a12-b734-b2110bdc06af', '8056142913', NULL, '8492', '', '1995-11-29', NULL, '18 Parthasarathy Street Muthamizh Nagar Pammal Chennai', NULL, NULL, NULL, NULL, '600075', NULL, NULL, 'Bachelor in Engineering', 'Anna University', 2, '3', NULL, NULL, 4, 3, '3', '3', NULL, 1, 'Youtube', '550770160863054413386.docx', 'webroot/img/uploads/UserProfiles/resume/', 59512, 'application/octet-stream', NULL, '2020-12-22 15:19:04', '2020-12-22 15:19:04', NULL, NULL, NULL),
(31, 'ccbd5d8a-6fa4-4dd1-8ab1-80b3996e7b34', '8604123471', NULL, '9273', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-25 09:25:17', '2020-12-25 09:25:17', NULL, NULL, NULL),
(32, '941c144c-e69b-4b6d-8c6b-27c2b044617a', '9598799857', NULL, '5490', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-10 21:18:43', '2021-01-10 21:18:43', NULL, NULL, NULL),
(33, '46ad086f-9249-4b82-b8ad-c68efde461dc', '9598799857', NULL, '6130', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-10 21:21:02', '2021-01-10 21:21:02', NULL, NULL, NULL),
(34, 'bf7b91bc-c0c6-4ca1-9203-5a8dfd1b2c6b', '9598799857', NULL, '6610', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-11 09:35:43', '2021-01-11 09:35:43', NULL, NULL, NULL),
(35, 'aea0b124-c4fb-421c-9521-32d23a738295', '9598799857', NULL, '7459', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 10:23:57', '2021-01-13 10:23:57', NULL, NULL, NULL),
(36, '97fe9e50-b386-4ceb-96a4-fcde66b552a1', '8240356612', NULL, '4272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:37:36', '2021-01-21 18:37:36', NULL, NULL, NULL),
(37, 'f1ecb1e6-c4a3-4a15-aaea-2d329093afad', '8240356612', NULL, '2751', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:46:28', '2021-01-21 18:46:28', NULL, NULL, NULL),
(38, '0c99bacd-3b03-489a-a04d-53013d8716f0', '8420435811', NULL, '4818', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-21 18:51:15', '2021-01-21 18:51:15', NULL, NULL, NULL),
(39, '1f2491e5-5451-45af-810c-9e0b7e4a903b', '8802757801', NULL, '1989', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 20:46:36', '2021-02-06 20:46:36', NULL, NULL, NULL),
(40, '191b0a3d-0417-46d3-9d1e-cdc76d48b0d3', '8802757801', NULL, '8177', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-06 20:51:07', '2021-02-06 20:51:07', NULL, NULL, NULL),
(41, '8f49a533-4077-44e4-bb4c-e5f0d6dd4033', '+9050615085', NULL, '3342', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-11 13:40:05', '2021-02-11 13:40:05', NULL, NULL, NULL),
(42, '96091ff1-cd1c-4c2d-96ea-44c27170327c', '8742102590', NULL, '6763', '', '1993-08-09', 1, 'A71', NULL, NULL, NULL, NULL, '302020', NULL, NULL, 'BE', 'RTU', 1, '4', 6, NULL, 1, 2, '4', '4', NULL, 1, 'FB', '412543161320524923489.pdf', 'webroot/img/uploads/UserProfiles/resume/', 6541, 'application/pdf', NULL, '2021-02-13 14:04:09', '2021-04-04 00:35:00', '', '', ''),
(43, '27f2db4f-33ec-4ede-b037-dc3f56703108', '9966022100', NULL, '2641', '', '1991-06-12', 1, 'A71', NULL, NULL, NULL, NULL, '302021', NULL, NULL, 'ME', 'RTU', 1, '4', NULL, NULL, 2, 4, '3', '4', NULL, 1, 'TECH', '566735161320548775455.pdf', 'webroot/img/uploads/UserProfiles/resume/', 6541, 'application/pdf', NULL, '2021-02-13 14:08:07', '2021-03-12 23:55:59', '', '', ''),
(44, '169a68a6-12bd-46da-8e96-7582bfcc653a', '9999999999', NULL, '5651', '', '2021-02-11', 1, 'delhi', NULL, NULL, NULL, NULL, '110053', NULL, NULL, 'BE', 'MDU', 2, '12', NULL, NULL, 12, 6, '1', '7', NULL, 1, 'sdsd', '709265161321088574075.docx', 'webroot/img/uploads/UserProfiles/resume/', 3284347, 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '', '2021-02-13 15:38:05', '2021-03-14 13:28:58', 'Technology', 'Specialist', 'Professinal'),
(45, '1aed3c70-08c4-4f6a-b8c4-85da4b8b5d42', '6393902105', NULL, '5092', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-15 12:16:07', '2021-02-15 12:16:07', NULL, NULL, NULL),
(48, '09b27773-e5a1-442b-b6de-afd8cfcca3b0', '9994360045', NULL, '3809', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-25 13:04:29', '2021-02-25 13:04:29', NULL, NULL, NULL),
(49, '1d04b6cf-f9d6-404f-ae57-b670e17d50cc', '+919835620170', NULL, '6490', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-01 22:33:11', '2021-03-01 22:33:11', NULL, NULL, NULL),
(50, 'e6371f79-6800-4682-aa22-61137782761c', '7077090902', NULL, '3389', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-02 08:15:59', '2021-03-02 08:15:59', NULL, NULL, NULL),
(51, '89921904-eadc-429b-b9e4-771ae51a71e7', '9818679051', NULL, '8259', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 17:38:50', '2021-03-13 17:38:50', NULL, NULL, NULL),
(52, '57c05907-75d1-4f97-9cf8-ae5b988f1e64', '5465465465', NULL, '7677', '', '1989-05-12', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 22:12:02', '2021-03-13 22:12:02', NULL, NULL, NULL),
(53, '92da02c7-25e5-4a8c-b89f-188bd36721f1', '7665880635', NULL, '7884', '', '1989-05-12', 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-13 22:14:33', '2021-03-14 09:29:01', NULL, NULL, NULL),
(55, 'f93f4a43-ea41-41f7-950c-62511637ce63', '5465465465', NULL, '6129', '', '2010-01-12', 2, '', NULL, NULL, NULL, NULL, '', NULL, NULL, 'BCA', 'RTU', 2, '2', 2, NULL, 2, 2, '2', '2', NULL, 1, 'loremlipsss', '909464161572356034353.pdf', 'webroot/img/uploads/UserProfiles/resume/', 44930, 'application/pdf', NULL, '2021-03-14 17:36:00', '2021-03-14 17:36:00', NULL, NULL, NULL),
(56, '715d6703-9d56-4192-8494-e3e69a19015a', '7991164505', NULL, '3470', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-19 11:09:35', '2021-03-19 11:09:35', NULL, NULL, NULL),
(57, '7bf7159b-ec38-4e38-8a5c-c83ffbfad23b', '9818679051', NULL, '5961', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-22 12:57:36', '2021-03-22 13:59:51', NULL, NULL, NULL),
(58, '388fa280-1a41-4ab3-9736-980df3ce0abb', '0563285977', NULL, '2739', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-24 20:45:28', '2021-03-24 20:45:28', NULL, NULL, NULL),
(59, '2c9d292e-0661-485b-883a-1ac7b822ccfe', '09921088995', NULL, '1217', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-11 08:55:25', '2021-04-11 08:55:25', NULL, NULL, NULL),
(60, '9c7cdfe9-4bdd-4bcc-ba92-54fcd6350c90', '9035418372', NULL, '6206', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-15 08:37:28', '2021-04-15 08:37:28', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `token_type` varchar(100) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `user_type`, `token_type`, `email`, `token`, `created`, `modified`) VALUES
(3, 3, 'admin_users', 'forgot-password', NULL, '302c04ef-19e7-4960-9e13-ce58564ed1e7', '2020-07-13 03:55:51', '2020-07-13 03:55:51'),
(4, 3, 'admin_users', 'forgot-password', NULL, '9c94fee3-8f1a-4789-a366-0af05d85fc98', '2020-07-13 03:58:18', '2020-07-13 03:58:18'),
(5, 2, 'admin_users', 'forgot-password', NULL, '169f6b98-f900-4eca-bd2d-2ee9e09a2be8', '2020-07-13 16:05:57', '2020-07-13 16:05:58'),
(6, 2, 'admin_users', 'forgot-password', NULL, 'e7f0dca4-d1d3-481c-a155-d464fd6093f0', '2020-07-13 17:10:09', '2020-07-13 17:10:09'),
(7, 2, 'admin_users', 'forgot-password', NULL, '7b443107-2032-495c-b0f7-cf10a9f49cdf', '2020-07-13 17:11:38', '2020-07-13 17:11:38'),
(8, 2, 'admin_users', 'forgot-password', NULL, '8591dd05-d159-471e-8ff1-b9e01ed168ce', '2020-07-13 17:12:12', '2020-07-13 17:12:12'),
(9, 2, 'admin_users', 'forgot-password', NULL, '8c7a1ce5-64df-4635-9d59-10816e2c6d90', '2020-07-13 17:14:04', '2020-07-13 17:14:04'),
(10, 2, 'admin_users', 'forgot-password', NULL, '60599e2f-6245-4726-9c2a-efc0de286e21', '2020-07-13 17:20:18', '2020-07-13 17:20:18'),
(11, 2, 'admin_users', 'forgot-password', NULL, '42683a9a-d158-4856-aa48-81844f5d675c', '2020-07-13 17:20:51', '2020-07-13 17:20:51'),
(13, 2, 'admin_users', 'forgot-password', NULL, 'eeb07e05-0ae0-497c-a701-844e3f37aef1', '2020-08-01 11:31:55', '2020-08-01 11:31:55'),
(14, 4, 'admin_users', 'create-password', NULL, '00f2ff5e-2922-42a0-a9dd-afa105d7a473', '2020-08-01 11:32:42', '2020-08-01 11:32:42'),
(15, 5, 'admin_users', 'create-password', NULL, '697ef392-aebe-4332-be36-1009190e11f5', '2020-08-01 11:53:07', '2020-08-01 11:53:07'),
(18, 5, 'admin_users', 'create-password', NULL, '06bd67c4-1f1b-44d1-9383-2b701891e034', '2020-08-01 12:09:56', '2020-08-01 12:09:56'),
(19, 6, 'admin_users', 'create-password', NULL, '23406152-3be4-40a9-b4a9-5ac6cf39731d', '2020-10-09 15:47:16', '2020-10-09 15:47:16'),
(20, 7, 'admin_users', 'create-password', NULL, '867cb0cd-817c-443d-8c97-826a050e9775', '2020-10-10 07:32:35', '2020-10-10 07:32:35'),
(21, 8, 'admin_users', 'create-password', NULL, 'c693face-314f-461e-8d2a-c6fe77923a3b', '2020-10-10 07:33:15', '2020-10-10 07:33:15'),
(22, 9, 'admin_users', 'create-password', NULL, '2b64f334-c9e1-4584-be2b-43106ad94a8a', '2020-10-10 07:37:34', '2020-10-10 07:37:34'),
(23, 10, 'admin_users', 'create-password', NULL, '6413e6f9-64b2-4435-9be5-beab38d9dc85', '2020-10-10 07:38:05', '2020-10-10 07:38:05'),
(24, 11, 'admin_users', 'create-password', NULL, 'e35fb169-cefe-47b9-ae48-c8007ad33635', '2020-10-20 18:40:23', '2020-10-20 18:40:23'),
(25, 12, 'admin_users', 'create-password', NULL, 'b967e7c3-63cf-41c4-9c0c-a4dadbe064a0', '2020-10-22 18:01:51', '2020-10-22 18:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `zoom_meetings`
--

CREATE TABLE `zoom_meetings` (
  `id` int(11) NOT NULL,
  `user_id` char(36) NOT NULL,
  `session_booking_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `uuid` varchar(100) DEFAULT NULL,
  `meeting_id` bigint(50) DEFAULT NULL,
  `host_id` varchar(100) DEFAULT NULL,
  `host_email` varchar(200) DEFAULT NULL,
  `topic` text NOT NULL,
  `type` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `timezone` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `start_url` varchar(300) DEFAULT NULL,
  `join_url` varchar(300) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `h323_password` varchar(20) DEFAULT NULL,
  `pstn_password` varchar(20) DEFAULT NULL,
  `encrypted_password` varchar(200) DEFAULT NULL,
  `settings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zoom_meetings`
--

INSERT INTO `zoom_meetings` (`id`, `user_id`, `session_booking_id`, `course_id`, `uuid`, `meeting_id`, `host_id`, `host_email`, `topic`, `type`, `status`, `start_time`, `duration`, `timezone`, `created_at`, `start_url`, `join_url`, `password`, `h323_password`, `pstn_password`, `encrypted_password`, `settings`) VALUES
(2, '216ceab7-d377-4b74-829c-f52f6fd5f091', 7, NULL, 'n7Fr77ajQPm5Rz7L92NshQ==', 82817096842, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'How mobile phone works', 2, 'end', '2021-03-13 06:21:48', 60, 'Asia/Calcutta', '2021-03-13 06:21:48', 'https://us02web.zoom.us/s/82817096842?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJkMWxXRTZwVVNtVTlULWNya0lPRmJSc3BhUVlMOHhxWGsxRW5mS3VTMldrLkFHLl95aDVva', 'https://us02web.zoom.us/j/82817096842?pwd=Sk4wcXNzekQxVk4yK21XMGlDZWNwZz09', '616508', '616508', '616508', 'Sk4wcXNzekQxVk4yK21XMGlDZWNwZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(3, '216ceab7-d377-4b74-829c-f52f6fd5f091', 8, NULL, 'QG2nbW0GShG07GmNJcmlEA==', 84403979737, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is palindrome', 2, 'end', '2021-03-13 06:30:54', 60, 'Asia/Calcutta', '2021-03-13 06:21:49', 'https://us02web.zoom.us/s/84403979737?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJDOHgteFBJVUV6SnFtWWo2UG55MVFoOEJ6UC1MZ3dvMlJJc3JhbzYtXy13LkFHLkZkWE5we', 'https://us02web.zoom.us/j/84403979737?pwd=VVI3M0YrZ05PaWpMSGtZRU1sQTcxUT09', '616508', '616508', '616508', 'VVI3M0YrZ05PaWpMSGtZRU1sQTcxUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(4, '216ceab7-d377-4b74-829c-f52f6fd5f091', 9, NULL, '2uQCUXg/T+u/N0xbKSCETg==', 84653870341, 'uXtjh_DPTD6CT99QVHbwrw', 'rohit08890@gmail.com', 'biometric attendance', 2, 'end', '2021-03-13 06:08:56', 622, 'Asia/Calcutta', '2021-03-13 06:21:49', 'https://us02web.zoom.us/s/84653870341?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJ1WHRqaF9EUFRENkNUOTlRVkhid3J3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiI2ODB6TnRTUmpMUUFwWlVVd3hJWGhfeXdLamo2RjFwQ3RXT0xNT1Z4UXB3LkFHLnpJMDFSY', 'https://us02web.zoom.us/j/84653870341?pwd=R09FRURPelZSWXhLMi80enlCT3hzZz09', '616509', '616509', '616509', 'R09FRURPelZSWXhLMi80enlCT3hzZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(6, '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 12, 'j/sPSiGZTda7tpabDqoI0Q==', 81795135046, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is gravity', 2, 'end', '2021-03-13 06:39:42', 60, 'Asia/Calcutta', '2021-03-13 06:39:43', 'https://us02web.zoom.us/s/81795135046?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJubE9jQ1ZVSlJKbjBZX2pwWldNNUdZRncwc2xySmI2ZlJpVFNoRWFGaWZRLkFHLm5WeHNac', 'https://us02web.zoom.us/j/81795135046?pwd=L0wxZGNIQkdpN052RGZTbEtsRWNvQT09', '617582', '617582', '617582', 'L0wxZGNIQkdpN052RGZTbEtsRWNvQT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(7, '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 13, 'yh5XvP+cR5yfpQvDObwViA==', 85954488719, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'How to become experienced PHP Developer', 2, 'end', '2021-03-13 06:39:43', 60, 'Asia/Calcutta', '2021-03-13 06:39:43', 'https://us02web.zoom.us/s/85954488719?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJTcDRLZG9DcXo1bVpYVVZoblZnYUFodG9sUkVfUkZiSmtxSldWa2FzTFZBLkFHLklhR3NZc', 'https://us02web.zoom.us/j/85954488719?pwd=YmdBREk1KzIrV0lDbUNZY2o3WHJ3Zz09', '617583', '617583', '617583', 'YmdBREk1KzIrV0lDbUNZY2o3WHJ3Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(8, '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 13, 'yh5XvP+cR5yfpQvDObwViA==', 85954488719, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'How to become experienced PHP Developer', 2, 'end', '2021-03-13 06:39:43', 60, 'Asia/Calcutta', '2021-03-13 06:39:43', 'https://us02web.zoom.us/s/85954488719?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJTcDRLZG9DcXo1bVpYVVZoblZnYUFodG9sUkVfUkZiSmtxSldWa2FzTFZBLkFHLklhR3NZc', 'https://us02web.zoom.us/j/85954488719?pwd=YmdBREk1KzIrV0lDbUNZY2o3WHJ3Zz09', '617583', '617583', '617583', 'YmdBREk1KzIrV0lDbUNZY2o3WHJ3Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(9, '96091ff1-cd1c-4c2d-96ea-44c27170327c', NULL, 16, 'zkTORvSvTVqkaD8kIyDj8Q==', 83875474689, 'uXtjh_DPTD6CT99QVHbwrw', 'rohit08890@gmail.com', 'Web Developer', 2, 'end', '2021-03-13 06:13:42', 60, 'Asia/Calcutta', '2021-03-13 06:39:43', 'https://us02web.zoom.us/s/83875474689?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJ1WHRqaF9EUFRENkNUOTlRVkhid3J3IiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiIySGFnMjBNNzQwWXh6TVpKVWJ0a3gxbGZPclVTbHlrS0hWcnhWVkVUS1lBLkFHLjFIX1pwN', 'https://us02web.zoom.us/j/83875474689?pwd=V1ZiTnlvbFZ6VU5HWm0vL3FYdkxaZz09', '617583', '617583', '617583', 'V1ZiTnlvbFZ6VU5HWm0vL3FYdkxaZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(13, '216ceab7-d377-4b74-829c-f52f6fd5f091', 10, NULL, 'IGkG0NAGSyC9+Jf9Hv+TVw==', 81832077933, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-13 11:30:00', 60, 'Asia/Calcutta', '2021-03-13 11:12:43', 'https://us02web.zoom.us/s/81832077933?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJQUUlaWFNNbTBMWmE4YTRUaHo4NG1rQ0JYYjNkeng1TW02SXNCS3BTNlZVLkFHLnVnQm9jT', 'https://us02web.zoom.us/j/81832077933?pwd=WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '633962', '633962', '633962', 'WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(14, '216ceab7-d377-4b74-829c-f52f6fd5f091', 10, NULL, 'IGkG0NAGSyC9+Jf9Hv+TVw==', 81832077933, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-13 11:30:00', 60, 'Asia/Calcutta', '2021-03-13 11:12:43', 'https://us02web.zoom.us/s/81832077933?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJQUUlaWFNNbTBMWmE4YTRUaHo4NG1rQ0JYYjNkeng1TW02SXNCS3BTNlZVLkFHLnVnQm9jT', 'https://us02web.zoom.us/j/81832077933?pwd=WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '633962', '633962', '633962', 'WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(15, '216ceab7-d377-4b74-829c-f52f6fd5f091', 10, NULL, 'IGkG0NAGSyC9+Jf9Hv+TVw==', 81832077933, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-13 11:30:00', 60, 'Asia/Calcutta', '2021-03-13 11:12:43', 'https://us02web.zoom.us/s/81832077933?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJQUUlaWFNNbTBMWmE4YTRUaHo4NG1rQ0JYYjNkeng1TW02SXNCS3BTNlZVLkFHLnVnQm9jT', 'https://us02web.zoom.us/j/81832077933?pwd=WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '633962', '633962', '633962', 'WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(16, '216ceab7-d377-4b74-829c-f52f6fd5f091', 10, NULL, 'IGkG0NAGSyC9+Jf9Hv+TVw==', 81832077933, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-13 11:30:00', 60, 'Asia/Calcutta', '2021-03-13 11:12:43', 'https://us02web.zoom.us/s/81832077933?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJQUUlaWFNNbTBMWmE4YTRUaHo4NG1rQ0JYYjNkeng1TW02SXNCS3BTNlZVLkFHLnVnQm9jT', 'https://us02web.zoom.us/j/81832077933?pwd=WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '633962', '633962', '633962', 'WDEyUDN1Nk0wbkN1ZUE4MjQzUDlHZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(17, '08b83891-a807-4235-b8d9-b515375c0598', 11, NULL, '1Rc7Ff+dTyiG5FInp82mIQ==', 86931706511, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data structure', 2, 'end', '2021-03-14 11:30:56', 59, 'Asia/Calcutta', '2021-03-13 11:47:22', 'https://us02web.zoom.us/s/86931706511?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJIZ2sybkxCYlIxVks4RnhZTXQ1RnNETzhQR1J5a3ZudmlWYXpXUFI2WmwwLkFHLklOYkhyZ', 'https://us02web.zoom.us/j/86931706511?pwd=d0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '636042', '636042', '636042', 'd0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(18, '08b83891-a807-4235-b8d9-b515375c0598', 11, NULL, '1Rc7Ff+dTyiG5FInp82mIQ==', 86931706511, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data structure', 2, 'end', '2021-03-14 11:30:56', 59, 'Asia/Calcutta', '2021-03-13 11:47:22', 'https://us02web.zoom.us/s/86931706511?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJIZ2sybkxCYlIxVks4RnhZTXQ1RnNETzhQR1J5a3ZudmlWYXpXUFI2WmwwLkFHLklOYkhyZ', 'https://us02web.zoom.us/j/86931706511?pwd=d0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '636042', '636042', '636042', 'd0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(19, '08b83891-a807-4235-b8d9-b515375c0598', 11, NULL, '1Rc7Ff+dTyiG5FInp82mIQ==', 86931706511, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data structure', 2, 'end', '2021-03-14 11:30:56', 59, 'Asia/Calcutta', '2021-03-13 11:47:22', 'https://us02web.zoom.us/s/86931706511?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJIZ2sybkxCYlIxVks4RnhZTXQ1RnNETzhQR1J5a3ZudmlWYXpXUFI2WmwwLkFHLklOYkhyZ', 'https://us02web.zoom.us/j/86931706511?pwd=d0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '636042', '636042', '636042', 'd0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(20, '08b83891-a807-4235-b8d9-b515375c0598', 11, NULL, '1Rc7Ff+dTyiG5FInp82mIQ==', 86931706511, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data structure', 2, 'end', '2021-03-14 11:30:56', 59, 'Asia/Calcutta', '2021-03-13 11:47:22', 'https://us02web.zoom.us/s/86931706511?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJIZ2sybkxCYlIxVks4RnhZTXQ1RnNETzhQR1J5a3ZudmlWYXpXUFI2WmwwLkFHLklOYkhyZ', 'https://us02web.zoom.us/j/86931706511?pwd=d0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '636042', '636042', '636042', 'd0UvbGo2MDA1Vi8wMnJaVWhmaGI0Zz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(45, '08b83891-a807-4235-b8d9-b515375c0598', NULL, 8, 't0vAPSckTkyBKQUe9WGSNA==', 82571405826, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'How to make a space craft', 2, 'end', '2021-03-13 12:05:37', 60, 'Asia/Calcutta', '2021-03-13 12:05:37', 'https://us02web.zoom.us/s/82571405826?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiI0X2lqdVNDbzJ6VGQ5aTdBdnllY3NKUzEtWmRzdS1JMWo3ZUgtSFduVC1FLkFHLnJneExLQ', 'https://us02web.zoom.us/j/82571405826?pwd=QWFRQ29aZXM3b1RjNkZ2SU4vYnRWUT09', '637137', '637137', '637137', 'QWFRQ29aZXM3b1RjNkZ2SU4vYnRWUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(46, '08b83891-a807-4235-b8d9-b515375c0598', NULL, 14, 'soDQyvuNSdO9/AjTJ0a8Tg==', 86277084586, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'Join teaching bharat', 2, 'end', '2021-03-13 12:30:09', 60, 'Asia/Calcutta', '2021-03-13 12:05:37', 'https://us02web.zoom.us/s/86277084586?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJEQVlSRC0ybzNENnJ4YTJ4MXd2R0s2YXE1TGNuX1dKeHJGa1MzaHNnSDdZLkFHLnhNWU94a', 'https://us02web.zoom.us/j/86277084586?pwd=SUZYMzdmNzNEUEpQa2JKOXBaTll1UT09', '637137', '637137', '637137', 'SUZYMzdmNzNEUEpQa2JKOXBaTll1UT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(47, '08b83891-a807-4235-b8d9-b515375c0598', NULL, 17, 'WHwPvOFbShWymnW81WarFg==', 84941613921, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is gravity advanced tutorial', 2, 'end', '2021-03-13 12:30:41', 60, 'Asia/Calcutta', '2021-03-13 12:05:37', 'https://us02web.zoom.us/s/84941613921?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiJ1WFJLUWd4dUJ2TGItZ1hUbnZTSVJEdGVfUkxyQTZNSFZrVTd2YlBmVmlnLkFHLmhuU1ZmM', 'https://us02web.zoom.us/j/84941613921?pwd=TnQ0aG5QeGFZNFdjcTJUSlFDSjhQZz09', '637137', '637137', '637137', 'TnQ0aG5QeGFZNFdjcTJUSlFDSjhQZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(50, '169a68a6-12bd-46da-8e96-7582bfcc653a', 14, NULL, '+iEIZBY0SqiuyihA0NPYtQ==', 87683730898, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is queue', 2, 'end', '2021-03-13 20:30:36', 120, 'Asia/Calcutta', '2021-03-13 18:27:38', 'https://us02web.zoom.us/s/87683730898?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6IkVTZTdRbjdNeEJkU2lmbE9yRHdsNWxoeWNxVGJBaXRLTXBSNWtZR1J6VXMuQmdZZ2FGU', 'https://us02web.zoom.us/j/87683730898?pwd=U0VoY3RsS0JNZWdrNHc1SUJ1S1VwUT09', '660058', '660058', '660058', 'U0VoY3RsS0JNZWdrNHc1SUJ1S1VwUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(51, '169a68a6-12bd-46da-8e96-7582bfcc653a', 14, NULL, '+iEIZBY0SqiuyihA0NPYtQ==', 87683730898, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is queue', 2, 'end', '2021-03-13 20:30:36', 120, 'Asia/Calcutta', '2021-03-13 18:27:38', 'https://us02web.zoom.us/s/87683730898?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6IkVTZTdRbjdNeEJkU2lmbE9yRHdsNWxoeWNxVGJBaXRLTXBSNWtZR1J6VXMuQmdZZ2FGU', 'https://us02web.zoom.us/j/87683730898?pwd=U0VoY3RsS0JNZWdrNHc1SUJ1S1VwUT09', '660058', '660058', '660058', 'U0VoY3RsS0JNZWdrNHc1SUJ1S1VwUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(76, '169a68a6-12bd-46da-8e96-7582bfcc653a', 15, NULL, 'MaQTOD+bQOCCPYGaJW5flQ==', 87108380053, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is Mean stack', 2, 'end', '2021-03-14 08:30:55', 60, 'Asia/Calcutta', '2021-03-14 08:41:57', 'https://us02web.zoom.us/s/87108380053?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6ImFKUXZOcWNSTTQzZ0lhQnNZSENfOHllYVhMMHVMTjFxQXl1WUFzUVhMUTAuQmdZZ2FGU', 'https://us02web.zoom.us/j/87108380053?pwd=VGptY1hRTHljZVlhQi96akJFNjJlZz09', '711316', '711316', '711316', 'VGptY1hRTHljZVlhQi96akJFNjJlZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(77, '169a68a6-12bd-46da-8e96-7582bfcc653a', 15, NULL, 'MaQTOD+bQOCCPYGaJW5flQ==', 87108380053, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is Mean stack', 2, 'end', '2021-03-14 08:30:55', 60, 'Asia/Calcutta', '2021-03-14 08:41:57', 'https://us02web.zoom.us/s/87108380053?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6ImFKUXZOcWNSTTQzZ0lhQnNZSENfOHllYVhMMHVMTjFxQXl1WUFzUVhMUTAuQmdZZ2FGU', 'https://us02web.zoom.us/j/87108380053?pwd=VGptY1hRTHljZVlhQi96akJFNjJlZz09', '711316', '711316', '711316', 'VGptY1hRTHljZVlhQi96akJFNjJlZz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(78, '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 18, 'X07WsAdDStm/iKKpnWQ9YA==', 88959726277, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is nodejs', 2, 'end', '2021-03-14 11:30:53', 60, 'Asia/Calcutta', '2021-03-14 08:41:57', 'https://us02web.zoom.us/s/88959726277?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6Im9tMGdZN2ZPUHBVS1YwaVdrYWstRV9DQ1FkUlFqOWpvUkpVa2hjNGxrdm8uQmdZZ2FGU', 'https://us02web.zoom.us/j/88959726277?pwd=TnRQZllXSU1oYit5OHBFcHo1RERHUT09', '711317', '711317', '711317', 'TnRQZllXSU1oYit5OHBFcHo1RERHUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(79, '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 19, '2/8xNhLmQTy3bPexYNX0Bw==', 83163523979, 'U3ck_QDgSEar7ZpMvVoD0Q', 'vijsunaina1@gmail.com', 'What is angular in MEAN stack', 2, 'end', '2021-03-14 12:30:43', 60, 'Asia/Calcutta', '2021-03-14 08:41:57', 'https://us02web.zoom.us/s/83163523979?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiJVM2NrX1FEZ1NFYXI3WnBNdlZvRDBRIiwiaXNzIjoid2ViIiwic3R5IjoxMDAsIndjZCI6InVzMDIiLCJjbHQiOjAsInN0ayI6IlBtWDlBMjZiUkxiSjBvaS1FcEpWa3c3UHpBVll1eklnMXpCNldVUlJyX3cuQmdZZ2FGU', 'https://us02web.zoom.us/j/83163523979?pwd=dGFjQTZpQU8yUnQ2Nkk1Wk01ZHZwdz09', '711317', '711317', '711317', 'dGFjQTZpQU8yUnQ2Nkk1Wk01ZHZwdz09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"cloud\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(80, '169a68a6-12bd-46da-8e96-7582bfcc653a', NULL, 20, '2BTA7H7kTWSE1Ftn9g8sHw==', 89200387941, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is reactjs in MERN stack', 2, 'end', '2021-03-14 08:15:53', 60, 'Asia/Calcutta', '2021-03-14 08:41:58', 'https://us02web.zoom.us/s/89200387941?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiIzZGtCSWE0blgtWUxKLUZySHRKT0paS1NkY096bXFTSkRaRnNwMzRrSVRFLkFHLkJQVWFNb', 'https://us02web.zoom.us/j/89200387941?pwd=a2RDeFVlQjJFYnF2eXpnYTc1TjRvUT09', '711318', '711318', '711318', 'a2RDeFVlQjJFYnF2eXpnYTc1TjRvUT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(82, '216ceab7-d377-4b74-829c-f52f6fd5f091', 16, NULL, 'WZf7ZRGjS1eV+TE8mRGJSQ==', 86558045584, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data binding in angular', 2, 'end', '2021-03-19 05:42:59', 227, 'Asia/Calcutta', '2021-03-18 05:44:13', 'https://us02web.zoom.us/s/86558045584?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiIxdno1YlZNYkdBQVY5OGdDdnlQcVdYMlRMZDAxZWpfOFNWdWRSLUJRNXpVLkFHLk1TRGhVZ', 'https://us02web.zoom.us/j/86558045584?pwd=MFV1b3NQSWlZRTZDbGM1dUw4QnJFQT09', '046252', '046252', '046252', 'MFV1b3NQSWlZRTZDbGM1dUw4QnJFQT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(83, '216ceab7-d377-4b74-829c-f52f6fd5f091', 16, NULL, 'WZf7ZRGjS1eV+TE8mRGJSQ==', 86558045584, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is data binding in angular', 2, 'end', '2021-03-19 05:42:59', 227, 'Asia/Calcutta', '2021-03-18 05:44:13', 'https://us02web.zoom.us/s/86558045584?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiIxdno1YlZNYkdBQVY5OGdDdnlQcVdYMlRMZDAxZWpfOFNWdWRSLUJRNXpVLkFHLk1TRGhVZ', 'https://us02web.zoom.us/j/86558045584?pwd=MFV1b3NQSWlZRTZDbGM1dUw4QnJFQT09', '046252', '046252', '046252', 'MFV1b3NQSWlZRTZDbGM1dUw4QnJFQT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(86, '08b83891-a807-4235-b8d9-b515375c0598', 17, NULL, 'C2n3g+X2RLa1Ca4rKUa+qw==', 84288871908, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-19 07:30:51', 60, 'Asia/Calcutta', '2021-03-18 06:28:08', 'https://us02web.zoom.us/s/84288871908?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiI2Z0taVW5kelF4cHFGYzZGLW9WaVctbGM0V3UyOG4xQ0o4VUtrcnM3cWZJLkFHLjZkVmM1Z', 'https://us02web.zoom.us/j/84288871908?pwd=SVJzQVdTYWFqek5rWHN2cUoyMldjQT09', '048888', '048888', '048888', 'SVJzQVdTYWFqek5rWHN2cUoyMldjQT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}'),
(87, '08b83891-a807-4235-b8d9-b515375c0598', 17, NULL, 'C2n3g+X2RLa1Ca4rKUa+qw==', 84288871908, '6ywsIFwgRhi0zsj_sg1ozA', 'naveenbhola@gmail.com', 'What is factorial', 2, 'end', '2021-03-19 07:30:51', 60, 'Asia/Calcutta', '2021-03-18 06:28:08', 'https://us02web.zoom.us/s/84288871908?zak=eyJ6bV9za20iOiJ6bV9vMm0iLCJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjbGllbnQiLCJ1aWQiOiI2eXdzSUZ3Z1JoaTB6c2pfc2cxb3pBIiwiaXNzIjoid2ViIiwic3R5IjoxLCJ3Y2QiOiJ1czAyIiwiY2x0IjowLCJzdGsiOiI2Z0taVW5kelF4cHFGYzZGLW9WaVctbGM0V3UyOG4xQ0o4VUtrcnM3cWZJLkFHLjZkVmM1Z', 'https://us02web.zoom.us/j/84288871908?pwd=SVJzQVdTYWFqek5rWHN2cUoyMldjQT09', '048888', '048888', '048888', 'SVJzQVdTYWFqek5rWHN2cUoyMldjQT09', '{\"host_video\":false,\"participant_video\":false,\"cn_meeting\":false,\"in_meeting\":false,\"join_before_host\":true,\"jbh_time\":0,\"mute_upon_entry\":false,\"watermark\":false,\"use_pmi\":false,\"approval_type\":2,\"audio\":\"voip\",\"auto_recording\":\"none\",\"enforce_login\":false,\"enforce_login_domains\":\"\",\"alternative_hosts\":\"\",\"close_registration\":false,\"show_share_button\":false,\"allow_multiple_devices\":false,\"registrants_confirmation_email\":true,\"waiting_room\":true,\"request_permission_to_unmute_participants\":false,\"registrants_email_notification\":true,\"meeting_authentication\":false,\"encryption_type\":\"enhanced_encryption\",\"approved_or_denied_countries_or_regions\":{\"enable\":false},\"breakout_room\":{\"enable\":false},\"device_testing\":false}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EMAIL_INDEX` (`email`,`listing_id`) USING BTREE;

--
-- Indexes for table `admin_users_roles`
--
ALTER TABLE `admin_users_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_ROLE_ID` (`role_id`),
  ADD KEY `BY_ADMIN_USER_ID` (`admin_user_id`);

--
-- Indexes for table `admin_user_manager_phinxlog`
--
ALTER TABLE `admin_user_manager_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`,`listing_id`) USING BTREE,
  ADD KEY `listing_id` (`listing_id`),
  ADD KEY `admin_user_id` (`admin_user_id`),
  ADD KEY `slug_2` (`slug`);

--
-- Indexes for table `announcement_phinxlog`
--
ALTER TABLE `announcement_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `audit_stash_phinxlog`
--
ALTER TABLE `audit_stash_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cake_d_c_users_phinxlog`
--
ALTER TABLE `cake_d_c_users_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_phinxlog`
--
ALTER TABLE `cms_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_COURSES_ID` (`listing_id`),
  ADD KEY `BY_COURSE_BOARD_ID` (`board_id`),
  ADD KEY `BY_COURSE_SUBJECT_ID` (`subject_id`),
  ADD KEY `course_user_index` (`user_id`),
  ADD KEY `course_slug_inx` (`slug`);

--
-- Indexes for table `courses_phinxlog`
--
ALTER TABLE `courses_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_chapters_fk` (`course_id`);

--
-- Indexes for table `course_curriculums`
--
ALTER TABLE `course_curriculums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_watchings`
--
ALTER TABLE `course_watchings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_hooks`
--
ALTER TABLE `email_hooks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`) USING BTREE;

--
-- Indexes for table `email_manager_phinxlog`
--
ALTER TABLE `email_manager_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `email_preferences`
--
ALTER TABLE `email_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_EMAIL_HOOK_ID` (`email_hook_id`),
  ADD KEY `BY_EMAIL_PREFERENCE_ID` (`email_preference_id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_comments`
--
ALTER TABLE `enquiry_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_phinxlog`
--
ALTER TABLE `enquiry_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `enquiry_statuses`
--
ALTER TABLE `enquiry_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`,`listing_id`) USING BTREE;

--
-- Indexes for table `events_phinxlog`
--
ALTER TABLE `events_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event_documents`
--
ALTER TABLE `event_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_social_links`
--
ALTER TABLE `event_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grading_types`
--
ALTER TABLE `grading_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_GRADING_TYPE_ID` (`listing_id`);

--
-- Indexes for table `institution_types`
--
ALTER TABLE `institution_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_phinxlog`
--
ALTER TABLE `language_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `lanuage_manager_phinxlog`
--
ALTER TABLE `lanuage_manager_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CODE_INDEX` (`code`),
  ADD UNIQUE KEY `SLUG_INDEX` (`slug`);

--
-- Indexes for table `listings_phinxlog`
--
ALTER TABLE `listings_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `listing_details`
--
ALTER TABLE `listing_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listing_types`
--
ALTER TABLE `listing_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SLUG_INDEX` (`slug`);

--
-- Indexes for table `listing_type_categories`
--
ALTER TABLE `listing_type_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations_phinxlog`
--
ALTER TABLE `locations_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_phinxlog`
--
ALTER TABLE `media_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `plugin` (`plugin`),
  ADD KEY `modules_listing_frk_key` (`listing_id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`) USING BTREE,
  ADD KEY `BY_PARENT_ID` (`parent_id`),
  ADD KEY `navigations_listing_frk_key` (`listing_id`);

--
-- Indexes for table `newsposts`
--
ALTER TABLE `newsposts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`),
  ADD KEY `BY_LISTING_ID` (`listing_id`),
  ADD KEY `BY_ADMIN_USER_ID` (`admin_user_id`);

--
-- Indexes for table `news_phinxlog`
--
ALTER TABLE `news_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_phinxlog`
--
ALTER TABLE `orders_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order_coupons`
--
ALTER TABLE `order_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_courses`
--
ALTER TABLE `order_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`) USING BTREE,
  ADD KEY `cmspages_listing_id` (`listing_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `priority_types`
--
ALTER TABLE `priority_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions_phinxlog`
--
ALTER TABLE `promotions_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_phinxlog`
--
ALTER TABLE `queue_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `queue_processes`
--
ALTER TABLE `queue_processes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workerkey` (`workerkey`),
  ADD UNIQUE KEY `pid` (`pid`,`server`);

--
-- Indexes for table `referrals_phinxlog`
--
ALTER TABLE `referrals_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews_phinxlog`
--
ALTER TABLE `reviews_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`);

--
-- Indexes for table `services_phinxlog`
--
ALTER TABLE `services_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `sessions_phinxlog`
--
ALTER TABLE `sessions_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `session_bookings`
--
ALTER TABLE `session_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`,`listing_id`) USING BTREE;

--
-- Indexes for table `settings_phinxlog`
--
ALTER TABLE `settings_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_Cour_SUBJECT_ID` (`course_id`);

--
-- Indexes for table `subjects_teachers`
--
ALTER TABLE `subjects_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_SUBJECT_TEC_ID` (`subject_id`),
  ADD KEY `BY_TEC_SUBJECT_ID` (`teacher_id`);

--
-- Indexes for table `teacher_schedules`
--
ALTER TABLE `teacher_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials_phinxlog`
--
ALTER TABLE `testimonials_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trans_user_idx` (`user_id`);

--
-- Indexes for table `transactions_phinxlog`
--
ALTER TABLE `transactions_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `USER_CODE_INDEX` (`code`),
  ADD KEY `referred_by_user_idx` (`referred_by`);

--
-- Indexes for table `users_boards`
--
ALTER TABLE `users_boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_grading_types`
--
ALTER TABLE `users_grading_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `grading_type_id` (`grading_type_id`);

--
-- Indexes for table `users_languages`
--
ALTER TABLE `users_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_teacher_schedules`
--
ALTER TABLE `users_teacher_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_indx` (`user_id`);

--
-- Indexes for table `user_manager_phinxlog`
--
ALTER TABLE `user_manager_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_indx` (`user_id`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_users_roles`
--
ALTER TABLE `admin_users_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `course_chapters`
--
ALTER TABLE `course_chapters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_curriculums`
--
ALTER TABLE `course_curriculums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_watchings`
--
ALTER TABLE `course_watchings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `email_hooks`
--
ALTER TABLE `email_hooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `email_preferences`
--
ALTER TABLE `email_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `enquiry_comments`
--
ALTER TABLE `enquiry_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiry_statuses`
--
ALTER TABLE `enquiry_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_documents`
--
ALTER TABLE `event_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `event_social_links`
--
ALTER TABLE `event_social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grading_types`
--
ALTER TABLE `grading_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `institution_types`
--
ALTER TABLE `institution_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `listing_details`
--
ALTER TABLE `listing_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listing_types`
--
ALTER TABLE `listing_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `listing_type_categories`
--
ALTER TABLE `listing_type_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `order_coupons`
--
ALTER TABLE `order_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_courses`
--
ALTER TABLE `order_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `priority_types`
--
ALTER TABLE `priority_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `queue_processes`
--
ALTER TABLE `queue_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117638;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `session_bookings`
--
ALTER TABLE `session_bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `subjects_teachers`
--
ALTER TABLE `subjects_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_schedules`
--
ALTER TABLE `teacher_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_boards`
--
ALTER TABLE `users_boards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_grading_types`
--
ALTER TABLE `users_grading_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_languages`
--
ALTER TABLE `users_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_teacher_schedules`
--
ALTER TABLE `users_teacher_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `zoom_meetings`
--
ALTER TABLE `zoom_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `course_boards` FOREIGN KEY (`board_id`) REFERENCES `boards` (`id`),
  ADD CONSTRAINT `course_subjects` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course_chapters`
--
ALTER TABLE `course_chapters`
  ADD CONSTRAINT `course_chapters_fk` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

--
-- Constraints for table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_listing_frk_key` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `navigations`
--
ALTER TABLE `navigations`
  ADD CONSTRAINT `navigations_listing_frk_key` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `cmspages_listing_frk_key` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_grading_types`
--
ALTER TABLE `users_grading_types`
  ADD CONSTRAINT `users_grading_types_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_grading_types_ibfk_2` FOREIGN KEY (`grading_type_id`) REFERENCES `grading_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
