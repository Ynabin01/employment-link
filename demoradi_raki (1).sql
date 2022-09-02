-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2022 at 03:06 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demoradi_raki`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$163vkGFvNIHRMofvqOAzSupCREHiI2qBH6LuJS0zbgOXhwC1v2SCi', NULL, '2020-09-16 03:15:20', '2020-09-16 03:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `number`, `email`, `job_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(21, 'Electronics', '234234', 'manojdas.py@gmail.com', 'job12', NULL, '/contact_image/1658477601_laravel.pdf', '2022-07-22 18:58:21', '2022-07-22 18:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_nepali_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_full_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ne` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` int(255) DEFAULT NULL,
  `linkedin` int(255) DEFAULT NULL,
  `other` int(255) DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `site_name`, `site_nepali_name`, `site_email`, `phone`, `phone_ne`, `website_full_address`, `address_ne`, `facebook`, `twitter`, `linkedin`, `other`, `page_title`, `page_keyword`, `page_description`, `favicon`, `site_logo`, `site_logo_nepali`, `site_status`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(1, 'Raki International Pvt. Ltd.', NULL, 'info@rakiint.com.np', '977-1-5224501', NULL, 'www.rakiint.com.np', NULL, NULL, NULL, NULL, NULL, 'raki Nepal', 'raki nepal', 'raki Nepal', '1658309500_download (6).jfif', '1658309540_logo.png', '1604479502_footer-logo.jpg', '1', '', '', '2020-09-16 03:15:20', '2022-07-22 21:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(100) NOT NULL,
  `company_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_time` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation_id` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_name`, `salary`, `country`, `contract_time`, `navigation_id`, `created_at`, `updated_at`) VALUES
(13, 'Factory Worker (Manufacturing Sec.)', '150000', 'malasiya', '2', 2300, '2022-07-21 15:21:39', '2022-07-21 16:05:28'),
(17, 'POLYPLAS SDN. BHD.', '150000', 'Malaysia', '12', 2306, '2022-07-21 16:13:09', '2022-07-21 16:13:09'),
(18, 'POLYPLAS SDN. BHD.', '80000', 'Malaysia', '0', 2307, '2022-07-21 16:16:32', '2022-07-21 16:16:32'),
(19, 'Happy Services', '90000', 'Columbus, US', '1', 2308, '2022-07-21 16:18:02', '2022-07-21 16:18:02'),
(20, 'ABC company', '300000', 'Saudi Aribia', '2', 2309, '2022-07-21 16:20:07', '2022-07-21 16:20:07'),
(21, 'Oli Company Pvt. Ltd.', '250000', 'UAE', '1', 2310, '2022-07-21 16:22:06', '2022-07-21 16:22:06'),
(22, 'Ram Hotels Pvt. Ltd.', '50000', 'Nepal', '3', 2311, '2022-07-21 16:27:13', '2022-07-21 16:27:13'),
(23, 'MD Hotels Pvt. Ltd.', '150000', 'Nepal', '3', 2312, '2022-07-21 16:30:38', '2022-07-21 16:30:38'),
(24, 'VisionIT', '150000', 'Grant, US', '2', 2313, '2022-07-21 17:35:49', '2022-07-21 17:35:49');

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
(3, '2020_08_06_040112_create_admins_table', 1),
(4, '2020_08_06_040148_create_navigations_table', 1),
(5, '2020_08_06_040229_create_navigation_items_table', 1),
(6, '2020_08_06_040251_create_page_types', 1),
(7, '2020_08_06_040325_create_subscribers_table', 1),
(8, '2020_08_06_040351_create_global_settings_table', 1),
(9, '2020_08_06_040430_create_navigation_video_items_table', 1),
(10, '2020_08_06_040522_create_comments_table', 1),
(11, '2022_07_12_231308_create_jobs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nav_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nav_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_template` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci,
  `short_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `long_content` text COLLATE utf8mb4_unicode_ci,
  `long_content_nepali` text COLLATE utf8mb4_unicode_ci,
  `parent_page_id` int(11) NOT NULL,
  `icon_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nav_status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_three` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(2253, 'JOB SEARCH', 'job-search', 'Job Seekers', 'Jobs', 'Main', 'Group', NULL, 9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '/uploads/banner_image/1658327930_White Photo-centric  Lifestyle Pitch Deck Presentation.jpg', NULL, NULL, NULL, NULL, 'JOB SEARCH', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:11:10', '2022-07-24 16:52:17'),
(2254, 'about', 'about', 'about', NULL, 'Home', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'about', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:11:46', '2022-07-20 16:11:46'),
(2255, 'About Us', 'about-us', 'RAKI INTERNATIONAL PVT. LTD.', '.', 'Home', 'Normal', NULL, 1, 'The Raki International (Pvt) Ltd. is an organization dedicated in providing a quality service in the field of recruitment. At the same time we have always contributed in the best way possible in finding better jobs for the thousands of unemployed and helping the government in its economy recovery. We are well organized and run by professional executives with years of experience behind them. We are proud to say that all our clients have enjoyed our services at the highest level.', '&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;', NULL, NULL, 2254, NULL, NULL, NULL, '/uploads/banner_image/1658309261_1.jpg', NULL, NULL, NULL, NULL, 'About Us', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:12:09', '2022-07-21 15:35:24'),
(2256, 'message', 'message', 'message', NULL, 'Home', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'message', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:13:13', '2022-07-20 16:13:13'),
(2257, 'message1', 'message1', 'Message from Chairman', '.', 'Home', 'Normal', NULL, 1, 'Raki International trained and ISO certified Human Resource Recruiting Agency, recruiting and placing Nepalese human resources in gulf, Middle East, Malaysia and other countries since Long Years. Our main objective is “Right People for the Right Job at Right Time in a Right Place” to be maintain successfully.', NULL, 'Thank you for visiting our website. It is my sincere belief that this website will help you understand our operation &amp; process and assist you in getting accurate information about our company and the Nepalese human resource industry.<br />\r\n<br />\r\n<strong>Raki International</strong>&nbsp;takes pride in being the leading vendor of outsourced manpower and wants to humbly thank its national and international associates and clients, who trusted us enough to make this possible.<br />\r\nHaving been in the industry for a very long period, we envision global prosperity as well as mutual welfare of both skilled, semiskilled and non skilled manpower and overseas business in need of those talents as per the international demands and the need of the overseas clients.<br />\r\nNepali workers are the most pursued globally for their intellectual, technical, physical and adaptive abilities. Also Nepalese are known for their honesty, hard work, loyalty, discipline and above all their commitment towards one\'s duties and responsibilities.<br />\r\nI would like to assure you that all the workers, provided to you shall work as per your direction subject to the agreement (contract) made before finalizing to recruit them and our commitment remains undeterred as we grow and expand.', NULL, 2256, NULL, NULL, NULL, '/uploads/banner_image/1658329718_istockphoto-1205911533-170667a.jpg', NULL, NULL, NULL, NULL, 'message1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:13:57', '2022-07-23 14:02:49'),
(2259, 'About', 'about', 'About', '.', 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'About', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:52:10', '2022-07-22 18:50:34'),
(2260, 'Services', 'services', 'Services', '.', 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Services', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:52:36', '2022-07-22 20:39:29'),
(2263, 'gallary', 'gallary', 'gallary', NULL, 'Main', 'Group', NULL, 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'gallary', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:57:18', '2022-07-22 17:13:19'),
(2265, 'gal1', 'gal1', 'picnic pic', '.', 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326379_download (1).jfif', NULL, NULL, NULL, NULL, 'gal1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 16:58:42', '2022-07-21 00:57:59'),
(2268, 'misson', 'misson', 'Our Mission', '.', 'Home', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'misson', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:34:55', '2022-07-20 17:38:06'),
(2269, 'Mission1', 'mission1', 'Our Mission', '.', 'Home', 'Normal', NULL, 1, '\"To support client organizations in strategically managing human capital to achieve business excellence.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300228_mission01.png', NULL, NULL, NULL, NULL, 'Mission1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:35:56', '2022-07-20 17:42:08'),
(2270, 'missoin2', 'missoin2', 'Our Vision', '.', 'Home', 'Normal', NULL, 2, '\"We aim higher to make people successful.\"', NULL, '<h3>Our Vision</h3>\r\n\r\n<p>Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work.</p>\r\n\r\n<h2>People</h2>\r\n\r\n<p>We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.<br />\r\n<br />\r\nWe help people develop their careers through planning, work, coaching and training.<br />\r\n<br />\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.</p>\r\n\r\n<h2>Knowledge</h2>\r\n\r\n<p>We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.</p>\r\n\r\n<p>We actively listen and act upon this information to improve our relationships, solutions and services.</p>\r\n\r\n<h2>Innovation</h2>\r\n\r\n<p>Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.</p>\r\n\r\n<p>We never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.<br />\r\n<br />\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.</p>', NULL, 2268, NULL, NULL, NULL, '/uploads/banner_image/1658300248_vision01.png', NULL, NULL, NULL, NULL, 'missoin2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:38:43', '2022-07-22 20:04:08'),
(2271, 'mission2', 'mission2', 'Core Values', NULL, 'Home', 'Normal', NULL, 3, '\"Committed towards integrity, respect, appreciation &amp; trust among each other and readiness for team work to establish professional relationship with clients and candidates.\"', NULL, NULL, NULL, 2268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mission2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 17:44:59', '2022-07-22 20:05:02'),
(2276, 'process', 'process', 'Our Unique Process', '.', 'Home', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:05:21', '2022-07-20 18:06:27'),
(2277, 'process1', 'process1', 'Step-1', NULL, 'Home', 'Normal', NULL, 1, 'THE ROLE', NULL, NULL, NULL, 2276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:09:20', '2022-07-20 18:09:20'),
(2278, 'process2', 'process2', 'STEP-2', NULL, 'Home', 'Normal', NULL, 2, 'THE SEARCH', NULL, NULL, NULL, 2276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:10:40', '2022-07-20 18:10:40'),
(2279, 'process3', 'process3', 'STEP-3', NULL, 'Home', 'Normal', NULL, 3, 'SELECTION PROCESS', NULL, NULL, NULL, 2276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:11:33', '2022-07-20 18:11:33'),
(2280, 'process4', 'process4', 'STEP-4', NULL, 'Home', 'Normal', NULL, 4, 'REFERENCE CHECK', NULL, NULL, NULL, 2276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:13:09', '2022-07-20 18:13:09'),
(2281, 'process5', 'process5', 'STEP-5', NULL, 'Home', 'Normal', NULL, 5, 'PLACEMENT &amp; TRAIL', NULL, NULL, NULL, 2276, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'process5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:13:54', '2022-07-20 18:13:54'),
(2284, 'security', 'security', 'Security Company', '.', 'Main', 'Group', NULL, 1, NULL, NULL, NULL, NULL, 2253, NULL, NULL, NULL, '/uploads/banner_image/1658327891_White Photo-centric  Lifestyle Pitch Deck Presentation (2).jpg', NULL, NULL, NULL, NULL, 'security', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 18:26:17', '2022-07-21 01:23:11'),
(2285, 'supermarket', 'supermarket', 'Supermarket', '.', 'Main', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 2253, NULL, NULL, NULL, '/uploads/banner_image/1658327871_White Photo-centric  Lifestyle Pitch Deck Presentation (1).jpg', NULL, NULL, NULL, NULL, 'supermarket', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:26:15', '2022-07-21 01:22:51'),
(2286, 'oil & gas', 'oil-gas', 'Oil & Gas', '.', 'Main', 'Group', NULL, 3, NULL, NULL, NULL, NULL, 2253, NULL, NULL, NULL, '/uploads/banner_image/1658327831_White Photo-centric  Lifestyle Pitch Deck Presentation (4).jpg', NULL, NULL, NULL, NULL, 'oil & gas', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:27:58', '2022-07-21 01:22:11'),
(2287, 'hotel resorts', 'hotel-resorts', 'Hotel & Resorts', '.', 'Main', 'Group', NULL, 4, NULL, NULL, NULL, NULL, 2253, NULL, NULL, NULL, '/uploads/banner_image/1658327853_White Photo-centric  Lifestyle Pitch Deck Presentation (3).jpg', NULL, NULL, NULL, NULL, 'hotel resorts', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:31:20', '2022-07-21 16:31:59'),
(2288, 'gallary1', 'gallary1', 'Gallary1', '.', 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326408_download (5).jfif', NULL, NULL, NULL, NULL, 'gallary1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:41:18', '2022-07-21 00:58:28'),
(2289, 'gallary2', 'gallary2', 'Gallary2', '.', 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326422_download (6).jfif', NULL, NULL, NULL, NULL, 'gallary2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:42:28', '2022-07-21 00:58:42'),
(2290, 'gallary4', 'gallary4', 'Gallary4', '.', 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326448_images (2).jfif', NULL, NULL, NULL, NULL, 'gallary4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:43:57', '2022-07-21 00:59:08'),
(2291, 'gallary5', 'gallary5', 'Gallary5', '.', 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326467_wallpapersden.com_north-america-usa-florida_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:44:19', '2022-07-21 00:59:27'),
(2292, 'gallary6', 'gallary6', 'Gallary6', '.', 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326491_wallpapersden.com_dubai-uae-top-view_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:45:32', '2022-07-21 00:59:51'),
(2293, 'gallary7', 'gallary7', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326514_images.jfif', NULL, NULL, NULL, NULL, 'gallary7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:46:16', '2022-07-21 01:00:14'),
(2294, 'gallary8', 'gallary8', 'Gallary7', '.', 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658326532_wallpapersden.com_australia_1280x720.jpg', NULL, NULL, NULL, NULL, 'gallary8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:47:01', '2022-07-21 01:00:32'),
(2295, 'slider', 'slider', 'slider', NULL, 'Home', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'slider', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:58:10', '2022-07-20 19:58:10'),
(2296, 'slider1', 'slider1', 'WE CARE ABOUT PEOPLE AND THE ROLE OF WORK IN THEIR LIFE', '.', 'Home', 'Normal', NULL, 1, 'abc', NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1658308447_slide-1.jpg', NULL, NULL, NULL, NULL, 'slider1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 19:59:07', '2022-07-20 20:06:52'),
(2297, 'slider2', 'slider2', 'WE HELP PEOPLE THEIR CARRERS THROUGH PLANNING, WORK, COACHING & TRAINING.', '.', 'Home', 'Normal', NULL, 2, 'as', NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1658308641_slide-2.jpg', NULL, NULL, NULL, NULL, 'slider2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 20:02:21', '2022-07-20 20:09:00'),
(2298, 'slider3', 'slider3', 'WE DARE TO INNOVATE, TO POINEER AND TO EVOLVE.', '.', 'Home', 'Normal', NULL, 3, NULL, NULL, NULL, NULL, 2295, NULL, NULL, NULL, '/uploads/banner_image/1658308700_slide-3 (2).jpg', NULL, NULL, NULL, NULL, 'slider3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-20 20:03:20', '2022-07-20 20:10:52'),
(2300, 'security11', 'security11', 'Company: POLYPLAS SDN. BHD.', '.', 'Main', 'Job', NULL, 1, 'this is k lkjsd l aksjdd lajasdlkjaslkdj&nbsp;', NULL, NULL, NULL, 2284, NULL, NULL, NULL, '/uploads/banner_image/1658378199_security.jpeg', NULL, NULL, NULL, NULL, 'security11', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 15:21:39', '2022-07-21 16:10:47'),
(2306, 'job12', 'job12', 'Factory Worker (Manufacturing Sec.)', NULL, 'Main', 'Job', NULL, 2, 'fshka', NULL, NULL, NULL, 2284, NULL, NULL, NULL, '/uploads/banner_image/1658381289_White Photo-centric  Lifestyle Pitch Deck Presentation (2).jpg', NULL, NULL, NULL, NULL, 'job12', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:13:09', '2022-07-21 16:13:09'),
(2307, 'super11', 'super11', 'Factory Worker (Manufacturing Sec.)', NULL, 'Main', 'Job', NULL, 1, 'sdjlfgl', NULL, NULL, NULL, 2285, NULL, NULL, NULL, '/uploads/banner_image/1658381492_White Photo-centric  Lifestyle Pitch Deck Presentation (1).jpg', NULL, NULL, NULL, NULL, 'super11', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:16:32', '2022-07-21 16:16:32'),
(2308, 'super12', 'super12', 'Factory Worker (Manufacturing Sec.)', NULL, 'Main', 'Job', NULL, 2, 'jlkfjlwjf', NULL, NULL, NULL, 2285, NULL, NULL, NULL, '/uploads/banner_image/1658381582_download (2).jfif', NULL, NULL, NULL, NULL, 'super12', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:18:02', '2022-07-21 16:18:02'),
(2309, 'oil12', 'oil12', 'Factory Worker (Manufacturing Sec.)', NULL, 'Main', 'Job', NULL, 1, 'jafakl', NULL, NULL, NULL, 2286, NULL, NULL, NULL, '/uploads/banner_image/1658381707_download (3).jfif', NULL, NULL, NULL, NULL, 'oil12', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:20:07', '2022-07-21 16:20:07'),
(2310, 'oli13', 'oli13', 'Factory Worker (Manufacturing Sec.)', NULL, 'Main', 'Job', NULL, 2, NULL, NULL, NULL, NULL, 2286, NULL, NULL, NULL, '/uploads/banner_image/1658381826_download (3).jfif', NULL, NULL, NULL, NULL, 'oli13', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:22:06', '2022-07-21 16:22:06'),
(2311, 'hotel1', 'hotel1', 'Hotels & Resort', NULL, 'Main', 'Job', NULL, 1, NULL, NULL, NULL, NULL, 2287, NULL, NULL, NULL, '/uploads/banner_image/1658382133_download (6).jfif', NULL, NULL, NULL, NULL, 'hotel1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:27:13', '2022-07-22 20:31:29'),
(2312, 'hotel13', 'hotel13', 'Hotels & Resort', NULL, 'Main', 'Job', NULL, 2, 'sjfh', NULL, NULL, NULL, 2287, NULL, NULL, NULL, '/uploads/banner_image/1658483267_images (3).jfif', NULL, NULL, NULL, NULL, 'hotel13', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 16:30:38', '2022-07-22 20:32:47'),
(2313, 'ab1', 'ab1', 'IT Project Manager - Video Management System', NULL, 'Main', 'Job', NULL, 5, '<p>Scope of Services:&nbsp;Our client is seeking full-time, qualified candidates who will utilize their knowledge, skills, and abilities to serve as a&nbsp;Project Manager.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, 2253, NULL, NULL, NULL, '/uploads/banner_image/1658386249_download (7).jfif', NULL, NULL, NULL, NULL, 'ab1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 17:35:49', '2022-07-21 17:35:49'),
(2314, 'companyprofile', 'companyprofile', 'Company Profile', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p><strong>Raki International Pvt. Ltd.</strong>&nbsp;is a premier human resource agency and placement consultants that partner with global clients to provide them with best talents from Nepal. We are a dedicated team of professional consultants offering top of the line executive search and selection services to diverse corporate of all sizes; with varied business interests. We are proud to have contributed in the best way possible in finding better jobs for the thousands of unemployed and find better human resource for the companies.</p>\r\n\r\n<p><strong>The RAKI International (P) Ltd.</strong>&nbsp;has been established and registered in 2005 at the Department of Labour, Nepal Government, authorizing to operate foreign employment services within the purview of Foreign Employment Act, 1985. We are a registered company approved by Govt. of Nepal (Ministry of Labor) under the license number # 564/062/063. The registration allows us to meet the entire staffing needs of the clients without much complexities and formalities. We have a track record of recruiting thousands of management professionals, technical and non technical personnel, skilled, semi-skilled and unskilled workers for clients in the Gulf and other Middle Eastern countries. We are consultancy recruitment agency engaged in recruiting manpower professionals and provide recruitment process outsourcing in Nepal.</p>\r\n\r\n<p><strong>We provide the right candidate in the right place at right time to our clients.</strong>&nbsp;We at Raki International Pvt. Ltd. make our clients more efficient in the areas of human capital administration and management, by providing quality manpower. We do not just provide assistance in recruiting staff and in training employees, but also in creating new plan and in implementing strategies that would bring more business and capital to the organization. We work in synergy with the clients to understand manpower requirements and procure best candidates with desired profiles. Leveraging on the vast industry experience and network, we are well positioned to meet the all staffing needs within the shortest time frame.</p>', NULL, 2259, NULL, NULL, NULL, '/uploads/banner_image/1658464169_aoTtKfOf.jfif', NULL, NULL, NULL, NULL, 'companyprofile', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:39:39', '2022-07-22 15:44:57'),
(2317, 'vision&value', 'visionvalue', 'Vision & Values', NULL, 'Main', 'Group', NULL, 2, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vision&value', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:49:42', '2022-07-21 21:51:29'),
(2318, 'Ourapproach', 'ourapproach', 'Our Approach', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<h3>Our Approach</h3>\r\n\r\n<p>We adapt best practices to facilitate sourcing, validating and evaluating profiles to deliver candidates of the required skills and caliber to the clients. Based on the requirement of the job profile, we search for candidates from our database and also advertise in local/all Nepal’s newspapers as well as online job portals. Also we have a large number of associates spread all over Nepal which makes it easier for us to meet all the staffing needs within the shortest time.</p>\r\n\r\n<p>The selected candidates has to appear for preliminary interviews. We select the potential candidates on the basis of prior work experience, qualifications, strength and weaknesses and the ability of candidate to fit into the work-culture and ethics of the client organization. The potential candidates are contacted and interviews are arranged as per the convenience of the employers. We can arrange for the interview in different parts of the country to access the best talents from specific industry.</p>\r\n\r\n<p>After selection the candidates are sent for pre-employment medicals test. We request our clients to apply for NOC for the medically fit candidates. As per the project requirement all the selected and medically fit candidates are deployed to meet mobilization schedules of the clients. Many a times due to paucity of time we do the final selection and send the candidates with our guarantee.</p>\r\n\r\n<h2>Customer Satisfaction</h2>\r\n\r\n<p>While speed, dependability, reliability and efficiency are our priority, customer satisfaction is the ultimate goal. Our unique working methodology and untiring efforts enables us to shortlist appropriate candidates, who are at the helm of rendering the best of present generation services. We utilize our in-depth market knowledge and comprehensive research techniques to meet the unique requirements of every client.</p>', NULL, 2259, NULL, NULL, NULL, '/uploads/banner_image/1658466155_choices.jpg', NULL, NULL, NULL, NULL, 'Ourapproach', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:53:33', '2022-07-22 15:47:35'),
(2319, 'IndustriesWeServe', 'industriesweserve', 'Industries We Serve', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<h3>Industries We Serve</h3>\r\n\r\n<p>We specialize in providing manpower recruitment services and placement consultancy services in Nepal that are scalable and cost-effective. Our manpower staffing agency, manpower recruitment agency is positioned to provide complete staffing solutions to a variety of organizations engaged in multifarious actives.</p>', NULL, 2259, NULL, NULL, NULL, '/uploads/banner_image/1658466329_slide-1.jpg', NULL, NULL, NULL, NULL, 'IndustriesWeServe', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:55:06', '2022-07-22 15:50:29'),
(2320, 'OrganizationChart', 'organizationchart', 'Organization Chart', NULL, 'Main', 'Normal', NULL, 5, NULL, NULL, '<center><img alt=\"\" src=\"https://raki.demo.radiantnepal.com/uploads/banner_image/1658480717_org.jpg\" /></center>', NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OrganizationChart', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:55:41', '2022-07-22 20:00:29'),
(2321, 'MessagefromChairman', 'messagefromchairman', 'Message from Chairman', NULL, 'Main', 'Normal', NULL, 6, NULL, NULL, '<p>Thank you for visiting our website. It is my sincere belief that this website will help you understand our operation &amp; process and assist you in getting accurate information about our company and the Nepalese human resource industry.<br />\r\n<br />\r\n<strong>Raki International</strong>&nbsp;takes pride in being the leading vendor of outsourced manpower and wants to humbly thank its national and international associates and clients, who trusted us enough to make this possible.<br />\r\nHaving been in the industry for a very long period, we envision global prosperity as well as mutual welfare of both skilled, semiskilled and non skilled manpower and overseas business in need of those talents as per the international demands and the need of the overseas clients.<br />\r\nNepali workers are the most pursued globally for their intellectual, technical, physical and adaptive abilities. Also Nepalese are known for their honesty, hard work, loyalty, discipline and above all their commitment towards one\'s duties and responsibilities.<br />\r\nI would like to assure you that all the workers, provided to you shall work as per your direction subject to the agreement (contract) made before finalizing to recruit them and our commitment remains undeterred as we grow and expand.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'MessagefromChairman', NULL, '1', '0', NULL, NULL, NULL, '2022-07-21 21:56:13', '2022-07-23 13:49:49'),
(2322, 'License & Certificates', 'license-certificates', 'License & Certificates', NULL, 'Main', 'Group', NULL, 7, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License & Certificates', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:25:21', '2022-07-22 15:58:47'),
(2323, 'Award', 'award', 'Award', NULL, 'Main', 'Group', NULL, 8, NULL, NULL, NULL, NULL, 2259, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Award', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:26:13', '2022-07-22 16:26:39'),
(2324, 'Services1', 'services1', 'Services', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<h3>Services</h3>\r\n\r\n<p>We offer exclusive services in recruitment process outsourcing, professional staffing, organized labor supply and headhunting, if required; through our highly qualified and dedicated team of recruitment professionals. Prospective candidates are thoroughly screened by our industry-specific experts, for evaluation of their skill-sets, qualification, previous experiences and cost-effectiveness; to ensure recruitment of professionals best suited to each of the vacancies.</p>\r\n\r\n<p><strong>We guarantee more than just promptness.</strong></p>\r\n\r\n<p>Through our regularly updated and maintained database, we guarantee ready availability of ideal professionals; for every position of our specialty sectors. Everything from the planning to the interview, leading to selection and hiring, right up to their work-site arrival and performance, is our responsibility. We are hence renowned as the agency capable of providing a complete recruitment solution for every human resource need.</p>\r\n\r\n<p>We, at Raki, understand how crucial it is to have prompt provision of effective, efficient and specialized personnel for all sectors. We realize that when it comes to sensitive and dynamic businesses, especially the ones that have been heavily invested into, one cannot take chances.</p>\r\n\r\n<p>Considering factors such as these, Raki has yet again set an example for the recruitment industry. It has come to focus its resources and proficiency towards the following listed eight sectors, which require the best-in-class manpower solutions; in a manner most professional, and timely.</p>', NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1658480251_Every-Task-a-Customer-Service-Rep-Must-Do-opengraph.png', NULL, NULL, NULL, NULL, 'Services1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:30:21', '2022-07-22 19:42:31'),
(2325, 'Category1', 'category1', 'Category', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<p><strong>Civil/Architecture</strong></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\">Mason (Plaster, Block)</li>\r\n	<li style=\"text-align: justify;\">Mason (Tiles)</li>\r\n	<li style=\"text-align: justify;\">Rod Binder (Steel Fixer)</li>\r\n	<li style=\"text-align: justify;\">Shuttering Carpenter</li>\r\n	<li style=\"text-align: justify;\">Plumbing (Pipe Fitting Sanitary Work)</li>\r\n	<li style=\"text-align: justify;\">Aluminium Fabrication</li>\r\n	<li style=\"text-align: justify;\">Gypsum Ceiling</li>\r\n	<li style=\"text-align: justify;\">Labour</li>\r\n</ol>\r\n\r\n<p><strong>Electrical</strong></p>\r\n\r\n<ol>\r\n	<li>General Electrician (House Wiring)</li>\r\n	<li>Electrical Line Maintenance (Industrial)</li>\r\n	<li>AC &amp; Refrigeration</li>\r\n	<li>Motor Welding</li>\r\n</ol>\r\n\r\n<p><strong>Mechanical</strong></p>\r\n\r\n<ol>\r\n	<li>Automobile (Diesel &amp; Petrol)</li>\r\n	<li>Auto Electrician</li>\r\n	<li>Machinist (Turner)</li>\r\n	<li>Pipe Fabrication</li>\r\n	<li>Industrial Pipe Fitting</li>\r\n	<li>Steel Fabrication</li>\r\n	<li>Scafffolders</li>\r\n</ol>\r\n\r\n<p><strong>Security</strong></p>\r\n\r\n<ol>\r\n	<li>Residential/Private Security</li>\r\n	<li>Official/Bank Security</li>\r\n	<li>Industrial Security</li>\r\n</ol>\r\n\r\n<p><strong>Heavy Equipments</strong></p>\r\n\r\n<ol>\r\n	<li>Operators - Dozer, Fork lift, Roller, Payloader, Back Hoe</li>\r\n	<li>Operators - Crane</li>\r\n	<li>(Mobile/Crawler/Hydraulic)</li>\r\n	<li>Driver - (Trailor/Drump Truch/Light vehicles)</li>\r\n	<li>Mechanics - (Heavy/Light Equipments, Under Chasis)</li>\r\n	<li>Tyremen</li>\r\n	<li>Denters</li>\r\n	<li>Painters</li>\r\n	<li>Moulders</li>\r\n	<li>Helpers</li>\r\n</ol>\r\n\r\n<p><strong>Welding</strong></p>\r\n\r\n<ol>\r\n	<li>Normal Welding (Arc &amp; Gas)</li>\r\n	<li>Welding 1G to 4G</li>\r\n	<li>Welding 6G</li>\r\n	<li>Welding TIG</li>\r\n	<li>Welding MIG</li>\r\n	<li>Welding Gas</li>\r\n</ol>\r\n\r\n<p><strong>Administration</strong></p>\r\n\r\n<ol>\r\n	<li>Project Manager</li>\r\n	<li>Public Relation Manager</li>\r\n	<li>Chartered Accountants</li>\r\n	<li>Accountant/Cashier</li>\r\n	<li>Secretary/Executives</li>\r\n	<li>Clerk/Typist/Receptionist</li>\r\n	<li>Sales Personnel/Store Keeper</li>\r\n	<li>Computer Operator</li>\r\n</ol>\r\n\r\n<p><strong>Hotel &amp; Hospitality</strong></p>\r\n\r\n<ol>\r\n	<li>Western, Italian, Chinese food production (cooking and preservation)</li>\r\n	<li>Food &amp; Beverage Service (waiter, Bartender)</li>\r\n	<li>Front Office Management (receptionist call operator)</li>\r\n	<li>Room Boy/Laundry Man/Cleaners</li>\r\n</ol>\r\n\r\n<p><strong>Agriculture &amp; Plantation</strong></p>\r\n\r\n<ol>\r\n	<li>Farming</li>\r\n	<li>Livestock</li>\r\n	<li>Fishery</li>\r\n	<li>Poultry</li>\r\n	<li>Bee Keeping</li>\r\n	<li>Floriculture</li>\r\n</ol>\r\n\r\n<p><strong>Denting &amp; Painting</strong></p>\r\n\r\n<ol>\r\n	<li>Sand Blasting</li>\r\n	<li>Building Painting</li>\r\n	<li>Industrial Painting</li>\r\n</ol>\r\n\r\n<p><strong>Cleaning &amp; Housekeeping</strong></p>\r\n\r\n<ol>\r\n	<li>Office Boy</li>\r\n	<li>Cleaner (Hospital, School, Mosque, Office etc.)</li>\r\n	<li>Housekeeper</li>\r\n	<li>Care Giver</li>\r\n</ol>\r\n\r\n<p><strong>Power/Gas/Water Treatment Pero Chemical Plants (Exclusive Category)</strong></p>\r\n\r\n<ol>\r\n	<li>Engineers</li>\r\n	<li>Technicians</li>\r\n	<li>Operators</li>\r\n	<li>Chemist &amp; Analysts</li>\r\n</ol>\r\n\r\n<p><strong>Medical/Paramedical</strong></p>\r\n\r\n<ol>\r\n	<li>Consultants</li>\r\n	<li>Surgical</li>\r\n	<li>Nurses</li>\r\n	<li>Technicians</li>\r\n</ol>\r\n\r\n<p><strong>Manufacturing &amp; Production</strong></p>\r\n\r\n<ol>\r\n	<li>Electronic Production</li>\r\n	<li>Plastic &amp; Rubber Production</li>\r\n	<li>Furniture (Wooden &amp; Metal)</li>\r\n	<li>Mechanical Spare Parts</li>\r\n</ol>\r\n\r\n<p><strong>Garments &amp; Textiles</strong></p>\r\n\r\n<ol>\r\n	<li>Patron Maker</li>\r\n	<li>Cutting Master</li>\r\n	<li>Production Manager</li>\r\n	<li>Supervisor</li>\r\n	<li>Tailors</li>\r\n	<li>Checker/Helper</li>\r\n</ol>', NULL, 2260, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Category1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:30:59', '2022-07-22 20:29:44'),
(2326, 'Training and Internship', 'training-and-internship', 'Training and Internship', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<h3>Training and Internship</h3>\r\n\r\n<p>Appropriate Training is an integral part of Human Resource placement globally. We at Raki, recognize the significance of value added by training the available workforce to improve the quality of our overseas clients and potential candidates in search of better economic employment opportunities abroad. In addition to providing technical training, Raki also conducts routine orientation programs to facilitate accurate information flow to the workers going overseas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5>&nbsp;</h5>', NULL, 2260, NULL, NULL, NULL, '/uploads/banner_image/1658469250_Summer-Internship-Program-18.png', NULL, NULL, NULL, NULL, 'Training and Internship', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:31:53', '2022-07-22 16:39:10'),
(2327, 'About nepal', 'about-nepal', 'About Nepal', NULL, 'Main', 'Group', NULL, 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'About nepal', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 01:33:50', '2022-07-22 18:52:45'),
(2328, 'nepal', 'nepal', 'nepal', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p><strong><img alt=\"\" height=\"225\" src=\"http://rakiint.com.np/uploads/images/pages/nepal-annapurna.jpg\" width=\"300\" /><br />\r\nNepal</strong>&nbsp;officially the&nbsp;<strong>Federal Democratic Republic of Nepal</strong>, is a landlocked sovereign state located in South Asia. It is located in the Himalayas and bordered to the north by the People\'s Republic of China, and to the south, east, and west by the Republic of India. With an area of 147,181 square kilometres (56,827 sq mi) and a population of approximately 27 million (and 2 million absentee workers living abroad), Nepal is the world\'s 93rd largest country by land mass and the 41st most populous country. Kathmandu is the nation\'s capital and the country\'s largest metropolis. Kathmandu Valley itself has estimated population of 5 million.</p>\r\n\r\n<p><br />\r\nNepal has a rich geography. The mountainous north has eight of the world\'s ten tallest mountains, including the highest point on Earth, Mount Everest, called&nbsp;<em>Sagarmatha</em>&nbsp;in Nepali. It contains more than 240 peaks over 20,000 ft (6,096 m) above sea level. The fertile and humid south is heavily urbanized.</p>\r\n\r\n<p><br />\r\n<img alt=\"\" height=\"200\" src=\"http://rakiint.com.np/uploads/images/pages/nepal-ktm.jpg\" width=\"300\" /><br />\r\nBy some measures, Hinduism is practised by a larger majority of people in Nepal than in any other nation. Buddhism, though a minority faith in the country, is linked historically with Nepal. Many Nepali do not distinguish between Hinduism and Buddhism and follow both religious traditions. There are three different Buddhist traditions: Himalayan Buddhism, Buddhism of Kathmandu Valley (mostly Mahayana and Vajrayana), and also the Theravada Buddhism.</p>\r\n\r\n<p><br />\r\nA monarchy throughout most of its history, Nepal was ruled by the Shah dynasty of kings from 1768, when Prithvi Narayan Shah unified its many small kingdoms. However, a decade-long Civil War by the Communist Party of Nepal (Maoist) and several weeks of mass protests by all major political parties led to the 12 point agreement of November 22, 2005. The ensuing elections for the constituent assembly on May 28, 2008 overwhelmingly favored the abdication of the Nepali monarch Gyanendra Shah and the establishment of a federal multiparty representative democratic republic. The first President of Nepal, Ram Baran Yadav, was sworn in on July 23, 2008.</p>', NULL, 2327, NULL, NULL, NULL, '/uploads/banner_image/1658470722_photo4jpg.jpg', NULL, NULL, NULL, NULL, 'nepal', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:35:11', '2022-07-22 17:06:17'),
(2329, 'Why Recruit from Nepal', 'why-recruit-from-nepal', 'Why Recruit from Nepal', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<p><strong>Why Recruit from Nepal</strong><br />\r\n<br />\r\nOver the past few years a growing number of employers from overseas countries are directing their attention to Nepal for recruitment of manpower to cope with the increasing requirement of manpower in their countries. The following are the lucrative advantages to hire Nepalese workers:</p>\r\n\r\n<ol>\r\n	<li>All the categories of workers, professionals, skilled semi skilled and unskilled almost in all fields,are readily available for immediate placement.</li>\r\n	<li>Nepalese workers are laborious and sustain their working capability even in the most arduous conditions. During the last two Great World Wars the Nepalese have proven their ability to adapt to even the most hostile environment and climatic conditions in any part of the world.</li>\r\n	<li>Nepalese workers discharge their duties relentlessly, without any hitch and without any kind of discontent.</li>\r\n	<li>As compared to other manpower exporting countries, it is more viable to recruit Nepalese workers.</li>\r\n	<li>As regards overseas manpower deployment, the Government procedures and formalities in Nepal are comparatively simple.</li>\r\n	<li>Nepalese are peace loving, simple-minded, dedicated and extremely loyal to their employers, have high sense of responsibilities and discipline and discharge their duties accordingly.</li>\r\n</ol>', NULL, 2327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Why Recruit from Nepal', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:35:36', '2022-07-22 17:07:12'),
(2330, 'Available Job Categories', 'available-job-categories', 'Available Job Categories', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<h3>Available Job Categories</h3>\r\n\r\n<p><strong>Professional</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Engineers:&nbsp;</strong>Civil/Electrical/Mechanical/Electronic/Telecom</li>\r\n	<li>Architects/Planners</li>\r\n	<li><strong>Doctors:</strong>&nbsp;Specialists/General Physicians/Surgeons</li>\r\n	<li><strong>Healthcare professionals :</strong>&nbsp;Nurses/Lab technicians/Hospital managers.</li>\r\n	<li>Professors/Teachers in various fields</li>\r\n	<li>Chartered/Cost Accountants</li>\r\n	<li>Banking Specialists</li>\r\n	<li>Chef</li>\r\n</ul>\r\n\r\n<p><strong>Skilled</strong></p>\r\n\r\n<ul>\r\n	<li>Construction Supervisors/Overseers</li>\r\n	<li>Welders(Gas/Electric)</li>\r\n	<li>Formen(Electrical/Mechanical/Civil)</li>\r\n	<li>Plant Operators(Electrical/Mechanical/Civil)</li>\r\n	<li>Earth Moving/Construction Equipment Operators</li>\r\n	<li>Electricians (L.T. &amp; H.T.)</li>\r\n	<li>Mechanists/Turners/Toolmakers</li>\r\n	<li>Carpenters/Cabinet Markers</li>\r\n	<li>Steel Fixers</li>\r\n	<li>Scaffolders</li>\r\n	<li>Masons/Tile Fixers/Plasterers</li>\r\n	<li>Plumbers/ Pipe Fitters</li>\r\n	<li>Mechanics (Air Conditioning/Heavy/Light Equipment)</li>\r\n	<li>Draughtsmen(Electrical/Mechanical/Civil)</li>\r\n	<li>Hotel Personnel (Waiters/Cooks/Bakers/Front Office Personnel etc)</li>\r\n	<li>Computer Operators</li>\r\n	<li>Garments/Textie/Jute Workers</li>\r\n	<li>Administration Personnel</li>\r\n	<li>Drivers (Light/Heavy)</li>\r\n	<li>Security Personnel(Ex-Army/Policemen)</li>\r\n	<li>Male/Female Nurses</li>\r\n	<li>Pharmacists</li>\r\n	<li>Laboratory Technicians/Medical Assistants/Paramedics</li>\r\n</ul>\r\n\r\n<p><strong>Semi Skilled</strong></p>\r\n\r\n<ul>\r\n	<li>Carpenters/Shutterers</li>\r\n	<li>Mason Helpers</li>\r\n	<li>Concrete Mixer Operators</li>\r\n	<li>Pump Operators/Helpers</li>\r\n	<li>Helpers (Electrical/Mechanical/Erection)</li>\r\n	<li>Block Makers/Helpers</li>\r\n	<li>Kitchen Helpers/Assistant Cooks</li>\r\n	<li>Tailors/Tailor Helpers</li>\r\n	<li>Laundry/Washerman</li>\r\n	<li>Barbers/Beautician</li>\r\n	<li>Shop Assistants</li>\r\n	<li>Garderners</li>\r\n	<li>Domestic Woker</li>\r\n	<li>Babi sitter</li>\r\n</ul>\r\n\r\n<p><strong>Unskilled</strong></p>\r\n\r\n<ul>\r\n	<li>Labourers/Constructions Labour</li>\r\n	<li>Cleaners/Sweepers</li>\r\n	<li>Agriculture Labourers/Farmers</li>\r\n	<li>Watchmen/Guards</li>\r\n	<li>Peons/Office Boys</li>\r\n	<li>Airport Loaders</li>\r\n	<li>Industrial Labourers</li>\r\n</ul>', NULL, 2327, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Available Job Categories', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 01:36:34', '2022-07-22 17:11:14'),
(2331, 'For Employers', 'for-employers', 'For Employers', NULL, 'Main', 'Group', NULL, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'For Employers', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 03:59:28', '2022-07-22 17:13:18'),
(2332, 'notice1', 'notice1', 'Misson', NULL, 'Main', 'Notice', NULL, 1, 'Vision & Values', NULL, 'Our Vision is to lead in the creation and delivery of innovative workforce solutions and services that enable our clients to win in the changing world of work', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notice1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:01:21', '2022-07-22 17:12:00'),
(2333, 'For Employers1', 'for-employers1', 'For Employers', NULL, 'Main', 'Normal', NULL, 1, NULL, NULL, '<p><strong>For Employers</strong><br />\r\n<br />\r\nRaki International is one of the leading international recruitment consultants that supports companies in their critical hiring assignments and also helps aspiring job seekers find their dream jobs. Our commitment to quality offers us a competitive advantage way ahead of other recruitment consultants. Our world-class recruitment solutions have always satisfied our clients, both large and small.&nbsp;<br />\r\n<br />\r\nWe are a team of proficient and trained recruitment consultants that strives towards providing the companies with the best available talent and offers you the ability to work on every job requisition you get to your full potential. We are one of the best recruitment consultants in the market today. So, why wait? Contact us at the above addresses and fulfill all your recruitment needs.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 2331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'For Employers1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:04:05', '2022-07-22 17:15:00'),
(2334, 'Recruitment Process', 'recruitment-process', 'Recruitment Process', NULL, 'Main', 'Normal', NULL, 2, NULL, NULL, '<h3>Recruitment Process</h3>\r\n\r\n<p>At Raki International, we not only provide recruitment consultancy services to our clients but also give the applicants a perfect platform to get their dream jobs. We can help our clients to get the suitable candidates, cultivate them and retain them. Our comprehensive recruitment solutions ensure the delivery of profitable propositions for your workforce requirements.<br />\r\n<br />\r\nWe have adopted the international practices and procedures that are designed to attract and hire the best talent available in the market; thereby offering the best employee recruitment. We provide our client companies with not only a set of candidates, but also discussion on best-fit market availability, comparative benchmarking and a comfort knowing. We also have associates all over Nepal. This information and the datas of workers are collated, sorted and saved in a professionally managed and updated databank that provides a vast source of resources that can be easily accessed.<br />\r\n<br />\r\nThe recruitment process is the very essential feature of our organization. We have divided this process into three different phases<br />\r\n<br />\r\n<strong>1) Planning</strong><br />\r\n<br />\r\nIn this phase we try to understand the requirements and need of our clients. We try to plan out the kind of strategy, techniques that we are going to follow in order to get the candidate\'s profile. We try to lay our focus on the client\'s organization. We try to search for the competency, the strength, capacity of the candidate. For specific client requirements, we regularly advertise in the leading local<br />\r\nnewspapers after getting the required documents for Labour Ministry permission. Responses we receive from these exercises undergo a preliminary short-listing. Candidates are then contacted and asked to come in for an assessment by our technical consultants.<br />\r\n<br />\r\n<strong>2) Implementation</strong><br />\r\n<br />\r\nThe implementation phase is further divided into so many other different stages:</p>\r\n\r\n<ol>\r\n	<li><strong>Preliminary Interviews :</strong>&nbsp;At this stage a set of preliminary questions are made for the candidate according to his area of expertise. The capable candidates are first shortlisted and with a prior appointment for the interview the candidates are being called.</li>\r\n	<li><strong>Shortlist Generation :</strong>&nbsp;After this the candidates are shortlisted and a confidential report is being made.</li>\r\n	<li><strong>Informal reference checks :</strong>&nbsp;The kinds of references that are being given are further checked by us and are verified for their achievements and experience.</li>\r\n	<li><strong>Client Interviews :&nbsp;</strong>After this the shortlisted candidate is met by our client. At this stage we look forward to the travel, stay and expenses of the candidate. We provide him/ her with proper comfort and all the essential things are fulfilled by us.</li>\r\n	<li><strong>Formal Reference Checks :</strong>&nbsp;Finally we do a proper reference check talking about the candidates work experience, his basic details, qualifications etc.</li>\r\n</ol>\r\n\r\n<p><strong>Final Selection :</strong><br />\r\n<br />\r\nOnce candidates have been selected for the final round of interviews, their applications are presented to the client for final selection. If required, we can carry out the final selection process on behalf of the client, based on a detailed brief on the requirements from the client.<br />\r\n<br />\r\nOur selection process follows rigorous theoretical and practical trade tests, ensuring that candidates are qualified only on merit. Official trade test reports can also be provided if required.<br />\r\n<br />\r\n<strong>Medical Examination Facilities</strong><br />\r\n<br />\r\nWe undertake conducting the necessary medical examinations for candidates and doctors are registered with medical institutions that are approved by the consulate of the country that the candidate is recruited for. This minimizes paperwork for our clients, making the recruitment process more convenient.<br />\r\n<br />\r\n<strong>Mobilization Period</strong><br />\r\n<br />\r\nA minimum of two to three weeks is required to mobilize candidates after selection and receipt of visa for actual deployment.</p>\r\n\r\n<p>&nbsp;</p>', NULL, 2331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Recruitment Process', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:04:45', '2022-07-22 17:16:50');
INSERT INTO `navigations` (`id`, `nav_name`, `alias`, `caption`, `caption_nepali`, `nav_category`, `page_type`, `page_template`, `position`, `short_content`, `short_content_nepali`, `long_content`, `long_content_nepali`, `parent_page_id`, `icon_image`, `featured_image`, `icon_image_caption`, `banner_image`, `link`, `main_attachment`, `attachment`, `page_title`, `page_keyword`, `page_description`, `page_status`, `nav_status`, `extra_one`, `extra_two`, `extra_three`, `created_at`, `updated_at`) VALUES
(2336, 'Deployment process', 'deployment-process', 'Deployment process', NULL, 'Main', 'Normal', NULL, 3, NULL, NULL, '<h3>Deployment process</h3>\r\n\r\n<p>The Kingdom of Saudi Arabia:</p>\r\n\r\n<h4><a href=\"http://www.sosgroup.com.np/business-area/deployment.php\">The Saudi Deployment Process comprises of the following steps.</a></h4>\r\n\r\n<p><strong>Arrival of Demand Letter:</strong><br />\r\nThis is the beginning step of the recruitment process. Upon receiving an official demand letter, the vacancies are advertised in national newspapers and also circulated to Raki Agents and associates. In general, Raki anticipates the arrival of block visa from its clients. Upon taking the reference number from the visa slip as indicated in the block visa document, MOFA number for each individual worker is derived electronically.<br />\r\n<br />\r\n<strong>Confirm Interview &amp; Trade Test Date:</strong><br />\r\nThe clients are required to provide a tentative date for conducting interview and trade tests (if required) at Raki’s office in Kathmandu and at its branch offices. The passport details of qualified applicants who are selected are sent to Saudi Arabia for visa processing.<br />\r\n<br />\r\n<strong>Passport Pooling:</strong><br />\r\nThis process begins soon after the demand letter reaches Raki. The Passport Pooling is conducted through the network of our Elite Agents and nationwide associates. Alternatively, valid passports are also drawn in from Raki’s Passport Data Bank. Applicants are informed of the interview and trade test dates and location.<br />\r\n<br />\r\n<strong>Interview &amp; Trade Test by Client Representative:</strong><br />\r\nMost interviews and trade tests are conducted at Raki’s office in Kathmandu. For rapid sourcing and recruitment of a large number of work-force, Client representatives are flown to our Branch Offices for conducting interviews and tests. In such a situation, a tentative interview schedule is communicated to the clients prior to their arrival in Kathmandu.<br />\r\n<br />\r\n<strong>Medical Test:</strong><br />\r\nThis is a crucial process in recruitment. Every effort is made to ensure that the shortlisted and/or selected applicants are medically FIT as per the regulations of the Government of Saudi Arabia. The applicants medical reports are reviewed by GAMCA appointed clinic in Kathmandu. All medical requirements are fulfilled including the new policy of the Saudi Government.<br />\r\n<br />\r\n<strong>Pre-Clearance for cross-border passport movement:</strong><br />\r\nThe passports of medically FIT applicants are then sent for Visa stamping. Before it had to be taken to either Mumbai (India) or Dhaka (Bangladesh) . Therefore, a Pre Clearance for cross border movement of passport is obtained from the Ministry of Labor in Kathmandu. Now this can be done in Nepal.<br />\r\n<br />\r\n<strong>Visa endorsement in Embassy of Kingdom of Saudi Arabia:</strong><br />\r\nThe passports are submitted to the visa consular\'s office for visa stamping. The certified medical report is attached along with the passport at the time of submission for visa stamping.<br />\r\n<br />\r\n<strong>Obtain Final Clearance:</strong><br />\r\nThe Government of Nepal\'s Ministry of Labor requires all workers departing from Nepal to produce a clearance stamp in their passport at the time of immigration check at the Tribhuwan International Airport. Raki obtains the final Clearance on behalf of the workers.<br />\r\n<br />\r\n<strong>Flight Arrangement:</strong><br />\r\nAll necessary travel arrangements including flights are made to ensure smooth movement. Upon receiving the final confirmation, a Provisional Departure Sheet is emailed to the client.<br />\r\n<br />\r\n<strong>Pre-Departure Orientation:</strong><br />\r\nIn strict compliance with the Ministry of Labor\'s requirement, RAKI conducts pre-departure orientation to all workers. The program is conducted by Vision Orientation and Training and includes orientation on culture, general life, and variety of topics concerning the welfare and safety of each worker. The employment contract is also signed at this stage. The workers are also handed over their passport, air ticket, insurance policy, and a letter of affidavit neatly arranged in a file.<br />\r\n<br />\r\n<strong>Deployment:</strong><br />\r\nThe workers are then transferred to the Tribhuwan International Airport. All necessary logistical arrangements as well as support services are provided by Raki staffs at the airport. Upon successful check in at the immigration, a Final Departure Sheet is emailed to clients to undertake necessary arrangements to receive the workers at the airport of disembarkation.<br />\r\n<br />\r\n<strong>Contract:</strong><br />\r\nA copy of the Employment Contract is mailed to the client\'s office (as where requested) via an international courier service. This is also referred to as Employment Contract (Client\'s Copy).</p>', NULL, 2331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deployment process', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:13:40', '2022-07-22 17:18:12'),
(2337, 'Employers Responsibility', 'employers-responsibility', 'Employers Responsibility', NULL, 'Main', 'Normal', NULL, 4, NULL, NULL, '<h3>Employers Responsibility</h3>\r\n1. Arrange timely receipt of the workers at airport.<br />\r\n2. Inform Raki about receipt of the workers.<br />\r\n3. Advance payment of an amount to each worker on arrival in the country of work (deductable from monthly salary).<br />\r\n4. Arrange furnished housing accommodation suitable to human living.<br />\r\n5. Ensure water and electricity in the living place.<br />\r\n6. Ensure full security of the workers in the living and working places.<br />\r\n7. Timely payment of salary for every working month.<br />\r\n8. Keeping updated the validity of the passport, residence permit/employment visa of the workers.<br />\r\n9. Proper medical treatment of the workers in case of any sickness/accident.<br />\r\n10. Inform Raki any problem that requires handling from our end.<br />\r\n11. Follow terms of agreement signed between the Employer and the Workers', NULL, 2331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Employers Responsibility', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 04:14:08', '2022-07-22 17:23:59'),
(2338, 'Required Documents', 'required-documents', 'Required Documents', NULL, 'Main', 'Normal', NULL, 7, NULL, NULL, '<h3>Required Documents</h3>\r\n\r\n<p>The Government of Nepal\'s Ministry of Labor\'s requirements to process and authorize overseas placement of Nepalese workforce<br />\r\n<br />\r\n<strong>Demand Letter:</strong><br />\r\n<br />\r\nA demand letter should be addressed to Raki International Pvt. Ltd. in an official letterhead in English Language. A Demand Letter should contain all necessary stamps from state authorities of the recipient country to which the workers will be deployed.<br />\r\n<br />\r\nA Demand Letter must contain clear information outlined below:</p>\r\n\r\n<ul>\r\n	<li>Number of workers required</li>\r\n	<li>Trade</li>\r\n	<li>Salary (wage structure including overtime) in United States Dollar</li>\r\n	<li>Work hours and days</li>\r\n	<li>All benefits and welfare</li>\r\n	<li>Terms &amp; Conditions</li>\r\n</ul>\r\n\r\n<p>&nbsp;<a href=\"http://rakiint.com.np/uploads/images/demandletter.docx\">Download Sample Demand Letter</a></p>\r\n\r\n<p><strong>Power of Attorney:</strong></p>\r\n\r\n<p>This legally binding document is a written testimony issued by the recipient company to Raki granting the authority to Raki International to carry out its recruitment tasks.</p>\r\n\r\n<p>&nbsp;<a href=\"http://rakiint.com.np/uploads/images/powerattorney.docx\">Download Sample Power Attorney</a></p>\r\n\r\n<p><strong>Guarantee Letter:</strong></p>\r\n\r\n<p>The Employer Company should address the Labor Department of Nepal regarding the demand requesting them for further permission from the Government of Nepal.</p>\r\n\r\n<p>&nbsp;<a href=\"http://rakiint.com.np/uploads/images/guaranteeletter.docx\">Sample guarantee letter</a></p>\r\n\r\n<p><strong>Employment Contract</strong><br />\r\n<br />\r\nService Contract between the employer and the employee mentioning salary and benefits offered to the employee with detailed terms &amp; conditions.</p>\r\n\r\n<p>&nbsp;<a href=\"http://rakiint.com.np/uploads/images/employmentcontract.docx\">Sample employment contract</a></p>\r\n\r\n<p><strong>Agency Agreement</strong><br />\r\n<br />\r\nCommercial contract between the employer and our agency, duly signed and stamped by both parties.</p>\r\n\r\n<p>&nbsp;<a href=\"http://rakiint.com.np/uploads/images/agreement.docx\">Sample agency agreement</a></p>', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Required Documents', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 04:15:53', '2022-07-22 18:53:01'),
(2340, 'People', 'people', 'People', NULL, 'Main', 'Notice', NULL, 2, 'People', NULL, 'We care about people and the role of work in their lives. We respect people as individuals, trusting them, supporting them, enabling them to achieve their aims in work and in life.\r\n\r\nWe help people develop their careers through planning, work, coaching and training.\r\n\r\nWe recognize everyone’s contribution to our success - our staff, our clients and our candidates. We encourage and reward achievement.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'People', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:39:15', '2022-07-22 15:39:15'),
(2341, 'Knowledge', 'knowledge', 'Knowledge', NULL, 'Main', 'Notice', NULL, 3, 'Knowledge', NULL, 'We share our knowledge, our expertise and our resources, so that everyone understands what is important now and what’s happening next in the world of work - and knows how best to respond.\r\n\r\nWe actively listen and act upon this information to improve our relationships, solutions and services.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Knowledge', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:40:55', '2022-07-22 15:40:55'),
(2342, 'Innovation', 'innovation', 'Innovation', NULL, 'Main', 'Notice', NULL, 4, 'Innovation', NULL, 'Based on our understanding of the world of work, we actively pursue the development and adoption of the best practices worldwide. We lead in the world of work. We dare to innovate, to pioneer and to evolve.\r\n\r\nWe never accept the status quo. We constantly challenge the norm to find new and better ways of doing things.\r\n\r\nWe thrive on our entrepreneurial spirit and speed of response; taking risks, knowing that we will not always succeed, but never exposing our clients to risk.', NULL, 2317, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Innovation', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 15:41:41', '2022-07-22 15:41:41'),
(2343, 'Certificates1', 'certificates1', 'Membership Certificates', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468241_16 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:00:13', '2022-07-22 16:22:21'),
(2344, 'Certificates2', 'certificates2', 'Appreciation Letter', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468272_17.jpg', NULL, NULL, NULL, NULL, 'Certificates2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:02:27', '2022-07-22 16:22:52'),
(2345, 'Certificates3', 'certificates3', 'Entry Card', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468287_18.jpg', NULL, NULL, NULL, NULL, 'Certificates3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:03:45', '2022-07-22 16:23:07'),
(2346, 'Certificates4', 'certificates4', 'Shram Tatha Rojgar Bibhag Letter', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468302_19.jpg', NULL, NULL, NULL, NULL, 'Certificates4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:05:52', '2022-07-22 16:23:22'),
(2347, 'Certificates5', 'certificates5', 'Company Registration Paper', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468325_20.jpg', NULL, NULL, NULL, NULL, 'Certificates5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:07:19', '2022-07-22 16:23:45'),
(2348, 'Certificates6', 'certificates6', 'PAN', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468367_21 (1).jpg', NULL, NULL, NULL, NULL, 'Certificates6', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:08:22', '2022-07-22 16:24:27'),
(2349, 'Certificates7', 'certificates7', 'Baideshik Rojgar Sewa Sulka Ijazat Patra', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468393_22.jpg', NULL, NULL, NULL, NULL, 'Certificates7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:11:17', '2022-07-22 16:24:53'),
(2350, 'Certificates9', 'certificates9', 'Letter of Appreciation', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468410_fodefeen1.jpg', NULL, NULL, NULL, NULL, 'Certificates9', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:17:20', '2022-07-22 16:25:10'),
(2351, 'Certificates10', 'certificates10', 'Certificate of Registration', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2322, NULL, NULL, NULL, '/uploads/banner_image/1658468002_iso-certificate.jpg', NULL, NULL, NULL, NULL, 'Certificates10', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:18:22', '2022-07-22 16:25:18'),
(2352, 'Photo1', 'photo1', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 1, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468652_09.jpg', NULL, NULL, NULL, NULL, 'Photo1', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:12', '2022-07-22 16:29:12'),
(2353, 'Photo2', 'photo2', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 2, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468756_07.jpg', NULL, NULL, NULL, NULL, 'Photo2', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:29:28', '2022-07-22 16:30:56'),
(2354, 'Photo3', 'photo3', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 3, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468744_08.jpg', NULL, NULL, NULL, NULL, 'Photo3', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:30:02', '2022-07-24 15:50:31'),
(2355, 'Photo4', 'photo4', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 4, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468855_05.jpg', NULL, NULL, NULL, NULL, 'Photo4', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:35', '2022-07-22 16:32:35'),
(2356, 'Photo5', 'photo5', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 5, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468878_06.jpg', NULL, NULL, NULL, NULL, 'Photo5', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:32:58', '2022-07-22 16:32:58'),
(2357, 'Photo6', 'photo6', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 6, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468910_04.jpg', NULL, NULL, NULL, NULL, 'Photo6', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 16:33:30', '2022-07-24 15:54:35'),
(2358, 'Photo7', 'photo7', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 7, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468939_03.jpg', NULL, NULL, NULL, NULL, 'Photo7', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:33:59', '2022-07-24 15:52:13'),
(2359, 'Photo8', 'photo8', 'Photo', NULL, 'Main', 'Photo Gallery', NULL, 8, NULL, NULL, NULL, NULL, 2323, NULL, NULL, NULL, '/uploads/banner_image/1658468966_02.jpg', NULL, NULL, NULL, NULL, 'Photo8', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 16:34:26', '2022-07-24 15:52:13'),
(2360, 'Tips for Job Interview', 'tips-for-job-interview', 'Tips for Job Interview', NULL, 'Main', 'Normal', NULL, 5, NULL, NULL, '<h3>Tips for Job Interview</h3>\r\n\r\n<p><strong>Preparation</strong></p>\r\n\r\n<p>Job interviews don\'t have to feel like a blind date. Take control of the process. View an interview as a sales call; know the needs and goals of the company. Preparation, anticipation and confidence are the key skills to a successful interview. It\'s a known fact that an interviewer will have decided whether or not they are going to give you the job within a few minutes. Remember prepare-practice-perform. So be prepared!</p>\r\n\r\n<p><strong>Do:</strong></p>\r\n\r\n<ol>\r\n	<li>Get as much information as possible on the company - read all the latest news about the company, check out the web site and try to speak with someone who has worked there.</li>\r\n	<li>Prepare answers to a range of job and skill-based questions that you can use.</li>\r\n	<li>Put yourself in the interviews seat! Try to think of questions that you might pose relating to your particular job.</li>\r\n	<li>Arm yourself with a few questions for the interviewer showing that you have done your homework about the organisation and its business.</li>\r\n	<li>Check the format of the interview - it could throw you off if you\'re presented with a test of some sort that you were not expecting.</li>\r\n	<li>Dress-wise - Keep it simple and respectable. Dress for success!</li>\r\n</ol>\r\n\r\n<p><strong>Don\'t:</strong></p>\r\n\r\n<ol>\r\n	<li>Leave yourself short for time - always expect the unexpected.</li>\r\n</ol>\r\n\r\n<p><strong>At the interview</strong></p>\r\n\r\n<p><strong>Do:</strong></p>\r\n\r\n<ol>\r\n	<li>Be punctual, there\'s nothing worse than arriving late and in a fluster.</li>\r\n	<li>A good firm handshake and good eye contact are very important.</li>\r\n	<li>Let the interviewer lead the interview - Listen for the concerns behind the interviewer\'s questions.</li>\r\n	<li>Be positive - Try not to sound like you\'re bragging but describe your skills in a factual way.</li>\r\n	<li>Look as though you are interested in what the interviewer is saying to you, answer questions as fully as you can.</li>\r\n	<li>If there is a situation where a panel are interviewing you, direct your answers to all members. It is important not to ignore anyone.</li>\r\n	<li>Your attitude strongly contributes to the interviewers opinion of you, so have the right one!!</li>\r\n	<li>Know what your interviewer is looking for.</li>\r\n	<li>Be flexible - consider reasonable offers and give it your best shot. Don\'t give up, the search may not be a short one but don\'t give up</li>\r\n</ol>\r\n\r\n<p><strong>Don\'t:</strong></p>\r\n\r\n<ol>\r\n	<li>Criticize yourself or past employers.</li>\r\n	<li>Interrupt the interviewer.</li>\r\n	<li>Answer the question with another question.</li>\r\n	<li>Appear giddy or nervous by fidgeting.</li>\r\n	<li>Ask lots of questions about salary and benefits.</li>\r\n</ol>\r\n\r\n<p><strong>Common Interview Questions:</strong></p>\r\n\r\n<p><strong>Why do you want this job?</strong></p>\r\n\r\n<p>Stress the positive aspects, which have attracted you to the particular job in the first place. Think carefully about this question.</p>\r\n\r\n<p><strong>What do you know about the company?</strong></p>\r\n\r\n<p>This is your chance to shine. The more knowledge you have about the company, the better. Focus on details that will relate to your skills, knowledge and qualifications. Here are some ideas:</p>\r\n\r\n<ol>\r\n	<li>How long has the company been established?</li>\r\n	<li>How many branches do they have?</li>\r\n	<li>What size is the company?</li>\r\n	<li>What\'s their growth pattern been like?</li>\r\n	<li>Who are their main competitors?</li>\r\n	<li>What are the names of chief executives, MDs etc?</li>\r\n	<li>What is the ethos of the company?</li>\r\n	<li>How successful is the company? Any major achievements?</li>\r\n	<li>General reputation of the company?</li>\r\n	<li>Is the company publicly or privately owned?</li>\r\n</ol>\r\n\r\n<p><strong>Why should we employ you?</strong></p>\r\n\r\n<p>Base your answer on your previous experience and skills, you can add that there\'s a good fit between you and your job.</p>\r\n\r\n<p><strong>How would you describe yourself?</strong></p>\r\n\r\n<p>Don\'t be modest, be positive. State your attributes and achievements always relating back to the job.</p>\r\n\r\n<p><strong>Why did you choose this career?</strong></p>\r\n\r\n<p>If you have changed careers, make a logical arguments to why you did so.</p>\r\n\r\n<p><strong>Do you have many interests outside work?</strong></p>\r\n\r\n<p>People pay too little attention to this question. You can have excellent qualifications work experience etc, however hobbies and interests can tell the employer even more about you. Interests define whether you are sociable or solitary, and whether you can take on leadership roles.</p>\r\n\r\n<p><strong>What qualities do you think will be required for this job?</strong></p>\r\n\r\n<p>Think outside the box. While the advertisement may help a little, you should also think of the other qualities that may be required. These include leadership ability, supervisory skills, communication skills and problem solving.</p>\r\n\r\n<p><strong>What do you find most attractive/least attractive about this job?</strong></p>\r\n\r\n<p>List three strong attractions and only give one minor unattractive factor. Shift the emphasis away from the negative.</p>', NULL, 2331, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tips for Job Interview', NULL, '1', '0', NULL, NULL, NULL, '2022-07-22 17:32:59', '2022-07-22 20:36:53'),
(2361, 'gly', '-gly', 'gly1', NULL, 'Main', 'Photo Gallery', NULL, 9, NULL, NULL, NULL, NULL, 2263, NULL, NULL, NULL, '/uploads/banner_image/1658480717_org.jpg', NULL, NULL, NULL, NULL, 'gly', NULL, '0', '0', NULL, NULL, NULL, '2022-07-22 19:50:17', '2022-07-22 20:05:44');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_items`
--

CREATE TABLE `navigation_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `navigation_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_items`
--

INSERT INTO `navigation_items` (`id`, `sort`, `navigation_id`, `name`, `name_nepali`, `file`, `content`, `content_nepali`, `link`, `extra_one`, `extra_two`, `created_at`, `updated_at`) VALUES
(19, 1, 2322, NULL, NULL, '1658466642_thumb_fodefeen1.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:42', '2022-07-22 15:58:47'),
(20, 1, 2322, NULL, NULL, '1658466658_thumb_22.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:55:58', '2022-07-22 15:58:47'),
(21, 1, 2322, NULL, NULL, '1658466669_thumb_20.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:09', '2022-07-22 15:58:47'),
(22, 1, 2322, NULL, NULL, '1658466678_thumb_19.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:18', '2022-07-22 15:58:47'),
(23, 1, 2322, NULL, NULL, '1658466688_thumb_17.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:28', '2022-07-22 15:58:47'),
(24, 1, 2322, NULL, NULL, '1658466697_thumb_16.jpg', NULL, NULL, NULL, NULL, NULL, '2022-07-22 15:56:37', '2022-07-22 15:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `navigation_video_items`
--

CREATE TABLE `navigation_video_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sort` int(11) NOT NULL,
  `nav_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vlink` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_nepali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_types`
--

CREATE TABLE `page_types` (
  `sort` int(10) UNSIGNED NOT NULL,
  `page_type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_types`
--

INSERT INTO `page_types` (`sort`, `page_type_title`, `created_at`, `updated_at`) VALUES
(1, 'Job', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(2, 'Group', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(3, 'Photo Gallery', '2020-09-16 03:15:20', '2020-09-16 03:15:20'),
(9, 'Notice', NULL, NULL),
(11, 'Normal', NULL, NULL);

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
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_items`
--
ALTER TABLE `navigation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`sort`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2362;

--
-- AUTO_INCREMENT for table `navigation_items`
--
ALTER TABLE `navigation_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `navigation_video_items`
--
ALTER TABLE `navigation_video_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_types`
--
ALTER TABLE `page_types`
  MODIFY `sort` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2483;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
