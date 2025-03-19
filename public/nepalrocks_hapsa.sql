-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2025 at 03:41 PM
-- Server version: 10.5.26-MariaDB-cll-lve
-- PHP Version: 8.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nepalrocks_hapsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` longtext DEFAULT NULL,
  `mission_title` mediumtext DEFAULT NULL,
  `mission_text` mediumtext DEFAULT NULL,
  `team_title` mediumtext DEFAULT NULL,
  `team_text` mediumtext DEFAULT NULL,
  `page_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_link` mediumtext DEFAULT NULL,
  `audio_link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `mission_title`, `mission_text`, `team_title`, `team_text`, `page_title`, `meta_description`, `created_at`, `updated_at`, `video_link`, `audio_link`) VALUES
(1, '<h1>Strengthening Health systems in Nepal</h1>\r\n<p>HAPSA, a non-profit organization, works to strengthen Nepal\'s health system by improving primary healthcare and advancing public health in collaboration with government bodies. Comprising young professionals from around the world, HAPSA champions equitable health services for all.</p>\r\n<p>Guided by core values, we prioritize patient-centered care, government accountability in reducing out-of-pocket health expenses, and local health rights awareness. Our innovative model integrates community participation, supports health staff, and fosters collaboration with the government to build a community-focused health system.</p>', 'Our Mission', 'Empowering local self-advocacy, strengthening government partnerships, and providing technical and material support to drive sustainable health improvements.', 'Our Team', 'Our dedicated leaders drive HAPSA’s mission forward with unwavering commitment, upholding our core values of empathy, excellence, integrity, innovation, and trust to advance equitable healthcare. These passionate individuals are our greatest asset.', 'About Us', 'HAPSA, a non-profit organization, works to strengthen Nepal\'s health system by improving primary healthcare and advancing public health in collaboration with government bodies. Comprising young professionals from around the world, HAPSA champions equitable health services for all.', '2025-03-11 04:15:54', '2025-03-12 21:08:41', 'https://www.youtube.com/watch?v=wzZNU_IFgmc', '[{\"download_link\":\"abouts\\\\March2025\\\\cagTs0mXESsTUrrrNESg.mp3\",\"original_name\":\"trimmedAudio.mp3\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":300,\"min_height\":300}}', 4),
(25, 4, 'mission_title', 'text', 'Mission Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(26, 4, 'mission_text', 'text_area', 'Mission Text', 0, 1, 1, 1, 1, 1, '{}', 6),
(27, 4, 'team_title', 'text', 'Team Title', 0, 1, 1, 1, 1, 1, '{}', 7),
(28, 4, 'team_text', 'text_area', 'Team Text', 0, 1, 1, 1, 1, 1, '{}', 8),
(29, 4, 'page_title', 'text', 'Page Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(30, 4, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(31, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 9),
(32, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(33, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(35, 5, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(36, 5, 'text', 'text_area', 'Text', 0, 0, 1, 1, 1, 1, '{}', 4),
(37, 5, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 5),
(38, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(39, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(40, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(41, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 2),
(42, 6, 'designation', 'text', 'Designation', 0, 0, 1, 1, 1, 1, '{}', 3),
(43, 6, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 4),
(44, 6, 'education', 'text', 'Education', 0, 0, 1, 1, 1, 1, '{}', 5),
(45, 6, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 6),
(46, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 7),
(47, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(49, 7, 'basic_page_title', 'text', 'Page Title', 0, 0, 1, 1, 1, 1, '{}', 2),
(50, 7, 'basic_meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(51, 7, 'basic_banner', 'image', 'Banner', 0, 0, 1, 1, 1, 1, '{}', 4),
(52, 7, 'basic_description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 5),
(53, 7, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 7),
(54, 7, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(55, 7, 'cover', 'image', 'Cover', 0, 1, 1, 1, 1, 1, '{}', 6),
(56, 7, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(57, 7, 'quote', 'text', 'Quote', 0, 0, 1, 1, 1, 1, 'null', 10),
(58, 7, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{}', 11),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 12),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(61, 7, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 14),
(62, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 8, 'basic_page_title', 'text', 'Page Title', 0, 0, 1, 1, 1, 1, '{}', 2),
(64, 8, 'basic_meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(65, 8, 'basic_banner', 'image', 'Banner', 0, 0, 1, 1, 1, 1, '{}', 4),
(66, 8, 'basic_description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":200,\"min_height\":200}}', 5),
(67, 8, 'cover', 'image', 'Cover', 0, 1, 1, 1, 1, 1, '{}', 6),
(68, 8, 'date', 'date', 'Date', 0, 1, 1, 1, 1, 1, '{}', 9),
(69, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 7),
(70, 8, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(71, 8, 'description', 'rich_text_box', 'Description', 0, 0, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":400,\"min_height\":400}}', 12),
(72, 8, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 13),
(73, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 14),
(74, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(75, 8, 'quote', 'text_area', 'Quote', 0, 0, 1, 1, 1, 1, 'null', 11),
(76, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 9, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(78, 9, 'images', 'multiple_images', 'Images', 0, 0, 1, 1, 1, 1, '{}', 3),
(79, 9, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 4),
(80, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(81, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(82, 8, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{}', 10),
(83, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(84, 10, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(85, 10, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 3),
(86, 10, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 4),
(87, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(88, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(89, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 11, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(91, 11, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":200,\"min_height\":200}}', 5),
(92, 11, 'btn_title', 'text', 'Button Title', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(93, 11, 'btn_link', 'text', 'Button Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(94, 11, 'form_title', 'text', 'Form Title', 0, 1, 1, 1, 1, 1, '{}', 8),
(95, 11, 'form_text', 'text_area', 'Form Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(96, 11, 'address', 'text', 'Address', 0, 0, 0, 0, 0, 1, '{\"display\":{\"width\":\"4\"}}', 10),
(97, 11, 'email', 'text', 'Email', 0, 0, 0, 0, 0, 1, '{\"display\":{\"width\":\"4\"}}', 11),
(98, 11, 'phone', 'text', 'Phone', 0, 0, 0, 0, 0, 1, '{\"display\":{\"width\":\"4\"}}', 12),
(99, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 13),
(100, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 14),
(101, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(102, 12, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 4),
(103, 12, 'description', 'rich_text_box', 'Description', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":300,\"min_height\":300}}', 5),
(104, 12, 'btn_title', 'text', 'Btn Title', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(105, 12, 'btn_link', 'text', 'Btn Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 7),
(106, 12, 'introduction', 'rich_text_box', 'Introduction', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":300,\"min_height\":300}}', 8),
(107, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 9),
(108, 12, 'donate_title', 'text', 'Donate Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(109, 12, 'donate_text', 'rich_text_box', 'Donate Text', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":300,\"min_height\":300}}', 11),
(110, 12, 'address', 'text', 'Address', 0, 0, 0, 0, 0, 1, '{}', 12),
(111, 12, 'email', 'text', 'Email', 0, 0, 0, 0, 0, 1, '{}', 13),
(112, 12, 'phone', 'text', 'Phone', 0, 0, 0, 0, 0, 1, '{}', 14),
(113, 12, 'bank_detail', 'rich_text_box', 'Bank Detail', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":200,\"min_height\":200}}', 15),
(114, 12, 'gofundme', 'rich_text_box', 'Gofundme', 0, 1, 1, 1, 1, 1, '{\"tinymceOptions\":{\"height\":300,\"min_height\":300}}', 16),
(115, 12, 'page_title', 'text', 'Page Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(116, 12, 'meta_description', 'text_area', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(117, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 17),
(118, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 18),
(119, 11, 'page_title', 'text', 'Page Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(120, 11, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(121, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(122, 13, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(123, 13, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(124, 13, 'faqs', 'text', 'Faqs', 0, 1, 1, 1, 1, 1, '{}', 4),
(125, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 5),
(126, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(127, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 14, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(129, 14, 'intro', 'text', 'Intro', 0, 1, 1, 1, 1, 1, '{}', 3),
(130, 14, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(131, 14, 'testimonials', 'text', 'Testimonials', 0, 1, 1, 1, 1, 1, '{}', 5),
(132, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 6),
(133, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(134, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 15, 'basic_page_title', 'text', 'Page Title', 0, 0, 1, 1, 1, 1, '{}', 2),
(136, 15, 'basic_meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 3),
(137, 15, 'basic_banner', 'image', 'Banner', 0, 0, 1, 1, 1, 1, '{}', 4),
(138, 15, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 5),
(139, 15, 'file', 'file', 'File', 0, 0, 1, 1, 1, 1, '{}', 7),
(140, 15, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 8),
(141, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 9),
(142, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(143, 15, 'link', 'text', 'Link', 0, 0, 1, 1, 1, 1, '{}', 6),
(144, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(145, 16, 'banner_video_link', 'text', 'Banner Video Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 4),
(146, 16, 'banner_btn_link', 'text', 'Banner Btn Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(147, 16, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 6),
(148, 16, 'text', 'text', 'Text', 0, 1, 1, 1, 1, 1, '{}', 7),
(149, 16, 'btn_title', 'text', 'Btn Title', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(150, 16, 'btn_link', 'text', 'Btn Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(151, 16, 'about_title', 'text', 'About Title', 0, 1, 1, 1, 1, 1, '{}', 10),
(152, 16, 'about_text', 'text_area', 'About First Text', 0, 1, 1, 1, 1, 1, '{}', 11),
(153, 16, 'about_link', 'text', 'About Button Link', 0, 1, 1, 1, 1, 1, '{}', 12),
(154, 16, 'about_img1', 'image', 'About First Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(155, 16, 'about_img2', 'image', 'About Second Image', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 14),
(156, 16, 'about_text2', 'text_area', 'About Second Text', 0, 1, 1, 1, 1, 1, '{}', 15),
(157, 16, 'project_title', 'text', 'Project Title', 0, 1, 1, 1, 1, 1, '{}', 16),
(158, 16, 'project_text', 'text_area', 'Project Text', 0, 1, 1, 1, 1, 1, '{}', 17),
(159, 16, 'activities_title', 'text', 'Activities Title', 0, 1, 1, 1, 1, 1, '{}', 18),
(160, 16, 'activities_text', 'text_area', 'Activities Text', 0, 1, 1, 1, 1, 1, '{}', 19),
(161, 16, 'activities_subtitle', 'text', 'Activities Subtitle', 0, 1, 1, 1, 1, 1, '{}', 20),
(162, 16, 'activities_description', 'text_area', 'Activities Description', 0, 1, 1, 1, 1, 1, '{}', 21),
(163, 16, 'activities_images', 'multiple_images', 'Activities Images', 0, 1, 1, 1, 1, 1, '{}', 22),
(164, 16, 'news_title', 'text', 'News Title', 0, 1, 1, 1, 1, 1, '{}', 23),
(165, 16, 'news_text', 'text_area', 'News Text', 0, 1, 1, 1, 1, 1, '{}', 24),
(166, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 25),
(167, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 26),
(168, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(169, 17, 'img', 'image', 'Img', 0, 1, 1, 1, 1, 1, '{}', 2),
(170, 17, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{}', 3),
(171, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 1, '{}', 4),
(172, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(173, 4, 'video_link', 'text', 'Video Link', 0, 1, 1, 1, 1, 1, '{}', 10),
(174, 4, 'audio_link', 'file', 'Audio Link', 0, 1, 1, 1, 1, 1, '{}', 11),
(175, 16, 'qr', 'image', 'QR', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(176, 16, 'qr_link', 'text', 'Qr Link', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(4, 'abouts', 'abouts', 'Text Content', 'Text Content', 'voyager-categories', 'App\\About', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 04:14:20', '2025-03-12 21:07:30'),
(5, 'missions', 'missions', 'Mission', 'Missions', 'voyager-categories', 'App\\Mission', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 04:18:57', '2025-03-11 04:19:06'),
(6, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Team', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"image\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(7, 'projects', 'projects', 'Project', 'Projects', 'voyager-folder', 'App\\Project', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\WithBasicController', NULL, 1, 0, '{\"order_column\":\"date\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 04:29:38', '2025-03-12 21:28:19'),
(8, 'news', 'news', 'News', 'News', 'voyager-news', 'App\\News', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\WithBasicController', NULL, 1, 0, '{\"order_column\":\"date\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 04:37:38', '2025-03-12 21:41:27'),
(9, 'photo_galleries', 'photo-galleries', 'Photo Gallery', 'Photo Galleries', 'voyager-images', 'App\\PhotoGallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-11 04:48:39', '2025-03-11 04:48:39'),
(10, 'video_galleries', 'video-galleries', 'Video Gallery', 'Video Galleries', 'voyager-video', 'App\\VideoGallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(11, 'volunteers', 'volunteers', 'Volunteer', 'Volunteers', 'voyager-folder', 'App\\Volunteer', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 06:14:10', '2025-03-12 22:31:17'),
(12, 'donates', 'donates', 'Donate', 'Donates', 'voyager-folder', 'App\\Donate', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 06:22:46', '2025-03-12 22:31:00'),
(13, 'faqs', 'faqs', 'FAQs', 'FAQs', 'voyager-folder', 'App\\Faq', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 06:28:56', '2025-03-11 06:29:19'),
(14, 'testimonials', 'testimonials', 'Testimonial', 'Testimonials', 'voyager-folder', 'App\\Testimonial', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-11 06:55:47', '2025-03-11 06:56:09'),
(15, 'resources', 'resources', 'Resource', 'Resources', 'voyager-folder', 'App\\Resource', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\WithBasicController', NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-12 19:47:41', '2025-03-12 19:51:06'),
(16, 'homepages', 'homepages', 'Homepage', 'Homepages', 'voyager-home', 'App\\Homepage', NULL, '\\App\\Http\\Controllers\\Voyager\\Custom\\BrowseController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2025-03-12 20:12:42', '2025-03-12 23:18:05'),
(17, 'photos', 'photos', 'Photo', 'Photos', 'voyager-images', 'App\\Photo', NULL, NULL, NULL, 1, 0, '{\"order_column\":\"order\",\"order_display_column\":\"img\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2025-03-12 20:17:56', '2025-03-12 20:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `donates`
--

CREATE TABLE `donates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `btn_title` mediumtext DEFAULT NULL,
  `btn_link` mediumtext DEFAULT NULL,
  `introduction` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `donate_title` varchar(255) DEFAULT NULL,
  `donate_text` longtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `bank_detail` longtext DEFAULT NULL,
  `gofundme` longtext DEFAULT NULL,
  `page_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donates`
--

INSERT INTO `donates` (`id`, `title`, `description`, `btn_title`, `btn_link`, `introduction`, `image`, `donate_title`, `donate_text`, `address`, `email`, `phone`, `bank_detail`, `gofundme`, `page_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Be a donor. Be the difference.', '<p>At HAPSA, we are deeply honored to serve communities by strengthening healthcare systems and ensuring equitable access to quality health services. Guided by our core values, we remain committed to providing compassionate, dignified, and excellent care while fostering collaboration with communities and government bodies.</p>\r\n<p>Each year, with the generous support of our partners and donors, HAPSA expands its impact by addressing critical health needs, including health education, facility support, and community-driven initiatives. These efforts directly benefit underserved populations and empower local communities through sustainable healthcare solutions.</p>\r\n<p>Your continued support is the cornerstone of our mission, enabling us to adapt to urgent and evolving health challenges while advancing our vision of equitable healthcare for all. Together, we are building healthier futures and creating what we proudly call the HAPSA Difference.</p>', 'DONATE NOW', '/donate#donateform', '<h1>Ways to give</h1>\r\n<p>These contributions strengthen HAPSA&rsquo;s commitment to providing equitable healthcare services, ensuring access for those who need financial assistance. Through partnerships with communities, government bodies, and donors, we aim to grow our resources to better support underserved populations.</p>\r\n<p>Health Facility Support:HAPSA enhances primary healthcare services by providing training, resources, and capacity-building for low-income and underserved communities.</p>\r\n<p>Community Health Assistance:HAPSA reduces health risks and improves well-being through initiatives such as health education, local awareness programs, and assistance with essential health needs, including access to healthcare facilities, preventive care, and recovery support.</p>\r\n<p>Public Health Outreach:HAPSA works to improve healthcare accessibility by offering subsidies, supporting public health campaigns, and collaborating with local partners to address the needs of vulnerable populations.</p>\r\n<p>Your support enables us to continue creating impactful, community-focused solutions for equitable and sustainable healthcare.</p>', 'donates\\March2025\\YWZAdvbq5JskfLr89jUv.jpg', 'Donate', '<p>HAPSA is a not-for-profit 501(c)(3) organization dedicated to strengthening healthcare systems and improving public health. We are deeply grateful for your generous support, which enables us to provide equitable, high-quality healthcare services to communities in need. Your contributions make a lasting impact, helping us create healthier futures and improve lives every day.</p>', 'Buddhanagar, Kathmandu', 'hapsa4all@gmail.com', '+977-9841140403', '<p>Machhapuchhre Bank Pvt. Ltd</p>\r\n<p>Lazimpat, Kathmandu</p>\r\n<p>Account Name: HAPSA Nepal</p>\r\n<p>Account No.: 0390036393900011</p>', '<p><iframe class=\"gfm-embed-iframe\" src=\"https://www.gofundme.com/f/help-nepal-fight-covid19-support-hapsa-nepal/widget/medium/\" width=\"100%\" height=\"210\" frameborder=\"0\" scrolling=\"no\">\r\n                </iframe></p>', 'Donate Now', 'At HAPSA, we are deeply honored to serve communities by strengthening healthcare systems and ensuring equitable access to quality health services. Guided by our core values, we remain committed to providing compassionate, dignified, and excellent care while fostering collaboration with communities and government bodies.', '2025-03-11 06:25:10', '2025-03-11 06:25:10');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `faqs` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `description`, `faqs`, `created_at`, `updated_at`) VALUES
(1, 'FAQS', '<p>Whether you’re interested in volunteering, donating, or partnering with us, this section answers common questions about HAPSA. Be part of a global team dedicated to making health services accessible for all. Explore how we work, our core values, and ways you can contribute to making a difference.</p>', '{\"title\":\"FAQs\",\"body\":[{\"question\":\"Who can join HAPSA as a volunteer?\",\"answer\":\"<p>Anyone passionate about healthcare, community service, and equitable health systems can join HAPSA as a volunteer. We welcome individuals from diverse backgrounds and experiences.<\\/p>\"},{\"question\":\"How does HAPSA collaborate with the government?\",\"answer\":\"<p>HAPSA supports government health services by enhancing community participation, assisting health facility staff, and integrating innovative solutions to create sustainable, community-centric healthcare systems.<\\/p>\"},{\"question\":\"Where does HAPSA operate?\",\"answer\":\"<p>HAPSA primarily focuses on health system improvement in Nepal, working at local, regional, and national levels in collaboration with government bodies and communities.<\\/p>\"},{\"question\":\"How can I apply to volunteer with HAPSA?\",\"answer\":\"<p>You can apply to volunteer by visiting our website and filling out the volunteer application form. Opportunities are available in various areas, including community outreach and health education.<\\/p>\"},{\"question\":\"Can I donate to HAPSA?\",\"answer\":\"<p>Yes, donations are welcome and help us expand our projects and initiatives. Details on how to donate are available on our website.<\\/p>\"},{\"question\":\"How are HAPSA projects funded?\",\"answer\":\"<p>HAPSA relies on donations, grants, and partnerships with organizations and individuals committed to improving public health systems.<\\/p>\"},{\"question\":\"How can I stay updated on HAPSA\\u2019s work?\",\"answer\":\"<p>You can follow HAPSA on social media, subscribe to our newsletter, or visit our website for the latest news, updates, and project highlights.<\\/p>\"}]}', NULL, '2025-03-11 06:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `homepages`
--

CREATE TABLE `homepages` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_video_link` mediumtext DEFAULT NULL,
  `banner_btn_link` mediumtext DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `text` mediumtext DEFAULT NULL,
  `btn_title` mediumtext DEFAULT NULL,
  `btn_link` mediumtext DEFAULT NULL,
  `about_title` mediumtext DEFAULT NULL,
  `about_text` longtext DEFAULT NULL,
  `about_link` varchar(255) DEFAULT NULL,
  `about_img1` varchar(255) DEFAULT NULL,
  `about_img2` varchar(255) DEFAULT NULL,
  `about_text2` mediumtext DEFAULT NULL,
  `project_title` mediumtext DEFAULT NULL,
  `project_text` longtext DEFAULT NULL,
  `activities_title` mediumtext DEFAULT NULL,
  `activities_text` mediumtext DEFAULT NULL,
  `activities_subtitle` mediumtext DEFAULT NULL,
  `activities_description` longtext DEFAULT NULL,
  `activities_images` longtext DEFAULT NULL,
  `news_title` mediumtext DEFAULT NULL,
  `news_text` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `qr` varchar(255) DEFAULT NULL,
  `qr_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homepages`
--

INSERT INTO `homepages` (`id`, `banner_video_link`, `banner_btn_link`, `title`, `text`, `btn_title`, `btn_link`, `about_title`, `about_text`, `about_link`, `about_img1`, `about_img2`, `about_text2`, `project_title`, `project_text`, `activities_title`, `activities_text`, `activities_subtitle`, `activities_description`, `activities_images`, `news_title`, `news_text`, `created_at`, `updated_at`, `qr`, `qr_link`) VALUES
(1, 'wzZNU_IFgmc?si=KHNo1L50pKi_fGjE', 'https://www.youtube.com/watch?v=wzZNU_IFgmc', 'Equity. Sustainability. Health.', 'Join us as a volunteer and help create equitable, community-focused health systems while making a lasting impact on public health!', 'Join', '/volunteer', 'Advancing equitable and sustainable health systems', 'HAPSA, a non-profit organization, works to strengthen Nepal\'s health system by improving primary healthcare and advancing public health in collaboration with government bodies.', '/about', 'homepages\\March2025\\Cnlldwhgj7KzkY8E2qVh.jpg', 'homepages\\March2025\\xyNt7dCldBIUS2hJhTDK.jpg', 'Guided by core values, we prioritize patient-centered care, government accountability in reducing out-of-pocket health expenses, and local health rights awareness. Comprising young professionals from around the world, HAPSA champions equitable health services for all.', 'HAPSA Projects', 'HAPSA undertakes projects aimed at strengthening Nepal’s health system by enhancing primary healthcare services and promoting public health awareness. These initiatives focus on supporting health facility staff, fostering community participation, and collaborating with government bodies to create equitable, community-centric healthcare solutions.', 'Ongoing Activities', 'HAPSA is actively engaged in strengthening healthcare systems through community-driven initiatives, government collaborations, and capacity-building programs. Through these efforts, we strive to create sustainable, equitable healthcare solutions for all.', 'Community based hands only CPR training', 'HAPSA is equipping frontline workers with life-saving skills through hands-only CPR training. This community-based initiative empowers healthcare workers, first responders, and local volunteers to provide immediate emergency care, improving survival rates in critical situations. By increasing awareness and accessibility to CPR training, we are strengthening emergency response capacity at the grassroots level.', '[\"homepages\\\\March2025\\\\0HkQFxqIRIfDVVABGmY2.jpg\",\"homepages\\\\March2025\\\\cYJ93WUOYUUuyTTTpD7U.jpg\",\"homepages\\\\March2025\\\\tT08dGNMAiutQzcVlTTY.jpg\",\"homepages\\\\March2025\\\\gOvo9XgureVgeFMaZIyg.jpg\",\"homepages\\\\March2025\\\\L245zleMKGgxW7R3OqDV.jpg\"]', 'News and Updates', 'HAPSA regularly shares news and updates on its ongoing efforts to strengthen Nepal’s health system. Stay informed about our latest projects, community initiatives, health awareness campaigns, and collaborations with government bodies. Follow our updates to learn how we are driving equitable healthcare solutions and making a positive impact in local communities.', '2025-03-12 20:16:02', '2025-03-12 23:18:37', 'homepages\\March2025\\wAxqbwyos9ca8wTvvS1j.png', 'https://www.youtube.com/watch?v=wzZNU_IFgmc');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2025-03-11 04:01:12', '2025-03-11 04:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2025-03-11 04:01:12', '2025-03-11 04:01:12', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2025-03-11 04:01:12', '2025-03-11 04:23:04', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2025-03-11 04:01:12', '2025-03-11 04:01:12', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2025-03-11 04:01:12', '2025-03-11 04:01:12', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2025-03-11 04:01:12', '2025-03-11 04:23:04', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2025-03-11 04:01:12', '2025-03-11 04:23:04', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2025-03-11 04:01:12', '2025-03-11 04:23:04', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2025-03-11 04:01:12', '2025-03-11 04:23:04', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2025-03-11 04:01:12', '2025-03-11 04:23:04', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 17, '2025-03-11 04:01:12', '2025-03-12 20:22:27', 'voyager.settings.index', NULL),
(11, 1, 'Text Content', '', '_self', 'voyager-categories', NULL, 14, 1, '2025-03-11 04:14:21', '2025-03-11 04:23:04', 'voyager.abouts.index', NULL),
(12, 1, 'Missions', '', '_self', 'voyager-book', '#000000', 14, 2, '2025-03-11 04:18:57', '2025-03-11 04:23:39', 'voyager.missions.index', 'null'),
(13, 1, 'Teams', '', '_self', 'voyager-people', NULL, 14, 3, '2025-03-11 04:21:29', '2025-03-11 04:23:07', 'voyager.teams.index', NULL),
(14, 1, 'About Us', '', '_self', 'voyager-folder', '#000000', NULL, 8, '2025-03-11 04:23:02', '2025-03-12 20:22:27', NULL, ''),
(15, 1, 'Projects', '', '_self', 'voyager-folder', NULL, NULL, 9, '2025-03-11 04:29:38', '2025-03-12 20:22:27', 'voyager.projects.index', NULL),
(16, 1, 'News', '', '_self', 'voyager-news', NULL, NULL, 10, '2025-03-11 04:37:38', '2025-03-12 20:22:27', 'voyager.news.index', NULL),
(17, 1, 'Photo Gallery', '', '_self', 'voyager-images', '#000000', 19, 1, '2025-03-11 04:48:40', '2025-03-11 05:12:01', 'voyager.photo-galleries.index', 'null'),
(18, 1, 'Video Gallery', '', '_self', 'voyager-video', '#000000', 19, 2, '2025-03-11 05:11:31', '2025-03-11 05:12:10', 'voyager.video-galleries.index', 'null'),
(19, 1, 'Gallery', '', '_self', 'voyager-folder', '#000000', NULL, 11, '2025-03-11 05:11:46', '2025-03-12 20:22:27', NULL, ''),
(20, 1, 'Volunteers', '', '_self', 'voyager-folder', NULL, NULL, 12, '2025-03-11 06:14:10', '2025-03-12 20:22:27', 'voyager.volunteers.index', NULL),
(21, 1, 'Donates', '', '_self', 'voyager-folder', NULL, NULL, 13, '2025-03-11 06:22:46', '2025-03-12 20:22:27', 'voyager.donates.index', NULL),
(22, 1, 'FAQs', '', '_self', 'voyager-folder', NULL, NULL, 14, '2025-03-11 06:28:57', '2025-03-12 20:22:27', 'voyager.faqs.index', NULL),
(23, 1, 'Testimonials', '', '_self', 'voyager-folder', NULL, NULL, 15, '2025-03-11 06:55:47', '2025-03-12 20:22:27', 'voyager.testimonials.index', NULL),
(24, 1, 'Resources', '', '_self', 'voyager-folder', NULL, NULL, 16, '2025-03-12 19:47:41', '2025-03-12 20:22:27', 'voyager.resources.index', NULL),
(25, 1, 'Homepages', '', '_self', 'voyager-home', NULL, NULL, 7, '2025-03-12 20:12:44', '2025-03-12 20:22:29', 'voyager.homepages.index', NULL),
(26, 1, 'Highlight Images', '', '_self', 'voyager-images', '#000000', NULL, 6, '2025-03-12 20:17:56', '2025-03-12 20:22:50', 'voyager.photos.index', 'null');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `text` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `image`, `title`, `text`, `order`, `created_at`, `updated_at`) VALUES
(1, 'missions\\March2025\\9OZeaaPZ0SP1005WRaSC.png', 'Equitable Healthcare for All', 'We are committed to high-quality, patient- and community-centered health services while advocating for government accountability in reducing financial burdens on citizens.', 1, '2025-03-11 04:19:25', '2025-03-11 04:19:25'),
(2, 'missions\\March2025\\JRVhIqrbaFqFAUNY6bUd.png', 'Health Education & Awareness', 'We prioritize spreading health rights awareness, promoting education, and fostering preventive care to build a healthier future for the next generation.', 2, '2025-03-11 04:19:37', '2025-03-11 04:19:37'),
(3, 'missions\\March2025\\b2uQBnUS5okKKwG0hgry.png', 'Collaboration & Integration', 'We work closely with government bodies, communities, and multi-sectoral partners to create sustainable, community-driven healthcare solutions.', 3, '2025-03-11 04:19:48', '2025-03-11 04:19:48'),
(4, 'missions\\March2025\\29CmxukpYFdm8bx8Tr8S.png', 'Innovation & Ethical Practices', 'We embrace diversity, independent thinking, and ethical approaches, ensuring adaptable and innovative strategies in all aspects of our work.', 4, '2025-03-11 04:20:02', '2025-03-11 04:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `basic_page_title` mediumtext DEFAULT NULL,
  `basic_meta_description` longtext DEFAULT NULL,
  `basic_banner` varchar(255) DEFAULT NULL,
  `basic_description` longtext DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `slug` mediumtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quote` longtext DEFAULT NULL,
  `link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `basic_page_title`, `basic_meta_description`, `basic_banner`, `basic_description`, `cover`, `date`, `title`, `slug`, `description`, `meta_description`, `created_at`, `updated_at`, `quote`, `link`) VALUES
(1, 'News And Updates', NULL, 'news\\March2025\\JXlXe41NuiVeFS73OOfV.jpg', '<p>News</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 04:37:44', '2025-03-11 04:39:16', NULL, NULL),
(2, NULL, NULL, NULL, NULL, 'news\\March2025\\ukHXj1MPiIlhyKqSp3Q6.jpg', '2025-03-05', 'सीपीआरबारे सचेतना फैलाउन गीत', 'song-to-spread-awareness-about-cpr', '<p>काठमाडौँ &mdash; सीपीआर (कृत्रिम श्वासप्रश्वास) बारे जनचेतना फैलाउने उद्देश्यले गीत सार्वजिनक गरिएको छ । दक्षिण एसियाली स्वास्थ्य समुन्नति कार्यक्रम (हाप्सा) नेपालले नेपालमै पहिलोपटक सीपीआरसम्बन्धी गीत सार्वजनिक गरेको हो ।</p>', NULL, '2025-03-11 04:40:42', '2025-03-11 04:52:08', NULL, 'https://ekantipur.com/health/2024/12/05/song-to-spread-awareness-about-cpr-18-27.html'),
(3, NULL, NULL, NULL, NULL, 'news\\March2025\\dMcjuHeSeN7VfPPTcpW0.jpg', '2025-03-11', 'Facing a COVID Crisis, Nepal Cries Out for Help', 'facing-a-covid-crisis-nepal-cries-out-for-help', '<p>The COVID-19 crisis in Nepal is outpacing the chaos in next door India. In Kathmandu, the best private hospitals are turning patients away for lack of beds and supplies, and in rural parts of the country, where hospitals do not exist, people are dying at home. A large swath of western Nepal depends on oxygen cylinders shipped from a single city, Nepalgunj, driven for hours over potholed roads. Official statistics widely believed to be an undercount put the death toll at around 4,700, while the University of Washington\'s Institute for Health Metrics and Evaluation (IMHE) predicts 40,000 deaths by the beginning of July, a projected per-capita toll worse than any other country in South or Southeast Asia. \"People are dying every few minutes because of a lack oxygen, we don\'t know when this will end,\" said Bhola Paswan, a journalist in Saptari District, in the eastern plains. \"It\'s chaos.\" COVID-19\'s wreckage is likely to be worse than the catastrophic earthquakes Nepal suffered just six years ago, in April and May 2015. At that time, the international community quickly came together to pledge over $4 billion in aid to Nepal. A few days ago, Nepal\'s Health Ministry put out an urgent international call for supplies &mdash; including oxygen generation plants, ventilators, and 37 million doses of vaccine, for its population of 29 million people. (So far, only 2.4 million shots have been administered, and just over 1 percent of people have received both doses.) However, with other countries battling their own emergencies at home, the Ministry\'s wish-list may be difficult to fulfill. India, which donated or sold to Nepal the bulk of its vaccine doses to date, is now preoccupied with its own health crisis. China has also donated various medicines and supplies, but its vaccine production capacity is much smaller than India\'s. The U.S., through the COVAX facility, has contributed far fewer jabs to Nepal</p>', 'The COVID-19 crisis in Nepal is outpacing the chaos in next door India. In Kathmandu, the best private hospitals are turning patients away for lack of beds and supplies, and in rural parts of the country, where hospitals do not exist, people are dying at home. A large swath of western Nepal depends on oxygen cylinders shipped from a single city, Nepalgunj, driven for hours over potholed roads', '2025-03-11 04:44:06', '2025-03-12 21:41:39', 'People are dying every few minutes because of a lack oxygen, we don&rsquo;t know when this will end&hellip; It&rsquo;s chaos.', NULL),
(4, NULL, NULL, NULL, NULL, 'news\\March2025\\zO4Z1EJf0GHiCJNOTtCL.jpg', '2025-02-05', 'नेपालीमा सिपिआर गीत सार्वजनिक', NULL, NULL, NULL, '2025-03-11 04:52:54', '2025-03-11 04:52:54', NULL, 'https://www.setopati.com/art/art-activity/348118');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(2, 'browse_bread', NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(3, 'browse_database', NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(4, 'browse_media', NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(5, 'browse_compass', NULL, '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(6, 'browse_menus', 'menus', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(7, 'read_menus', 'menus', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(8, 'edit_menus', 'menus', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(9, 'add_menus', 'menus', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(10, 'delete_menus', 'menus', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(11, 'browse_roles', 'roles', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(12, 'read_roles', 'roles', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(13, 'edit_roles', 'roles', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(14, 'add_roles', 'roles', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(15, 'delete_roles', 'roles', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(16, 'browse_users', 'users', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(17, 'read_users', 'users', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(18, 'edit_users', 'users', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(19, 'add_users', 'users', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(20, 'delete_users', 'users', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(21, 'browse_settings', 'settings', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(22, 'read_settings', 'settings', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(23, 'edit_settings', 'settings', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(24, 'add_settings', 'settings', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(25, 'delete_settings', 'settings', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(26, 'browse_abouts', 'abouts', '2025-03-11 04:14:21', '2025-03-11 04:14:21'),
(27, 'read_abouts', 'abouts', '2025-03-11 04:14:21', '2025-03-11 04:14:21'),
(28, 'edit_abouts', 'abouts', '2025-03-11 04:14:21', '2025-03-11 04:14:21'),
(29, 'add_abouts', 'abouts', '2025-03-11 04:14:21', '2025-03-11 04:14:21'),
(30, 'delete_abouts', 'abouts', '2025-03-11 04:14:21', '2025-03-11 04:14:21'),
(31, 'browse_missions', 'missions', '2025-03-11 04:18:57', '2025-03-11 04:18:57'),
(32, 'read_missions', 'missions', '2025-03-11 04:18:57', '2025-03-11 04:18:57'),
(33, 'edit_missions', 'missions', '2025-03-11 04:18:57', '2025-03-11 04:18:57'),
(34, 'add_missions', 'missions', '2025-03-11 04:18:57', '2025-03-11 04:18:57'),
(35, 'delete_missions', 'missions', '2025-03-11 04:18:57', '2025-03-11 04:18:57'),
(36, 'browse_teams', 'teams', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(37, 'read_teams', 'teams', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(38, 'edit_teams', 'teams', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(39, 'add_teams', 'teams', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(40, 'delete_teams', 'teams', '2025-03-11 04:21:29', '2025-03-11 04:21:29'),
(41, 'browse_projects', 'projects', '2025-03-11 04:29:38', '2025-03-11 04:29:38'),
(42, 'read_projects', 'projects', '2025-03-11 04:29:38', '2025-03-11 04:29:38'),
(43, 'edit_projects', 'projects', '2025-03-11 04:29:38', '2025-03-11 04:29:38'),
(44, 'add_projects', 'projects', '2025-03-11 04:29:38', '2025-03-11 04:29:38'),
(45, 'delete_projects', 'projects', '2025-03-11 04:29:38', '2025-03-11 04:29:38'),
(46, 'browse_news', 'news', '2025-03-11 04:37:38', '2025-03-11 04:37:38'),
(47, 'read_news', 'news', '2025-03-11 04:37:38', '2025-03-11 04:37:38'),
(48, 'edit_news', 'news', '2025-03-11 04:37:38', '2025-03-11 04:37:38'),
(49, 'add_news', 'news', '2025-03-11 04:37:38', '2025-03-11 04:37:38'),
(50, 'delete_news', 'news', '2025-03-11 04:37:38', '2025-03-11 04:37:38'),
(51, 'browse_photo_galleries', 'photo_galleries', '2025-03-11 04:48:40', '2025-03-11 04:48:40'),
(52, 'read_photo_galleries', 'photo_galleries', '2025-03-11 04:48:40', '2025-03-11 04:48:40'),
(53, 'edit_photo_galleries', 'photo_galleries', '2025-03-11 04:48:40', '2025-03-11 04:48:40'),
(54, 'add_photo_galleries', 'photo_galleries', '2025-03-11 04:48:40', '2025-03-11 04:48:40'),
(55, 'delete_photo_galleries', 'photo_galleries', '2025-03-11 04:48:40', '2025-03-11 04:48:40'),
(56, 'browse_video_galleries', 'video_galleries', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(57, 'read_video_galleries', 'video_galleries', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(58, 'edit_video_galleries', 'video_galleries', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(59, 'add_video_galleries', 'video_galleries', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(60, 'delete_video_galleries', 'video_galleries', '2025-03-11 05:11:31', '2025-03-11 05:11:31'),
(61, 'browse_volunteers', 'volunteers', '2025-03-11 06:14:10', '2025-03-11 06:14:10'),
(62, 'read_volunteers', 'volunteers', '2025-03-11 06:14:10', '2025-03-11 06:14:10'),
(63, 'edit_volunteers', 'volunteers', '2025-03-11 06:14:10', '2025-03-11 06:14:10'),
(64, 'add_volunteers', 'volunteers', '2025-03-11 06:14:10', '2025-03-11 06:14:10'),
(65, 'delete_volunteers', 'volunteers', '2025-03-11 06:14:10', '2025-03-11 06:14:10'),
(66, 'browse_donates', 'donates', '2025-03-11 06:22:46', '2025-03-11 06:22:46'),
(67, 'read_donates', 'donates', '2025-03-11 06:22:46', '2025-03-11 06:22:46'),
(68, 'edit_donates', 'donates', '2025-03-11 06:22:46', '2025-03-11 06:22:46'),
(69, 'add_donates', 'donates', '2025-03-11 06:22:46', '2025-03-11 06:22:46'),
(70, 'delete_donates', 'donates', '2025-03-11 06:22:46', '2025-03-11 06:22:46'),
(71, 'browse_faqs', 'faqs', '2025-03-11 06:28:57', '2025-03-11 06:28:57'),
(72, 'read_faqs', 'faqs', '2025-03-11 06:28:57', '2025-03-11 06:28:57'),
(73, 'edit_faqs', 'faqs', '2025-03-11 06:28:57', '2025-03-11 06:28:57'),
(74, 'add_faqs', 'faqs', '2025-03-11 06:28:57', '2025-03-11 06:28:57'),
(75, 'delete_faqs', 'faqs', '2025-03-11 06:28:57', '2025-03-11 06:28:57'),
(76, 'browse_testimonials', 'testimonials', '2025-03-11 06:55:47', '2025-03-11 06:55:47'),
(77, 'read_testimonials', 'testimonials', '2025-03-11 06:55:47', '2025-03-11 06:55:47'),
(78, 'edit_testimonials', 'testimonials', '2025-03-11 06:55:47', '2025-03-11 06:55:47'),
(79, 'add_testimonials', 'testimonials', '2025-03-11 06:55:47', '2025-03-11 06:55:47'),
(80, 'delete_testimonials', 'testimonials', '2025-03-11 06:55:47', '2025-03-11 06:55:47'),
(81, 'browse_resources', 'resources', '2025-03-12 19:47:41', '2025-03-12 19:47:41'),
(82, 'read_resources', 'resources', '2025-03-12 19:47:41', '2025-03-12 19:47:41'),
(83, 'edit_resources', 'resources', '2025-03-12 19:47:41', '2025-03-12 19:47:41'),
(84, 'add_resources', 'resources', '2025-03-12 19:47:41', '2025-03-12 19:47:41'),
(85, 'delete_resources', 'resources', '2025-03-12 19:47:41', '2025-03-12 19:47:41'),
(86, 'browse_homepages', 'homepages', '2025-03-12 20:12:44', '2025-03-12 20:12:44'),
(87, 'read_homepages', 'homepages', '2025-03-12 20:12:44', '2025-03-12 20:12:44'),
(88, 'edit_homepages', 'homepages', '2025-03-12 20:12:44', '2025-03-12 20:12:44'),
(89, 'add_homepages', 'homepages', '2025-03-12 20:12:44', '2025-03-12 20:12:44'),
(90, 'delete_homepages', 'homepages', '2025-03-12 20:12:44', '2025-03-12 20:12:44'),
(91, 'browse_photos', 'photos', '2025-03-12 20:17:56', '2025-03-12 20:17:56'),
(92, 'read_photos', 'photos', '2025-03-12 20:17:56', '2025-03-12 20:17:56'),
(93, 'edit_photos', 'photos', '2025-03-12 20:17:56', '2025-03-12 20:17:56'),
(94, 'add_photos', 'photos', '2025-03-12 20:17:56', '2025-03-12 20:17:56'),
(95, 'delete_photos', 'photos', '2025-03-12 20:17:56', '2025-03-12 20:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
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
(21, 2),
(22, 1),
(23, 1),
(23, 2),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(34, 2),
(35, 1),
(35, 2),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(51, 2),
(52, 1),
(52, 2),
(53, 1),
(53, 2),
(54, 1),
(54, 2),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(57, 2),
(58, 1),
(58, 2),
(59, 1),
(59, 2),
(60, 1),
(60, 2),
(61, 1),
(61, 2),
(62, 1),
(62, 2),
(63, 1),
(63, 2),
(64, 1),
(64, 2),
(65, 1),
(65, 2),
(66, 1),
(66, 2),
(67, 1),
(67, 2),
(68, 1),
(68, 2),
(69, 1),
(69, 2),
(70, 1),
(70, 2),
(71, 1),
(71, 2),
(72, 1),
(72, 2),
(73, 1),
(73, 2),
(74, 1),
(74, 2),
(75, 1),
(75, 2),
(76, 1),
(76, 2),
(77, 1),
(77, 2),
(78, 1),
(78, 2),
(79, 1),
(79, 2),
(80, 1),
(80, 2),
(81, 1),
(81, 2),
(82, 1),
(82, 2),
(83, 1),
(83, 2),
(84, 1),
(84, 2),
(85, 1),
(85, 2),
(86, 1),
(86, 2),
(87, 1),
(87, 2),
(88, 1),
(88, 2),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(92, 1),
(92, 2),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `img`, `order`, `created_at`, `updated_at`) VALUES
(1, 'photos\\March2025\\8RSh6a0GJeahUoFkRbf3.jpg', 1, '2025-03-12 20:18:13', '2025-03-12 20:18:13'),
(2, 'photos\\March2025\\RYXN73fuSujgFjSDLtQo.jpg', 2, '2025-03-12 20:18:30', '2025-03-12 20:18:30'),
(3, 'photos\\March2025\\ONwwdfv1x1Tjo8bgS0Fx.jpg', 3, '2025-03-12 20:18:59', '2025-03-12 20:18:59'),
(4, 'photos\\March2025\\3oxqo8C64XVbYSO5kYeZ.jpg', 4, '2025-03-12 20:21:29', '2025-03-12 20:21:29'),
(5, 'photos\\March2025\\QVJDCLf3xWB89JY0oNgr.jpg', 5, '2025-03-12 20:21:39', '2025-03-12 20:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `photo_galleries`
--

CREATE TABLE `photo_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `images` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo_galleries`
--

INSERT INTO `photo_galleries` (`id`, `title`, `images`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Earthquake Relief', '[\"photo-galleries\\\\March2025\\\\WuXBzvAX0Z5pSDqTAeoM.jpg\",\"photo-galleries\\\\March2025\\\\R5TbdLmU0e4gkKCTT5U9.jpg\",\"photo-galleries\\\\March2025\\\\MDmEeiWT3UhAl4x9LqNb.jpg\",\"photo-galleries\\\\March2025\\\\Fd6qcHsRJYbUMh8StQnp.jpg\",\"photo-galleries\\\\March2025\\\\U3EjuwYrlENNpa8md1UT.jpg\",\"photo-galleries\\\\March2025\\\\R11iKjr9aUbn9fQvsbFk.jpg\",\"photo-galleries\\\\March2025\\\\uXlaK5LxyGBNvSPpa3z6.jpg\",\"photo-galleries\\\\March2025\\\\6q5cEhWFImjEdil077zt.jpg\",\"photo-galleries\\\\March2025\\\\Sj3Q9y2BWbVyFuk0UsSt.jpg\",\"photo-galleries\\\\March2025\\\\Yc4UjQ1WOxuz6iKYgoIJ.jpg\"]', 1, '2025-03-11 04:49:17', '2025-03-11 04:50:38'),
(2, 'Melamchi Relief DIstribution', '[\"photo-galleries\\\\March2025\\\\ylMmM3HbVyk5IZttjpLp.jpg\",\"photo-galleries\\\\March2025\\\\AhMbigSycgbUKkuxG2ip.jpg\",\"photo-galleries\\\\March2025\\\\FHnhqucmkYGuw92eDzk9.jpg\"]', 2, '2025-03-11 04:50:02', '2025-03-11 04:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `basic_page_title` mediumtext DEFAULT NULL,
  `basic_meta_description` longtext DEFAULT NULL,
  `basic_banner` varchar(255) DEFAULT NULL,
  `basic_description` longtext DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `slug` mediumtext DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `quote` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `basic_page_title`, `basic_meta_description`, `basic_banner`, `basic_description`, `title`, `slug`, `cover`, `date`, `quote`, `description`, `created_at`, `updated_at`, `meta_description`) VALUES
(1, 'HAPSA Projects', 'HAPSA undertakes projects aimed at strengthening Nepal’s health system by enhancing primary healthcare services and promoting public health awareness. These initiatives focus on supporting health facility staff, fostering community participation, and collaborating with government bodies to create equitable, community-centric healthcare solutions.', 'projects\\March2025\\vi7a1tbIObhqqg4WZCJd.jpg', '<h2>HAPSA Projects</h2>\r\n<p>HAPSA undertakes projects aimed at strengthening Nepal&rsquo;s health system by enhancing primary healthcare services and promoting public health awareness. These initiatives focus on supporting health facility staff, fostering community participation, and collaborating with government bodies to create equitable, community-centric healthcare solutions.</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-11 04:30:29', '2025-03-11 04:31:26', NULL),
(2, NULL, NULL, NULL, NULL, 'Jajarkot Earthquake Relief', 'jajarkot-earthquake-relief', 'projects\\March2025\\ZvKKOR5tuQxfJnYhCK1u.jpg', '2024-05-14', 'These places have faced acute cholera epidemics in the past and are vulnerable to any kinds of contaminated diseases.', '<p>A month ago, the devastating 6.4 magnitute earthquake struck Jarjarkot, killing150+ lives and impacting about 40000 families in the Western Nepal and posing ongoing challenges the humanity. The earthquake not only affected the epicenter but also the neighboring districts including, Rukum Paschhim and Purba, Salyan, Rolpa, Nawarparasi, Dailekh, Dang, Baitadi, Jumla, kalikot, Pyuthan, and Achham. The disaster claimed over 100 lives and rendered more than 300 individuals injured. In the aftermath, in addition to loosing shelters, the community is facing significant challenges related to sanitation, quality of life, and overall health. Displaced communities are residing in makeshift shelters, making them vulnerable to respiratory problems, diarrheal diseases, poor sanitation, water and food crises, and various other complex physical and mental health burdens.</p>\r\n<p>It is imperative to monitor and understand the on-going health situation of the affected area during this difficult times. Additionally, it is crucial to plan and implement strategies to prevent post-disaster disease outbreaks and deterioration in the quality of life for those communities. These places have faced acute cholera epidemics in the past and are vulnerable to any kinds of contaminated diseases. Therefore, we at HAPSA designed Post Disaster Sanitation Kit to the affected communities with a specific focus on the sanitation and hygiene needs. Each sanitation kit comprises of a kit bag containing a soap, 100 ml sanitizer, 60 ml water purifier, 5 masks, 14 sanitary pads,4 tooth brushes and a 100gm toothpaste for a family. These kits are carefully curated to meet the immediate needs of the affected families and to ensure sanitation and hygiene.</p>\r\n<p>As of now, we have successfully delivered over 1000 sanitation kits to the affected families through our local distribution partners and with the help of collaborating organizations like Nepal Rising for 500 kits and rest by Gofundme campaign led by Dr. Ramu Kharel, founder of HAPSA from the USA. With our unwavering dedication to providing crucial relief, we have set an ambitious goal of reaching at least 40,000 families in the coming days, recognizing the urgency and scale of the challenges faced by the people. We invite and encourage potential partners, organizations, and individuals with shared vision to help people in dire need. Your support and collaborative efforts can definitely make a meaningful difference in rebuilding and restoring the lives of the affected individuals.</p>\r\n<p>&nbsp;</p>', '2025-03-11 04:33:00', '2025-03-14 00:44:08', NULL),
(3, NULL, NULL, NULL, NULL, 'Melamchi Relief', 'melamchi-relief', 'projects\\March2025\\FqjatiFzvCnWkmyFrfD9.jpg', '2022-02-15', NULL, NULL, '2025-03-11 04:33:38', '2025-03-11 04:33:38', NULL),
(4, NULL, NULL, NULL, NULL, 'Poison Center Collaborative', 'poison-center-collaborative', NULL, NULL, NULL, NULL, '2025-03-13 00:45:08', '2025-03-13 00:45:08', NULL),
(5, NULL, NULL, NULL, NULL, 'Rural Trauma Care', 'rural-trauma-care', NULL, NULL, NULL, NULL, '2025-03-13 00:53:49', '2025-03-13 00:53:49', NULL),
(6, NULL, NULL, NULL, NULL, 'CPR Nepal Life Savers Program', 'cpr-nepal-life-savers-program', NULL, NULL, NULL, NULL, '2025-03-14 00:39:28', '2025-03-16 00:50:34', NULL),
(7, NULL, NULL, NULL, NULL, 'COVID-19 Activities', 'covid-19-activities', NULL, NULL, NULL, '<h2 class=\"page-title\">Home Isolation Kits Distribution</h2>\r\n<p>As a pilot initiative, HAPSA Nepal along with COVID Alliance Nepal worked in building a Home Isolation Kit for a municipality in Dhangadhi (one the the most hard hit areas in Nepal). Given its utility, we expanded the kit&rsquo;s use across the country.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong data-start=\"48\" data-end=\"63\">HAPSA Nepal</strong>, in collaboration with <strong data-start=\"87\" data-end=\"122\">Swayambhu International College</strong> and <strong data-start=\"127\" data-end=\"149\" data-is-only-node=\"\">Prime CA Kathmandu</strong>, released an important video to highlight essential information about COVID-19 in Nepal. The video aimed to raise awareness and educate the public on critical aspects of the pandemic and preventive measures. <a title=\"COVID 19 in Nepal: जान्नै पर्ने कुरा हरु\" href=\"https://www.youtube.com/watch?v=b9ufKTcDCjY\" target=\"_blank\" rel=\"noopener\">https://www.youtube.com/watch?v=b9ufKTcDCjY</a></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>FCHV Training</strong></p>\r\n<p><strong><a title=\"FCHV In Person training highlight: Musikot Municipality\" href=\"https://www.youtube.com/watch?v=kp7jst4wvwA\" target=\"_blank\" rel=\"noopener\">https://www.youtube.com/watch?v=kp7jst4wvwA</a></strong></p>\r\n<p>&nbsp;</p>\r\n<h1 class=\"style-scope ytd-watch-metadata\">Nepal Isolation/Surge Center Training</h1>\r\n<p><strong><a title=\"Nepal Isolation/Surge Center Training\" href=\"https://www.youtube.com/watch?v=VfclEVGxwf0\">https://www.youtube.com/watch?v=VfclEVGxwf0</a></strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2025-03-14 00:42:39', '2025-03-18 01:20:39', NULL),
(8, NULL, NULL, NULL, NULL, 'Earthquake Relief', 'earthquake-relief', NULL, NULL, NULL, '<h1><strong>Jajarkot Earthquake Relief</strong></h1>\r\n<p>The devastating 6.4 magnitute earthquake struck Jarjarkot on 3 November 2023 (2080/07/18 BS), killing150+ lives and impacting about 40000 families in the Western Nepal and posing ongoing challenges the humanity. The earthquake not only affected the epicenter but also the neighboring districts including, Rukum Paschhim and Purba, Salyan, Rolpa, Nawarparasi, Dailekh, Dang, Baitadi, Jumla, kalikot, Pyuthan, and Achham. The disaster claimed over 100 lives and rendered more than 300 individuals injured. In the aftermath, in addition to loosing shelters, the community is facing significant challenges related to sanitation, quality of life, and overall health. Displaced communities are residing in makeshift shelters, making them vulnerable to respiratory problems, diarrheal diseases, poor sanitation, water and food crises, and various other complex physical and mental health burdens.&nbsp;</p>\r\n<p>It was imperative to monitor and understand the ongoing health situation of the affected area during those difficult times. Additionally, it was crucial to plan and implement strategies to prevent post-disaster disease outbreaks and deterioration in the quality of life for those communities. These places faced acute cholera epidemics in the past and were vulnerable to various contaminated diseases. Therefore, HAPSA distributed the Post-Disaster Sanitation Kit for the affected communities, with a specific focus on sanitation and hygiene needs. Each sanitation kit comprised a kit bag containing a soap, 100 ml sanitizer, 60 ml water purifier, five masks, 14 sanitary pads, four toothbrushes, and a 100 gm toothpaste for a family. These kits were carefully curated to meet the immediate needs of the affected families and to ensure sanitation and hygiene.</p>\r\n<div class=\"flex max-w-full flex-col flex-grow\">\r\n<div class=\"min-h-8 text-message relative flex w-full flex-col items-end gap-2 whitespace-normal break-words text-start [.text-message+&amp;]:mt-5\" dir=\"auto\" data-message-author-role=\"assistant\" data-message-id=\"6812685f-8bc3-4938-9759-fcf338ae8e62\" data-message-model-slug=\"gpt-4o\">\r\n<div class=\"flex w-full flex-col gap-1 empty:hidden first:pt-[3px]\">\r\n<div class=\"markdown prose w-full break-words dark:prose-invert light\">\r\n<p data-start=\"0\" data-end=\"818\" data-is-last-node=\"\" data-is-only-node=\"\">We successfully delivered over 1,000 sanitation kits to the affected families through our local distribution partners and with the help of collaborating organizations, including Nepal Rising, which contributed 500 kits, while the remaining kits were funded through a GoFundMe campaign led by Dr. Ramu Kharel, founder of HAPSA, from the USA. With our unwavering dedication to providing crucial relief, we set an ambitious goal of reaching at least 40,000 families in the coming days, recognizing the urgency and scale of the challenges faced by the people. We invited and encouraged potential partners, organizations, and individuals who shared our vision to help those in dire need. Their support and collaborative efforts made a meaningful difference in rebuilding and restoring the lives of the affected individuals.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"mb-2 flex gap-3 -ml-2\" tabindex=\"0\">\r\n<div class=\"flex items-center justify-start rounded-xl p-1\">\r\n<div>\r\n<div class=\"flex items-center transition-opacity group-hover/turn:opacity-100 opacity-100\">&nbsp;</div>\r\n<div class=\"flex items-center transition-opacity group-hover/turn:opacity-100 opacity-100\">&nbsp;</div>\r\n<div class=\"flex items-center transition-opacity group-hover/turn:opacity-100 opacity-100\">\r\n<h1>Melamchi Relief</h1>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p data-start=\"0\" data-end=\"57\"><strong data-start=\"0\" data-end=\"55\">Flood Relief Effort in Sindhupalchok &ndash; 21 June 2021</strong></p>\r\n<p data-start=\"59\" data-end=\"1184\" data-is-last-node=\"\" data-is-only-node=\"\">The devastating floods in Sindhupalchok left many communities in urgent need of assistance. On <strong data-start=\"154\" data-end=\"170\">21 June 2021</strong>, in collaboration with <strong data-start=\"194\" data-end=\"203\">HAPSA</strong> and <strong data-start=\"208\" data-end=\"234\">White Grain Foundation</strong>, we delivered essential relief supplies, including <strong data-start=\"286\" data-end=\"317\">first aid kits and medicine</strong>, to the affected areas of Melamchi and Helambu. A total of <strong data-start=\"377\" data-end=\"417\">500 kits, ORS, and diarrhea medicine</strong> were handed over to the <strong data-start=\"442\" data-end=\"484\">District Disaster Management Committee</strong>, led by the Nepal Army and District Administration Office, for distribution based on need assessments. Additionally, <strong data-start=\"602\" data-end=\"614\">195 kits</strong> were provided to <strong data-start=\"632\" data-end=\"652\">Hamro Team Nepal</strong>, a frontline organization supporting affected families. These kits were distributed to <strong data-start=\"740\" data-end=\"755\">60 families</strong> alongside their ongoing food relief efforts. Understanding the urgent needs of underserved areas, we also distributed <strong data-start=\"874\" data-end=\"885\">60 kits</strong> to <strong data-start=\"889\" data-end=\"930\">25 families in Dhital Basti, Melamchi</strong>, a severely impacted community that had received limited relief support. Together, we stood with the people of Sindhupalchok during this crisis, ensuring timely and essential aid reached those who needed it most.&nbsp;</p>\r\n<p data-start=\"59\" data-end=\"1184\" data-is-last-node=\"\" data-is-only-node=\"\"><a href=\"https://www.youtube.com/watch?v=8aBlYUhQ6to\">https://www.youtube.com/watch?v=8aBlYUhQ6to</a></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2025-03-17 01:06:34', '2025-03-18 00:56:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `basic_page_title` varchar(255) DEFAULT NULL,
  `basic_meta_description` longtext DEFAULT NULL,
  `basic_banner` varchar(255) DEFAULT NULL,
  `title` mediumtext DEFAULT NULL,
  `file` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `basic_page_title`, `basic_meta_description`, `basic_banner`, `title`, `file`, `order`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Resources', NULL, 'resources\\March2025\\rJWk99frE8FTOFq5dIik.png', NULL, '[]', NULL, '2025-03-12 19:48:14', '2025-03-12 19:48:54', NULL),
(2, NULL, NULL, NULL, 'HAPSA CPR Report', '[{\"download_link\":\"resources\\\\March2025\\\\u1Y3a8Rkfkv3TGT3XCUs.pdf\",\"original_name\":\"HAPSA CPR Report.pdf\"}]', 1, '2025-03-12 19:49:16', '2025-03-12 19:49:16', NULL),
(3, NULL, NULL, NULL, 'The association between the type of bystander and survival after an out-of-hospital cardiac arrest: A French nationwide study - PubMed', '[]', 2, '2025-03-12 19:50:36', '2025-03-12 19:50:36', 'https://pubmed.ncbi.nlm.nih.gov/39885975/'),
(4, NULL, NULL, NULL, 'Prevalence, outcome and conduct of in-hospital cardiopulmonary resuscitation in government hospitals of Nepal', '[]', 3, '2025-03-12 19:50:48', '2025-03-12 19:50:48', 'https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0316950');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2025-03-11 04:01:12', '2025-03-11 04:01:12'),
(2, 'user', 'Normal User', '2025-03-11 04:01:12', '2025-03-11 04:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Hapsa Globe', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Hapsa Globe', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/March2025/NQelJltpypDQ4GZGxujq.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\March2025\\wq9yIAQ8dB25uw1eXueJ.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'HAPSA', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to CMS of HAPSA Globe', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\March2025\\pWEDIdWVBdhvMHfkA482.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\March2025\\zeeLwr7HFsV9RzePpVXR.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.footer_text', 'Footer Text', 'HAPSA Nepal is a 501(c)(3) nonprofit organization, EIN 30-1032421. Donations are tax-deductible.', NULL, 'text', 15, 'Site'),
(12, 'site.qr', 'QR Code', 'settings\\March2025\\jsLoQLnKksgRhOxezqi9.png', NULL, 'image', 6, 'Site'),
(13, 'contact-us.facebook', 'Facebook', 'https://www.facebook.com/hapsa4all', NULL, 'text', 8, 'Contact Us'),
(14, 'contact-us.youtube', 'Youtube', 'https://www.youtube.com/channel/UCQE7hSKhZ5KR70rhZZ6NPzA', NULL, 'text', 9, 'Contact Us'),
(15, 'contact-us.instagram', 'Instagram', 'https://www.instagram.com/hapsanepal/', NULL, 'text', 10, 'Contact Us'),
(16, 'contact-us.address', 'Address', 'Buddhanagar, Kathmandu', NULL, 'text', 11, 'Contact Us'),
(17, 'contact-us.email', 'Email', 'hapsa4all@gmail.com', NULL, 'text', 13, 'Contact Us'),
(18, 'contact-us.phone', 'Phone', '+977-9841140403', NULL, 'text', 14, 'Contact Us'),
(19, 'contact-us.map', 'Map Address', 'https://maps.app.goo.gl/M3PaCRQDbsrHqJbi7', NULL, 'text', 12, 'Contact Us'),
(20, 'site.footer_logo_text', 'Footer Logo Text', 'Comprising young professionals from around the world, HAPSA champions equitable health services for all.', NULL, 'text', 7, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` mediumtext DEFAULT NULL,
  `name` mediumtext DEFAULT NULL,
  `education` mediumtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `image`, `designation`, `name`, `education`, `order`, `created_at`, `updated_at`) VALUES
(1, 'teams\\March2025\\6lgiEJYre62W4DYUAI4T.png', 'Founder', 'Dr. Ramu Kharel', 'MD , MPH Brown University, USA', 1, '2025-03-11 04:21:51', '2025-03-11 04:21:51'),
(2, 'teams\\March2025\\l0wUuanuGW3mfIqwY6NL.png', 'President', 'Pankaj Bhattarai', 'MBA, School of Management Tribhuvan University (SOMTU)', 2, '2025-03-11 04:22:10', '2025-03-11 04:22:10'),
(7, 'teams/March2025/9UzkaWx3v3fK6QkF6qGw.webp', NULL, 'Dr. Kamal Thapa', 'M.B.B.S. Diploma in Mountain Medicine International Diploma of Mountain Emergency Medicine M.D. General Practice & Emergency Medicine', 3, '2025-03-13 23:03:29', '2025-03-13 23:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `intro` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `testimonials` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `intro`, `description`, `testimonials`, `created_at`, `updated_at`) VALUES
(1, 'Testimonials', '<p>This section offers personal accounts from past volunteers, showcasing their experiences and the impact of their work with HAPSA. These stories provide insight into the meaningful contributions volunteers have made and the lasting impression the organization leaves on its members.</p>', '<p>HAPSA is a non-profit organization that has been working to strengthen health system in Nepal, be it through improving primary health care service or through public health improvement in coordination with the government bodies. HAPSA members are young professionals from around the world who care about just, equitable health services for all. HAPSA is guided by its values to the cores. Our innovative model enhances government health services by fostering community participation and directly supporting health facility staff.</p><p>We undertake projects aimed at strengthening Nepal’s health system by enhancing primary healthcare services and promoting public health awareness. These initiatives focus on supporting health facility staff, fostering community participation, and collaborating with government bodies to create equitable, community-centric healthcare solutions.</p>', '{\"title\":\"Testimonial\",\"body\":[{\"name\":\"Sarah M. \\u2013 Former Volunteer Coordinator\",\"message\":\"<p>My time with HAPSA was truly transformative. As a volunteer coordinator, I was able to work alongside a dedicated team, making a real impact in communities in need. The organization offers a supportive environment that encourages growth and meaningful contributions. The experience gave me the skills to manage large-scale projects while staying grounded in the mission of humanitarian service.<\\/p>\"},{\"name\":\"James R. \\u2013 Medical Volunteer\",\"message\":\"<p>Volunteering with HAPSA as a healthcare professional was an incredibly rewarding experience. The organization is well-organized and focused on providing the best care to those who need it most. I felt supported in my role, and I was able to help improve the health outcomes of many individuals in underserved areas. The collaborative spirit and professionalism within the team made it a memorable experience.<\\/p>\"},{\"name\":\"David L. \\u2013 Logistics Volunteer\",\"message\":\"<p>I had the privilege of volunteering with HAPSA during their fundraising events, and I can confidently say it was an inspiring experience. The passion and dedication of the volunteers and staff were contagious, and I loved contributing to events that raised awareness and resources for important causes. HAPSA made sure volunteers felt valued and included, and I left with a sense of pride in the work we did.<\\/p>\"},{\"name\":\"Rachel T. \\u2013 Environmental Initiative Volunteer\",\"message\":\"<p>HAPSA\\u2019s environmental initiatives provided an opportunity to engage in hands-on work that made a difference. I participated in community clean-up projects and sustainability programs, all aimed at improving local environments. Volunteering here was a fulfilling way to contribute to environmental change<\\/p>\"}]}', '2025-03-11 06:55:54', '2025-03-11 07:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'sameer@admin.com', 'users/default.png', NULL, '$2y$10$znh2SUostOO3hupsU5Z4X.Op1mncwkucS/IQbfeWxQSBmaQVRLpBO', NULL, '{\"locale\":\"en\"}', '2025-03-11 04:01:48', '2025-03-12 21:56:01'),
(3, 2, 'hapsaglobe', 'admin@hapsaglobe.com', 'users/default.png', NULL, '$2y$10$.s3NvGboVZFEfrkqn1PhEOPVGcAWs.DgnJco9T1t9BqCGY.n/nUey', 'BMw7NpNxjQ2ZUWpGmeLzBsLCiBFVfZMc1Rg3CBSvovT1WBMWSaspqIWnvZcT', '{\"locale\":\"en\"}', '2025-03-12 21:56:26', '2025-03-12 21:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_galleries`
--

CREATE TABLE `video_galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_galleries`
--

INSERT INTO `video_galleries` (`id`, `title`, `link`, `order`, `created_at`, `updated_at`) VALUES
(1, 'नेपाली गीत को साथ सिपिआर (CPR) सिख्नुहोस', 'https://www.youtube.com/embed/wzZNU_IFgmc?si=vNpXc0KmKsO4Sq-Y', 1, '2025-03-11 05:57:07', '2025-03-11 05:57:07'),
(2, 'Sindhupalchowk Flood and Landside Relief Program', 'https://www.youtube.com/embed/8aBlYUhQ6to?si=d3Ma5Sw0c_5Il5e_', 2, '2025-03-11 05:57:37', '2025-03-11 05:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

CREATE TABLE `volunteers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `btn_title` varchar(255) DEFAULT NULL,
  `btn_link` varchar(255) DEFAULT NULL,
  `form_title` varchar(255) DEFAULT NULL,
  `form_text` mediumtext DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `page_title` mediumtext DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `volunteers`
--

INSERT INTO `volunteers` (`id`, `title`, `description`, `btn_title`, `btn_link`, `form_title`, `form_text`, `address`, `email`, `phone`, `created_at`, `updated_at`, `page_title`, `meta_description`) VALUES
(1, 'Make an Impact: Volunteer with Us', '<p>Join HAPSA as a volunteer and help strengthen health systems while promoting equitable healthcare. Whether it&rsquo;s through community outreach, health education, or innovative projects, your contribution can create lasting change. Be part of a global team dedicated to making health services accessible for all. Get involved today!</p>', 'VOLUNTEER', '/volunteer#volunteerform', 'Volunteer', 'If you’re passionate about equitable healthcare and empowering communities through advocacy and awareness, here’s your chance to join HAPSA and become a Health Advocate!', 'Buddhanagar, Kathmandu', 'hapsa4all@gmail.com', '+977-9841140403', '2025-03-11 06:15:16', '2025-03-11 06:27:18', 'Volunteer with Us', 'Join HAPSA as a volunteer and help strengthen health systems while promoting equitable healthcare. Whether it’s through community outreach, health education, or innovative projects, your contribution can create lasting change. Be part of a global team dedicated to making health services accessible for all. Get involved today!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `donates`
--
ALTER TABLE `donates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepages`
--
ALTER TABLE `homepages`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `video_galleries`
--
ALTER TABLE `video_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `volunteers`
--
ALTER TABLE `volunteers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `donates`
--
ALTER TABLE `donates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homepages`
--
ALTER TABLE `homepages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `photo_galleries`
--
ALTER TABLE `photo_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `video_galleries`
--
ALTER TABLE `video_galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `volunteers`
--
ALTER TABLE `volunteers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

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

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
