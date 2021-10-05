-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2020 at 09:10 AM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.3.18-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teaching`
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
(5, 1, 'Mr', 'manu', 'test', 'dw', '546545456', '1989-02-05', 'manu.tech2@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-08-01 11:53:06', '2020-08-01 12:09:56');

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
(1, 1, 1),
(3, 4, 2),
(4, 6, 3),
(5, 5, 4),
(6, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_manager_phinxlog`
--

CREATE TABLE `admin_user_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `status` tinyint(1) NOT NULL DEFAULT '1',
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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `audit_stash_phinxlog`
--

INSERT INTO `audit_stash_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20171018185609, 'CreateAuditLogs', '2020-07-11 05:26:44', '2020-07-11 05:26:44', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cake_d_c_users_phinxlog`
--

CREATE TABLE `cake_d_c_users_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
-- Table structure for table `cms_phinxlog`
--

CREATE TABLE `cms_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `grading_type_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `section_name` varchar(250) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses_phinxlog`
--

CREATE TABLE `courses_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses_phinxlog`
--

INSERT INTO `courses_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200804172353, 'CreateGradingTypes', '2020-08-04 11:58:15', '2020-08-04 11:58:15', 0),
(20200804172400, 'CreateCourses', '2020-08-04 11:58:16', '2020-08-04 11:58:16', 0),
(20200804172409, 'CreateSubjects', '2020-08-04 11:58:16', '2020-08-04 11:58:16', 0),
(20200804172418, 'CreateSubjectsTeachers', '2020-08-04 11:58:17', '2020-08-04 11:58:17', 0);

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
(10, 3, 'Reset Password', 'reset-password', 'Yadukul user can reset password using this slug ', 1, '2020-07-12 14:29:39', '2020-07-12 14:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `email_manager_phinxlog`
--

CREATE TABLE `email_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_manager_phinxlog`
--

INSERT INTO `email_manager_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20171218082425, 'CreateEmailPreferences', '2020-07-11 06:13:21', '2020-07-11 06:13:22', 0),
(20171218082436, 'CreateEmailHooks', '2020-07-11 06:13:22', '2020-07-11 06:13:22', 0),
(20171218083809, 'CreateEmailTemplates', '2020-07-11 06:13:22', '2020-07-11 06:13:22', 0);

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
(2, 3, 'Main Email Layout', '<html>\r\n<head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" /></head>\r\n<body><div>\r\n<table align=\"center\" cellpadding=\"0\" cellspacing=\"0\" style=\"border:1px solid #dddddd;\" width=\"650\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<table cellpadding=\"0\" cellspacing=\"0\" style=\"background:#ffffff; border-bottom:1px solid #dddddd; padding:15px;\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td><a href=\"##BASE_URL##\" target=\"_blank\"><img alt=\"\" border=\"0\" src=\"##SYSTEM_LOGO##\" style=\"max-height:100px;\" /></a></td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#ffffff; padding:15px;\">\r\n			<table cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n				<tbody>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#000000; font-size:16px;\">\r\n							##EMAIL_CONTENT##\r\n						</td>\r\n					</tr>\r\n					<tr>\r\n						<td style=\"font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#043f8d; font-size:16px; vertical-align:middle; text-align:left; padding-top:20px;\">\r\n						##EMAIL_FOOTER##\r\n						</td>\r\n					</tr>\r\n				</tbody>\r\n			</table>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"background:#043f8d; border-top:1px solid #dddddd; text-align:center; font-family:\'Trebuchet MS\', Arial, Helvetica, sans-serif; color:#ffffff; padding:12px; font-size:12px; text-transform:uppercase; font-weight:normal;\">##COPYRIGHT_TEXT##</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</body>\r\n</head>\r\n</html>', '2020-07-12 14:30:10', '2020-07-12 14:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `email_hook_id` int(11) NOT NULL,
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

INSERT INTO `email_templates` (`id`, `listing_id`, `email_hook_id`, `subject`, `description`, `footer_text`, `email_preference_id`, `status`, `created`, `modified`) VALUES
(1, 1, 2, '##USER_NAME##, a very warm welcome to the ##SYSTEM_APPLICATION_NAME##', '<p>We&rsquo;re so happy to have you with us.</p>\r\n\r\n<p>Please click on the button below to confirm we got the right email address.</p>\r\n\r\n<p><a href=\"##verify_n_password##\">VERIFY MY EMAIL</a></p>\r\n\r\n<p>Or copy and paste the link below.</p>\r\n\r\n<p>##verify_n_password##</p>\r\n\r\n<p>##USER_INFO##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:34:41', '2020-07-11 13:34:41'),
(2, 1, 3, '##USER_NAME##, to set your new password…', '<p>You Recently requested to reset your password for your admin account. Click the button below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:35:09', '2020-07-11 13:35:09'),
(3, 1, 4, 'Hello Administrtor, ##USER_NAME## want\'s to contact you', '<p>Hello Administrator,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Name :&nbsp;##USER_NAME##</p>\r\n\r\n<p>Email :&nbsp;##USER_EMAIL##</p>\r\n\r\n<p>Phone No. :&nbsp;##USERE_MOBILE##</p>\r\n\r\n<p>##MESSAGE##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:35:36', '2020-07-11 13:35:36'),
(4, 1, 5, 'Reset Password Notification', '<p>Hi ##USER_NAME##</p>\r\n\r\n<p>You recently requested to reset your password for your account. Click the link below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 1, 1, '2020-07-11 13:36:04', '2020-07-11 13:36:04'),
(5, 3, 7, '##USER_NAME##, a very warm welcome to the ##SYSTEM_APPLICATION_NAME##', '<p>We&rsquo;re so happy to have you with us.</p>\r\n\r\n<p>Please click on the button below to confirm we got the right email address.</p>\r\n\r\n<p><a href=\"##verify_n_password##\">VERIFY MY EMAIL</a></p>\r\n\r\n<p>Or copy and paste the link below.</p>\r\n\r\n<p>##verify_n_password##</p>\r\n\r\n<p>##USER_INFO##</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 2, 1, '2020-07-12 14:30:52', '2020-07-12 14:30:52'),
(6, 3, 9, '##USER_NAME##, to set your new password…', '<p>You Recently requested to reset your password for your admin account. Click the button below to reset it.</p>\r\n\r\n<p><a href=\"##USER_RESET_LINK##\">Reset Password</a></p>\r\n\r\n<p>if you ignore this message, your password won&#39;t be changed.</p>\r\n', '<strong>Thanks and Regards,</strong><p>##SYSTEM_APPLICATION_NAME##</p>', 2, 1, '2020-07-13 17:10:03', '2020-07-13 17:10:03');

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
  `description` text,
  `remark` text,
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
(17, 4, NULL, 'inquiry', NULL, 'Contact Inquiry', 'SD', '6545645h6', 'shanker.lal@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-12 14:37:29', '2020-09-12 14:37:29');

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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `title` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_dir` varchar(250) DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_type` varchar(80) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `code`, `locale`, `image`, `image_dir`, `image_size`, `image_type`, `status`, `position`, `created`, `modified`) VALUES
(2, 'Hindi', 'hi', 'hi_IN', '133798159495288324791.png', 'webroot/img/uploads/Languages/image/', 943, 'image/png', 1, 1, '2020-07-17 02:28:03', '2020-07-17 02:28:03'),
(3, 'English', 'en', 'hi_eng', '293376159495305645429.jpg', 'webroot/img/uploads/Languages/image/', 2217, 'image/jpeg', 1, 2, '2020-07-17 02:30:56', '2020-07-17 02:30:56');

-- --------------------------------------------------------

--
-- Table structure for table `lanuage_manager_phinxlog`
--

CREATE TABLE `lanuage_manager_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `description` text,
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
(4, 1, 'CXTJS93P', 3, NULL, 'Teaching Bharat', 'teaching-bharat', '', 'http://', 'ani.teachingbharat.in', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 3, '2020-09-07 17:12:56', '2020-09-07 17:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `listings_phinxlog`
--

CREATE TABLE `listings_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `parent_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `latitude` varchar(150) NOT NULL,
  `longitude` varchar(150) NOT NULL,
  `iso_alpha2_code` varchar(10) DEFAULT NULL,
  `iso_alpha3_code` varchar(10) DEFAULT NULL,
  `iso_numeric_code` int(5) DEFAULT NULL,
  `formatted_address` text,
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(300) DEFAULT NULL,
  `meta_description` text,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `locations_phinxlog`
--

CREATE TABLE `locations_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `locations_phinxlog`
--

INSERT INTO `locations_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20180125104410, 'CreateLocations', '2020-07-11 06:09:35', '2020-07-11 06:09:35', 0);

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
(1, 1, 'banner', 'Test', 1, 7, '2020-07-11 14:05:20', '2020-07-11 14:51:45'),
(2, 3, 'banner', 'Home page banner', 1, 5, '2020-07-14 03:05:31', '2020-07-29 16:59:45'),
(3, 3, 'banner', 'About Banner', 1, 6, '2020-07-15 03:23:44', '2020-07-15 03:30:09'),
(4, 3, 'gallery', 'Institution', 1, 1, '2020-07-26 11:42:50', '2020-07-30 18:05:19'),
(5, 3, 'download', 'Admission Form', 1, 1, '2020-07-30 16:15:05', '2020-07-30 16:15:05'),
(6, 3, 'download', 'Timetable', 1, 2, '2020-07-30 16:54:40', '2020-07-30 18:10:11'),
(7, 3, 'gallery', 'Sport Activity', 1, 2, '2020-07-30 18:03:48', '2020-07-30 18:05:26');

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
(39, 7, 'Time Table Class 10th', NULL, '', '', '717706159613222897948.jpg', 'webroot/img/uploads/3/MediaFiles/media_image/', 75026, 'image/jpeg', 2, NULL, '2020-07-30 18:03:48', '2020-07-30 18:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `media_phinxlog`
--

CREATE TABLE `media_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
(10, 4, 'Home', 'TeachingTheme', 'Pages', 'display', '{\"plugin\":\"TeachingTheme\",\"controller\":\"Pages\",\"action\":\"display\"}', '', NULL, NULL, NULL, NULL, 'Teaching Bharat', 'Teaching Bharat', 'Teaching Bharat', '2020-09-07 19:15:53', '2020-09-07 19:16:27'),
(11, 4, 'Contact US', 'Enquiry', 'Enquiries', 'index', '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', '', '268486159950687969938.jpg', 'webroot/img/uploads/4/Modules/banner/', 240786, 'image/jpeg', 'Contact Us', 'Contact Us', 'Contact Us', '2020-09-07 19:27:59', '2020-09-07 19:27:59'),
(12, 4, 'Ask Question', 'Enquiry', 'Enquiries', 'askQuestion', '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"askQuestion\"}', '', NULL, NULL, NULL, NULL, 'ASK QUESTION', 'ASK QUESTION', 'ASK QUESTION', '2020-09-08 18:09:21', '2020-09-08 18:09:21');

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
(6, 3, 'Admission', 'admission', NULL, '#', 2, '_self', 35, 46, 1, 1, 0, NULL, '2020-07-13 18:21:17', '2020-07-13 18:21:17'),
(7, 3, 'Circulars & Notices', 'circulars-and-notices', NULL, '#', 2, '_self', 47, 52, 1, 1, 0, NULL, '2020-07-13 18:21:35', '2020-07-13 18:21:35'),
(8, 3, 'Announcement', 'announcement', 7, '{\"plugin\":\"Announcement\",\"controller\":\"Announcements\",\"action\":\"index\"}', 3, '_self', 48, 49, 1, 1, 0, NULL, '2020-07-13 18:21:52', '2020-07-30 17:34:01'),
(9, 3, 'Downloads', 'downloads', 7, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"downloads\"}', 3, '_self', 50, 51, 1, 1, 0, NULL, '2020-07-13 18:22:11', '2020-07-30 17:34:12'),
(11, 3, 'Student Corner', 'student-corner', NULL, '#', 2, '_self', 53, 54, 1, 1, 0, NULL, '2020-07-13 18:24:09', '2020-07-13 18:24:09'),
(12, 3, 'Facilities', 'facilities', NULL, '{\"plugin\":\"Services\",\"controller\":\"Services\",\"action\":\"index\"}', 3, '_self', 53, 54, 1, 1, 0, NULL, '2020-07-13 18:24:24', '2020-07-28 16:18:43'),
(13, 3, 'Media', 'media', NULL, '#', 2, '_self', 55, 60, 1, 1, 0, NULL, '2020-07-13 18:24:47', '2020-07-13 18:24:47'),
(14, 3, 'Photo Gallery', 'photo-gallery', 13, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 56, 57, 1, 1, 0, NULL, '2020-07-13 18:25:14', '2020-07-30 17:35:12'),
(16, 3, 'Institution News', 'institution-news', 13, '{\"plugin\":\"News\",\"controller\":\"Newsposts\",\"action\":\"index\"}', 3, '_self', 58, 59, 1, 1, 0, NULL, '2020-07-13 18:26:13', '2020-07-30 17:36:44'),
(17, 3, 'Contact Us', 'contact-us', NULL, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', 3, '_self', 61, 62, 1, 1, 0, NULL, '2020-07-13 18:26:36', '2020-07-30 02:27:34'),
(18, 3, 'About us', 'about-us-1', 2, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 18, 13, 1, 1, 0, NULL, '2020-07-15 17:56:47', '2020-07-15 17:56:47'),
(19, 3, 'Pages', 'pages', NULL, '#', 2, '_self', 63, 74, 1, 0, 1, NULL, '2020-07-28 03:38:43', '2020-07-28 03:38:43'),
(20, 3, 'About US', 'about-us-2', 19, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 64, 65, 1, 0, 1, NULL, '2020-07-28 03:39:23', '2020-07-28 03:39:46'),
(21, 3, 'Privacy Policy', 'privacy-policy', 19, '{\"plugin\":\"Cms\",\"controller\":\"Pages\",\"action\":\"detail\",\"slug\":\"about-us\"}', 1, '_self', 72, 73, 1, 0, 1, NULL, '2020-07-28 03:40:32', '2020-07-30 03:14:59'),
(22, 3, 'News', 'news', 19, '{\"plugin\":\"News\",\"controller\":\"Newsposts\",\"action\":\"index\"}', 3, '_self', 68, 69, 1, 0, 1, NULL, '2020-07-28 03:41:02', '2020-07-28 03:41:02'),
(23, 3, 'Events', 'events', 19, '{\"plugin\":\"Events\",\"controller\":\"Events\",\"action\":\"index\"}', 3, '_self', 70, 71, 1, 0, 1, NULL, '2020-07-30 03:14:31', '2020-07-30 03:14:31'),
(24, 3, 'Photo Gallery', 'photo-gallery-1', 19, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 66, 67, 1, 0, 1, NULL, '2020-07-30 03:18:27', '2020-07-30 03:18:27'),
(25, 3, 'Quick Links', 'quick-links', NULL, '#', 2, '_self', 75, 86, 1, 0, 1, NULL, '2020-07-30 15:50:47', '2020-07-30 15:50:47'),
(26, 3, 'Facilities', 'facilities-1', 25, '{\"plugin\":\"Services\",\"controller\":\"Services\",\"action\":\"index\"}', 3, '_self', 76, 77, 1, 0, 1, NULL, '2020-07-30 15:51:27', '2020-07-30 15:51:27'),
(27, 3, 'Contact us', 'contact-us-1', 25, '{\"plugin\":\"Enquiry\",\"controller\":\"Enquiries\",\"action\":\"index\"}', 3, '_self', 78, 79, 1, 0, 1, NULL, '2020-07-30 15:51:53', '2020-07-30 15:51:53'),
(28, 3, 'Photo Gallery', 'photo-gallery-2', 25, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"gallery\"}', 3, '_self', 80, 81, 1, 0, 1, NULL, '2020-07-30 15:53:25', '2020-07-30 15:53:25'),
(29, 3, 'Circulars & Notices', 'circulars-and-notices-1', 25, '{\"plugin\":\"Announcement\",\"controller\":\"Announcements\",\"action\":\"index\"}', 3, '_self', 82, 83, 1, 0, 1, NULL, '2020-07-30 15:54:07', '2020-07-30 15:54:38'),
(30, 3, 'Downloads', 'downloads-1', 25, '{\"plugin\":\"Media\",\"controller\":\"Medias\",\"action\":\"downloads\"}', 3, '_self', 84, 85, 1, 0, 1, NULL, '2020-07-30 17:04:05', '2020-07-30 17:04:05'),
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
(56, 4, 'Free Resources', 'free-resources', NULL, '#', 2, '_self', 35, 46, 1, 0, 1, NULL, '2020-09-07 19:36:37', '2020-09-07 19:36:37'),
(57, 4, 'Resources link', 'resources-link', 56, '#', 2, '_self', 36, 37, 1, 0, 1, NULL, '2020-09-07 19:36:55', '2020-09-07 19:36:55'),
(58, 4, 'Resources link', 'resources-link-1', 56, '#', 2, '_self', 38, 39, 1, 0, 1, NULL, '2020-09-07 19:37:06', '2020-09-07 19:37:06'),
(59, 4, 'Resources link', 'resources-link-2', 56, '#', 2, '_self', 40, 41, 1, 0, 1, NULL, '2020-09-07 19:37:16', '2020-09-07 19:37:16'),
(60, 4, 'Resources link', 'resources-link-3', 56, '#', 2, '_self', 42, 43, 1, 0, 1, NULL, '2020-09-07 19:37:39', '2020-09-07 19:37:39'),
(61, 4, 'Resources link', 'resources-link-4', 56, '#', 2, '_self', 44, 45, 1, 0, 1, NULL, '2020-09-07 19:37:50', '2020-09-07 19:37:50'),
(62, 4, 'Explore', 'explore', NULL, '#', 2, '_self', 47, 48, 1, 1, 0, NULL, '2020-09-08 02:37:53', '2020-09-22 14:12:46'),
(63, 4, 'Live Classes <sup class=\"menu-sup\">New</sup></a>', 'live-classes-sup-class-menu-sup-new-sup-a', NULL, '#', 2, '_self', 49, 50, 1, 1, 0, NULL, '2020-09-08 02:38:12', '2020-09-21 16:20:28'),
(64, 4, 'Study Materials', 'study-materials', NULL, '#', 2, '_self', 51, 52, 1, 1, 0, NULL, '2020-09-08 02:38:32', '2020-09-22 14:13:23'),
(65, 4, 'Get Scholarship', 'get-scholarship', NULL, '#', 2, '_self', 53, 54, 1, 1, 0, NULL, '2020-09-22 14:13:52', '2020-09-22 14:13:52'),
(66, 4, 'For Tutors', 'for-tutors', NULL, '#', 2, '_self', 55, 56, 1, 1, 0, NULL, '2020-09-22 14:14:28', '2020-09-22 14:14:28');

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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news_phinxlog`
--

INSERT INTO `news_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20190125131146, 'CreateNewsposts', '2020-07-16 21:33:40', '2020-07-16 21:33:41', 0);

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
(5, 4, 'About Teaching Bharat', '', 'about-teaching-bharat', 'India\'s Best online tution at affordable price on Teaching Bharat', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p><strong>Lorem ipsum</strong> dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>\r\n\r\n<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '143939159953305173236.jpg', 'webroot/img/uploads/4/Pages/banner/', 240786, 'image/jpeg', 'About Teaching Bharat', 'About Teaching Bharat', 'About Teaching Bharat', NULL, '2020-09-07 19:18:24', '2020-09-08 02:51:49'),
(6, 4, 'Terms of use', '', 'terms-of-use', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', NULL, NULL, NULL, NULL, 'Terms of use', 'Terms of use', 'Terms of use', NULL, '2020-09-07 19:30:30', '2020-09-07 19:30:30'),
(7, 4, 'Privacy Policy', '', 'privacy-policy', 'Privacy Policy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Lorem ipsum dolor sit amet, consectetur adipiscing elit</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', NULL, NULL, NULL, NULL, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', NULL, '2020-09-07 19:31:06', '2020-09-07 19:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
-- Table structure for table `queued_jobs`
--

CREATE TABLE `queued_jobs` (
  `id` int(11) NOT NULL,
  `job_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text,
  `job_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `notbefore` datetime DEFAULT NULL,
  `fetched` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `progress` float DEFAULT NULL,
  `failed` int(11) NOT NULL DEFAULT '0',
  `failure_message` text,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(3) NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queued_jobs`
--

INSERT INTO `queued_jobs` (`id`, `job_type`, `data`, `job_group`, `reference`, `created`, `notbefore`, `fetched`, `completed`, `progress`, `failed`, `failure_message`, `workerkey`, `status`, `priority`) VALUES
(2, 'Email', 'a:3:{s:8:\"settings\";a:1:{s:5:\"setTo\";s:22:\"manu.tech2@yopmail.com\";}s:5:\"hooks\";s:13:\"welcome-email\";s:9:\"hooksVars\";a:28:{s:2:\"id\";i:5;s:10:\"listing_id\";i:1;s:5:\"title\";s:2:\"Mr\";s:10:\"first_name\";s:4:\"manu\";s:11:\"middle_name\";s:4:\"test\";s:9:\"last_name\";s:2:\"dw\";s:6:\"mobile\";s:9:\"546545456\";s:3:\"dob\";O:20:\"Cake\\I18n\\FrozenDate\":3:{s:4:\"date\";s:26:\"1989-02-05 00:00:00.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:5:\"email\";s:22:\"manu.tech2@yopmail.com\";s:13:\"profile_photo\";N;s:9:\"photo_dir\";N;s:10:\"photo_size\";N;s:10:\"photo_type\";N;s:15:\"is_supper_admin\";N;s:6:\"status\";b:1;s:11:\"is_verified\";N;s:11:\"login_count\";N;s:7:\"created\";O:20:\"Cake\\I18n\\FrozenTime\":3:{s:4:\"date\";s:26:\"2020-08-01 11:53:06.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:8:\"modified\";O:20:\"Cake\\I18n\\FrozenTime\":3:{s:4:\"date\";s:26:\"2020-08-01 12:09:56.254992\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:7:\"listing\";a:5:{s:2:\"id\";i:1;s:5:\"title\";s:12:\"Eduhub India\";s:8:\"protocol\";s:7:\"http://\";s:11:\"domain_name\";s:13:\"ani.eduhub.in\";s:15:\"listing_type_id\";i:1;}s:5:\"roles\";a:1:{i:0;a:6:{s:2:\"id\";i:1;s:15:\"listing_type_id\";i:1;s:5:\"title\";s:5:\"Admin\";s:10:\"sort_order\";i:1;s:7:\"created\";O:20:\"Cake\\I18n\\FrozenTime\":3:{s:4:\"date\";s:26:\"2020-07-11 13:43:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}s:8:\"modified\";O:20:\"Cake\\I18n\\FrozenTime\":3:{s:4:\"date\";s:26:\"2020-07-11 13:43:50.000000\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}}s:9:\"base64img\";s:0:\"\";s:10:\"image_path\";N;s:4:\"name\";s:15:\"Mr manu test dw\";s:9:\"USER_NAME\";s:15:\"Mr manu test dw\";s:9:\"USER_INFO\";s:0:\"\";s:16:\"login_credential\";s:0:\"\";s:17:\"verify_n_password\";s:88:\"http://ani.eduhub.in/admin/adminuser/createPassword/06bd67c4-1f1b-44d1-9383-2b701891e034\";}}', NULL, NULL, '2020-08-01 12:09:56', NULL, '2020-08-01 12:09:57', '2020-08-01 12:10:02', 100, 0, NULL, 'b322bc8aefe4613a2f14a89dc120c26e9c005a1c', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `queue_phinxlog`
--

CREATE TABLE `queue_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `terminate` tinyint(1) NOT NULL DEFAULT '0',
  `server` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue_processes`
--

INSERT INTO `queue_processes` (`id`, `pid`, `created`, `modified`, `terminate`, `server`, `workerkey`) VALUES
(4, '17599', '2020-08-01 12:09:10', '2020-08-01 12:09:10', 0, 'aryan-krishna', 'c247060977a74e42f6b90ef729369de86ad8e9a8');

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
(1, 1, 'Admin', 1, '2020-07-11 13:43:50', '2020-07-11 13:43:50'),
(2, 1, 'Sales Manager', 3, '2020-07-11 13:43:58', '2020-07-12 16:36:28'),
(3, 1, 'Account Manager', 4, '2020-07-12 16:37:48', '2020-07-12 16:37:48'),
(4, 2, 'Director', 1, '2020-07-12 16:38:09', '2020-07-12 17:03:32'),
(5, 2, 'Principal', 2, '2020-07-12 16:56:22', '2020-07-12 17:03:57'),
(6, 2, 'Deputy Principal', 3, '2020-07-12 16:58:04', '2020-07-12 17:00:59'),
(7, 2, 'Director of Operations', 4, '2020-07-12 17:00:24', '2020-07-12 17:01:32'),
(8, 2, 'HR Manager', 5, '2020-07-12 17:01:54', '2020-07-12 17:01:54'),
(9, 2, 'Finance', 6, '2020-07-12 17:02:21', '2020-07-12 17:02:21'),
(10, 2, 'Librarian', 7, '2020-07-12 17:02:40', '2020-07-12 17:02:40'),
(11, 2, 'Transport Admin', 8, '2020-07-12 17:03:03', '2020-07-12 17:03:03'),
(12, 2, 'Warden', 9, '2020-07-12 17:03:14', '2020-07-12 17:03:14');

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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_phinxlog`
--

INSERT INTO `services_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200722191649, 'CreateServices', '2020-07-22 13:54:18', '2020-07-22 13:54:18', 0);

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
(25, 4, 'Logo 1', 'MAIN_LOGO', '1600697578_logo.png', 'logos', 'text', '2020-09-07 18:13:34', '2020-09-21 14:13:28'),
(26, 4, 'Logo 2', 'MAIN_FAVICON', '1600697607_LogoIcon.png', 'logos', 'text', '2020-09-07 18:13:35', '2020-09-21 14:13:28'),
(27, 4, 'Website Title', 'SITE_TITLE', 'Teaching Bharat', 'general', 'text', '2020-09-07 18:55:28', '2020-09-07 18:55:28'),
(28, 4, 'Application Name', 'SYSTEM_APPLICATION_NAME', 'Teaching Bharat', 'general', 'text', '2020-09-07 18:56:02', '2020-09-07 18:56:02'),
(29, 4, 'Telephone', 'TELEPHONE', '1800 133 432', 'general', 'text', '2020-09-07 18:59:21', '2020-09-07 18:59:21'),
(30, 4, 'Admin Email', 'ADMIN_EMAIL', 'yadav.manu36@gmail.com', 'general', 'text', '2020-09-07 18:59:59', '2020-09-07 18:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings_phinxlog`
--

CREATE TABLE `settings_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
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
  `description` text,
  `link` varchar(255) NOT NULL,
  `token` varchar(500) NOT NULL,
  `token_secret` varchar(500) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `data` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `max_weekly_classes` int(5) NOT NULL,
  `credit_hours` int(5) NOT NULL,
  `is_activity` tinyint(1) NOT NULL,
  `is_exam` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testimonials_phinxlog`
--

INSERT INTO `testimonials_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20200727181850, 'CreateTestimonials', '2020-07-27 12:50:47', '2020-07-27 12:50:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  `api_token` varchar(255) DEFAULT NULL,
  `activation_date` datetime DEFAULT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `secret_verified` tinyint(1) DEFAULT NULL,
  `tos_date` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `is_superuser` tinyint(1) NOT NULL DEFAULT '0',
  `role` varchar(255) DEFAULT 'user',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `additional_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `first_name`, `last_name`, `token`, `token_expires`, `api_token`, `activation_date`, `secret`, `secret_verified`, `tos_date`, `active`, `is_superuser`, `role`, `created`, `modified`, `additional_data`) VALUES
('1544dd7e-80a3-4b7d-a47d-a40968efd5df', 'superadmin', 'superadmin@example.com', '$2y$10$A4VSPBLBCa7NkZKiOr2U7umn7hXjU0jMbkCrfzgNLROndUKCeweXW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 'superuser', '2020-09-21 14:27:08', '2020-09-21 14:27:08', NULL),
('575e720e-e026-4714-931b-244d245ed372', 'hanuman', 'hanuman.yadav@yopmail.com', '$2y$10$O76PKgmggk7nFXEDT.raYeHmvrKBXC7nFbBe0RIizXbKaPXtrZJIq', 'Hanuman', 'Yadav', '35d0d65a47c02940fe2073f7fd0e3d12', '2020-09-23 04:27:27', NULL, NULL, NULL, NULL, NULL, 0, 0, 'user', '2020-09-23 03:27:27', '2020-09-23 03:27:27', NULL);

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
(18, 5, 'admin_users', 'create-password', NULL, '06bd67c4-1f1b-44d1-9383-2b701891e034', '2020-08-01 12:09:56', '2020-08-01 12:09:56');

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
-- Indexes for table `cake_d_c_users_phinxlog`
--
ALTER TABLE `cake_d_c_users_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `cms_phinxlog`
--
ALTER TABLE `cms_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `BY_COURSES_ID` (`listing_id`);

--
-- Indexes for table `courses_phinxlog`
--
ALTER TABLE `courses_phinxlog`
  ADD PRIMARY KEY (`version`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_SLUG` (`slug`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admin_users_roles`
--
ALTER TABLE `admin_users_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_hooks`
--
ALTER TABLE `email_hooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `email_preferences`
--
ALTER TABLE `email_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institution_types`
--
ALTER TABLE `institution_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `newsposts`
--
ALTER TABLE `newsposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `priority_types`
--
ALTER TABLE `priority_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `queue_processes`
--
ALTER TABLE `queue_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subjects_teachers`
--
ALTER TABLE `subjects_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listings` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
