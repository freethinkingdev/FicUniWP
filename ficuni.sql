-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2017 at 09:21 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ficuni`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-27 13:36:04', '2017-11-27 13:36:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dashboard/FicUni', 'yes'),
(2, 'home', 'http://localhost/dashboard/FicUni', 'yes'),
(3, 'blogname', 'Fictional Uni', 'yes'),
(4, 'blogdescription', 'Best fake uni on the planet!', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'emwu83@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'jS F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'jS F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:176:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:9:"events/?$";s:25:"index.php?post_type=event";s:39:"events/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:34:"events/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=event&feed=$matches[1]";s:26:"events/page/([0-9]{1,})/?$";s:43:"index.php?post_type=event&paged=$matches[1]";s:11:"campuses/?$";s:26:"index.php?post_type=campus";s:41:"campuses/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:36:"campuses/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?post_type=campus&feed=$matches[1]";s:28:"campuses/page/([0-9]{1,})/?$";s:44:"index.php?post_type=campus&paged=$matches[1]";s:11:"programs/?$";s:27:"index.php?post_type=program";s:41:"programs/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:36:"programs/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=program&feed=$matches[1]";s:28:"programs/page/([0-9]{1,})/?$";s:45:"index.php?post_type=program&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:34:"events/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:44:"events/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:64:"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:59:"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:40:"events/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:23:"events/([^/]+)/embed/?$";s:38:"index.php?event=$matches[1]&embed=true";s:27:"events/([^/]+)/trackback/?$";s:32:"index.php?event=$matches[1]&tb=1";s:47:"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:42:"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?event=$matches[1]&feed=$matches[2]";s:35:"events/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&paged=$matches[2]";s:42:"events/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?event=$matches[1]&cpage=$matches[2]";s:31:"events/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?event=$matches[1]&page=$matches[2]";s:23:"events/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:33:"events/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:53:"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:48:"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"events/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"campuses/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"campuses/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"campuses/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"campuses/([^/]+)/embed/?$";s:39:"index.php?campus=$matches[1]&embed=true";s:29:"campuses/([^/]+)/trackback/?$";s:33:"index.php?campus=$matches[1]&tb=1";s:49:"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:44:"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?campus=$matches[1]&feed=$matches[2]";s:37:"campuses/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&paged=$matches[2]";s:44:"campuses/([^/]+)/comment-page-([0-9]{1,})/?$";s:46:"index.php?campus=$matches[1]&cpage=$matches[2]";s:33:"campuses/([^/]+)(?:/([0-9]+))?/?$";s:45:"index.php?campus=$matches[1]&page=$matches[2]";s:25:"campuses/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"campuses/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"campuses/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:36:"programs/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"programs/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:42:"programs/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:25:"programs/([^/]+)/embed/?$";s:40:"index.php?program=$matches[1]&embed=true";s:29:"programs/([^/]+)/trackback/?$";s:34:"index.php?program=$matches[1]&tb=1";s:49:"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:44:"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?program=$matches[1]&feed=$matches[2]";s:37:"programs/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&paged=$matches[2]";s:44:"programs/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?program=$matches[1]&cpage=$matches[2]";s:33:"programs/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?program=$matches[1]&page=$matches[2]";s:25:"programs/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"programs/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:31:"programs/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:37:"professor/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:47:"professor/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:67:"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:62:"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:43:"professor/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:26:"professor/([^/]+)/embed/?$";s:42:"index.php?professor=$matches[1]&embed=true";s:30:"professor/([^/]+)/trackback/?$";s:36:"index.php?professor=$matches[1]&tb=1";s:38:"professor/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&paged=$matches[2]";s:45:"professor/([^/]+)/comment-page-([0-9]{1,})/?$";s:49:"index.php?professor=$matches[1]&cpage=$matches[2]";s:34:"professor/([^/]+)(?:/([0-9]+))?/?$";s:48:"index.php?professor=$matches[1]&page=$matches[2]";s:26:"professor/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:36:"professor/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:56:"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:51:"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:32:"professor/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=57&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:9:"hello.php";i:2;s:39:"manual-image-crop/manual-image-crop.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:83:"C:\\xampp\\htdocs\\dashboard\\FicUni/wp-content/themes/dark-master/inc/search_route.php";i:1;s:72:"C:\\xampp\\htdocs\\dashboard\\FicUni/wp-content/themes/dark-master/style.css";i:2;s:94:"C:\\xampp\\htdocs\\dashboard\\FicUni/wp-content/themes/dark-master/custom_templates/event_list.php";i:3;s:71:"C:\\xampp\\htdocs\\dashboard\\FicUni/wp-content/themes/dark-master/page.php";i:4;s:0:"";}', 'no'),
(40, 'template', 'dark-master', 'yes'),
(41, 'stylesheet', 'dark-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/London', 'yes'),
(83, 'page_for_posts', '59', 'yes'),
(84, 'page_on_front', '57', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'en_GB', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1513647365;a:2:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513651871;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1513690663;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1513695054;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511792425;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Dark Master', 'yes'),
(144, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511792123;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(148, 'theme_mods_dark-master', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:11:"menu_header";i:2;s:16:"menu_footer_left";i:3;s:17:"menu_footer_right";i:4;}s:18:"custom_css_post_id";i:11;}', 'yes'),
(151, 'new_admin_email', 'emwu83@gmail.com', 'yes'),
(175, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(232, 'category_children', 'a:0:{}', 'yes'),
(254, 'recently_activated', 'a:1:{s:33:"w3-total-cache/w3-total-cache.php";i:1512465950;}', 'yes'),
(279, 'acf_version', '4.4.12', 'yes'),
(463, 'mic_make2x', 'true', 'yes'),
(557, 'w3tc_nr_application_id', '{"d41d8cd98f00b204e9800998ecf8427e":0}', 'yes'),
(558, 'w3tc_state', '{"common.install":1512465919}', 'no'),
(561, 'w3tc_generic_widgetservices', '{"items":[{"name":"Premium Support Response (Usually <1h First Response)","parameter_name":"field4","parameter_value":"Premium Support Response (Usually <1h First Response)","form_hash":"m5pom8z0qy59rm"},{"name":"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)","parameter_name":"field4","parameter_value":"Performance Audit \\/ Consult (Theme, Plugin, Content, Server)","form_hash":"m5pom8z0qy59rm"},{"name":"Plugin Configuration","parameter_name":"field4","parameter_value":"Plugin Configuration","form_hash":"m5pom8z0qy59rm"},{"name":"SSL Performance Setup","parameter_name":"field4","parameter_value":"SSL Performance Setup","form_hash":"m5pom8z0qy59rm"},{"name":"Full Site Delivery Setup","parameter_name":"field4","parameter_value":"Full Site Delivery Setup","form_hash":"m5pom8z0qy59rm"},{"name":"Hosting Environment Troubleshooting","parameter_name":"field4","parameter_value":"Hosting Environment Troubleshooting","form_hash":"m5pom8z0qy59rm"},{"name":"Performance Monitoring","parameter_name":"field4","parameter_value":"Performance Monitoring","form_hash":"m5pom8z0qy59rm"}],"expires":1513070719}', 'no'),
(659, '_site_transient_timeout_browser_315117425c117d80648b71a24b9b1815', '1513803799', 'no'),
(660, '_site_transient_browser_315117425c117d80648b71a24b9b1815', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(708, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.1.zip";s:6:"locale";s:5:"en_GB";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_GB/wordpress-4.9.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.1";s:7:"version";s:5:"4.9.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1513622912;s:15:"version_checked";s:5:"4.9.1";s:12:"translations";a:0:{}}', 'no'),
(710, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513622916;s:7:"checked";a:2:{s:11:"dark-master";s:3:"0.1";s:15:"twentyseventeen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(716, '_site_transient_timeout_theme_roots', '1513624709', 'no'),
(717, '_site_transient_theme_roots', 'a:2:{s:11:"dark-master";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";}', 'no'),
(720, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1513622916;s:8:"response";a:2:{s:19:"akismet/akismet.php";O:8:"stdClass":11:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":11:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.0";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:2:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";s:7:"default";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:3:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";s:7:"default";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:39:"manual-image-crop/manual-image-crop.php";O:8:"stdClass":9:{s:2:"id";s:31:"w.org/plugins/manual-image-crop";s:4:"slug";s:17:"manual-image-crop";s:6:"plugin";s:39:"manual-image-crop/manual-image-crop.php";s:11:"new_version";s:4:"1.12";s:3:"url";s:48:"https://wordpress.org/plugins/manual-image-crop/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip";s:5:"icons";a:3:{s:2:"1x";s:70:"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913";s:2:"2x";s:70:"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913";s:7:"default";s:70:"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913";}s:7:"banners";a:3:{s:2:"2x";s:72:"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224";s:2:"1x";s:71:"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224";s:7:"default";s:72:"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224";}s:11:"banners_rtl";a:0:{}}s:33:"w3-total-cache/w3-total-cache.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/w3-total-cache";s:4:"slug";s:14:"w3-total-cache";s:6:"plugin";s:33:"w3-total-cache/w3-total-cache.php";s:11:"new_version";s:5:"0.9.6";s:3:"url";s:45:"https://wordpress.org/plugins/w3-total-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/w3-total-cache.0.9.6.zip";s:5:"icons";a:3:{s:2:"1x";s:67:"https://ps.w.org/w3-total-cache/assets/icon-128x128.png?rev=1041806";s:2:"2x";s:67:"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806";s:7:"default";s:67:"https://ps.w.org/w3-total-cache/assets/icon-256x256.png?rev=1041806";}s:7:"banners";a:2:{s:2:"1x";s:69:"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806";s:7:"default";s:69:"https://ps.w.org/w3-total-cache/assets/banner-772x250.jpg?rev=1041806";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1511794128:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1511794150:1'),
(8, 8, '_edit_last', '1'),
(9, 8, '_edit_lock', '1511795921:1'),
(10, 10, '_wp_trash_meta_status', 'publish'),
(11, 10, '_wp_trash_meta_time', '1511797717'),
(12, 13, '_wp_trash_meta_status', 'publish'),
(13, 13, '_wp_trash_meta_time', '1511797758'),
(14, 15, '_edit_last', '1'),
(15, 15, '_edit_lock', '1512321690:1'),
(16, 17, '_edit_last', '1'),
(17, 17, '_edit_lock', '1512323350:1'),
(18, 19, '_edit_last', '1'),
(19, 19, '_edit_lock', '1511805021:1'),
(20, 21, '_edit_last', '1'),
(21, 21, '_edit_lock', '1511805032:1'),
(22, 23, '_edit_last', '1'),
(23, 23, '_edit_lock', '1511805391:1'),
(24, 25, '_edit_last', '1'),
(25, 25, '_edit_lock', '1512321707:1'),
(26, 27, '_edit_last', '1'),
(27, 27, '_edit_lock', '1512323269:1'),
(28, 29, '_edit_last', '1'),
(29, 29, '_edit_lock', '1512323623:1'),
(30, 31, '_menu_item_type', 'custom'),
(31, 31, '_menu_item_menu_item_parent', '0'),
(32, 31, '_menu_item_object_id', '31'),
(33, 31, '_menu_item_object', 'custom'),
(34, 31, '_menu_item_target', ''),
(35, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(36, 31, '_menu_item_xfn', ''),
(37, 31, '_menu_item_url', 'http://localhost/dashboard/FicUni/'),
(38, 31, '_menu_item_orphaned', '1511817262'),
(39, 32, '_menu_item_type', 'post_type'),
(40, 32, '_menu_item_menu_item_parent', '0'),
(41, 32, '_menu_item_object_id', '15'),
(42, 32, '_menu_item_object', 'page'),
(43, 32, '_menu_item_target', ''),
(44, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 32, '_menu_item_xfn', ''),
(46, 32, '_menu_item_url', ''),
(47, 32, '_menu_item_orphaned', '1511817262'),
(48, 33, '_menu_item_type', 'post_type'),
(49, 33, '_menu_item_menu_item_parent', '0'),
(50, 33, '_menu_item_object_id', '25'),
(51, 33, '_menu_item_object', 'page'),
(52, 33, '_menu_item_target', ''),
(53, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 33, '_menu_item_xfn', ''),
(55, 33, '_menu_item_url', ''),
(56, 33, '_menu_item_orphaned', '1511817262'),
(57, 34, '_menu_item_type', 'post_type'),
(58, 34, '_menu_item_menu_item_parent', '0'),
(59, 34, '_menu_item_object_id', '27'),
(60, 34, '_menu_item_object', 'page'),
(61, 34, '_menu_item_target', ''),
(62, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 34, '_menu_item_xfn', ''),
(64, 34, '_menu_item_url', ''),
(65, 34, '_menu_item_orphaned', '1511817262'),
(66, 35, '_menu_item_type', 'post_type'),
(67, 35, '_menu_item_menu_item_parent', '0'),
(68, 35, '_menu_item_object_id', '23'),
(69, 35, '_menu_item_object', 'page'),
(70, 35, '_menu_item_target', ''),
(71, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 35, '_menu_item_xfn', ''),
(73, 35, '_menu_item_url', ''),
(74, 35, '_menu_item_orphaned', '1511817262'),
(75, 36, '_menu_item_type', 'post_type'),
(76, 36, '_menu_item_menu_item_parent', '0'),
(77, 36, '_menu_item_object_id', '21'),
(78, 36, '_menu_item_object', 'page'),
(79, 36, '_menu_item_target', ''),
(80, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 36, '_menu_item_xfn', ''),
(82, 36, '_menu_item_url', ''),
(83, 36, '_menu_item_orphaned', '1511817262'),
(84, 37, '_menu_item_type', 'post_type'),
(85, 37, '_menu_item_menu_item_parent', '0'),
(86, 37, '_menu_item_object_id', '8'),
(87, 37, '_menu_item_object', 'page'),
(88, 37, '_menu_item_target', ''),
(89, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 37, '_menu_item_xfn', ''),
(91, 37, '_menu_item_url', ''),
(92, 37, '_menu_item_orphaned', '1511817262'),
(93, 38, '_menu_item_type', 'post_type'),
(94, 38, '_menu_item_menu_item_parent', '0'),
(95, 38, '_menu_item_object_id', '17'),
(96, 38, '_menu_item_object', 'page'),
(97, 38, '_menu_item_target', ''),
(98, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 38, '_menu_item_xfn', ''),
(100, 38, '_menu_item_url', ''),
(101, 38, '_menu_item_orphaned', '1511817262'),
(102, 39, '_menu_item_type', 'post_type'),
(103, 39, '_menu_item_menu_item_parent', '0'),
(104, 39, '_menu_item_object_id', '29'),
(105, 39, '_menu_item_object', 'page'),
(106, 39, '_menu_item_target', ''),
(107, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 39, '_menu_item_xfn', ''),
(109, 39, '_menu_item_url', ''),
(110, 39, '_menu_item_orphaned', '1511817262'),
(111, 40, '_menu_item_type', 'post_type'),
(112, 40, '_menu_item_menu_item_parent', '0'),
(113, 40, '_menu_item_object_id', '19'),
(114, 40, '_menu_item_object', 'page'),
(115, 40, '_menu_item_target', ''),
(116, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 40, '_menu_item_xfn', ''),
(118, 40, '_menu_item_url', ''),
(119, 40, '_menu_item_orphaned', '1511817262'),
(120, 41, '_menu_item_type', 'post_type'),
(121, 41, '_menu_item_menu_item_parent', '0'),
(122, 41, '_menu_item_object_id', '2'),
(123, 41, '_menu_item_object', 'page'),
(124, 41, '_menu_item_target', ''),
(125, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 41, '_menu_item_xfn', ''),
(127, 41, '_menu_item_url', ''),
(128, 41, '_menu_item_orphaned', '1511817262'),
(129, 42, '_menu_item_type', 'post_type'),
(130, 42, '_menu_item_menu_item_parent', '0'),
(131, 42, '_menu_item_object_id', '17'),
(132, 42, '_menu_item_object', 'page'),
(133, 42, '_menu_item_target', ''),
(134, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 42, '_menu_item_xfn', ''),
(136, 42, '_menu_item_url', ''),
(138, 43, '_menu_item_type', 'post_type'),
(139, 43, '_menu_item_menu_item_parent', '0'),
(140, 43, '_menu_item_object_id', '15'),
(141, 43, '_menu_item_object', 'page'),
(142, 43, '_menu_item_target', ''),
(143, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 43, '_menu_item_xfn', ''),
(145, 43, '_menu_item_url', ''),
(147, 44, '_menu_item_type', 'post_type'),
(148, 44, '_menu_item_menu_item_parent', '0'),
(149, 44, '_menu_item_object_id', '17'),
(150, 44, '_menu_item_object', 'page'),
(151, 44, '_menu_item_target', ''),
(152, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(153, 44, '_menu_item_xfn', ''),
(154, 44, '_menu_item_url', ''),
(155, 44, '_menu_item_orphaned', '1511817598'),
(156, 45, '_menu_item_type', 'post_type'),
(157, 45, '_menu_item_menu_item_parent', '0'),
(158, 45, '_menu_item_object_id', '29'),
(159, 45, '_menu_item_object', 'page'),
(160, 45, '_menu_item_target', ''),
(161, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(162, 45, '_menu_item_xfn', ''),
(163, 45, '_menu_item_url', ''),
(164, 45, '_menu_item_orphaned', '1511817598'),
(165, 46, '_menu_item_type', 'post_type'),
(166, 46, '_menu_item_menu_item_parent', '0'),
(167, 46, '_menu_item_object_id', '15'),
(168, 46, '_menu_item_object', 'page'),
(169, 46, '_menu_item_target', ''),
(170, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(171, 46, '_menu_item_xfn', ''),
(172, 46, '_menu_item_url', ''),
(173, 46, '_menu_item_orphaned', '1511817598'),
(174, 47, '_menu_item_type', 'post_type'),
(175, 47, '_menu_item_menu_item_parent', '0'),
(176, 47, '_menu_item_object_id', '27'),
(177, 47, '_menu_item_object', 'page'),
(178, 47, '_menu_item_target', ''),
(179, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(180, 47, '_menu_item_xfn', ''),
(181, 47, '_menu_item_url', ''),
(182, 47, '_menu_item_orphaned', '1511817598'),
(183, 48, '_menu_item_type', 'post_type'),
(184, 48, '_menu_item_menu_item_parent', '0'),
(185, 48, '_menu_item_object_id', '25'),
(186, 48, '_menu_item_object', 'page'),
(187, 48, '_menu_item_target', ''),
(188, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(189, 48, '_menu_item_xfn', ''),
(190, 48, '_menu_item_url', ''),
(191, 48, '_menu_item_orphaned', '1511817598'),
(219, 52, '_menu_item_type', 'post_type'),
(220, 52, '_menu_item_menu_item_parent', '0'),
(221, 52, '_menu_item_object_id', '23'),
(222, 52, '_menu_item_object', 'page'),
(223, 52, '_menu_item_target', ''),
(224, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(225, 52, '_menu_item_xfn', ''),
(226, 52, '_menu_item_url', ''),
(228, 53, '_menu_item_type', 'post_type'),
(229, 53, '_menu_item_menu_item_parent', '0'),
(230, 53, '_menu_item_object_id', '21'),
(231, 53, '_menu_item_object', 'page'),
(232, 53, '_menu_item_target', ''),
(233, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(234, 53, '_menu_item_xfn', ''),
(235, 53, '_menu_item_url', ''),
(237, 54, '_menu_item_type', 'post_type'),
(238, 54, '_menu_item_menu_item_parent', '0'),
(239, 54, '_menu_item_object_id', '19'),
(240, 54, '_menu_item_object', 'page'),
(241, 54, '_menu_item_target', ''),
(242, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(243, 54, '_menu_item_xfn', ''),
(244, 54, '_menu_item_url', ''),
(246, 55, '_menu_item_type', 'post_type'),
(247, 55, '_menu_item_menu_item_parent', '0'),
(248, 55, '_menu_item_object_id', '15'),
(249, 55, '_menu_item_object', 'page'),
(250, 55, '_menu_item_target', ''),
(251, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(252, 55, '_menu_item_xfn', ''),
(253, 55, '_menu_item_url', ''),
(255, 56, '_menu_item_type', 'post_type'),
(256, 56, '_menu_item_menu_item_parent', '0'),
(257, 56, '_menu_item_object_id', '17'),
(258, 56, '_menu_item_object', 'page'),
(259, 56, '_menu_item_target', ''),
(260, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(261, 56, '_menu_item_xfn', ''),
(262, 56, '_menu_item_url', ''),
(264, 57, '_edit_last', '1'),
(265, 57, '_edit_lock', '1511819717:1'),
(266, 59, '_edit_last', '1'),
(267, 59, '_edit_lock', '1511883549:1'),
(268, 61, '_menu_item_type', 'post_type'),
(269, 61, '_menu_item_menu_item_parent', '0'),
(270, 61, '_menu_item_object_id', '59'),
(271, 61, '_menu_item_object', 'page'),
(272, 61, '_menu_item_target', ''),
(273, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(274, 61, '_menu_item_xfn', ''),
(275, 61, '_menu_item_url', ''),
(277, 62, '_edit_last', '1'),
(278, 62, '_edit_lock', '1511822224:1'),
(279, 64, '_edit_last', '1'),
(280, 64, '_edit_lock', '1511881671:1'),
(282, 66, '_edit_last', '1'),
(284, 66, '_edit_lock', '1511881695:1'),
(285, 68, '_edit_last', '1'),
(287, 68, '_edit_lock', '1511882209:1'),
(288, 70, '_edit_last', '1'),
(290, 70, '_edit_lock', '1511882228:1'),
(291, 72, '_edit_last', '1'),
(293, 72, '_edit_lock', '1511882271:1'),
(294, 74, '_edit_last', '1'),
(296, 74, '_edit_lock', '1511882320:1'),
(297, 76, '_edit_last', '1'),
(299, 76, '_edit_lock', '1511882662:1'),
(301, 78, '_edit_last', '1'),
(302, 78, '_edit_lock', '1511891544:1'),
(303, 78, '_wp_trash_meta_status', 'draft'),
(304, 78, '_wp_trash_meta_time', '1511891689'),
(305, 78, '_wp_desired_post_slug', ''),
(306, 80, '_edit_last', '1'),
(307, 80, '_edit_lock', '1512316768:1'),
(309, 83, '_edit_last', '1'),
(310, 83, '_edit_lock', '1511905421:1'),
(311, 84, '_edit_last', '1'),
(312, 84, '_edit_lock', '1511903677:1'),
(313, 85, '_edit_last', '1'),
(314, 85, '_edit_lock', '1511951571:1'),
(315, 87, '_edit_last', '1'),
(316, 87, '_edit_lock', '1511962828:1'),
(317, 95, '_menu_item_type', 'post_type'),
(318, 95, '_menu_item_menu_item_parent', '0'),
(319, 95, '_menu_item_object_id', '21'),
(320, 95, '_menu_item_object', 'page'),
(321, 95, '_menu_item_target', ''),
(322, 95, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(323, 95, '_menu_item_xfn', ''),
(324, 95, '_menu_item_url', ''),
(325, 96, '_edit_last', '1'),
(327, 96, '_edit_lock', '1512330192:1'),
(329, 102, '_edit_last', '1'),
(330, 102, 'field_5a1e8bf15e786', 'a:11:{s:3:"key";s:19:"field_5a1e8bf15e786";s:5:"label";s:10:"Event Date";s:4:"name";s:10:"event_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(331, 102, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(332, 102, 'position', 'normal'),
(333, 102, 'layout', 'no_box'),
(334, 102, 'hide_on_screen', ''),
(335, 102, '_edit_lock', '1511952604:1'),
(336, 103, 'event_date', '20171129'),
(337, 103, '_event_date', 'field_5a1e8bf15e786'),
(338, 87, 'event_date', '20171127'),
(339, 87, '_event_date', 'field_5a1e8bf15e786'),
(340, 104, 'event_date', '20180207'),
(341, 104, '_event_date', 'field_5a1e8bf15e786'),
(342, 85, 'event_date', '20180207'),
(343, 85, '_event_date', 'field_5a1e8bf15e786'),
(344, 106, '_edit_last', '1'),
(345, 106, '_edit_lock', '1512323778:1'),
(346, 107, 'event_date', '20171202'),
(347, 107, '_event_date', 'field_5a1e8bf15e786'),
(348, 106, 'event_date', '20171202'),
(349, 106, '_event_date', 'field_5a1e8bf15e786'),
(350, 108, 'event_date', '20171127'),
(351, 108, '_event_date', 'field_5a1e8bf15e786'),
(352, 109, '_edit_last', '1'),
(353, 109, '_edit_lock', '1512138643:1'),
(354, 110, 'event_date', '20171231'),
(355, 110, '_event_date', 'field_5a1e8bf15e786'),
(356, 109, 'event_date', '20171231'),
(357, 109, '_event_date', 'field_5a1e8bf15e786'),
(358, 111, '_edit_last', '1'),
(359, 112, 'event_date', '20180101'),
(360, 112, '_event_date', 'field_5a1e8bf15e786'),
(361, 111, 'event_date', '20180101'),
(362, 111, '_event_date', 'field_5a1e8bf15e786'),
(363, 111, '_edit_lock', '1511962949:1'),
(364, 113, '_edit_last', '1'),
(365, 114, 'event_date', '20171109'),
(366, 114, '_event_date', 'field_5a1e8bf15e786'),
(367, 113, 'event_date', '20171207'),
(368, 113, '_event_date', 'field_5a1e8bf15e786'),
(369, 113, '_edit_lock', '1511967039:1'),
(370, 115, 'event_date', '20171207'),
(371, 115, '_event_date', 'field_5a1e8bf15e786'),
(372, 116, '_edit_last', '1'),
(373, 116, '_edit_lock', '1511967841:1'),
(374, 118, '_edit_last', '1'),
(375, 118, '_edit_lock', '1511968526:1'),
(376, 119, 'event_date', '20171120'),
(377, 119, '_event_date', 'field_5a1e8bf15e786'),
(378, 118, 'event_date', '20171120'),
(379, 118, '_event_date', 'field_5a1e8bf15e786'),
(380, 120, '_edit_last', '1'),
(381, 121, 'event_date', '20171114'),
(382, 121, '_event_date', 'field_5a1e8bf15e786'),
(383, 120, 'event_date', '20171114'),
(384, 120, '_event_date', 'field_5a1e8bf15e786'),
(385, 120, '_edit_lock', '1512136339:1'),
(386, 122, '_edit_last', '1'),
(387, 123, 'event_date', '20171128'),
(388, 123, '_event_date', 'field_5a1e8bf15e786'),
(389, 122, 'event_date', '20171128'),
(390, 122, '_event_date', 'field_5a1e8bf15e786'),
(391, 122, '_edit_lock', '1511968626:1'),
(392, 124, '_menu_item_type', 'post_type'),
(393, 124, '_menu_item_menu_item_parent', '0'),
(394, 124, '_menu_item_object_id', '116'),
(395, 124, '_menu_item_object', 'page'),
(396, 124, '_menu_item_target', ''),
(397, 124, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(398, 124, '_menu_item_xfn', ''),
(399, 124, '_menu_item_url', ''),
(401, 125, '_edit_last', '1'),
(402, 125, '_edit_lock', '1512143278:1'),
(403, 126, 'event_date', '20170921'),
(404, 126, '_event_date', 'field_5a1e8bf15e786'),
(405, 125, 'event_date', '20170921'),
(406, 125, '_event_date', 'field_5a1e8bf15e786'),
(407, 128, '_edit_last', '1'),
(408, 128, '_edit_lock', '1512424173:1'),
(409, 129, '_edit_last', '1'),
(410, 129, '_edit_lock', '1512424173:1'),
(411, 130, '_edit_last', '1'),
(412, 130, '_edit_lock', '1512424173:1'),
(413, 131, '_edit_last', '1'),
(414, 131, '_edit_lock', '1512424173:1'),
(415, 132, '_edit_last', '1'),
(416, 132, '_edit_lock', '1512424173:1'),
(417, 133, '_edit_last', '1'),
(418, 133, '_edit_lock', '1512428645:1'),
(419, 134, '_edit_last', '1'),
(420, 134, '_edit_lock', '1512424375:1'),
(421, 135, '_edit_last', '1'),
(422, 135, '_edit_lock', '1512424173:1'),
(423, 136, '_edit_last', '1'),
(424, 136, 'field_5a1efdb34fbe4', 'a:14:{s:3:"key";s:19:"field_5a1efdb34fbe4";s:5:"label";s:18:"Related program(s)";s:4:"name";s:16:"related_programs";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:7:"program";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(426, 136, 'position', 'acf_after_title'),
(427, 136, 'layout', 'default'),
(428, 136, 'hide_on_screen', ''),
(429, 136, '_edit_lock', '1512155955:1'),
(430, 137, 'related_programs', 'a:1:{i:0;s:3:"130";}'),
(431, 137, '_related_programs', 'field_5a1efdb34fbe4'),
(432, 137, 'event_date', '20171202'),
(433, 137, '_event_date', 'field_5a1e8bf15e786'),
(434, 106, 'related_programs', 'a:2:{i:0;s:3:"130";i:1;s:3:"133";}'),
(435, 106, '_related_programs', 'field_5a1efdb34fbe4'),
(436, 138, 'related_programs', 'a:2:{i:0;s:3:"130";i:1;s:3:"133";}'),
(437, 138, '_related_programs', 'field_5a1efdb34fbe4'),
(438, 138, 'event_date', '20171202'),
(439, 138, '_event_date', 'field_5a1e8bf15e786'),
(440, 139, '_menu_item_type', 'post_type'),
(441, 139, '_menu_item_menu_item_parent', '0'),
(442, 139, '_menu_item_object_id', '19'),
(443, 139, '_menu_item_object', 'page'),
(444, 139, '_menu_item_target', ''),
(445, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(446, 139, '_menu_item_xfn', ''),
(447, 139, '_menu_item_url', ''),
(449, 140, 'related_programs', 'a:1:{i:0;s:3:"132";}'),
(450, 140, '_related_programs', 'field_5a1efdb34fbe4'),
(451, 140, 'event_date', '20171231'),
(452, 140, '_event_date', 'field_5a1e8bf15e786'),
(453, 109, 'related_programs', 'a:1:{i:0;s:3:"132";}'),
(454, 109, '_related_programs', 'field_5a1efdb34fbe4'),
(455, 142, '_edit_last', '1'),
(456, 142, '_edit_lock', '1512161762:1'),
(457, 143, '_edit_last', '1'),
(458, 143, '_edit_lock', '1512331411:1'),
(459, 144, '_edit_last', '1'),
(460, 144, '_edit_lock', '1512251800:1'),
(461, 145, '_edit_last', '1'),
(462, 145, '_edit_lock', '1512251440:1'),
(463, 146, '_edit_last', '1'),
(464, 146, '_edit_lock', '1512251438:1'),
(465, 147, '_edit_last', '1'),
(466, 147, '_edit_lock', '1512160082:1'),
(467, 148, '_edit_last', '1'),
(468, 148, 'field_5a21755fe7c1f', 'a:14:{s:3:"key";s:19:"field_5a21755fe7c1f";s:5:"label";s:15:"Related Program";s:4:"name";s:15:"related_program";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:7:"program";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(469, 148, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"professor";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(470, 148, 'position', 'normal'),
(471, 148, 'layout', 'default'),
(472, 148, 'hide_on_screen', ''),
(473, 148, '_edit_lock', '1512142080:1'),
(474, 147, 'related_program', 'a:2:{i:0;s:3:"132";i:1;s:3:"149";}'),
(475, 147, '_related_program', 'field_5a21755fe7c1f'),
(476, 149, '_edit_last', '1'),
(477, 149, '_edit_lock', '1512424174:1'),
(478, 146, 'related_program', 'a:1:{i:0;s:3:"149";}'),
(479, 146, '_related_program', 'field_5a21755fe7c1f'),
(480, 145, 'related_program', 'a:2:{i:0;s:3:"131";i:1;s:3:"134";}'),
(481, 145, '_related_program', 'field_5a21755fe7c1f'),
(482, 144, 'related_program', 'a:1:{i:0;s:3:"131";}'),
(483, 144, '_related_program', 'field_5a21755fe7c1f'),
(484, 143, 'related_program', 'a:2:{i:0;s:3:"134";i:1;s:3:"131";}'),
(485, 143, '_related_program', 'field_5a21755fe7c1f'),
(486, 142, 'related_program', 'a:2:{i:0;s:3:"129";i:1;s:3:"135";}'),
(487, 142, '_related_program', 'field_5a21755fe7c1f'),
(488, 148, '_wp_trash_meta_status', 'publish'),
(489, 148, '_wp_trash_meta_time', '1512142985'),
(490, 148, '_wp_desired_post_slug', 'acf_professor'),
(495, 147, 'related_programs', 'a:1:{i:0;s:3:"149";}'),
(496, 147, '_related_programs', 'field_5a1efdb34fbe4'),
(497, 146, 'related_programs', 'a:2:{i:0;s:3:"149";i:1;s:3:"130";}'),
(498, 146, '_related_programs', 'field_5a1efdb34fbe4'),
(499, 145, 'related_programs', 'a:2:{i:0;s:3:"131";i:1;s:3:"134";}'),
(500, 145, '_related_programs', 'field_5a1efdb34fbe4'),
(501, 144, 'related_programs', 'a:2:{i:0;s:3:"133";i:1;s:3:"131";}'),
(502, 144, '_related_programs', 'field_5a1efdb34fbe4'),
(503, 143, 'related_programs', 'a:2:{i:0;s:3:"131";i:1;s:3:"132";}'),
(504, 143, '_related_programs', 'field_5a1efdb34fbe4'),
(505, 142, 'related_programs', 'a:2:{i:0;s:3:"134";i:1;s:3:"131";}'),
(506, 142, '_related_programs', 'field_5a1efdb34fbe4'),
(507, 136, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"event";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(508, 136, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"professor";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(509, 150, '_edit_last', '1'),
(510, 150, '_edit_lock', '1512749540:1'),
(511, 151, 'related_programs', 'a:1:{i:0;s:3:"130";}'),
(512, 151, '_related_programs', 'field_5a1efdb34fbe4'),
(513, 151, 'event_date', '20171204'),
(514, 151, '_event_date', 'field_5a1e8bf15e786'),
(515, 150, 'related_programs', 'a:1:{i:0;s:3:"130";}'),
(516, 150, '_related_programs', 'field_5a1efdb34fbe4'),
(517, 150, 'event_date', '20171204'),
(518, 150, '_event_date', 'field_5a1e8bf15e786'),
(519, 152, '_wp_attached_file', '2017/12/24762_886623053191_6009797_48325066_5726277_n_400x400.jpg'),
(520, 152, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:400;s:4:"file";s:65:"2017/12/24762_886623053191_6009797_48325066_5726277_n_400x400.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:65:"24762_886623053191_6009797_48325066_5726277_n_400x400-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:65:"24762_886623053191_6009797_48325066_5726277_n_400x400-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:65:"24762_886623053191_6009797_48325066_5726277_n_400x400-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:65:"24762_886623053191_6009797_48325066_5726277_n_400x400-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(521, 147, '_thumbnail_id', '152'),
(522, 153, '_wp_attached_file', '2017/12/staffphoto.jpg'),
(523, 153, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:192;s:6:"height";i:237;s:4:"file";s:22:"2017/12/staffphoto.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"staffphoto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:22:"staffphoto-192x160.jpg";s:5:"width";i:192;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:22:"staffphoto-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(524, 145, '_thumbnail_id', '153'),
(525, 154, '_wp_attached_file', '2017/12/staffphoto-1.jpg'),
(526, 154, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:192;s:6:"height";i:237;s:4:"file";s:24:"2017/12/staffphoto-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"staffphoto-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:24:"staffphoto-1-192x160.jpg";s:5:"width";i:192;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:24:"staffphoto-1-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:15:"micSelectedArea";a:1:{s:18:"professor_portrait";a:5:{s:1:"x";s:2:"15";s:1:"y";s:1:"0";s:1:"w";s:17:"160.0000000000006";s:1:"h";s:3:"237";s:5:"scale";s:1:"1";}}}'),
(527, 144, '_thumbnail_id', '154'),
(528, 155, '_wp_attached_file', '2017/12/staffphoto-2.jpg'),
(529, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:192;s:6:"height";i:237;s:4:"file";s:24:"2017/12/staffphoto-2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"staffphoto-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:24:"staffphoto-2-192x160.jpg";s:5:"width";i:192;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:24:"staffphoto-2-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(530, 143, '_thumbnail_id', '155'),
(531, 156, '_wp_attached_file', '2017/12/staffphoto-3.jpg'),
(532, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:192;s:6:"height";i:237;s:4:"file";s:24:"2017/12/staffphoto-3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"staffphoto-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:24:"staffphoto-3-192x160.jpg";s:5:"width";i:192;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:24:"staffphoto-3-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(533, 142, '_thumbnail_id', '156'),
(534, 157, '_edit_last', '1'),
(535, 157, '_edit_lock', '1512253500:1'),
(536, 158, '_wp_attached_file', '2017/12/media_294409_en.jpg'),
(537, 158, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:113;s:6:"height";i:150;s:4:"file";s:27:"2017/12/media_294409_en.jpg";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"media_294409_en-113x150.jpg";s:5:"width";i:113;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(538, 157, '_thumbnail_id', '158'),
(539, 157, 'related_programs', 'a:1:{i:0;s:3:"149";}'),
(540, 157, '_related_programs', 'field_5a1efdb34fbe4'),
(541, 159, '_edit_last', '1'),
(542, 159, '_edit_lock', '1512253276:1'),
(543, 160, '_wp_attached_file', '2017/12/media_394991_en.png'),
(544, 160, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:788;s:6:"height";i:810;s:4:"file";s:27:"2017/12/media_394991_en.png";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"media_394991_en-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"media_394991_en-292x300.png";s:5:"width";i:292;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:27:"media_394991_en-768x789.png";s:5:"width";i:768;s:6:"height";i:789;s:9:"mime-type";s:9:"image/png";}s:19:"professor_landscape";a:4:{s:4:"file";s:27:"media_394991_en-200x160.png";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:9:"image/png";}s:18:"professor_portrait";a:4:{s:4:"file";s:27:"media_394991_en-160x200.png";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(545, 159, '_thumbnail_id', '160'),
(546, 159, 'related_programs', 'a:1:{i:0;s:3:"149";}'),
(547, 159, '_related_programs', 'field_5a1efdb34fbe4'),
(548, 161, '_edit_last', '1'),
(549, 161, 'field_5a23223b90aed', 'a:14:{s:3:"key";s:19:"field_5a23223b90aed";s:5:"label";s:20:"Page Banner Subtitle";s:4:"name";s:20:"page_banner_subtitle";s:4:"type";s:4:"text";s:12:"instructions";s:17:"Provide subtitle.";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(550, 161, 'field_5a23228e90aee', 'a:11:{s:3:"key";s:19:"field_5a23228e90aee";s:5:"label";s:28:"Page Banner Background Image";s:4:"name";s:28:"page_banner_background_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(553, 161, 'position', 'side'),
(554, 161, 'layout', 'default'),
(555, 161, 'hide_on_screen', ''),
(556, 161, '_edit_lock', '1512332862:1'),
(559, 162, '_wp_attached_file', '2017/12/12316241_large1300.jpg'),
(560, 162, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1300;s:6:"height";i:861;s:4:"file";s:30:"2017/12/12316241_large1300.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"12316241_large1300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"12316241_large1300-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"12316241_large1300-768x509.jpg";s:5:"width";i:768;s:6:"height";i:509;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"12316241_large1300-1024x678.jpg";s:5:"width";i:1024;s:6:"height";i:678;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:30:"12316241_large1300-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:30:"12316241_large1300-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:31:"12316241_large1300-1300x350.jpg";s:5:"width";i:1300;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:15:"micSelectedArea";a:1:{s:11:"page_banner";a:5:{s:1:"x";s:1:"0";s:1:"y";s:3:"151";s:1:"w";s:3:"500";s:1:"h";s:18:"116.66666666666629";s:5:"scale";s:1:"3";}}}'),
(561, 159, 'page_banner_subtitle', 'Happy geek!'),
(562, 159, '_page_banner_subtitle', 'field_5a23223b90aed'),
(563, 159, 'page_banner_background_image', '162'),
(564, 159, '_page_banner_background_image', 'field_5a23228e90aee'),
(565, 163, '_wp_attached_file', '2017/12/maxresdefault.jpg'),
(566, 163, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:25:"2017/12/maxresdefault.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"maxresdefault-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"maxresdefault-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"maxresdefault-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"maxresdefault-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:25:"maxresdefault-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:25:"maxresdefault-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:26:"maxresdefault-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:15:"micSelectedArea";a:1:{s:11:"page_banner";a:5:{s:1:"x";s:1:"0";s:1:"y";s:1:"0";s:1:"w";s:3:"500";s:1:"h";s:18:"116.66666666666629";s:5:"scale";s:4:"3.84";}}}'),
(567, 157, 'page_banner_subtitle', 'Yet another happy geek!'),
(568, 157, '_page_banner_subtitle', 'field_5a23223b90aed'),
(569, 157, 'page_banner_background_image', '163'),
(570, 157, '_page_banner_background_image', 'field_5a23228e90aee'),
(571, 164, '_wp_attached_file', '2017/12/aboutus.jpg'),
(572, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1349;s:6:"height";i:493;s:4:"file";s:19:"2017/12/aboutus.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"aboutus-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"aboutus-300x110.jpg";s:5:"width";i:300;s:6:"height";i:110;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"aboutus-768x281.jpg";s:5:"width";i:768;s:6:"height";i:281;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"aboutus-1024x374.jpg";s:5:"width";i:1024;s:6:"height";i:374;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:19:"aboutus-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:19:"aboutus-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:20:"aboutus-1349x350.jpg";s:5:"width";i:1349;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(573, 165, 'page_banner_subtitle', 'Something more about us...'),
(574, 165, '_page_banner_subtitle', 'field_5a23223b90aed'),
(575, 165, 'page_banner_background_image', '164'),
(576, 165, '_page_banner_background_image', 'field_5a23228e90aee'),
(577, 15, 'page_banner_subtitle', 'Something more about us...'),
(578, 15, '_page_banner_subtitle', 'field_5a23223b90aed'),
(579, 15, 'page_banner_background_image', '164'),
(580, 15, '_page_banner_background_image', 'field_5a23228e90aee'),
(584, 167, 'page_banner_subtitle', 'Rail will strike back!!'),
(585, 167, '_page_banner_subtitle', 'field_5a23223b90aed'),
(586, 167, 'page_banner_background_image', '166'),
(587, 167, '_page_banner_background_image', 'field_5a23228e90aee'),
(588, 96, 'page_banner_subtitle', 'Rail will strike back!!'),
(589, 96, '_page_banner_subtitle', 'field_5a23223b90aed'),
(590, 96, 'page_banner_background_image', '193'),
(591, 96, '_page_banner_background_image', 'field_5a23228e90aee'),
(592, 168, '_wp_attached_file', '2017/11/best-games-ms-pac-man.jpg'),
(593, 168, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1500;s:6:"height";i:1000;s:4:"file";s:33:"2017/11/best-games-ms-pac-man.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"best-games-ms-pac-man-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"best-games-ms-pac-man-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"best-games-ms-pac-man-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:34:"best-games-ms-pac-man-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:33:"best-games-ms-pac-man-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:33:"best-games-ms-pac-man-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:34:"best-games-ms-pac-man-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(595, 169, 'page_banner_subtitle', 'Game over?'),
(596, 169, '_page_banner_subtitle', 'field_5a23223b90aed'),
(597, 169, 'page_banner_background_image', '168'),
(598, 169, '_page_banner_background_image', 'field_5a23228e90aee'),
(599, 80, 'page_banner_subtitle', 'Game over?'),
(600, 80, '_page_banner_subtitle', 'field_5a23223b90aed'),
(601, 80, 'page_banner_background_image', '168'),
(602, 80, '_page_banner_background_image', 'field_5a23228e90aee'),
(603, 170, 'page_banner_subtitle', 'Nasze cele'),
(604, 170, '_page_banner_subtitle', 'field_5a23223b90aed'),
(605, 170, 'page_banner_background_image', '164'),
(606, 170, '_page_banner_background_image', 'field_5a23228e90aee'),
(607, 25, 'page_banner_subtitle', 'Nasze cele'),
(608, 25, '_page_banner_subtitle', 'field_5a23223b90aed'),
(609, 25, 'page_banner_background_image', '164'),
(610, 25, '_page_banner_background_image', 'field_5a23228e90aee'),
(611, 171, '_wp_attached_file', '2017/12/catBg580ddd9f0a997.jpg'),
(612, 171, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:710;s:4:"file";s:30:"2017/12/catBg580ddd9f0a997.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"catBg580ddd9f0a997-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:30:"catBg580ddd9f0a997-300x118.jpg";s:5:"width";i:300;s:6:"height";i:118;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:30:"catBg580ddd9f0a997-768x303.jpg";s:5:"width";i:768;s:6:"height";i:303;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:31:"catBg580ddd9f0a997-1024x404.jpg";s:5:"width";i:1024;s:6:"height";i:404;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:30:"catBg580ddd9f0a997-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:30:"catBg580ddd9f0a997-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:31:"catBg580ddd9f0a997-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(613, 172, 'page_banner_subtitle', 'Our histry...'),
(614, 172, '_page_banner_subtitle', 'field_5a23223b90aed'),
(615, 172, 'page_banner_background_image', '171'),
(616, 172, '_page_banner_background_image', 'field_5a23228e90aee'),
(617, 27, 'page_banner_subtitle', 'Our histry...'),
(618, 27, '_page_banner_subtitle', 'field_5a23223b90aed'),
(619, 27, 'page_banner_background_image', '171'),
(620, 27, '_page_banner_background_image', 'field_5a23228e90aee'),
(621, 173, '_wp_attached_file', '2017/12/PRIVACY.jpg'),
(622, 173, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1000;s:4:"file";s:19:"2017/12/PRIVACY.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"PRIVACY-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"PRIVACY-300x150.jpg";s:5:"width";i:300;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"PRIVACY-768x384.jpg";s:5:"width";i:768;s:6:"height";i:384;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"PRIVACY-1024x512.jpg";s:5:"width";i:1024;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:19:"PRIVACY-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:19:"PRIVACY-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:20:"PRIVACY-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:24:"Getty Images/iStockphoto";s:6:"camera";s:0:"";s:7:"caption";s:51:"Information Privacy on computer keyboard background";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:9:"466678445";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(623, 174, 'page_banner_subtitle', 'What we do any why'),
(624, 174, '_page_banner_subtitle', 'field_5a23223b90aed'),
(625, 174, 'page_banner_background_image', '173'),
(626, 174, '_page_banner_background_image', 'field_5a23228e90aee'),
(627, 17, 'page_banner_subtitle', 'What we do any why'),
(628, 17, '_page_banner_subtitle', 'field_5a23223b90aed'),
(629, 17, 'page_banner_background_image', '173'),
(630, 17, '_page_banner_background_image', 'field_5a23228e90aee'),
(631, 175, 'page_banner_subtitle', 'Cookie anyone...'),
(632, 175, '_page_banner_subtitle', 'field_5a23223b90aed'),
(633, 175, 'page_banner_background_image', '173'),
(634, 175, '_page_banner_background_image', 'field_5a23228e90aee'),
(635, 29, 'page_banner_subtitle', 'Cookie anyone...'),
(636, 29, '_page_banner_subtitle', 'field_5a23223b90aed'),
(637, 29, 'page_banner_background_image', '176'),
(638, 29, '_page_banner_background_image', 'field_5a23228e90aee'),
(639, 176, '_wp_attached_file', '2017/12/G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf.jpg'),
(640, 176, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:810;s:4:"file";s:125:"2017/12/G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:125:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:125:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:125:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:126:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:125:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:125:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:126:"G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf-1440x350.jpg";s:5:"width";i:1440;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(641, 177, 'page_banner_subtitle', 'Cookie anyone...'),
(642, 177, '_page_banner_subtitle', 'field_5a23223b90aed'),
(643, 177, 'page_banner_background_image', '176'),
(644, 177, '_page_banner_background_image', 'field_5a23228e90aee'),
(645, 178, '_wp_attached_file', '2017/11/scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson.jpg'),
(646, 178, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:690;s:6:"height";i:460;s:4:"file";s:78:"2017/11/scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:78:"scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:78:"scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:78:"scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:78:"scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:78:"scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson-690x350.jpg";s:5:"width";i:690;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:11:"Jane Hobson";s:6:"camera";s:8:"NIKON D5";s:7:"caption";s:730:"Glasgow, UK. 16.10.2017. Scottish Opera presents La Traviata, at the Theatre Royal Glasgow from October 19th, before touring to Aberdeen, Inverness and Edinburgh from November 2nd.  This production is directed by Marie Lambert (original director is Sir David McVicar), with design by Tanya McCallin and lighting design by Stephen Powles (original lighting design by Jennifer Tipton). The cast is: Gulnara Shafigullina (Violetta Valéry), Peter Gijsbertsen (Alfredo Germont), Stephen Gadd (Giorgio Germont), Laura Zigmantaite (Flora Bervoix), Simon Thorpe (Baron Douphol), Christopher Turner (Gastone), Alex Otterburn (Marchese D’Obigny), James Platt (Doctor Grenvil), Catherine Backhouse (Annina). Photograph © Jane Hobson.";s:17:"created_timestamp";s:10:"1508171405";s:9:"copyright";s:47:"© Jane Hobson  07798 794205 www.janehobson.com";s:12:"focal_length";s:2:"60";s:3:"iso";s:4:"8000";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(647, 179, 'related_programs', 'a:2:{i:0;s:3:"130";i:1;s:3:"133";}'),
(648, 179, '_related_programs', 'field_5a1efdb34fbe4'),
(649, 179, 'page_banner_subtitle', 'Our heroes..'),
(650, 179, '_page_banner_subtitle', 'field_5a23223b90aed'),
(651, 179, 'page_banner_background_image', '178'),
(652, 179, '_page_banner_background_image', 'field_5a23228e90aee'),
(653, 179, 'event_date', '20171202'),
(654, 179, '_event_date', 'field_5a1e8bf15e786'),
(655, 106, 'page_banner_subtitle', 'Our heroes..'),
(656, 106, '_page_banner_subtitle', 'field_5a23223b90aed'),
(657, 106, 'page_banner_background_image', '178'),
(658, 106, '_page_banner_background_image', 'field_5a23228e90aee'),
(659, 180, '_wp_attached_file', '2017/11/Gobero-Skull-Sahara-Desert-Archeology-2016-1.jpg'),
(660, 180, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:56:"2017/11/Gobero-Skull-Sahara-Desert-Archeology-2016-1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:56:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:56:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:56:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:57:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:56:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:56:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:57:"Gobero-Skull-Sahara-Desert-Archeology-2016-1-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(661, 129, 'page_banner_subtitle', 'Some history'),
(662, 129, '_page_banner_subtitle', 'field_5a23223b90aed'),
(663, 129, 'page_banner_background_image', '180'),
(664, 129, '_page_banner_background_image', 'field_5a23228e90aee'),
(667, 181, '_wp_attached_file', '2017/11/636069103982384395-470249493_img_2.jpg'),
(668, 181, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:5000;s:6:"height";i:2619;s:4:"file";s:46:"2017/11/636069103982384395-470249493_img_2.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"636069103982384395-470249493_img_2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"636069103982384395-470249493_img_2-300x157.jpg";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:46:"636069103982384395-470249493_img_2-768x402.jpg";s:5:"width";i:768;s:6:"height";i:402;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:47:"636069103982384395-470249493_img_2-1024x536.jpg";s:5:"width";i:1024;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:46:"636069103982384395-470249493_img_2-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:46:"636069103982384395-470249493_img_2-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:47:"636069103982384395-470249493_img_2-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(669, 128, 'page_banner_background_image', '181'),
(670, 128, '_page_banner_background_image', 'field_5a23228e90aee'),
(671, 128, 'page_banner_subtitle', ''),
(672, 128, '_page_banner_subtitle', 'field_5a23223b90aed'),
(673, 182, '_wp_attached_file', '2017/12/computer-science-meaning-information-technology-and-text-F2HW6T.jpg'),
(674, 182, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:1348;s:4:"file";s:75:"2017/12/computer-science-meaning-information-technology-and-text-F2HW6T.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:75:"computer-science-meaning-information-technology-and-text-F2HW6T-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:75:"computer-science-meaning-information-technology-and-text-F2HW6T-289x300.jpg";s:5:"width";i:289;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:75:"computer-science-meaning-information-technology-and-text-F2HW6T-768x796.jpg";s:5:"width";i:768;s:6:"height";i:796;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:76:"computer-science-meaning-information-technology-and-text-F2HW6T-988x1024.jpg";s:5:"width";i:988;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:75:"computer-science-meaning-information-technology-and-text-F2HW6T-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:75:"computer-science-meaning-information-technology-and-text-F2HW6T-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:76:"computer-science-meaning-information-technology-and-text-F2HW6T-1300x350.jpg";s:5:"width";i:1300;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(675, 149, 'page_banner_background_image', '182'),
(676, 149, '_page_banner_background_image', 'field_5a23228e90aee'),
(677, 149, 'page_banner_subtitle', ''),
(678, 149, '_page_banner_subtitle', 'field_5a23223b90aed'),
(679, 183, '_wp_attached_file', '2017/12/101.jpg'),
(680, 183, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1333;s:4:"file";s:15:"2017/12/101.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"101-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"101-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:15:"101-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"101-1024x682.jpg";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:15:"101-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:15:"101-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:16:"101-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(681, 184, '_wp_attached_file', '2017/12/Music-on-Blackboard-1240x660.jpg'),
(682, 184, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1240;s:6:"height";i:660;s:4:"file";s:40:"2017/12/Music-on-Blackboard-1240x660.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Music-on-Blackboard-1240x660-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:40:"Music-on-Blackboard-1240x660-300x160.jpg";s:5:"width";i:300;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:40:"Music-on-Blackboard-1240x660-768x409.jpg";s:5:"width";i:768;s:6:"height";i:409;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:41:"Music-on-Blackboard-1240x660-1024x545.jpg";s:5:"width";i:1024;s:6:"height";i:545;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:40:"Music-on-Blackboard-1240x660-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:40:"Music-on-Blackboard-1240x660-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:41:"Music-on-Blackboard-1240x660-1240x350.jpg";s:5:"width";i:1240;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(683, 185, '_wp_attached_file', '2017/12/paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ.jpg'),
(684, 185, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:960;s:4:"file";s:85:"2017/12/paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:85:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:85:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-300x222.jpg";s:5:"width";i:300;s:6:"height";i:222;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:85:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-768x567.jpg";s:5:"width";i:768;s:6:"height";i:567;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:86:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-1024x756.jpg";s:5:"width";i:1024;s:6:"height";i:756;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:85:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:85:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:86:"paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ-1300x350.jpg";s:5:"width";i:1300;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(685, 186, '_wp_attached_file', '2017/12/philo-major.jpg'),
(686, 186, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1320;s:4:"file";s:23:"2017/12/philo-major.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"philo-major-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"philo-major-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:23:"philo-major-768x507.jpg";s:5:"width";i:768;s:6:"height";i:507;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:24:"philo-major-1024x676.jpg";s:5:"width";i:1024;s:6:"height";i:676;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:23:"philo-major-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:23:"philo-major-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:24:"philo-major-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(687, 187, '_wp_attached_file', '2017/12/Science-and-Nature-blog-post-pexels-photo-132477.jpg'),
(688, 187, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1440;s:6:"height";i:960;s:4:"file";s:60:"2017/12/Science-and-Nature-blog-post-pexels-photo-132477.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:60:"Science-and-Nature-blog-post-pexels-photo-132477-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:60:"Science-and-Nature-blog-post-pexels-photo-132477-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:60:"Science-and-Nature-blog-post-pexels-photo-132477-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:61:"Science-and-Nature-blog-post-pexels-photo-132477-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:60:"Science-and-Nature-blog-post-pexels-photo-132477-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:60:"Science-and-Nature-blog-post-pexels-photo-132477-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:61:"Science-and-Nature-blog-post-pexels-photo-132477-1440x350.jpg";s:5:"width";i:1440;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(689, 188, '_wp_attached_file', '2017/12/writing1.jpg'),
(690, 188, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2272;s:6:"height";i:1067;s:4:"file";s:20:"2017/12/writing1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"writing1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"writing1-300x141.jpg";s:5:"width";i:300;s:6:"height";i:141;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"writing1-768x361.jpg";s:5:"width";i:768;s:6:"height";i:361;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"writing1-1024x481.jpg";s:5:"width";i:1024;s:6:"height";i:481;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:20:"writing1-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:20:"writing1-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:21:"writing1-1500x350.jpg";s:5:"width";i:1500;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.8";s:6:"credit";s:0:"";s:6:"camera";s:9:"NIKON D80";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1234651656";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"60";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(691, 135, 'page_banner_background_image', '185'),
(692, 135, '_page_banner_background_image', 'field_5a23228e90aee'),
(693, 135, 'page_banner_subtitle', ''),
(694, 135, '_page_banner_subtitle', 'field_5a23223b90aed'),
(695, 134, 'page_banner_background_image', '188'),
(696, 134, '_page_banner_background_image', 'field_5a23228e90aee'),
(697, 134, 'page_banner_subtitle', ''),
(698, 134, '_page_banner_subtitle', 'field_5a23223b90aed'),
(699, 133, 'page_banner_background_image', '183'),
(700, 133, '_page_banner_background_image', 'field_5a23228e90aee'),
(701, 133, 'page_banner_subtitle', ''),
(702, 133, '_page_banner_subtitle', 'field_5a23223b90aed'),
(703, 132, 'page_banner_background_image', '187'),
(704, 132, '_page_banner_background_image', 'field_5a23228e90aee'),
(705, 132, 'page_banner_subtitle', ''),
(706, 132, '_page_banner_subtitle', 'field_5a23223b90aed'),
(707, 131, 'page_banner_background_image', '186'),
(708, 131, '_page_banner_background_image', 'field_5a23228e90aee'),
(709, 131, 'page_banner_subtitle', ''),
(710, 131, '_page_banner_subtitle', 'field_5a23223b90aed'),
(711, 130, 'page_banner_background_image', '184'),
(712, 130, '_page_banner_background_image', 'field_5a23228e90aee'),
(713, 130, 'page_banner_subtitle', ''),
(714, 130, '_page_banner_subtitle', 'field_5a23223b90aed'),
(715, 190, '_wp_attached_file', '2017/12/99039334_mediaitem99039333.jpg'),
(716, 190, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:660;s:6:"height";i:371;s:4:"file";s:38:"2017/12/99039334_mediaitem99039333.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"99039334_mediaitem99039333-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"99039334_mediaitem99039333-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:38:"99039334_mediaitem99039333-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:38:"99039334_mediaitem99039333-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:38:"99039334_mediaitem99039333-660x350.jpg";s:5:"width";i:660;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(717, 189, '_edit_last', '1'),
(719, 191, 'page_banner_background_image', '190'),
(720, 191, '_page_banner_background_image', 'field_5a23228e90aee'),
(721, 191, 'page_banner_subtitle', ''),
(722, 191, '_page_banner_subtitle', 'field_5a23223b90aed'),
(723, 189, 'page_banner_background_image', '190'),
(724, 189, '_page_banner_background_image', 'field_5a23228e90aee'),
(725, 189, 'page_banner_subtitle', ''),
(726, 189, '_page_banner_subtitle', 'field_5a23223b90aed'),
(727, 189, '_edit_lock', '1512325269:1'),
(728, 6, '_wp_trash_meta_status', 'publish'),
(729, 6, '_wp_trash_meta_time', '1512325162'),
(730, 6, '_wp_desired_post_slug', 'posta-miniona-tre'),
(731, 4, '_wp_trash_meta_status', 'publish'),
(732, 4, '_wp_trash_meta_time', '1512325162'),
(733, 4, '_wp_desired_post_slug', 'post-numero-du'),
(734, 1, '_wp_trash_meta_status', 'publish'),
(735, 1, '_wp_trash_meta_time', '1512325162'),
(736, 1, '_wp_desired_post_slug', 'hello-world'),
(737, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(738, 189, '_thumbnail_id', '190'),
(740, 193, '_wp_attached_file', '2017/11/1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways.jpg'),
(741, 193, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:750;s:6:"height";i:563;s:4:"file";s:75:"2017/11/1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:75:"1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:75:"1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:75:"1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:75:"1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:75:"1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways-750x350.jpg";s:5:"width";i:750;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(742, 96, '_thumbnail_id', '193'),
(745, 194, 'page_banner_background_image', '193'),
(746, 194, '_page_banner_background_image', 'field_5a23228e90aee'),
(747, 194, 'page_banner_subtitle', 'Rail will strike back!!'),
(748, 194, '_page_banner_subtitle', 'field_5a23223b90aed'),
(749, 161, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(750, 161, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"!=";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(751, 143, 'page_banner_background_image', ''),
(752, 143, '_page_banner_background_image', 'field_5a23228e90aee'),
(753, 143, 'page_banner_subtitle', ''),
(754, 143, '_page_banner_subtitle', 'field_5a23223b90aed'),
(755, 195, '_edit_last', '1'),
(756, 195, '_edit_lock', '1512424004:1'),
(757, 195, 'page_banner_background_image', '200'),
(758, 195, '_page_banner_background_image', 'field_5a23228e90aee'),
(759, 195, 'page_banner_subtitle', 'Gili gili campus'),
(760, 195, '_page_banner_subtitle', 'field_5a23223b90aed'),
(761, 196, '_edit_last', '1'),
(762, 196, '_edit_lock', '1512418832:1'),
(763, 196, 'page_banner_background_image', '201'),
(764, 196, '_page_banner_background_image', 'field_5a23228e90aee'),
(765, 196, 'page_banner_subtitle', 'Close to the city'),
(766, 196, '_page_banner_subtitle', 'field_5a23223b90aed'),
(767, 197, '_edit_last', '1'),
(768, 197, '_edit_lock', '1512418785:1'),
(769, 197, 'page_banner_background_image', '198'),
(770, 197, '_page_banner_background_image', 'field_5a23228e90aee'),
(771, 197, 'page_banner_subtitle', 'In between the woods'),
(772, 197, '_page_banner_subtitle', 'field_5a23223b90aed'),
(773, 198, '_wp_attached_file', '2017/12/media_338478_en.jpg'),
(774, 198, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:300;s:4:"file";s:27:"2017/12/media_338478_en.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"media_338478_en-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"media_338478_en-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:27:"media_338478_en-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:27:"media_338478_en-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(775, 199, '_wp_attached_file', '2017/12/media_424745_en-300x191.jpg'),
(776, 199, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:191;s:4:"file";s:35:"2017/12/media_424745_en-300x191.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:35:"media_424745_en-300x191-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:35:"media_424745_en-300x191-300x191.jpg";s:5:"width";i:300;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:35:"media_424745_en-300x191-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:35:"media_424745_en-300x191-160x191.jpg";s:5:"width";i:160;s:6:"height";i:191;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(777, 200, '_wp_attached_file', '2017/12/media_334543_en.jpg'),
(778, 200, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:300;s:4:"file";s:27:"2017/12/media_334543_en.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"media_334543_en-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"media_334543_en-300x129.jpg";s:5:"width";i:300;s:6:"height";i:129;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:27:"media_334543_en-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:27:"media_334543_en-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(779, 201, '_wp_attached_file', '2017/12/newspic_1982.jpg'),
(780, 201, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1042;s:6:"height";i:798;s:4:"file";s:24:"2017/12/newspic_1982.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"newspic_1982-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"newspic_1982-300x230.jpg";s:5:"width";i:300;s:6:"height";i:230;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"newspic_1982-768x588.jpg";s:5:"width";i:768;s:6:"height";i:588;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"newspic_1982-1024x784.jpg";s:5:"width";i:1024;s:6:"height";i:784;s:9:"mime-type";s:10:"image/jpeg";}s:19:"professor_landscape";a:4:{s:4:"file";s:24:"newspic_1982-200x160.jpg";s:5:"width";i:200;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}s:18:"professor_portrait";a:4:{s:4:"file";s:24:"newspic_1982-160x200.jpg";s:5:"width";i:160;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:11:"page_banner";a:4:{s:4:"file";s:25:"newspic_1982-1042x350.jpg";s:5:"width";i:1042;s:6:"height";i:350;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(781, 202, '_edit_last', '1'),
(782, 202, 'field_5a245f2e583a4', 'a:12:{s:3:"key";s:19:"field_5a245f2e583a4";s:5:"label";s:12:"Map location";s:4:"name";s:12:"map_location";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(784, 202, 'position', 'normal'),
(785, 202, 'layout', 'no_box'),
(786, 202, 'hide_on_screen', ''),
(787, 202, '_edit_lock', '1512402823:1'),
(790, 202, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:6:"campus";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(791, 197, 'map_location', 'a:3:{s:7:"address";s:50:"Lochbank Cottage, Bankend Rd, Dumfries DG1 4TW, UK";s:3:"lat";s:18:"55.045166349244354";s:3:"lng";s:19:"-3.5777664184570312";}'),
(792, 197, '_map_location', 'field_5a245f2e583a4'),
(793, 196, 'map_location', 'a:3:{s:7:"address";s:31:"63 Acre Rd, Glasgow G20 0TL, UK";s:3:"lat";s:17:"55.90361347391844";s:3:"lng";s:18:"-4.315494658935563";}'),
(794, 196, '_map_location', 'field_5a245f2e583a4'),
(795, 195, 'map_location', 'a:3:{s:7:"address";s:30:"Main Building, Glasgow G12, UK";s:3:"lat";s:17:"55.87181072741447";s:3:"lng";s:18:"-4.288337230682373";}'),
(796, 195, '_map_location', 'field_5a245f2e583a4'),
(797, 203, '_menu_item_type', 'post_type'),
(798, 203, '_menu_item_menu_item_parent', '0'),
(799, 203, '_menu_item_object_id', '23'),
(800, 203, '_menu_item_object', 'page'),
(801, 203, '_menu_item_target', ''),
(802, 203, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(803, 203, '_menu_item_xfn', ''),
(804, 203, '_menu_item_url', ''),
(805, 205, '_edit_last', '1'),
(806, 205, 'field_5a25c2ee72347', 'a:14:{s:3:"key";s:19:"field_5a25c2ee72347";s:5:"label";s:14:"Related Campus";s:4:"name";s:14:"related_campus";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:6:"campus";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(807, 205, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:7:"program";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(808, 205, 'position', 'normal'),
(809, 205, 'layout', 'default'),
(810, 205, 'hide_on_screen', ''),
(811, 205, '_edit_lock', '1512428730:1'),
(812, 149, 'related_campus', 'a:2:{i:0;s:3:"197";i:1;s:3:"195";}'),
(813, 149, '_related_campus', 'field_5a25c2ee72347'),
(814, 135, 'related_campus', 'a:1:{i:0;s:3:"196";}'),
(815, 135, '_related_campus', 'field_5a25c2ee72347'),
(816, 134, 'related_campus', 'a:1:{i:0;s:3:"195";}'),
(817, 134, '_related_campus', 'field_5a25c2ee72347'),
(818, 133, 'related_campus', 'a:2:{i:0;s:3:"196";i:1;s:3:"195";}'),
(819, 133, '_related_campus', 'field_5a25c2ee72347'),
(820, 132, 'related_campus', 'a:2:{i:0;s:3:"197";i:1;s:3:"195";}'),
(821, 132, '_related_campus', 'field_5a25c2ee72347'),
(822, 131, 'related_campus', 'a:2:{i:0;s:3:"196";i:1;s:3:"197";}'),
(823, 131, '_related_campus', 'field_5a25c2ee72347'),
(824, 130, 'related_campus', 'a:1:{i:0;s:3:"195";}'),
(825, 130, '_related_campus', 'field_5a25c2ee72347'),
(826, 129, 'related_campus', 'a:1:{i:0;s:3:"196";}'),
(827, 129, '_related_campus', 'field_5a25c2ee72347'),
(828, 128, 'related_campus', 'a:1:{i:0;s:3:"197";}'),
(829, 128, '_related_campus', 'field_5a25c2ee72347');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-27 13:36:04', '2017-11-27 13:36:04', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2017-12-03 18:19:22', '2017-12-03 18:19:22', '', 0, 'http://localhost/dashboard/FicUni/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-27 13:36:04', '2017-11-27 13:36:04', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Leicester City, XYZ employs over 2,000 people and does all kinds of awesome things for the Leicester community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/dashboard/FicUni/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-27 13:36:04', '2017-11-27 13:36:04', '', 0, 'http://localhost/dashboard/FicUni/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-27 14:51:09', '2017-11-27 14:51:09', 'Testowanie posta numer 2', 'Post numero du', '', 'trash', 'open', 'open', '', 'post-numero-du__trashed', '', '', '2017-12-03 18:19:22', '2017-12-03 18:19:22', '', 0, 'http://localhost/dashboard/FicUni/?p=4', 0, 'post', '', 0),
(5, 1, '2017-11-27 14:51:09', '2017-11-27 14:51:09', 'Testowanie posta numer 2', 'Post numero du', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-27 14:51:09', '2017-11-27 14:51:09', '', 4, 'http://localhost/dashboard/FicUni/2017/11/27/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2017-11-27 14:51:31', '2017-11-27 14:51:31', 'Kolejne postowanie miniona', 'Posta miniona tre', '', 'trash', 'open', 'open', '', 'posta-miniona-tre__trashed', '', '', '2017-12-03 18:19:22', '2017-12-03 18:19:22', '', 0, 'http://localhost/dashboard/FicUni/?p=6', 0, 'post', '', 0),
(7, 1, '2017-11-27 14:51:31', '2017-11-27 14:51:31', 'Kolejne postowanie miniona', 'Posta miniona tre', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-11-27 14:51:31', '2017-11-27 14:51:31', '', 6, 'http://localhost/dashboard/FicUni/2017/11/27/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-11-27 15:18:44', '2017-11-27 15:18:44', 'Minionki sa zolciutkie.', 'Pejga Miniona', '', 'publish', 'closed', 'closed', '', 'pejga-miniona', '', '', '2017-11-27 15:18:44', '2017-11-27 15:18:44', '', 0, 'http://localhost/dashboard/FicUni/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-11-27 15:18:44', '2017-11-27 15:18:44', 'Minionki sa zolciutkie.', 'Pejga Miniona', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-11-27 15:18:44', '2017-11-27 15:18:44', '', 8, 'http://localhost/dashboard/FicUni/2017/11/27/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-11-27 15:48:37', '2017-11-27 15:48:37', '{\n    "custom_css[dark-master]": {\n        "value": "body {\\n\\tcolor: red;\\n}",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-27 15:48:37"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b7ef233-8b7c-42e9-98e6-e77f6ffcab58', '', '', '2017-11-27 15:48:37', '2017-11-27 15:48:37', '', 0, 'http://localhost/dashboard/FicUni/2017/11/27/8b7ef233-8b7c-42e9-98e6-e77f6ffcab58/', 0, 'customize_changeset', '', 0),
(11, 1, '2017-11-27 15:48:37', '2017-11-27 15:48:37', '', 'dark-master', '', 'publish', 'closed', 'closed', '', 'dark-master', '', '', '2017-11-27 15:49:18', '2017-11-27 15:49:18', '', 0, 'http://localhost/dashboard/FicUni/2017/11/27/dark-master/', 0, 'custom_css', '', 0),
(12, 1, '2017-11-27 15:48:37', '2017-11-27 15:48:37', 'body {\n	color: red;\n}', 'dark-master', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-11-27 15:48:37', '2017-11-27 15:48:37', '', 11, 'http://localhost/dashboard/FicUni/2017/11/27/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2017-11-27 15:49:18', '2017-11-27 15:49:18', '{\n    "custom_css[dark-master]": {\n        "value": "",\n        "type": "custom_css",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-27 15:49:18"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3a3fb0e7-d2de-411b-9647-d558ccae201b', '', '', '2017-11-27 15:49:18', '2017-11-27 15:49:18', '', 0, 'http://localhost/dashboard/FicUni/2017/11/27/3a3fb0e7-d2de-411b-9647-d558ccae201b/', 0, 'customize_changeset', '', 0),
(14, 1, '2017-11-27 15:49:18', '2017-11-27 15:49:18', '', 'dark-master', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-11-27 15:49:18', '2017-11-27 15:49:18', '', 11, 'http://localhost/dashboard/FicUni/2017/11/27/11-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-11-27 17:17:53', '2017-11-27 17:17:53', 'Strona o nas. Dummy text.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2017-12-03 15:12:09', '2017-12-03 15:12:09', '', 0, 'http://localhost/dashboard/FicUni/?page_id=15', 0, 'page', '', 0),
(16, 1, '2017-11-27 17:17:53', '2017-11-27 17:17:53', 'Strona o nas. Dummy text.', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-11-27 17:17:53', '2017-11-27 17:17:53', '', 15, 'http://localhost/dashboard/FicUni/2017/11/27/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2017-11-27 17:18:10', '2017-11-27 17:18:10', 'Polityka prywatnosci strona.', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2017-12-03 17:51:22', '2017-12-03 17:51:22', '', 0, 'http://localhost/dashboard/FicUni/?page_id=17', 0, 'page', '', 0),
(18, 1, '2017-11-27 17:18:10', '2017-11-27 17:18:10', 'Polityka prywatnosci strona.', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-11-27 17:18:10', '2017-11-27 17:18:10', '', 17, 'http://localhost/dashboard/FicUni/2017/11/27/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2017-11-27 17:52:44', '2017-11-27 17:52:44', 'To jest lista programow na uniwerku.', 'Programs', '', 'publish', 'closed', 'closed', '', 'programs', '', '', '2017-11-27 17:52:44', '2017-11-27 17:52:44', '', 0, 'http://localhost/dashboard/FicUni/?page_id=19', 0, 'page', '', 0),
(20, 1, '2017-11-27 17:52:44', '2017-11-27 17:52:44', 'To jest lista programow na uniwerku.', 'Programs', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2017-11-27 17:52:44', '2017-11-27 17:52:44', '', 19, 'http://localhost/dashboard/FicUni/2017/11/27/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2017-11-27 17:52:54', '2017-11-27 17:52:54', 'Lista eventow', 'Events', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2017-11-27 17:52:54', '2017-11-27 17:52:54', '', 0, 'http://localhost/dashboard/FicUni/?page_id=21', 0, 'page', '', 0),
(22, 1, '2017-11-27 17:52:54', '2017-11-27 17:52:54', 'Lista eventow', 'Events', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2017-11-27 17:52:54', '2017-11-27 17:52:54', '', 21, 'http://localhost/dashboard/FicUni/2017/11/27/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2017-11-27 17:53:08', '2017-11-27 17:53:08', 'Lista kampusow.', 'Campuses', '', 'publish', 'closed', 'closed', '', 'campuses', '', '', '2017-11-27 17:53:08', '2017-11-27 17:53:08', '', 0, 'http://localhost/dashboard/FicUni/?page_id=23', 0, 'page', '', 0),
(24, 1, '2017-11-27 17:53:08', '2017-11-27 17:53:08', 'Lista kampusow.', 'Campuses', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2017-11-27 17:53:08', '2017-11-27 17:53:08', '', 23, 'http://localhost/dashboard/FicUni/2017/11/27/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-11-27 18:02:18', '2017-11-27 18:02:18', 'To sa nasze cele - goals.', 'Our goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2017-12-03 17:24:11', '2017-12-03 17:24:11', '', 15, 'http://localhost/dashboard/FicUni/?page_id=25', 0, 'page', '', 0),
(26, 1, '2017-11-27 18:02:18', '2017-11-27 18:02:18', 'To sa nasze cele - goals.', 'Our goals', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-11-27 18:02:18', '2017-11-27 18:02:18', '', 25, 'http://localhost/dashboard/FicUni/2017/11/27/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2017-11-27 18:02:44', '2017-11-27 18:02:44', 'To jest nasza historia.', 'Our history', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2017-12-03 17:24:53', '2017-12-03 17:24:53', '', 15, 'http://localhost/dashboard/FicUni/?page_id=27', 0, 'page', '', 0),
(28, 1, '2017-11-27 18:02:44', '2017-11-27 18:02:44', 'To jest nasza historia.', 'Our history', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-11-27 18:02:44', '2017-11-27 18:02:44', '', 27, 'http://localhost/dashboard/FicUni/2017/11/27/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2017-11-27 18:29:59', '2017-11-27 18:29:59', 'Ciasteczka', 'Cookie policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2017-12-03 17:52:22', '2017-12-03 17:52:22', '', 17, 'http://localhost/dashboard/FicUni/?page_id=29', 0, 'page', '', 0),
(30, 1, '2017-11-27 18:29:59', '2017-11-27 18:29:59', 'Ciasteczka', 'Cookie policy', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-11-27 18:29:59', '2017-11-27 18:29:59', '', 29, 'http://localhost/dashboard/FicUni/2017/11/27/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 15, 'http://localhost/dashboard/FicUni/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 15, 'http://localhost/dashboard/FicUni/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 17, 'http://localhost/dashboard/FicUni/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=40', 1, 'nav_menu_item', '', 0),
(41, 1, '2017-11-27 21:14:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:14:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=41', 1, 'nav_menu_item', '', 0),
(42, 1, '2017-11-27 21:15:08', '2017-11-27 21:15:08', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=42', 5, 'nav_menu_item', '', 0),
(43, 1, '2017-11-27 21:15:08', '2017-11-27 21:15:08', ' ', '', '', 'publish', 'closed', 'closed', '', '43', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=43', 6, 'nav_menu_item', '', 0),
(44, 1, '2017-11-27 21:19:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:19:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2017-11-27 21:19:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:19:58', '0000-00-00 00:00:00', '', 17, 'http://localhost/dashboard/FicUni/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2017-11-27 21:19:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:19:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=46', 1, 'nav_menu_item', '', 0),
(47, 1, '2017-11-27 21:19:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:19:58', '0000-00-00 00:00:00', '', 15, 'http://localhost/dashboard/FicUni/?p=47', 1, 'nav_menu_item', '', 0),
(48, 1, '2017-11-27 21:19:58', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-27 21:19:58', '0000-00-00 00:00:00', '', 15, 'http://localhost/dashboard/FicUni/?p=48', 1, 'nav_menu_item', '', 0),
(52, 1, '2017-11-27 21:26:07', '2017-11-27 21:26:07', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2017-11-29 15:20:06', '2017-11-29 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=52', 5, 'nav_menu_item', '', 0),
(53, 1, '2017-11-27 21:26:07', '2017-11-27 21:26:07', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2017-11-29 15:20:06', '2017-11-29 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=53', 3, 'nav_menu_item', '', 0),
(54, 1, '2017-11-27 21:26:06', '2017-11-27 21:26:06', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2017-11-29 15:20:06', '2017-11-29 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=54', 1, 'nav_menu_item', '', 0),
(55, 1, '2017-11-27 21:26:07', '2017-11-27 21:26:07', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2017-11-29 15:20:06', '2017-11-29 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2017-11-27 21:26:26', '2017-11-27 21:26:26', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2017-11-27 21:26:26', '2017-11-27 21:26:26', '', 0, 'http://localhost/dashboard/FicUni/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2017-11-27 21:57:40', '2017-11-27 21:57:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-11-27 21:57:40', '2017-11-27 21:57:40', '', 0, 'http://localhost/dashboard/FicUni/?page_id=57', 0, 'page', '', 0),
(58, 1, '2017-11-27 21:57:40', '2017-11-27 21:57:40', '', 'Home', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2017-11-27 21:57:40', '2017-11-27 21:57:40', '', 57, 'http://localhost/dashboard/FicUni/2017/11/27/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-11-27 21:57:51', '2017-11-27 21:57:51', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-11-27 21:57:51', '2017-11-27 21:57:51', '', 0, 'http://localhost/dashboard/FicUni/?page_id=59', 0, 'page', '', 0),
(60, 1, '2017-11-27 21:57:51', '2017-11-27 21:57:51', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2017-11-27 21:57:51', '2017-11-27 21:57:51', '', 59, 'http://localhost/dashboard/FicUni/2017/11/27/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2017-11-27 22:13:54', '2017-11-27 22:13:54', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=61', 1, 'nav_menu_item', '', 0),
(62, 1, '2017-11-27 22:18:26', '2017-11-27 22:18:26', '<h5>Ogromnym skandalem zakończyło się spotkanie piłkarskiej ligi w Sudanie. Podczas meczu, który został rozegrany kilka dni temu pomiędzy Al Hilal Omdurmanu i Al Merreikh Omdurmanu, kibice stworzyli odrażające widowisko.</h5>', 'Kibice w Afryce z napisem "HOLOCAUST" i wielkim plakatem Hitlera', '', 'publish', 'open', 'open', '', 'kibice-w-afryce-z-napisem-holocaust-i-wielkim-plakatem-hitlera', '', '', '2017-11-27 22:37:04', '2017-11-27 22:37:04', '', 0, 'http://localhost/dashboard/FicUni/?p=62', 0, 'post', '', 0),
(63, 1, '2017-11-27 22:18:26', '2017-11-27 22:18:26', '<h5>Ogromnym skandalem zakończyło się spotkanie piłkarskiej ligi w Sudanie. Podczas meczu, który został rozegrany kilka dni temu pomiędzy Al Hilal Omdurmanu i Al Merreikh Omdurmanu, kibice stworzyli odrażające widowisko.</h5>', 'Kibice w Afryce z napisem "HOLOCAUST" i wielkim plakatem Hitlera', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2017-11-27 22:18:26', '2017-11-27 22:18:26', '', 62, 'http://localhost/dashboard/FicUni/2017/11/27/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2017-11-28 15:10:04', '2017-11-28 15:10:04', 'MPs will see for the first time later studies of how the UK''s exit will affect 58 sectors of the economy, but certain sections will not be released.\r\n\r\nMinisters say they are being as "open as possible" but some sensitive details which risk "undermining the UK''s negotiating hand" will be kept private.\r\n\r\nLabour said the will of Parliament was being ignored and transparency ditched.\r\n\r\nThe 850-pages of documents - which MPs demanded be published in a vote earlier this month - has been handed to the Commons and Lords Brexit committees, whose members will begin to study it in private later.\r\n\r\nBrexit minister Robin Walker said he hoped the "accessible and informative" material would be made available to all MPs in due course - in a reading room - but defended the removal of commercially sensitive details which he suggested could damage the UK''s negotiating strategy.\r\n\r\nBut Labour MP Hilary Benn, who chairs the Brexit committee, said it was "their job" to decide what was published and he objected to the suggestion it could not be trusted to respect confidentiality.', 'Brexit: Government studies handed to MPs amid secrecy row', '', 'publish', 'open', 'open', '', 'brexit-government-studies-handed-to-mps-amid-secrecy-row', '', '', '2017-11-28 15:10:04', '2017-11-28 15:10:04', '', 0, 'http://localhost/dashboard/FicUni/?p=64', 0, 'post', '', 0),
(65, 1, '2017-11-28 15:10:04', '2017-11-28 15:10:04', 'MPs will see for the first time later studies of how the UK''s exit will affect 58 sectors of the economy, but certain sections will not be released.\r\n\r\nMinisters say they are being as "open as possible" but some sensitive details which risk "undermining the UK''s negotiating hand" will be kept private.\r\n\r\nLabour said the will of Parliament was being ignored and transparency ditched.\r\n\r\nThe 850-pages of documents - which MPs demanded be published in a vote earlier this month - has been handed to the Commons and Lords Brexit committees, whose members will begin to study it in private later.\r\n\r\nBrexit minister Robin Walker said he hoped the "accessible and informative" material would be made available to all MPs in due course - in a reading room - but defended the removal of commercially sensitive details which he suggested could damage the UK''s negotiating strategy.\r\n\r\nBut Labour MP Hilary Benn, who chairs the Brexit committee, said it was "their job" to decide what was published and he objected to the suggestion it could not be trusted to respect confidentiality.', 'Brexit: Government studies handed to MPs amid secrecy row', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-11-28 15:10:04', '2017-11-28 15:10:04', '', 64, 'http://localhost/dashboard/FicUni/2017/11/28/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2017-11-28 15:10:30', '2017-11-28 15:10:30', '<p class="story-body__introduction"><strong>Would you give up a job you loved to fight for a cause that you knew, in your heart of hearts, was probably lost?</strong></p>\r\n<strong>That''s what Mike Roberts did and he is not alone.</strong>\r\n\r\nMr Roberts was a chief inspector with Greater Manchester Police but took early retirement to campaign to keep Britain in the European Union.\r\n\r\n"I was so frustrated with the Brexit process," he says, "I had the idea of starting a political party, like Mr Farage did all those years ago, with a very simple message and a very simple brand."\r\n\r\nNigel Farage, of course, ended up as leader of the UK Independence Party, or UKIP. Mike Roberts came up with UKRemainEU. He briefly considered changing his surname to that but, perhaps wisely, decided against it and registered the name as a political party instead.\r\n\r\nThe police take a dim view of their officers taking part in political campaigns, so having racked up 30 years with the force, he decided to quit to devote his time to the anti-Brexit cause. As a senior officer he could have carried on working, but he says couldn''t stay neutral any longer.\r\n\r\n"What really fired me up was when I went on holiday to Holland just after the Brexit vote and my five-year-old son said he would like to live there when he grows up. I said ''you might not be able to because of Brexit''."\r\n\r\nAt the moment, UKremainEU is little more than a twitter feed but Mr Roberts wants to hook up with like-minded individuals to stand under his party''s banner in upcoming elections.\r\n\r\n"In every area there will be somebody like me," he says.', 'I gave up my job to fight Brexit', '', 'publish', 'open', 'open', '', 'i-gave-up-my-job-to-fight-brexit', '', '', '2017-11-28 15:10:30', '2017-11-28 15:10:30', '', 0, 'http://localhost/dashboard/FicUni/?p=66', 0, 'post', '', 0),
(67, 1, '2017-11-28 15:10:30', '2017-11-28 15:10:30', '<p class="story-body__introduction"><strong>Would you give up a job you loved to fight for a cause that you knew, in your heart of hearts, was probably lost?</strong></p>\r\n<strong>That''s what Mike Roberts did and he is not alone.</strong>\r\n\r\nMr Roberts was a chief inspector with Greater Manchester Police but took early retirement to campaign to keep Britain in the European Union.\r\n\r\n"I was so frustrated with the Brexit process," he says, "I had the idea of starting a political party, like Mr Farage did all those years ago, with a very simple message and a very simple brand."\r\n\r\nNigel Farage, of course, ended up as leader of the UK Independence Party, or UKIP. Mike Roberts came up with UKRemainEU. He briefly considered changing his surname to that but, perhaps wisely, decided against it and registered the name as a political party instead.\r\n\r\nThe police take a dim view of their officers taking part in political campaigns, so having racked up 30 years with the force, he decided to quit to devote his time to the anti-Brexit cause. As a senior officer he could have carried on working, but he says couldn''t stay neutral any longer.\r\n\r\n"What really fired me up was when I went on holiday to Holland just after the Brexit vote and my five-year-old son said he would like to live there when he grows up. I said ''you might not be able to because of Brexit''."\r\n\r\nAt the moment, UKremainEU is little more than a twitter feed but Mr Roberts wants to hook up with like-minded individuals to stand under his party''s banner in upcoming elections.\r\n\r\n"In every area there will be somebody like me," he says.', 'I gave up my job to fight Brexit', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-11-28 15:10:30', '2017-11-28 15:10:30', '', 66, 'http://localhost/dashboard/FicUni/2017/11/28/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2017-11-28 15:10:49', '2017-11-28 15:10:49', 'The Health Committee is looking at the nursing workforce, starting with questions to Prof Ian Cumming, chief executive of Health Education England, which supports training and education of health workers.\r\n\r\nLabour MP Rosie Cooper says she thinks current plans for the workforce are "based on affordability rather than need" and asks for his views on ways of projecting future workforce needs.\r\n\r\nProf Cumming says training sufficient nurses is important but another factor is "how good the NHS is at retaining those nurses once they''ve entered employment".', 'MPs debate Budget resolutions', '', 'publish', 'open', 'open', '', 'mps-debate-budget-resolutions', '', '', '2017-11-28 15:10:49', '2017-11-28 15:10:49', '', 0, 'http://localhost/dashboard/FicUni/?p=68', 0, 'post', '', 0),
(69, 1, '2017-11-28 15:10:49', '2017-11-28 15:10:49', 'The Health Committee is looking at the nursing workforce, starting with questions to Prof Ian Cumming, chief executive of Health Education England, which supports training and education of health workers.\r\n\r\nLabour MP Rosie Cooper says she thinks current plans for the workforce are "based on affordability rather than need" and asks for his views on ways of projecting future workforce needs.\r\n\r\nProf Cumming says training sufficient nurses is important but another factor is "how good the NHS is at retaining those nurses once they''ve entered employment".', 'MPs debate Budget resolutions', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2017-11-28 15:10:49', '2017-11-28 15:10:49', '', 68, 'http://localhost/dashboard/FicUni/2017/11/28/68-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2017-11-28 15:19:21', '2017-11-28 15:19:21', 'Brexit Minister Lord Callanan is repeating the answer to an urgent question on the release of the government''s assessments of how Brexit will affect 58 different sectors.\r\n\r\nMPs will see the studies for the first time later, but certain sections will not be released.\r\n\r\nMinisters say they are being as "open as possible" but some sensitive details which risk "undermining the UK''s negotiating hand" will be kept private.\r\n\r\nLabour has accused the government of treating Parliament "with contempt", but Lord Callanan says it takes its responsibilities "very seriously".', 'Peers hear Brexit studies statement', '', 'publish', 'open', 'open', '', 'peers-hear-brexit-studies-statement', '', '', '2017-11-28 15:19:21', '2017-11-28 15:19:21', '', 0, 'http://localhost/dashboard/FicUni/?p=70', 0, 'post', '', 0),
(71, 1, '2017-11-28 15:19:21', '2017-11-28 15:19:21', 'Brexit Minister Lord Callanan is repeating the answer to an urgent question on the release of the government''s assessments of how Brexit will affect 58 different sectors.\r\n\r\nMPs will see the studies for the first time later, but certain sections will not be released.\r\n\r\nMinisters say they are being as "open as possible" but some sensitive details which risk "undermining the UK''s negotiating hand" will be kept private.\r\n\r\nLabour has accused the government of treating Parliament "with contempt", but Lord Callanan says it takes its responsibilities "very seriously".', 'Peers hear Brexit studies statement', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-11-28 15:19:21', '2017-11-28 15:19:21', '', 70, 'http://localhost/dashboard/FicUni/2017/11/28/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2017-11-28 15:20:06', '2017-11-28 15:20:06', '<p class="story-body__introduction"><strong>The Department for Exiting the European Union has found itself in a pickle thanks to a stash of documents that government sources claim don''t really exist.</strong></p>\r\nThe opposition parties are indignant that they have not been given the full version of the documents that the government claims didn''t exist in the first place.\r\n\r\nAnd they are intent on pushing them back to parliament to force them to give more information about the things that don''t exist, or do exist...\r\n\r\nThis is because tonight, the one thing that we can be sure of is that there is a cache of hundreds of pages of documents sitting in a safe somewhere in Westminster.\r\n\r\nLots of MPs are cross and the government, which already has its plate more than full, has just failed to close down a brouhaha that has already been going on for months.\r\n\r\nSo what on earth is actually going on? With a little bit of artistic licence, this is roughly and broadly what has happened - although given the above cocktail of Kafka and The Thick of It, do forgive me if it is hard to source a completely straight or official account that all sides agree on.\r\n<ul class="story-body__unordered-list">\r\n 	<li class="story-body__list-item"><em>The Brexit documents row isn''t going away</em></li>\r\n 	<li class="story-body__list-item"><em>The EU-exit papers and the economics of Brexit</em></li>\r\n</ul>\r\nHaving been caught by surprise by the referendum, Whitehall found itself with no plans for how to manage the exit from the EU.\r\n\r\nBy political instruction, there had been no preparation for that outcome - nada, zip, nothing - for potentially the biggest change to the country in decades.\r\n\r\nScrabbling to, quite understandably, look like they knew what they were doing, with a completely changed government (including two new government departments), the most important new kid on the block - the Department for Exiting the European Union - moved to assure people.\r\n\r\nThey wanted them to know that they were planning on a well thought through basis, taking the proper soundings and taking an organised and analytical approach to the process.\r\n\r\nOfficial sources close to David Davis at the time said that they were conducting analyses of more than 50 sectors of the economy or "don''t worry, we''re doing all the proper research you''d imagine."\r\n\r\nThe Brexit Secretary himself said as much to a committee of MPs in December last year, saying: "We''ve carried out or are in the midst of carrying out about 57, I think, sectoral analyses, each of which has implications for individual parts of 85% of the economy, and some of those are still to be concluded.\r\n\r\n"We have work still to be done on justice and home affairs, so there is a fair number of things still to do. So it will be as soon as we''re ready."', 'Brexit impact reports: ''Row of their own making''', '', 'publish', 'open', 'open', '', 'brexit-impact-reports-row-of-their-own-making', '', '', '2017-11-28 15:20:06', '2017-11-28 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=72', 0, 'post', '', 0),
(73, 1, '2017-11-28 15:20:06', '2017-11-28 15:20:06', '<p class="story-body__introduction"><strong>The Department for Exiting the European Union has found itself in a pickle thanks to a stash of documents that government sources claim don''t really exist.</strong></p>\r\nThe opposition parties are indignant that they have not been given the full version of the documents that the government claims didn''t exist in the first place.\r\n\r\nAnd they are intent on pushing them back to parliament to force them to give more information about the things that don''t exist, or do exist...\r\n\r\nThis is because tonight, the one thing that we can be sure of is that there is a cache of hundreds of pages of documents sitting in a safe somewhere in Westminster.\r\n\r\nLots of MPs are cross and the government, which already has its plate more than full, has just failed to close down a brouhaha that has already been going on for months.\r\n\r\nSo what on earth is actually going on? With a little bit of artistic licence, this is roughly and broadly what has happened - although given the above cocktail of Kafka and The Thick of It, do forgive me if it is hard to source a completely straight or official account that all sides agree on.\r\n<ul class="story-body__unordered-list">\r\n 	<li class="story-body__list-item"><em>The Brexit documents row isn''t going away</em></li>\r\n 	<li class="story-body__list-item"><em>The EU-exit papers and the economics of Brexit</em></li>\r\n</ul>\r\nHaving been caught by surprise by the referendum, Whitehall found itself with no plans for how to manage the exit from the EU.\r\n\r\nBy political instruction, there had been no preparation for that outcome - nada, zip, nothing - for potentially the biggest change to the country in decades.\r\n\r\nScrabbling to, quite understandably, look like they knew what they were doing, with a completely changed government (including two new government departments), the most important new kid on the block - the Department for Exiting the European Union - moved to assure people.\r\n\r\nThey wanted them to know that they were planning on a well thought through basis, taking the proper soundings and taking an organised and analytical approach to the process.\r\n\r\nOfficial sources close to David Davis at the time said that they were conducting analyses of more than 50 sectors of the economy or "don''t worry, we''re doing all the proper research you''d imagine."\r\n\r\nThe Brexit Secretary himself said as much to a committee of MPs in December last year, saying: "We''ve carried out or are in the midst of carrying out about 57, I think, sectoral analyses, each of which has implications for individual parts of 85% of the economy, and some of those are still to be concluded.\r\n\r\n"We have work still to be done on justice and home affairs, so there is a fair number of things still to do. So it will be as soon as we''re ready."', 'Brexit impact reports: ''Row of their own making''', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-11-28 15:20:06', '2017-11-28 15:20:06', '', 72, 'http://localhost/dashboard/FicUni/2017/11/28/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2017-11-28 15:20:51', '2017-11-28 15:20:51', '<p class="story-body__introduction">What do the measures introduced in <a class="story-body__link" href="http://www.bbc.co.uk/news/uk-politics-42069508">the Budget</a> mean to young people in the UK?</p>\r\nThe Chancellor Philip Hammond, announced the immediate abolition <a class="story-body__link" href="http://www.bbc.co.uk/news/business-42079174">of stamp duty</a> for properties up to £300,000 in England, Northern Ireland and, for a time, Wales.\r\n\r\nThe average first-time buyer pays about £1,600 in stamp duty, according to Halifax Building Society.\r\n\r\nThe BBC spoke to a number of young people to find out if they thought the chancellor had gone far enough.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nHollie Croft, 31, is buying a house in London with her husband.\r\n\r\n"Our stamp duty would have been £9,000," she said.\r\n\r\n"Now, we can afford to redo the bathroom straight away instead of living with the rundown one until we''d saved up.\r\n\r\n"Saving for a deposit whilst paying London rent has meant no holidays, no new clothes and very few nights out.\r\n\r\n"I still think current house prices are disproportionate to wages and I don''t know if this change will help in the long term, but for us right now? We''re very happy."\r\n<h2 class="story-body__crosshead">''Empty promises''</h2>\r\nMadeleine van Oss, a 25-year-old law student in Oxford, told the BBC the stamp-duty cut reflected the difficulty many young people faced accessing the housing market.\r\n\r\n"If I get a good job and I can buy a house, the stamp-duty [cut] will help me," she said.\r\n\r\n"It''s good to see an acknowledgement that things are harder for us now than it was for them back in the day.\r\n\r\n"Personally, I do well out of [this Budget]," she added.\r\n<ul class="story-body__unordered-list">\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/business-42071148">What the Budget 2017 means for you</a></li>\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/uk-politics-42056452">Key points at-a-glance</a></li>\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/business-17442946">Budget calculator</a></li>\r\n</ul>\r\nOthers were more circumspect. Nick, 19, said: "A lot of [this Budget], I felt, was just empty promises and things to attempt to win over voters."\r\n\r\nHe added: "I''m not sure how much of an impact the stamp-duty change will make to first-time buyers.\r\n\r\n"With property prices rising, especially in London, £300,000 in house terms isn''t a lot, in my opinion."\r\n\r\nNikki Entwistle, 33, agrees. After being made redundant from her job at British Gas in 2016, she decided to go back to college, where she is now studying animal management.\r\n\r\n"I''ve never been able to afford my own home," she said.\r\n\r\n"I''ve rented property since I was about 19.\r\n\r\n"It seemed expensive then, but prices have gone up a lot.\r\n\r\n"I don''t know how the government expects us to be able to afford to save.\r\n\r\n"With council tax, energy bills, rent and food, there''s not enough left.\r\n\r\n"I think there needs to be a cap on rent.\r\n\r\n"Paying almost £700 a month makes it impossible."', 'Budget 2017: ''I''ve never been able to afford my own home''', '', 'publish', 'open', 'open', '', 'budget-2017-ive-never-been-able-to-afford-my-own-home', '', '', '2017-11-28 15:20:51', '2017-11-28 15:20:51', '', 0, 'http://localhost/dashboard/FicUni/?p=74', 0, 'post', '', 0),
(75, 1, '2017-11-28 15:20:51', '2017-11-28 15:20:51', '<p class="story-body__introduction">What do the measures introduced in <a class="story-body__link" href="http://www.bbc.co.uk/news/uk-politics-42069508">the Budget</a> mean to young people in the UK?</p>\r\nThe Chancellor Philip Hammond, announced the immediate abolition <a class="story-body__link" href="http://www.bbc.co.uk/news/business-42079174">of stamp duty</a> for properties up to £300,000 in England, Northern Ireland and, for a time, Wales.\r\n\r\nThe average first-time buyer pays about £1,600 in stamp duty, according to Halifax Building Society.\r\n\r\nThe BBC spoke to a number of young people to find out if they thought the chancellor had gone far enough.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\nHollie Croft, 31, is buying a house in London with her husband.\r\n\r\n"Our stamp duty would have been £9,000," she said.\r\n\r\n"Now, we can afford to redo the bathroom straight away instead of living with the rundown one until we''d saved up.\r\n\r\n"Saving for a deposit whilst paying London rent has meant no holidays, no new clothes and very few nights out.\r\n\r\n"I still think current house prices are disproportionate to wages and I don''t know if this change will help in the long term, but for us right now? We''re very happy."\r\n<h2 class="story-body__crosshead">''Empty promises''</h2>\r\nMadeleine van Oss, a 25-year-old law student in Oxford, told the BBC the stamp-duty cut reflected the difficulty many young people faced accessing the housing market.\r\n\r\n"If I get a good job and I can buy a house, the stamp-duty [cut] will help me," she said.\r\n\r\n"It''s good to see an acknowledgement that things are harder for us now than it was for them back in the day.\r\n\r\n"Personally, I do well out of [this Budget]," she added.\r\n<ul class="story-body__unordered-list">\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/business-42071148">What the Budget 2017 means for you</a></li>\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/uk-politics-42056452">Key points at-a-glance</a></li>\r\n 	<li class="story-body__list-item"><a class="story-body__link" href="http://www.bbc.co.uk/news/business-17442946">Budget calculator</a></li>\r\n</ul>\r\nOthers were more circumspect. Nick, 19, said: "A lot of [this Budget], I felt, was just empty promises and things to attempt to win over voters."\r\n\r\nHe added: "I''m not sure how much of an impact the stamp-duty change will make to first-time buyers.\r\n\r\n"With property prices rising, especially in London, £300,000 in house terms isn''t a lot, in my opinion."\r\n\r\nNikki Entwistle, 33, agrees. After being made redundant from her job at British Gas in 2016, she decided to go back to college, where she is now studying animal management.\r\n\r\n"I''ve never been able to afford my own home," she said.\r\n\r\n"I''ve rented property since I was about 19.\r\n\r\n"It seemed expensive then, but prices have gone up a lot.\r\n\r\n"I don''t know how the government expects us to be able to afford to save.\r\n\r\n"With council tax, energy bills, rent and food, there''s not enough left.\r\n\r\n"I think there needs to be a cap on rent.\r\n\r\n"Paying almost £700 a month makes it impossible."', 'Budget 2017: ''I''ve never been able to afford my own home''', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2017-11-28 15:20:51', '2017-11-28 15:20:51', '', 74, 'http://localhost/dashboard/FicUni/2017/11/28/74-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2017-11-28 15:21:30', '2017-11-28 15:21:30', '<p class="story-body__introduction">A Budget has been delivered by Chancellor Philip Hammond which he says will "help families to cope with the cost of living".</p>\r\nThe chancellor has announced plans on tax, housing and travel, alongside an update on the UK''s economic position.\r\n\r\nHere is what it means for you.\r\n<h2 class="story-body__crosshead">Stamp duty reform</h2>\r\nThe stand out feature of the Budget for first-time buyers living in England, Northern Ireland and, for a time, in Wales is an immediate abolition of stamp duty when buying properties of up to £300,000. For properties costing up to £500,000, no stamp duty will be paid on the first £300,000.\r\n\r\nThe starting point for paying stamp duty in England was £125,000.\r\n\r\nAccording to the Halifax, the average first-time buyer in the UK had paid about £1,660 in stamp duty, on a property costing £211,980.\r\n\r\nHowever, in many parts of the country first-time buyers pay relatively little in stamp duty. In the North of England, the typical first-time buyer saving would be £24, the lender said.\r\n\r\nThe effect will be felt the most in the South East of England where the average home bought by a first-time buyer could save £3,948, and in London with a saving of £5,000.\r\n\r\nThe Office For Budget Responsibility also pointed out that a subsequent rise in house prices would more than cancel out the benefit from the stamp duty measures, and it will primarily assist existing homeowners, with only an additional 3,500 first-time buyer sales at a significant cost to the Treasury.\r\n\r\nIt does not affect the biggest up-front cost for first-time buyers - the deposit. In the UK, the average deposit is £37,101, according to the Halifax.\r\n\r\nIf a couple are buying and only one is a first-time buyer, then they do not get the tax break.\r\n\r\nIt also will do nothing for those trading up, whose numbers have fallen sharply in the last 10 years, or potential downsizers who are put off by the stamp duty cost.', 'Budget 2017: What it means for you', '', 'publish', 'open', 'open', '', 'budget-2017-what-it-means-for-you', '', '', '2017-11-28 15:26:44', '2017-11-28 15:26:44', '', 0, 'http://localhost/dashboard/FicUni/?p=76', 0, 'post', '', 0),
(77, 1, '2017-11-28 15:21:30', '2017-11-28 15:21:30', '<p class="story-body__introduction">A Budget has been delivered by Chancellor Philip Hammond which he says will "help families to cope with the cost of living".</p>\r\nThe chancellor has announced plans on tax, housing and travel, alongside an update on the UK''s economic position.\r\n\r\nHere is what it means for you.\r\n<h2 class="story-body__crosshead">Stamp duty reform</h2>\r\nThe stand out feature of the Budget for first-time buyers living in England, Northern Ireland and, for a time, in Wales is an immediate abolition of stamp duty when buying properties of up to £300,000. For properties costing up to £500,000, no stamp duty will be paid on the first £300,000.\r\n\r\nThe starting point for paying stamp duty in England was £125,000.\r\n\r\nAccording to the Halifax, the average first-time buyer in the UK had paid about £1,660 in stamp duty, on a property costing £211,980.\r\n\r\nHowever, in many parts of the country first-time buyers pay relatively little in stamp duty. In the North of England, the typical first-time buyer saving would be £24, the lender said.\r\n\r\nThe effect will be felt the most in the South East of England where the average home bought by a first-time buyer could save £3,948, and in London with a saving of £5,000.\r\n\r\nThe Office For Budget Responsibility also pointed out that a subsequent rise in house prices would more than cancel out the benefit from the stamp duty measures, and it will primarily assist existing homeowners, with only an additional 3,500 first-time buyer sales at a significant cost to the Treasury.\r\n\r\nIt does not affect the biggest up-front cost for first-time buyers - the deposit. In the UK, the average deposit is £37,101, according to the Halifax.\r\n\r\nIf a couple are buying and only one is a first-time buyer, then they do not get the tax break.\r\n\r\nIt also will do nothing for those trading up, whose numbers have fallen sharply in the last 10 years, or potential downsizers who are put off by the stamp duty cost.', 'Budget 2017: What it means for you', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-11-28 15:21:30', '2017-11-28 15:21:30', '', 76, 'http://localhost/dashboard/FicUni/2017/11/28/76-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2017-11-28 17:54:49', '2017-11-28 17:54:49', '<p class="story-body__introduction">A mother has written a letter in defence of her 14-year-old son who is facing a lawsuit over video game cheats in the US.</p>\r\nCaleb Rogers is one of two people facing legal action from gaming studio Epic Games for using cheat software to play the free game Fortnite.\r\n\r\nThe studio says it has taken the step because the boy declined to remove a YouTube video he published which promoted how to use the software.\r\n\r\nHis mother says he is a scapegoat.\r\n\r\n"This company is in the process of attempting to sue a 14-year-old child," she wrote in the letter which has been shared online.\r\n\r\nMs Rogers added that she had not given her son parental consent to play the game as stated in its terms and conditions, and that as the game was free to play the studio could not claim loss of profit as a result of the cheats.\r\n\r\n"It is my belief that due to their lack of ability to curve cheat codes and others from modifying their game, they are using a 14-year-old child as a scapegoat to make an example of him," she said.\r\n\r\nIn a statement given to the website Kotaku, Epic Games said the lawsuit was a result of Mr Rogers "filing a DMCA counterclaim to a takedown notice on a YouTube video that exposed and promoted Fortnite Battle Royale cheats and exploits."\r\n\r\n"Epic is not OK with ongoing cheating or copyright infringement from anyone at any age," it said.\r\n<h2 class="story-body__crosshead">Cheating for fun</h2>\r\nIn a YouTube video made by the boy himself discussing the legal action, he said he cheated "for fun" and that the cheat he used was freely available online. He denied making it or selling it himself.\r\n\r\nHe admitted that he had been banned from the game several times previously.\r\n\r\nThe video received a mixed reaction, with some comments supporting him but many saying he was in the wrong.\r\n\r\nEpic Games has been contacted by the BBC for comment.', 'Mum defends teen in gaming lawsuit', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2017-11-28 17:54:49', '2017-11-28 17:54:49', '', 0, 'http://localhost/dashboard/FicUni/?page_id=78', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(79, 1, '2017-11-28 17:54:46', '2017-11-28 17:54:46', '<p class="story-body__introduction">A mother has written a letter in defence of her 14-year-old son who is facing a lawsuit over video game cheats in the US.</p>\r\nCaleb Rogers is one of two people facing legal action from gaming studio Epic Games for using cheat software to play the free game Fortnite.\r\n\r\nThe studio says it has taken the step because the boy declined to remove a YouTube video he published which promoted how to use the software.\r\n\r\nHis mother says he is a scapegoat.\r\n\r\n"This company is in the process of attempting to sue a 14-year-old child," she wrote in the letter which has been shared online.\r\n\r\nMs Rogers added that she had not given her son parental consent to play the game as stated in its terms and conditions, and that as the game was free to play the studio could not claim loss of profit as a result of the cheats.\r\n\r\n"It is my belief that due to their lack of ability to curve cheat codes and others from modifying their game, they are using a 14-year-old child as a scapegoat to make an example of him," she said.\r\n\r\nIn a statement given to the website Kotaku, Epic Games said the lawsuit was a result of Mr Rogers "filing a DMCA counterclaim to a takedown notice on a YouTube video that exposed and promoted Fortnite Battle Royale cheats and exploits."\r\n\r\n"Epic is not OK with ongoing cheating or copyright infringement from anyone at any age," it said.\r\n<h2 class="story-body__crosshead">Cheating for fun</h2>\r\nIn a YouTube video made by the boy himself discussing the legal action, he said he cheated "for fun" and that the cheat he used was freely available online. He denied making it or selling it himself.\r\n\r\nHe admitted that he had been banned from the game several times previously.\r\n\r\nThe video received a mixed reaction, with some comments supporting him but many saying he was in the wrong.\r\n\r\nEpic Games has been contacted by the BBC for comment.', 'Mum defends teen in gaming lawsuit', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2017-11-28 17:54:46', '2017-11-28 17:54:46', '', 78, 'http://localhost/dashboard/FicUni/2017/11/28/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2017-11-28 17:55:48', '2017-11-28 17:55:48', '<p class="story-body__introduction"><strong>A mother has written a letter in defence of her 14-year-old son who is facing a lawsuit over video game cheats in the US.</strong></p>\r\nCaleb Rogers is one of two people facing legal action from gaming studio Epic Games for using cheat software to play the free game Fortnite.\r\n\r\nThe studio says it has taken the step because the boy declined to remove a YouTube video he published which promoted how to use the software.\r\n\r\nHis mother says he is a scapegoat.\r\n\r\n"This company is in the process of attempting to sue a 14-year-old child," she wrote in the letter which has been shared online.\r\n\r\nMs Rogers added that she had not given her son parental consent to play the game as stated in its terms and conditions, and that as the game was free to play the studio could not claim loss of profit as a result of the cheats.\r\n\r\n"It is my belief that due to their lack of ability to curve cheat codes and others from modifying their game, they are using a 14-year-old child as a scapegoat to make an example of him," she said.\r\n\r\nIn a statement given to the website Kotaku, Epic Games said the lawsuit was a result of Mr Rogers "filing a DMCA counterclaim to a takedown notice on a YouTube video that exposed and promoted Fortnite Battle Royale cheats and exploits."\r\n\r\n"Epic is not OK with ongoing cheating or copyright infringement from anyone at any age," it said.\r\n<h2 class="story-body__crosshead">Cheating for fun</h2>\r\nIn a YouTube video made by the boy himself discussing the legal action, he said he cheated "for fun" and that the cheat he used was freely available online. He denied making it or selling it himself.\r\n\r\nHe admitted that he had been banned from the game several times previously.\r\n\r\nThe video received a mixed reaction, with some comments supporting him but many saying he was in the wrong.\r\n\r\nEpic Games has been contacted by the BBC for comment.', 'Mum defends teen in gaming lawsuit', '', 'publish', 'open', 'open', '', 'mum-defends-teen-in-gaming-lawsuit', '', '', '2017-12-03 15:44:29', '2017-12-03 15:44:29', '', 0, 'http://localhost/dashboard/FicUni/?p=80', 0, 'post', '', 0),
(81, 1, '2017-11-28 17:55:48', '2017-11-28 17:55:48', '<p class="story-body__introduction"><strong>A mother has written a letter in defence of her 14-year-old son who is facing a lawsuit over video game cheats in the US.</strong></p>\r\nCaleb Rogers is one of two people facing legal action from gaming studio Epic Games for using cheat software to play the free game Fortnite.\r\n\r\nThe studio says it has taken the step because the boy declined to remove a YouTube video he published which promoted how to use the software.\r\n\r\nHis mother says he is a scapegoat.\r\n\r\n"This company is in the process of attempting to sue a 14-year-old child," she wrote in the letter which has been shared online.\r\n\r\nMs Rogers added that she had not given her son parental consent to play the game as stated in its terms and conditions, and that as the game was free to play the studio could not claim loss of profit as a result of the cheats.\r\n\r\n"It is my belief that due to their lack of ability to curve cheat codes and others from modifying their game, they are using a 14-year-old child as a scapegoat to make an example of him," she said.\r\n\r\nIn a statement given to the website Kotaku, Epic Games said the lawsuit was a result of Mr Rogers "filing a DMCA counterclaim to a takedown notice on a YouTube video that exposed and promoted Fortnite Battle Royale cheats and exploits."\r\n\r\n"Epic is not OK with ongoing cheating or copyright infringement from anyone at any age," it said.\r\n<h2 class="story-body__crosshead">Cheating for fun</h2>\r\nIn a YouTube video made by the boy himself discussing the legal action, he said he cheated "for fun" and that the cheat he used was freely available online. He denied making it or selling it himself.\r\n\r\nHe admitted that he had been banned from the game several times previously.\r\n\r\nThe video received a mixed reaction, with some comments supporting him but many saying he was in the wrong.\r\n\r\nEpic Games has been contacted by the BBC for comment.', 'Mum defends teen in gaming lawsuit', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-11-28 17:55:48', '2017-11-28 17:55:48', '', 80, 'http://localhost/dashboard/FicUni/2017/11/28/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2017-11-28 21:16:34', '2017-11-28 21:16:34', '<h3 class="label-primary">DESCRIPTION</h3>\r\n<div class="has-user-generated-content js-d-read-more read-more js-read-more read-more--medium-down read-more--expanded" data-xd-wired="read-more">\r\n<div class="js-xd-read-more-toggle-view read-more__toggle-view">\r\n<div class="js-xd-read-more-contents l-mar-top-3">\r\n\r\nDullatur Dream House Prize Competition\r\n\r\nThe event''s website is www.winyourdreamhome.co.uk\r\n\r\nOur competition has been featured in many press articles all around the world. Please take a look at the links on our website.\r\n\r\nIn a nutshell, for as little as £5, some lucky person will win Dullatur House,all liable stamp duties due are paid by the Promoter. The house is in a conservation village just 20 minutes from Glasgow Airport and 40 minutes from Edinburgh. The beaches and gateway to the Highlands and Islands are only 1 - 2 hours drive from your doorstep!\r\n\r\n<strong>A LITTLE HISTORY</strong>\r\n\r\nDullatur House was originally built in 1745 the year of the Jacobite rising, the last major battle fought on British soil. It was the attempt by Charles Edward Stuart to regain the British throne for the males of the House of Stuart.\r\n\r\nOr go back further in history and stroll along the frontier of the Roman Empire at the site of two camps on the Antonine Wall.The Dullatur camps were situated along the Antonine Wall, which was built across Scotland’s central belt from AD 140. The wall formed the north-western frontier of the Roman Empire.\r\n\r\n<strong>TICKETS</strong>\r\n\r\nOur tickets start from £5 for one entry and there is no limit to the number of tickets you can buy. As you buy more free tickets are offered - our top selling ticket right now is the bundle of 10 tickets with 2 free!\r\n\r\n</div>\r\n</div>\r\n</div>', 'Win Your Dream Home Competition', '', 'publish', 'closed', 'closed', '', 'win-your-dream-home-competition', '', '', '2017-11-28 21:16:34', '2017-11-28 21:16:34', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=83', 0, 'event', '', 0),
(84, 1, '2017-11-28 21:16:59', '2017-11-28 21:16:59', 'Muriel Spark was born 1 February 1918. To celebrate the centenary of her birth, a three day symposium is being held at the University of Glasgow, in conjunction with the National Library of Scotland, over the 31st Jan – 2nd February.\r\n\r\nDay 1 (Wednesday 31st January) - A drinks reception followed by screening of <em>The Prime of Miss Jean Brodie</em> at The Kelvin Hall.\r\n\r\nDay 2 (Thursday 1st February) - Range of academic speakers and optional creative writing workshop.\r\n\r\nDay 3 (Friday 2nd February) - Range of academic talks and conversation regarding new Memoir on Muriel Spark.\r\n\r\nPlease see <a title="Spark 100" href="http://murielspark2018.wordpress.com/" target="_blank" rel="noopener noreferrer nofollow">murielspark2018.wordpress.com</a> for full details of speakers, locations and timings.\r\n\r\nDue to limited places being available, and for differing capacities of venues, registration is per day, and also separate registration for special events. Please consult the schedule for details. Please register for all events required (e.g. for Day 1 AND for Ali Smith in Conversation with Zoe Strachan).\r\n\r\nIf anyone has any special requirements or queries, please contact us at <a title="Email" href="mailto:arts-murielspark100@glasgow.ac.uk/" target="_blank" rel="noopener noreferrer nofollow">arts-murielspark100@glasgow.ac.uk</a>', 'Muriel Spark Centenary Symposium', '', 'publish', 'closed', 'closed', '', 'muriel-spark-centenary-symposium', '', '', '2017-11-28 21:16:59', '2017-11-28 21:16:59', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=84', 0, 'event', '', 0),
(85, 1, '2017-11-28 21:17:43', '2017-11-28 21:17:43', '<h2 style="font-weight: 600;"><b><strong>About The Conference</strong></b></h2>\r\n<p style="font-weight: 400;"><b><strong>The SFHA Procurement Conference is THE procurement conference for the staff of housing associations.</strong></b></p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Is This For You?</strong></b></h2>\r\n<p style="font-weight: 400;">Public procurement reforms will apply to most housing associations across Scotland. If you work in Property Maintenance, Development, Corporate Services or Finance and are responsible for procuring significant works, goods and services, then this is the conference to update you on guidance, law and good practice.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Costs and How to Book</strong></b></h2>\r\n<p style="font-weight: 400;">The delegate fee starts at £219 for SFHA Members (£299 for non members) which includes attendance, lunch and all refreshments.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Save ££s … Discount</strong></b></h2>\r\n<p style="font-weight: 400;">Book to attend both the Procurement Conference and Development Conference (being held the day prior, 6 February) for just £375 - a saving of £63.00.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>The Exhibition</strong></b></h2>\r\n<p style="font-weight: 400;">The Exhibition is the networking hub of the conference.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>The Venue</strong></b></h2>\r\n<p style="font-weight: 400;">With vibrant meeting spaces and panoramic views The Studio is situated at the heart of the city, just a hop, skip and jump away from all major transport links.</p>\r\n<p style="font-weight: 400;">Free Wi-Fi is available, which will enable delegates to stay connected during the conference. For full details on the venue, please visit <a href="http://www.studiovenues.co.uk/glasgow">www.studiovenues.co.uk/glasgow</a></p>\r\n<p style="font-weight: 400;"><b><strong>Follow us @sfha_hq for event updates!</strong></b></p>', 'SFHA Procurement Conference 2018', '', 'publish', 'closed', 'closed', '', 'sfha-procurement-conference-2018', '', '', '2017-11-29 10:32:03', '2017-11-29 10:32:03', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=85', 0, 'event', '', 0),
(87, 1, '2017-11-28 21:38:32', '2017-11-28 21:38:32', '<p style="font-weight: 400;">As 2017 draws to a close and the new year approaches, some people will be looking for a fresh start and trainees entering the final seat of their traineeship will be starting to think of NQ jobs. With this in mind we’ve arranged a short talk and Q&amp;A session with Sharri Plimbley of Sharri Plimbley Associates. The event will take place in the Faculty of Procurators in Glasgow from 6pm on 29 November 2017.</p>\r\n<p style="font-weight: 400;">After working with Olympians such as Sir Chris Hoy and Becky Adlington OBE, Sharri is back in the legal world and recruiting for firms across Scotland. Sharri has a wealth of experience in the legal industry and has also worked in banking and finance. Sharri will be talking to us about preparing for success – from the CV, to the interview and beyond. She’ll update us on current trends in the market, key application dates and how to score your dream job.</p>\r\n<p style="font-weight: 400;">The event is open to all SYLA members at all stages of their career – there are tips for everyone. The floor will be open for questions on the night, however, if you wish to submit an anonymous question in advance please feel free to do so by email to <a href="mailto:mail@syla.co.uk">mail@syla.co.uk</a>.</p>\r\n<p style="font-weight: 400;">The talk will be followed by refreshments and networking to close.</p>', 'Preparing for Success: Glasgow', 'Do you really want be a walking success?', 'publish', 'closed', 'closed', '', 'preparing-for-success-glasgow', '', '', '2017-11-29 12:45:05', '2017-11-29 12:45:05', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=87', 0, 'event', '', 0),
(95, 1, '2017-11-28 22:55:51', '2017-11-28 22:55:51', ' ', '', '', 'publish', 'closed', 'closed', '', '95', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=95', 2, 'nav_menu_item', '', 0),
(96, 1, '2017-11-29 08:49:49', '2017-11-29 08:49:49', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\r\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\r\n\r\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\r\n\r\nThe government also plans to devolve running the track and train services to local companies.\r\n\r\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\r\n\r\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\r\n\r\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\r\n\r\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\r\n<h2 class="story-body__crosshead">Tracks revived</h2>\r\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\r\n\r\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\r\n\r\n"The system is creaking - it''s bursting at the seams," he said.\r\n\r\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\r\n\r\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\r\n\r\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\r\n\r\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', 'I have never met anyone in the rail industry - either pro- or anti-privatisation - who thinks it was a good idea to split up who runs the trains and who runs the track and signals.', 'publish', 'open', 'open', '', 'some-lost-rail-routes-may-be-restored', '', '', '2017-12-03 18:31:52', '2017-12-03 18:31:52', '', 0, 'http://localhost/dashboard/FicUni/?p=96', 0, 'post', '', 0),
(97, 1, '2017-11-29 08:49:49', '2017-11-29 08:49:49', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\r\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\r\n\r\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\r\n\r\nThe government also plans to devolve running the track and train services to local companies.\r\n\r\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\r\n\r\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\r\n\r\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\r\n\r\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\r\n<h2 class="story-body__crosshead">Tracks revived</h2>\r\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\r\n\r\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\r\n\r\n"The system is creaking - it''s bursting at the seams," he said.\r\n\r\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\r\n\r\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\r\n\r\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\r\n\r\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-11-29 08:49:49', '2017-11-29 08:49:49', '', 96, 'http://localhost/dashboard/FicUni/2017/11/29/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2017-11-29 08:50:50', '2017-11-29 08:50:50', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\n\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\n\nThe government also plans to devolve running the track and train services to local companies.\n\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\n\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\n\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\n\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\n<h2 class="story-body__crosshead">Tracks revived</h2>\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\n\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\n\n"The system is creaking - it''s bursting at the seams," he said.\n\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\n\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\n\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\n\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', 'I have never met anyone in the rail industry - either pro- or anti-privatisation - who thinks it was a good idea to split up who runs the trains and who runs the track and signals.', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2017-11-29 08:50:50', '2017-11-29 08:50:50', '', 96, 'http://localhost/dashboard/FicUni/2017/11/29/96-autosave-v1/', 0, 'revision', '', 0),
(99, 1, '2017-11-29 08:50:51', '2017-11-29 08:50:51', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\r\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\r\n\r\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\r\n\r\nThe government also plans to devolve running the track and train services to local companies.\r\n\r\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\r\n\r\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\r\n\r\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\r\n\r\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\r\n<h2 class="story-body__crosshead">Tracks revived</h2>\r\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\r\n\r\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\r\n\r\n"The system is creaking - it''s bursting at the seams," he said.\r\n\r\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\r\n\r\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\r\n\r\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\r\n\r\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', 'I have never met anyone in the rail industry - either pro- or anti-privatisation - who thinks it was a good idea to split up who runs the trains and who runs the track and signals.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-11-29 08:50:51', '2017-11-29 08:50:51', '', 96, 'http://localhost/dashboard/FicUni/2017/11/29/96-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2017-11-29 09:00:46', '2017-11-29 09:00:46', '<p style="font-weight: 400;">As 2017 draws to a close and the new year approaches, some people will be looking for a fresh start and trainees entering the final seat of their traineeship will be starting to think of NQ jobs. With this in mind we’ve arranged a short talk and Q&amp;A session with Sharri Plimbley of Sharri Plimbley Associates. The event will take place in the Faculty of Procurators in Glasgow from 6pm on 29 November 2017.</p>\r\n<p style="font-weight: 400;">After working with Olympians such as Sir Chris Hoy and Becky Adlington OBE, Sharri is back in the legal world and recruiting for firms across Scotland. Sharri has a wealth of experience in the legal industry and has also worked in banking and finance. Sharri will be talking to us about preparing for success – from the CV, to the interview and beyond. She’ll update us on current trends in the market, key application dates and how to score your dream job.</p>\r\n<p style="font-weight: 400;">The event is open to all SYLA members at all stages of their career – there are tips for everyone. The floor will be open for questions on the night, however, if you wish to submit an anonymous question in advance please feel free to do so by email to <a href="mailto:mail@syla.co.uk">mail@syla.co.uk</a>.</p>\r\n<p style="font-weight: 400;">The talk will be followed by refreshments and networking to close.</p>', 'Preparing for Success: Glasgow', 'Do you really want be a walking success?', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-11-29 09:00:46', '2017-11-29 09:00:46', '', 87, 'http://localhost/dashboard/FicUni/2017/11/29/87-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2017-11-29 10:30:53', '2017-11-29 10:30:53', '', 'Event Date', '', 'publish', 'closed', 'closed', '', 'acf_event-date', '', '', '2017-11-29 10:30:53', '2017-11-29 10:30:53', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=102', 0, 'acf', '', 0),
(103, 1, '2017-11-29 10:31:44', '2017-11-29 10:31:44', '<p style="font-weight: 400;">As 2017 draws to a close and the new year approaches, some people will be looking for a fresh start and trainees entering the final seat of their traineeship will be starting to think of NQ jobs. With this in mind we’ve arranged a short talk and Q&amp;A session with Sharri Plimbley of Sharri Plimbley Associates. The event will take place in the Faculty of Procurators in Glasgow from 6pm on 29 November 2017.</p>\r\n<p style="font-weight: 400;">After working with Olympians such as Sir Chris Hoy and Becky Adlington OBE, Sharri is back in the legal world and recruiting for firms across Scotland. Sharri has a wealth of experience in the legal industry and has also worked in banking and finance. Sharri will be talking to us about preparing for success – from the CV, to the interview and beyond. She’ll update us on current trends in the market, key application dates and how to score your dream job.</p>\r\n<p style="font-weight: 400;">The event is open to all SYLA members at all stages of their career – there are tips for everyone. The floor will be open for questions on the night, however, if you wish to submit an anonymous question in advance please feel free to do so by email to <a href="mailto:mail@syla.co.uk">mail@syla.co.uk</a>.</p>\r\n<p style="font-weight: 400;">The talk will be followed by refreshments and networking to close.</p>', 'Preparing for Success: Glasgow', 'Do you really want be a walking success?', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-11-29 10:31:44', '2017-11-29 10:31:44', '', 87, 'http://localhost/dashboard/FicUni/2017/11/29/87-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2017-11-29 10:32:03', '2017-11-29 10:32:03', '<h2 style="font-weight: 600;"><b><strong>About The Conference</strong></b></h2>\r\n<p style="font-weight: 400;"><b><strong>The SFHA Procurement Conference is THE procurement conference for the staff of housing associations.</strong></b></p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Is This For You?</strong></b></h2>\r\n<p style="font-weight: 400;">Public procurement reforms will apply to most housing associations across Scotland. If you work in Property Maintenance, Development, Corporate Services or Finance and are responsible for procuring significant works, goods and services, then this is the conference to update you on guidance, law and good practice.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Costs and How to Book</strong></b></h2>\r\n<p style="font-weight: 400;">The delegate fee starts at £219 for SFHA Members (£299 for non members) which includes attendance, lunch and all refreshments.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>Save ££s … Discount</strong></b></h2>\r\n<p style="font-weight: 400;">Book to attend both the Procurement Conference and Development Conference (being held the day prior, 6 February) for just £375 - a saving of £63.00.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>The Exhibition</strong></b></h2>\r\n<p style="font-weight: 400;">The Exhibition is the networking hub of the conference.</p>\r\n\r\n<h2 style="font-weight: 600;"><b><strong>The Venue</strong></b></h2>\r\n<p style="font-weight: 400;">With vibrant meeting spaces and panoramic views The Studio is situated at the heart of the city, just a hop, skip and jump away from all major transport links.</p>\r\n<p style="font-weight: 400;">Free Wi-Fi is available, which will enable delegates to stay connected during the conference. For full details on the venue, please visit <a href="http://www.studiovenues.co.uk/glasgow">www.studiovenues.co.uk/glasgow</a></p>\r\n<p style="font-weight: 400;"><b><strong>Follow us @sfha_hq for event updates!</strong></b></p>', 'SFHA Procurement Conference 2018', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2017-11-29 10:32:03', '2017-11-29 10:32:03', '', 85, 'http://localhost/dashboard/FicUni/2017/11/29/85-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2017-11-29 10:53:02', '2017-11-29 10:53:02', 'A revival of the 2008 production of Verdi''s classic tale. La Traviata tells the story of Violetta, who hopes to escape life as an escort after falling in love with Alfredo.', 'SCOTTISH OPERA: LA TRAVIATA', '', 'publish', 'closed', 'open', '', 'scottish-opera-la-traviata', '', '', '2017-12-03 17:56:34', '2017-12-03 17:56:34', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=106', 0, 'event', '', 0),
(107, 1, '2017-11-29 10:53:02', '2017-11-29 10:53:02', 'A revival of the 2008 production of Verdi''s classic tale. La Traviata tells the story of Violetta, who hopes to escape life as an escort after falling in love with Alfredo.', 'SCOTTISH OPERA: LA TRAVIATA', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-29 10:53:02', '2017-11-29 10:53:02', '', 106, 'http://localhost/dashboard/FicUni/2017/11/29/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2017-11-29 12:45:05', '2017-11-29 12:45:05', '<p style="font-weight: 400;">As 2017 draws to a close and the new year approaches, some people will be looking for a fresh start and trainees entering the final seat of their traineeship will be starting to think of NQ jobs. With this in mind we’ve arranged a short talk and Q&amp;A session with Sharri Plimbley of Sharri Plimbley Associates. The event will take place in the Faculty of Procurators in Glasgow from 6pm on 29 November 2017.</p>\r\n<p style="font-weight: 400;">After working with Olympians such as Sir Chris Hoy and Becky Adlington OBE, Sharri is back in the legal world and recruiting for firms across Scotland. Sharri has a wealth of experience in the legal industry and has also worked in banking and finance. Sharri will be talking to us about preparing for success – from the CV, to the interview and beyond. She’ll update us on current trends in the market, key application dates and how to score your dream job.</p>\r\n<p style="font-weight: 400;">The event is open to all SYLA members at all stages of their career – there are tips for everyone. The floor will be open for questions on the night, however, if you wish to submit an anonymous question in advance please feel free to do so by email to <a href="mailto:mail@syla.co.uk">mail@syla.co.uk</a>.</p>\r\n<p style="font-weight: 400;">The talk will be followed by refreshments and networking to close.</p>', 'Preparing for Success: Glasgow', 'Do you really want be a walking success?', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2017-11-29 12:45:05', '2017-11-29 12:45:05', '', 87, 'http://localhost/dashboard/FicUni/2017/11/29/87-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2017-11-29 13:43:33', '2017-11-29 13:43:33', '<p class="spacer-bottom-divider">Wellpark Brewery in Glasgow is home to more than 450 years of brewing tradition and award winning beers. Our new tour takes you behind the scenes to discover how we make Tennent''s so special.</p>\r\nWe''ve been part of Scotland and its culture for generations. This is a chance to learn about the rich heritage of one of the country''s most loved brands as well as about the production processes that have taken place at Wellpark from through the centuries up to today.\r\n\r\nFollow us from the very origins of brewing at Wellpark, to present day support of and passion for Scottish music and football. As well as a rare collection of vintage and retro Tennent''s packaging, there''s a chance to watch your favourite Tennent''s adverts from over the decades and also a shop to buy exclusive Tennent''s goodies... And to top it all off, there might even be a cheeky wee taste of Scotland''s Favourite at the end of the tour in it for you. Tasty.\r\n<p class="smalltext spacer-bottom-divider"><em>While we take every opportunity to ensure the details for <strong>Tennent’s Brewery Tour</strong> are accurate, we always advise that you contact the event organiser before setting out for the event to avoid disapointment.</em></p>\r\n\r\n<div></div>', 'Tennent’s Brewery Tour', '', 'publish', 'closed', 'open', '', 'tennents-brewery-tour', '', '', '2017-12-01 13:55:23', '2017-12-01 13:55:23', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=109', 0, 'event', '', 0),
(110, 1, '2017-11-29 13:43:33', '2017-11-29 13:43:33', '<p class="spacer-bottom-divider">Wellpark Brewery in Glasgow is home to more than 450 years of brewing tradition and award winning beers. Our new tour takes you behind the scenes to discover how we make Tennent''s so special.\r\n\r\nWe''ve been part of Scotland and its culture for generations. This is a chance to learn about the rich heritage of one of the country''s most loved brands as well as about the production processes that have taken place at Wellpark from through the centuries up to today.\r\n\r\nFollow us from the very origins of brewing at Wellpark, to present day support of and passion for Scottish music and football. As well as a rare collection of vintage and retro Tennent''s packaging, there''s a chance to watch your favourite Tennent''s adverts from over the decades and also a shop to buy exclusive Tennent''s goodies... And to top it all off, there might even be a cheeky wee taste of Scotland''s Favourite at the end of the tour in it for you. Tasty.</p>\r\n<p class="smalltext spacer-bottom-divider"><em>While we take every opportunity to ensure the details for <strong>Tennent’s Brewery Tour</strong> are accurate, we always advise that you contact the event organiser before setting out for the event to avoid disapointment.</em></p>\r\n\r\n<div></div>', 'Tennent’s Brewery Tour', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2017-11-29 13:43:33', '2017-11-29 13:43:33', '', 109, 'http://localhost/dashboard/FicUni/2017/11/29/109-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2017-11-29 13:44:27', '2017-11-29 13:44:27', 'Health Walks are a great way to take the first steps towards a healthier lifestyle and meet new people. The walks are all led by trained volunteers.\r\n\r\nWhy walk? It''s free, it''s fun, it makes you feel great and you meet new people.\r\n\r\nWe welcome people of all abilities on the Health Walks. Wherever possible we will adjust routes to improve accessibility. Please call Heather on 0141 287 0963 if you would like more information about a certain walk to help us assess how we can make it more suitable for you.\r\n\r\n<strong>Info For Walkers</strong>\r\n• The health walks are free\r\n• Please call the contact person before your first walk to check it is going ahead as scheduled\r\n• Wear flat comfortable shoes and dress for the weather\r\n• Children are welcome if accompanied by an adult\r\n• Remember to bring any necessary medication on the walk\r\n• Please show respect to the walk leaders and other walkers\r\n• It’s not a race, the walk leader will support you to walk at a pace that suits you', 'Good Move Glasgow Health Walks', '', 'publish', 'closed', 'open', '', 'good-move-glasgow-health-walks', '', '', '2017-11-29 13:44:27', '2017-11-29 13:44:27', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=111', 0, 'event', '', 0),
(112, 1, '2017-11-29 13:44:27', '2017-11-29 13:44:27', 'Health Walks are a great way to take the first steps towards a healthier lifestyle and meet new people. The walks are all led by trained volunteers.\r\n\r\nWhy walk? It''s free, it''s fun, it makes you feel great and you meet new people.\r\n\r\nWe welcome people of all abilities on the Health Walks. Wherever possible we will adjust routes to improve accessibility. Please call Heather on 0141 287 0963 if you would like more information about a certain walk to help us assess how we can make it more suitable for you.\r\n\r\n<strong>Info For Walkers</strong>\r\n• The health walks are free\r\n• Please call the contact person before your first walk to check it is going ahead as scheduled\r\n• Wear flat comfortable shoes and dress for the weather\r\n• Children are welcome if accompanied by an adult\r\n• Remember to bring any necessary medication on the walk\r\n• Please show respect to the walk leaders and other walkers\r\n• It’s not a race, the walk leader will support you to walk at a pace that suits you', 'Good Move Glasgow Health Walks', '', 'inherit', 'closed', 'closed', '', '111-revision-v1', '', '', '2017-11-29 13:44:27', '2017-11-29 13:44:27', '', 111, 'http://localhost/dashboard/FicUni/2017/11/29/111-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2017-11-29 13:45:38', '2017-11-29 13:45:38', 'Come along each day to hear a recital on the beautiful organ, which has been in place in the centre hall since 1902. So relax in our centre hall for a free musical event! They take place at 1.00pm Monday - Saturday and on 3.00pm on Sundays.\r\n\r\nIf you want to know more, join a short tour each Friday with Dr Jim Hunter, the Director of Music at Kelvingrove. these tours take place after the recital, and are free to join.', 'Kelvingrove Organ Recitals', '', 'publish', 'closed', 'open', '', 'kelvingrove-organ-recitals', '', '', '2017-11-29 13:46:07', '2017-11-29 13:46:07', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=113', 0, 'event', '', 0),
(114, 1, '2017-11-29 13:45:38', '2017-11-29 13:45:38', 'Come along each day to hear a recital on the beautiful organ, which has been in place in the centre hall since 1902. So relax in our centre hall for a free musical event! They take place at 1.00pm Monday - Saturday and on 3.00pm on Sundays.\r\n\r\nIf you want to know more, join a short tour each Friday with Dr Jim Hunter, the Director of Music at Kelvingrove. these tours take place after the recital, and are free to join.', 'Kelvingrove Organ Recitals', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2017-11-29 13:45:38', '2017-11-29 13:45:38', '', 113, 'http://localhost/dashboard/FicUni/2017/11/29/113-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2017-11-29 13:46:07', '2017-11-29 13:46:07', 'Come along each day to hear a recital on the beautiful organ, which has been in place in the centre hall since 1902. So relax in our centre hall for a free musical event! They take place at 1.00pm Monday - Saturday and on 3.00pm on Sundays.\r\n\r\nIf you want to know more, join a short tour each Friday with Dr Jim Hunter, the Director of Music at Kelvingrove. these tours take place after the recital, and are free to join.', 'Kelvingrove Organ Recitals', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2017-11-29 13:46:07', '2017-11-29 13:46:07', '', 113, 'http://localhost/dashboard/FicUni/2017/11/29/113-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2017-11-29 14:53:19', '2017-11-29 14:53:19', '', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2017-11-29 14:53:19', '2017-11-29 14:53:19', '', 0, 'http://localhost/dashboard/FicUni/?page_id=116', 0, 'page', '', 0),
(117, 1, '2017-11-29 14:53:19', '2017-11-29 14:53:19', '', 'Past Events', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2017-11-29 14:53:19', '2017-11-29 14:53:19', '', 116, 'http://localhost/dashboard/FicUni/2017/11/29/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2017-11-29 15:08:30', '2017-11-29 15:08:30', 'The Irish strong boys Bicep are back in G-town! They''ll be performing their renowned LIVE show in the unique surrounds of the Barras Art &amp; Design Centre (BAaD) as part of their world album tour. Oh and it''s on St Andrews day too... ;)', 'Bicep (Live) Hammer', '', 'publish', 'closed', 'open', '', 'bicep-live-hammer', '', '', '2017-11-29 15:08:30', '2017-11-29 15:08:30', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=118', 0, 'event', '', 0),
(119, 1, '2017-11-29 15:08:30', '2017-11-29 15:08:30', 'The Irish strong boys Bicep are back in G-town! They''ll be performing their renowned LIVE show in the unique surrounds of the Barras Art &amp; Design Centre (BAaD) as part of their world album tour. Oh and it''s on St Andrews day too... ;)', 'Bicep (Live) Hammer', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2017-11-29 15:08:30', '2017-11-29 15:08:30', '', 118, 'http://localhost/dashboard/FicUni/2017/11/29/118-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2017-11-29 15:18:09', '2017-11-29 15:18:09', 'After working hard and writing harder, our first issue of the year is out. To celebrate how flippin’ lovely it is we thought we’d throw a little party. We’ve got some real nice music people to play some sounds to make the wholes on the side of your head go wow…\r\n\r\nBarow [Radar Radio//Nostro Hood System]\r\nA true master of his trade, Barow can turn his hand to anything electric. With origins in the darker territory of town he has turned his hand to other stuff just to show you how heckin’ good he is. Understanding music the way he does has seen him produce some unbelievable bangers, gaining recognition from well respected authorities. The boy can get yo’ booty movin’ and yo’ feet groovin’\r\n\r\nHugo Posh [All U Need]\r\nPart of the collective All U Need, Hugo has broken away from the herd for to show us what he can do by himself. Never afraid to throw a rogue tune in the mix, Mr Posh always plays an eclectic mix of funtime stompers to get the crowd bubbling. If you had it on your Walkman phone in high school he might play it… (big up “T2 - Heartbroken”, gone but NEVER forgotten.)\r\n\r\nKEO [ALGORHYTHM//Flat 0/1]\r\nFairly new to the Glasgow scene, KEO has been making waves fast. His residency night (KEO + PALS) is known to nourish up-and-coming local talent, where as his night ALGORHYTHM, albeit new, has brought in the likes of Fede Lng and LK. Expect him to make it funky and pull out some disco dazzlers.\r\n\r\nAll in all they’re just a bunch of lovely lads. The sort you might take round for tea at your nan’s house and they would offer to tidy up. She would obviously say no, but it was the fact that they asked.', 'GUM 001: Zeitgeist', '', 'publish', 'closed', 'open', '', 'gum-001-zeitgeist', '', '', '2017-11-29 15:18:09', '2017-11-29 15:18:09', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=120', 0, 'event', '', 0),
(121, 1, '2017-11-29 15:18:09', '2017-11-29 15:18:09', 'After working hard and writing harder, our first issue of the year is out. To celebrate how flippin’ lovely it is we thought we’d throw a little party. We’ve got some real nice music people to play some sounds to make the wholes on the side of your head go wow…\r\n\r\nBarow [Radar Radio//Nostro Hood System]\r\nA true master of his trade, Barow can turn his hand to anything electric. With origins in the darker territory of town he has turned his hand to other stuff just to show you how heckin’ good he is. Understanding music the way he does has seen him produce some unbelievable bangers, gaining recognition from well respected authorities. The boy can get yo’ booty movin’ and yo’ feet groovin’\r\n\r\nHugo Posh [All U Need]\r\nPart of the collective All U Need, Hugo has broken away from the herd for to show us what he can do by himself. Never afraid to throw a rogue tune in the mix, Mr Posh always plays an eclectic mix of funtime stompers to get the crowd bubbling. If you had it on your Walkman phone in high school he might play it… (big up “T2 - Heartbroken”, gone but NEVER forgotten.)\r\n\r\nKEO [ALGORHYTHM//Flat 0/1]\r\nFairly new to the Glasgow scene, KEO has been making waves fast. His residency night (KEO + PALS) is known to nourish up-and-coming local talent, where as his night ALGORHYTHM, albeit new, has brought in the likes of Fede Lng and LK. Expect him to make it funky and pull out some disco dazzlers.\r\n\r\nAll in all they’re just a bunch of lovely lads. The sort you might take round for tea at your nan’s house and they would offer to tidy up. She would obviously say no, but it was the fact that they asked.', 'GUM 001: Zeitgeist', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2017-11-29 15:18:09', '2017-11-29 15:18:09', '', 120, 'http://localhost/dashboard/FicUni/2017/11/29/120-revision-v1/', 0, 'revision', '', 0),
(122, 1, '2017-11-29 15:18:35', '2017-11-29 15:18:35', 'Slam play with another of Techno’s leading lights in a 5 hour, ‘one big room’ special at SWG3''s TV Studio space. Drumcode boss Adam Beyer needs little introduction having been part of Glasgow’s Techno scene since the early days. From the fertile Swedish underground to the peak of global club culture, the reign of Adam Beyer continues to pull on the heartstrings of modern techno like few others. A festival headliner, sought after recording artist and enigmatic DJ entity, the Stockholm-based heavyweight’s brick-by-brick legacy has seen his functional and focussed take on the techno sound become one of the genre’s most sought after and respected sounds.', 'Slam Events presents Adam Beyer & Slam', '', 'publish', 'closed', 'open', '', 'slam-events-presents-adam-beyer-slam', '', '', '2017-11-29 15:18:35', '2017-11-29 15:18:35', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=122', 0, 'event', '', 0),
(123, 1, '2017-11-29 15:18:35', '2017-11-29 15:18:35', 'Slam play with another of Techno’s leading lights in a 5 hour, ‘one big room’ special at SWG3''s TV Studio space. Drumcode boss Adam Beyer needs little introduction having been part of Glasgow’s Techno scene since the early days. From the fertile Swedish underground to the peak of global club culture, the reign of Adam Beyer continues to pull on the heartstrings of modern techno like few others. A festival headliner, sought after recording artist and enigmatic DJ entity, the Stockholm-based heavyweight’s brick-by-brick legacy has seen his functional and focussed take on the techno sound become one of the genre’s most sought after and respected sounds.', 'Slam Events presents Adam Beyer & Slam', '', 'inherit', 'closed', 'closed', '', '122-revision-v1', '', '', '2017-11-29 15:18:35', '2017-11-29 15:18:35', '', 122, 'http://localhost/dashboard/FicUni/2017/11/29/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2017-11-29 15:19:51', '2017-11-29 15:19:51', ' ', '', '', 'publish', 'closed', 'closed', '', '124', '', '', '2017-11-29 15:20:06', '2017-11-29 15:20:06', '', 0, 'http://localhost/dashboard/FicUni/?p=124', 4, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(125, 1, '2017-11-29 16:14:06', '2017-11-29 16:14:06', 'Another year, another end-of-year party!\r\nJoin us for a screeching, soaring, drum-machine-thumping, cider-blacking gothstravaganza.\r\n\r\nAnd as a special present, we have a midnight set from none other than popular goth-but-not-really-goth-but-a-little-goth beat combo Terminal Gods, direct from London to Stereo''s basement.\r\nWe''ll try our best to giftwrap the guitarist.\r\n\r\nFree cakes on the door\r\nNae Morrissey\r\n\r\nALL REQUESTS MUST BE ACCOMPANIED BY A DONATION TO SHELTER SCOTLAND. And not 5p like some joker tried last time, it''s a cold time of year and people need our help.', 'Danse Macabre Feat. Terminal Gods', '', 'publish', 'closed', 'open', '', 'danse-macabre-feat-terminal-gods', '', '', '2017-11-29 16:14:06', '2017-11-29 16:14:06', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=125', 0, 'event', '', 0),
(126, 1, '2017-11-29 16:14:06', '2017-11-29 16:14:06', 'Another year, another end-of-year party!\r\nJoin us for a screeching, soaring, drum-machine-thumping, cider-blacking gothstravaganza.\r\n\r\nAnd as a special present, we have a midnight set from none other than popular goth-but-not-really-goth-but-a-little-goth beat combo Terminal Gods, direct from London to Stereo''s basement.\r\nWe''ll try our best to giftwrap the guitarist.\r\n\r\nFree cakes on the door\r\nNae Morrissey\r\n\r\nALL REQUESTS MUST BE ACCOMPANIED BY A DONATION TO SHELTER SCOTLAND. And not 5p like some joker tried last time, it''s a cold time of year and people need our help.', 'Danse Macabre Feat. Terminal Gods', '', 'inherit', 'closed', 'closed', '', '125-revision-v1', '', '', '2017-11-29 16:14:06', '2017-11-29 16:14:06', '', 125, 'http://localhost/dashboard/FicUni/2017/11/29/125-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2017-11-29 17:13:41', '2017-11-29 17:13:41', '<p class="lead">Research in the School is undertaken in a wide variety of areas of the mathematical sciences, including pure, applied, statistics, operational research as well as mathematical physics.</p>\r\nThe research environment is enhanced by the <a href="http://www.icms.org.uk/">International Centre for Mathematical Sciences</a> and by close collaboration with Heriot-Watt University through the <a href="http://www.maxwell.ac.uk/">Maxwell Institute</a> which was set up in 2005 following significant funding from the Scottish Funding Council. Researchers in areas of applied mathematics benefit from the proximity of strong research groups elsewhere in the University and from collaborative opportunities with local companies and other users of research.\r\n\r\nFor students considering PhD studies, our <a class="uoe-node-link uoe-published" title="Research Degrees (PhD)" href="http://www.maths.ed.ac.uk/school-of-mathematics/studying-here/pgr">Graduate School</a> is supervised by internationally-leading researchers spanning a wide spectrum of topics, making our School a world renowned centre of excellence in mathematics.', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2017-12-04 21:51:51', '2017-12-04 21:51:51', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=128', 0, 'program', '', 0),
(129, 1, '2017-11-29 17:15:10', '2017-11-29 17:15:10', '<p class="lead">Our range of Archaeology courses offer fascinating explorations of humanity’s past. Covering many ages and continents, our courses are taught by professional archaeologists and include practical experiences and field visits.</p>\r\nCourses marked as <strong>(credit) </strong>are open to all, however participants will be required to matriculate as a student at the University of Edinburgh as part of the registration process for these courses. Guidance on this process will be provided. <a class="uoe-node-link uoe-published" title="Access &amp; Credit Study" href="https://www.ed.ac.uk/studying/short-courses/access" data-uoe-button="info-sign">Find out more about studying for credit here.</a>\r\n<div>Please note that from September 2017, bookings for non-credit courses will close 8 days before a course start date. Bookings for credit courses will close 15 days before a course start date.</div>\r\n&nbsp;', 'Archaeology', '', 'publish', 'closed', 'closed', '', 'archaeology', '', '', '2017-12-04 21:51:48', '2017-12-04 21:51:48', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=129', 0, 'program', '', 0),
(130, 1, '2017-11-29 17:15:26', '2017-11-29 17:15:26', '<p class="lead">Our popular music courses explore many musical genres and develop practical musicianship skills. As well as offering courses on individual composers, performers and musical periods, we offer courses through which students can enjoy making music together. No experience necessary!</p>\r\nPlease note that from September 2017, bookings for non-credit courses will close 8 days before a course start date. Bookings for credit courses will close 15 days before a course start date', 'Music', '', 'publish', 'closed', 'closed', '', 'music', '', '', '2017-12-04 21:51:45', '2017-12-04 21:51:45', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=130', 0, 'program', '', 0),
(131, 1, '2017-11-29 17:15:43', '2017-11-29 17:15:43', '<p class="lead">Our short courses in areas including Existentialism, Cognitive Psychology and Linguistics offer an opportunity to reflect on questions concerning mind, language and meaning.</p>\r\nCourses marked as <strong>(credit) </strong>are open to all, however participants will be required to matriculate as a student at the University of Edinburgh as part of the registration process for these courses. Guidance on this process will be provided. <a class="uoe-node-link uoe-published" title="Access &amp; Credit Study" href="https://www.ed.ac.uk/studying/short-courses/access" data-uoe-button="info-sign">Find out more about studying for credit here.</a>\r\n<div>Please note that from September 2017, bookings for non-credit courses will close 8 days before a course start date. Bookings for credit courses will close 15 days before a course start date.</div>', 'Philosophy, Psychology and Language Sciences', '', 'publish', 'closed', 'closed', '', 'philosophy-psychology-and-language-sciences', '', '', '2017-12-04 21:51:42', '2017-12-04 21:51:42', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=131', 0, 'program', '', 0),
(132, 1, '2017-11-29 17:16:36', '2017-11-29 17:16:36', '<p class="lead">Learn with Scientists! Our courses are all introductory and yet taught by university tutors and researchers. If you thought you were bad at science, think again and try one of our unique courses in astronomy, botany, earth science, forensic science or human genetics.</p>\r\nPlease note that from September 2017, bookings for non-credit courses will close 8 days before a course start date.', 'Science & Nature', '', 'publish', 'closed', 'closed', '', 'science-nature', '', '', '2017-12-04 21:51:39', '2017-12-04 21:51:39', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=132', 0, 'program', '', 0),
(133, 1, '2017-11-29 17:17:25', '2017-11-29 17:17:25', '<p class="lead">Through our popular literature courses you can discover and explore novels, short-stories, drama and poetry in many genres and from across the globe. Whether you would like to visit established classics or try something a bit different, our courses are delivered by the highest quality teachers, providing a truly unique experience.</p>\r\nCourses marked as <strong>(credit) </strong>are open to all, however participants will be required to matriculate as a student at the University of Edinburgh as part of the registration process for these courses. Guidance on this process will be provided. <a class="uoe-node-link uoe-published" title="Access &amp; Credit Study" href="https://www.ed.ac.uk/studying/short-courses/access" data-uoe-button="info-sign">Find out more about studying for credit here.</a>\r\n<div>Please note that from September 2017, bookings for non-credit courses will close 8 days before a course start date. Bookings for credit courses will close 15 days before a course start date.</div>', 'Literature', '', 'publish', 'closed', 'closed', '', 'literature', '', '', '2017-12-04 21:51:34', '2017-12-04 21:51:34', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=133', 0, 'program', '', 0),
(134, 1, '2017-11-29 18:10:27', '2017-11-29 18:10:27', '<p class="lead">Come and develop your writing skills and confidence in a supportive environment that welcome both aspiring and more advanced writers. From ‘Find Your Voice’ to ’Fiction in Progress’ or ‘Experimental Writing’ - there is a course for you.</p>\r\nCourses marked as <strong>(credit) </strong>are open to all, however participants will be required to matriculate as a student at the University of Edinburgh as part of the registration process for these courses. Guidance on this process will be provided. <a class="uoe-node-link uoe-published" title="Access &amp; Credit Study" href="https://www.ed.ac.uk/studying/short-courses/access" data-uoe-button="info-sign">Find out more about studying for credit here.</a>\r\n<div>Please note that from September 2017, bookings for non-credit courses will close 8 days before a course start date. Bookings for credit courses will close 15 days before a course start date.</div>', 'Creative Writing', '', 'publish', 'closed', 'closed', '', 'creative-writing', '', '', '2017-12-04 21:51:31', '2017-12-04 21:51:31', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=134', 0, 'program', '', 0),
(135, 1, '2017-11-29 18:12:20', '2017-11-29 18:12:20', 'How does modern life influence the study of the past? This course introduces the theory, practice and responsibilities of the archaeological exploration of the past in the present day. Using real-life examples as case studies, we will explore the latest issues and controversies affecting archaeologists today. This course can be taken online.\r\n\r\nAre you an Undergraduate, Erasmus or Study Abroad student looking to take a short course as part of your graduating curriculum? If so, please click <a href="http://www.gla.ac.uk/study/short/undergraduateserasmusinternationalenrolments/">here</a>', 'Understanding Archaeology', '', 'publish', 'closed', 'closed', '', 'understanding-archaeology', '', '', '2017-12-04 21:51:28', '2017-12-04 21:51:28', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=135', 0, 'program', '', 0),
(136, 1, '2017-11-29 18:37:08', '2017-11-29 18:37:08', '', 'Related program', '', 'publish', 'closed', 'closed', '', 'acf_related-program', '', '', '2017-12-01 18:41:16', '2017-12-01 18:41:16', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=136', 0, 'acf', '', 0),
(137, 1, '2017-11-29 18:37:26', '2017-11-29 18:37:26', 'A revival of the 2008 production of Verdi''s classic tale. La Traviata tells the story of Violetta, who hopes to escape life as an escort after falling in love with Alfredo.', 'SCOTTISH OPERA: LA TRAVIATA', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-29 18:37:26', '2017-11-29 18:37:26', '', 106, 'http://localhost/dashboard/FicUni/2017/11/29/106-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2017-11-29 19:42:57', '2017-11-29 19:42:57', 'A revival of the 2008 production of Verdi''s classic tale. La Traviata tells the story of Violetta, who hopes to escape life as an escort after falling in love with Alfredo.', 'SCOTTISH OPERA: LA TRAVIATA', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-11-29 19:42:57', '2017-11-29 19:42:57', '', 106, 'http://localhost/dashboard/FicUni/2017/11/29/106-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2017-12-01 13:54:18', '2017-12-01 13:54:18', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=139', 3, 'nav_menu_item', '', 0),
(140, 1, '2017-12-01 13:55:23', '2017-12-01 13:55:23', '<p class="spacer-bottom-divider">Wellpark Brewery in Glasgow is home to more than 450 years of brewing tradition and award winning beers. Our new tour takes you behind the scenes to discover how we make Tennent''s so special.</p>\r\nWe''ve been part of Scotland and its culture for generations. This is a chance to learn about the rich heritage of one of the country''s most loved brands as well as about the production processes that have taken place at Wellpark from through the centuries up to today.\r\n\r\nFollow us from the very origins of brewing at Wellpark, to present day support of and passion for Scottish music and football. As well as a rare collection of vintage and retro Tennent''s packaging, there''s a chance to watch your favourite Tennent''s adverts from over the decades and also a shop to buy exclusive Tennent''s goodies... And to top it all off, there might even be a cheeky wee taste of Scotland''s Favourite at the end of the tour in it for you. Tasty.\r\n<p class="smalltext spacer-bottom-divider"><em>While we take every opportunity to ensure the details for <strong>Tennent’s Brewery Tour</strong> are accurate, we always advise that you contact the event organiser before setting out for the event to avoid disapointment.</em></p>\r\n\r\n<div></div>', 'Tennent’s Brewery Tour', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2017-12-01 13:55:23', '2017-12-01 13:55:23', '', 109, 'http://localhost/dashboard/FicUni/2017/12/01/109-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2017-12-01 14:39:49', '2017-12-01 14:39:49', 'Joachim Gross is Professor of Systems Neuroscience, Acting Director of the Centre for Cognitive Neuroimaging and Wellcome Trust Senior Investigator. His group investigates the functional role of brain oscillations using Neuroimaging and computational methods. His main goal is to understand how brain oscillations support perception and action. He obtained his M.Sc in Physics and Mathematics in San Angelo, USA in 1993 and his degree in Physics in Hannover, Germany in 1995. He was Ph.D. student at the Institute of Medicine, Research Center Juelich and the MPI for Cognitive Neuroscience in Leipzig. In 1998 he started working as a PostDoc in the Clinic of Neurology at the University of Duesseldorf on pathological oscillatory brain processes in movement disorders and pain. In 2006 he was appointed Professor at Glasgow University. His method of choice is <span data-scayt_word="magnetoencephalography" data-scaytid="6">magnetoencephalography</span> (MEG). For more information see <a href="http://meg.psy.gla.ac.uk/">this page</a>.', 'Professor Joachim Gross', '', 'publish', 'closed', 'closed', '', 'professor-joachim-gross', '', '', '2017-12-01 20:58:26', '2017-12-01 20:58:26', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=142', 0, 'professor', '', 0),
(143, 1, '2017-12-01 14:40:11', '2017-12-01 14:40:11', 'Main research interests are in how personality is portrayed through our voices, and the influence this has on those we interact with; and in animacy and intent perception, and how global motion can be used to determine the actions and intent of others. Both studied via fMRI. I graduated from Glasgow in 2002 (B.Sc. Psychology) and completed my Ph.D. in 2006, in the PACo Lab, Glasgow, on "Understanding Intentions in Animacy Displays Derived from Human Motion". I then worked on two post-docs looking at intent perception by people with ASDs, and by CCTV operators. From there I spent 2 years post-doc in the Voice Neurocognition Lab, Glasgow, looking at perceived personality in voices. I have been a UT since 2012, and mainly lecture in Statistics and Research Methods. And if it can''t be related to cycling then it just isn''t worth talking about!', 'Dr Philip McAleer', '', 'publish', 'closed', 'closed', '', 'dr-philip-mcaleer', '', '', '2017-12-03 20:05:47', '2017-12-03 20:05:47', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=143', 0, 'professor', '', 0),
(144, 1, '2017-12-01 14:40:44', '2017-12-01 14:40:44', 'M. Harvey obtained a degree in Psychology from the University of Bielefeld (Germany), followed by a PhD in Visual Neuropsychology from St. Andrews University (UK). She was then appointed by the University of Bristol as Lecturer and later Senior Lecturer. Her research interests fall in the area of cognitive neuroscience of visual perception, especially in the relative contribution of the two main visual streams (dorsal and ventral) towards perception and action. Her particular interests are in the syndrome of hemispatial neglect. She is further interested in healthy cognitive ageing and investigates attention related changes with EEG and non-invasive brain stimulation.', 'Dr Monika Harvey', '', 'publish', 'closed', 'closed', '', 'dr-monika-harvey', '', '', '2017-12-01 20:32:09', '2017-12-01 20:32:09', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=144', 0, 'professor', '', 0),
(145, 1, '2017-12-01 14:41:07', '2017-12-01 14:41:07', 'My research focuses on human social interaction and communication and the influence of knowledge and concepts (i.e., culture) on visual and categorical social perception, particularly of facial expressions. Funded by the ERC for the research program entitled Computing the Face Syntax of Social Communication.\r\n\r\nFind my CV here: https://www.dropbox.com/s/p6oqu02g9qp6e56/CV_JACK.pdf?dl=0\r\n\r\n• 2017 Spearman Medal, British Psychological Society (BPS)\r\n\r\n• 2017-18 Programme Committee Member IEEE Automatic Face &amp; Gesture recognition conference\r\n\r\n• 2016 Rising Star, Association for Psychological Science (APS)\r\n\r\n• 2016 Innovation Award, Social and Affective Neuroscience Society (SANS)\r\n\r\n• 2015 Young Researcher Spotlight, Emotion Researcher (ISRE)\r\n\r\n• 2014 - Editorial board member: Journal of Experimental Psychology: General\r\n\r\n• 2014 Elected Member of The Royal Society of Edinburgh (RSE), Young Academy of Scotland (YAS)\r\n\r\n• 2013 New Investigator Award, American Psychological Association (APA)', 'Dr Rachael Jack', '', 'publish', 'closed', 'closed', '', 'dr-rachael-jack', '', '', '2017-12-01 20:31:41', '2017-12-01 20:31:41', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=145', 0, 'professor', '', 0),
(146, 1, '2017-12-01 14:41:50', '2017-12-01 14:41:50', 'My research is mainly focused around large scale and complex systems engineering. As a member of the <a class="color1" href="http://www.gla.ac.uk/schools/computing/research/researchoverview/systems-section/" rel="nofollow">Glasgow Systems Section (GLASS)</a> I am currently working on the <a class="color1" href="http://anyscale.org/" rel="nofollow">AnyScale Applications</a> EPSRC funded project under the supervision of <a class="color1" href="http://www.dcs.gla.ac.uk/~jsinger/" rel="nofollow">Dr Jeremy Singer</a> and <a href="http://www.dcs.gla.ac.uk/~trinder/">Prof Phil Trinder</a>.\r\n\r\n&nbsp;', 'Lito Michala', '', 'publish', 'closed', 'closed', '', 'lito-michala', '', '', '2017-12-01 18:45:12', '2017-12-01 18:45:12', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=146', 0, 'professor', '', 0),
(147, 1, '2017-12-01 14:42:17', '2017-12-01 14:42:17', 'I am a Lecturer in Human Computer Interaction at the University of Glasgow. My research focuses on how people use technology in public spaces and how interactive technologies can be designed given the “performative” aspects of using technology in public. I completed my PhD in Computing Science at the University of Glasgow in January 2012, supervised by Stephen Brewster. I completed my Bachelor of Science Cum Laude in Informatics at the University of California, Irvine.\r\n\r\n<strong>Research Interests: </strong>\r\n- public interaction\r\n\r\n- performative interaction\r\n\r\n- large displays\r\n\r\n- spherical displays\r\n\r\n- multitouch interaction\r\n\r\n- multimodal interaction\r\n\r\n- prototyping/electronics', 'Dr Julie Williamson', '', 'publish', 'closed', 'closed', '', 'dr-julie-williamson', '', '', '2017-12-01 20:30:10', '2017-12-01 20:30:10', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=147', 0, 'professor', '', 0),
(148, 1, '2017-12-01 15:30:21', '2017-12-01 15:30:21', '', 'Professor', '', 'trash', 'closed', 'closed', '', 'acf_professor__trashed', '', '', '2017-12-01 15:43:05', '2017-12-01 15:43:05', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=148', 0, 'acf', '', 0),
(149, 1, '2017-12-01 15:31:19', '2017-12-01 15:31:19', 'Computer Science is about understanding computer systems and networks at a deep level. Computers and the programs they run are among the most complex products ever created; designing and using them effectively presents immense challenges. Facing these challenges is the aim of Computer Science as a practical discipline, and this leads to some fundamental questions:\r\n<ul>\r\n 	<li>How can we capture in a precise way what we want a computer system to do?</li>\r\n 	<li>Can we mathematically prove that a computer system does what we want it to?</li>\r\n 	<li>How can computers help us to model and investigate complex systems like the Earth’s climate, financial systems or our own bodies?</li>\r\n 	<li>What are the limits to computing? Will quantum computers extend those limits?</li>\r\n</ul>\r\nThe theories that are now emerging to answer these kinds of questions can be immediately applied to design new computers, programs, networks and systems that are transforming science, business, culture and all other aspects of life.', 'Computer Science', '', 'publish', 'closed', 'closed', '', 'computer-science', '', '', '2017-12-04 21:51:24', '2017-12-04 21:51:24', '', 0, 'http://localhost/dashboard/FicUni/?post_type=program&#038;p=149', 0, 'program', '', 0),
(150, 1, '2017-12-01 19:22:28', '2017-12-01 19:22:28', 'FREE EVENT - HOW TO CRACK THE MUSIC INDUSTRY\r\n\r\nSaturday 9th and Sunday 10th December\r\n\r\n‘Working with Creative People’\r\n\r\nPanelists from the fields of management, music company execs, creative companies, producers, educators or artist developers tell how they got in to their industry and how the industry has changed.\r\n\r\n‘The Promotion of Creative Enterprises’\r\n\r\nPanelists from the PR, marketing, promotion, blogs / journalists, live / event industries looking at the skill sets required to work in a creative enterprise, the importance of ‘the story’ in building a brand / creative enterprise and how to ‘tell your story’.\r\n\r\n‘That’s A Great Idea!’\r\n\r\nCreativity, innovation, mindset and the changing skills required to set up a new business along with the importance of personal branding and how to be an entrepreneur or an entrepreneur within an organisation.\r\n\r\n‘I’m In! Or Am I?’\r\n\r\nDragon’s Den where you have the chance to pitch your creative business idea and get feedback from our panel of experts.We will signpost you to potential customers for your idea and any possible funding opportunities that might be there to develop their idea.\r\n<h3 style="font-weight: 600;" data-automation="ListingsBreadcrumbsTitle"></h3>', 'Crack The Music Industry', '', 'publish', 'closed', 'open', '', 'crack-the-music-industry', '', '', '2017-12-01 19:22:28', '2017-12-01 19:22:28', '', 0, 'http://localhost/dashboard/FicUni/?post_type=event&#038;p=150', 0, 'event', '', 0),
(151, 1, '2017-12-01 19:22:28', '2017-12-01 19:22:28', 'FREE EVENT - HOW TO CRACK THE MUSIC INDUSTRY\r\n\r\nSaturday 9th and Sunday 10th December\r\n\r\n‘Working with Creative People’\r\n\r\nPanelists from the fields of management, music company execs, creative companies, producers, educators or artist developers tell how they got in to their industry and how the industry has changed.\r\n\r\n‘The Promotion of Creative Enterprises’\r\n\r\nPanelists from the PR, marketing, promotion, blogs / journalists, live / event industries looking at the skill sets required to work in a creative enterprise, the importance of ‘the story’ in building a brand / creative enterprise and how to ‘tell your story’.\r\n\r\n‘That’s A Great Idea!’\r\n\r\nCreativity, innovation, mindset and the changing skills required to set up a new business along with the importance of personal branding and how to be an entrepreneur or an entrepreneur within an organisation.\r\n\r\n‘I’m In! Or Am I?’\r\n\r\nDragon’s Den where you have the chance to pitch your creative business idea and get feedback from our panel of experts.We will signpost you to potential customers for your idea and any possible funding opportunities that might be there to develop their idea.\r\n<h3 style="font-weight: 600;" data-automation="ListingsBreadcrumbsTitle"></h3>', 'Crack The Music Industry', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2017-12-01 19:22:28', '2017-12-01 19:22:28', '', 150, 'http://localhost/dashboard/FicUni/2017/12/01/150-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2017-12-01 20:29:11', '2017-12-01 20:29:11', '', '24762_886623053191_6009797_48325066_5726277_n_400x400', '', 'inherit', 'open', 'closed', '', '24762_886623053191_6009797_48325066_5726277_n_400x400', '', '', '2017-12-01 20:29:11', '2017-12-01 20:29:11', '', 147, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/24762_886623053191_6009797_48325066_5726277_n_400x400.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 1, '2017-12-01 20:31:38', '2017-12-01 20:31:38', '', 'staffphoto', '', 'inherit', 'open', 'closed', '', 'staffphoto', '', '', '2017-12-01 20:31:38', '2017-12-01 20:31:38', '', 145, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/staffphoto.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2017-12-01 20:32:05', '2017-12-01 20:32:05', '', 'staffphoto (1)', '', 'inherit', 'open', 'closed', '', 'staffphoto-1', '', '', '2017-12-01 20:32:05', '2017-12-01 20:32:05', '', 144, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/staffphoto-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(155, 1, '2017-12-01 20:32:30', '2017-12-01 20:32:30', '', 'staffphoto (2)', '', 'inherit', 'open', 'closed', '', 'staffphoto-2', '', '', '2017-12-01 20:32:30', '2017-12-01 20:32:30', '', 143, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/staffphoto-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2017-12-01 20:32:54', '2017-12-01 20:32:54', '', 'staffphoto (3)', '', 'inherit', 'open', 'closed', '', 'staffphoto-3', '', '', '2017-12-01 20:32:54', '2017-12-01 20:32:54', '', 142, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/staffphoto-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2017-12-01 20:53:59', '2017-12-01 20:53:59', 'Sye Loong Keoh is an Assistant Professor in the School of Computing Science, University of Glasgow, Singapore. He obtained his PhD in computing science from Imperial College London in 2005. Prior to joining Glasgow, he was a Senior Scientist at Philips Research Eindhoven (2008 - 2013) and a Postdoctoral Research Associate at Imperial College London (2005 - 2008). While working at Philips Research, he was responsible for standardizing Digital Rights Management (DRM) technology for content protection. He was also involved in projects related to medical security and security protocols design for Philips lighting systems.\r\n\r\nHe has been actively contributing to the standardization of security protocols for Internet of Things (IoT) in the Internet Engineering Task Force (IETF) since 2011, specifically he contributes to the Constrained Restful Environment (CoRE), DTLS in Constrained Environment (DICE) and Lightweight Implementation Guidance (LWIG) working groups. His research interests include policy-based management, building and home automation, security protocol design, security and trust management, Internet of Things and pervasive computing.', 'Dr Sye Loong Keoh', '', 'publish', 'closed', 'closed', '', 'dr-sye-loong-keoh', '', '', '2017-12-02 22:24:59', '2017-12-02 22:24:59', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=157', 0, 'professor', '', 0),
(158, 1, '2017-12-01 20:53:26', '2017-12-01 20:53:26', '', 'media_294409_en', '', 'inherit', 'open', 'closed', '', 'media_294409_en', '', '', '2017-12-01 20:53:26', '2017-12-01 20:53:26', '', 157, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/media_294409_en.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2017-12-01 20:56:20', '2017-12-01 20:56:20', 'Research into graphical authentication has yet to be meaningfully transferred into industry. This is the case globally, but is concerning in Scotland as considerable research into the area has been published and presented by academics in SICSA universities (e.g. University of Glasgow, Glasgow Caledonian University, Napier University). The lack of knowledge transfer is particularly perplexing given the interest of industry in improving digital security. There are several explanations for the lack of progress, but a prominent issue is the inconsistency in reporting scientific data pertaining to graphical authentication. There is no framework for the reporting of field investigations into graphical authentication solutions. This situation not only hinders knowledge transfer into industry but the progress of research into alternative authentication solutions. Industry and researchers require metrics and strong qualitative data to utilise and progress research in the area. Consequently, the Scottish Informatics and Computer Science Alliance (SICSA) has provided financial support for a research exchange for me to visit and work with Prof. Melanie Volkamer. The primary aim of the proposed exchange is to develop a field evaluation framework for graphical authentication solutions to ensure consistent reporting of scientific data. The Center for Advanced Security Research at Technische Universität Darmstadt has an established track record of transferring knowledge into industry. Notably, Prof. Melanie Volkamer from the Technische Universität Darmstadt, along with Dr Karen Renaud and myself at the University of Glasgow have collaborated and made progress in transferring knowledge of graphical authentication research into industry.', 'Dr Joseph Maguire', '', 'publish', 'closed', 'closed', '', 'dr-joseph-maguire', '', '', '2017-12-02 22:17:28', '2017-12-02 22:17:28', '', 0, 'http://localhost/dashboard/FicUni/?post_type=professor&#038;p=159', 0, 'professor', '', 0),
(160, 1, '2017-12-01 20:56:15', '2017-12-01 20:56:15', '', 'media_394991_en', '', 'inherit', 'open', 'closed', '', 'media_394991_en', '', '', '2017-12-01 20:56:15', '2017-12-01 20:56:15', '', 159, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/media_394991_en.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2017-12-02 22:02:13', '2017-12-02 22:02:13', '', 'Page Banner Images', '', 'publish', 'closed', 'closed', '', 'acf_page-banner-images', '', '', '2017-12-03 20:05:37', '2017-12-03 20:05:37', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=161', 0, 'acf', '', 0),
(162, 1, '2017-12-02 22:05:00', '2017-12-02 22:05:00', '', '12316241_large1300', '', 'inherit', 'open', 'closed', '', '12316241_large1300', '', '', '2017-12-02 22:05:00', '2017-12-02 22:05:00', '', 159, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/12316241_large1300.jpg', 0, 'attachment', 'image/jpeg', 0),
(163, 1, '2017-12-02 22:24:21', '2017-12-02 22:24:21', '', 'maxresdefault', '', 'inherit', 'open', 'closed', '', 'maxresdefault', '', '', '2017-12-02 22:24:21', '2017-12-02 22:24:21', '', 157, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/maxresdefault.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2017-12-03 15:12:04', '2017-12-03 15:12:04', '', 'aboutus', '', 'inherit', 'open', 'closed', '', 'aboutus', '', '', '2017-12-03 15:12:04', '2017-12-03 15:12:04', '', 15, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/aboutus.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2017-12-03 15:12:09', '2017-12-03 15:12:09', 'Strona o nas. Dummy text.', 'About Us', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2017-12-03 15:12:09', '2017-12-03 15:12:09', '', 15, 'http://localhost/dashboard/FicUni/2017/12/03/15-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2017-12-03 15:14:30', '2017-12-03 15:14:30', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\r\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\r\n\r\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\r\n\r\nThe government also plans to devolve running the track and train services to local companies.\r\n\r\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\r\n\r\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\r\n\r\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\r\n\r\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\r\n<h2 class="story-body__crosshead">Tracks revived</h2>\r\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\r\n\r\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\r\n\r\n"The system is creaking - it''s bursting at the seams," he said.\r\n\r\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\r\n\r\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\r\n\r\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\r\n\r\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', 'I have never met anyone in the rail industry - either pro- or anti-privatisation - who thinks it was a good idea to split up who runs the trains and who runs the track and signals.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-12-03 15:14:30', '2017-12-03 15:14:30', '', 96, 'http://localhost/dashboard/FicUni/2017/12/03/96-revision-v1/', 0, 'revision', '', 0),
(168, 1, '2017-12-03 15:44:14', '2017-12-03 15:44:14', '', 'best-games-ms-pac-man', '', 'inherit', 'open', 'closed', '', 'best-games-ms-pac-man', '', '', '2017-12-03 15:44:14', '2017-12-03 15:44:14', '', 80, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/11/best-games-ms-pac-man.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2017-12-03 15:44:29', '2017-12-03 15:44:29', '<p class="story-body__introduction"><strong>A mother has written a letter in defence of her 14-year-old son who is facing a lawsuit over video game cheats in the US.</strong></p>\r\nCaleb Rogers is one of two people facing legal action from gaming studio Epic Games for using cheat software to play the free game Fortnite.\r\n\r\nThe studio says it has taken the step because the boy declined to remove a YouTube video he published which promoted how to use the software.\r\n\r\nHis mother says he is a scapegoat.\r\n\r\n"This company is in the process of attempting to sue a 14-year-old child," she wrote in the letter which has been shared online.\r\n\r\nMs Rogers added that she had not given her son parental consent to play the game as stated in its terms and conditions, and that as the game was free to play the studio could not claim loss of profit as a result of the cheats.\r\n\r\n"It is my belief that due to their lack of ability to curve cheat codes and others from modifying their game, they are using a 14-year-old child as a scapegoat to make an example of him," she said.\r\n\r\nIn a statement given to the website Kotaku, Epic Games said the lawsuit was a result of Mr Rogers "filing a DMCA counterclaim to a takedown notice on a YouTube video that exposed and promoted Fortnite Battle Royale cheats and exploits."\r\n\r\n"Epic is not OK with ongoing cheating or copyright infringement from anyone at any age," it said.\r\n<h2 class="story-body__crosshead">Cheating for fun</h2>\r\nIn a YouTube video made by the boy himself discussing the legal action, he said he cheated "for fun" and that the cheat he used was freely available online. He denied making it or selling it himself.\r\n\r\nHe admitted that he had been banned from the game several times previously.\r\n\r\nThe video received a mixed reaction, with some comments supporting him but many saying he was in the wrong.\r\n\r\nEpic Games has been contacted by the BBC for comment.', 'Mum defends teen in gaming lawsuit', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-12-03 15:44:29', '2017-12-03 15:44:29', '', 80, 'http://localhost/dashboard/FicUni/2017/12/03/80-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2017-12-03 17:24:11', '2017-12-03 17:24:11', 'To sa nasze cele - goals.', 'Our goals', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-12-03 17:24:11', '2017-12-03 17:24:11', '', 25, 'http://localhost/dashboard/FicUni/2017/12/03/25-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2017-12-03 17:24:41', '2017-12-03 17:24:41', '', 'catBg580ddd9f0a997', '', 'inherit', 'open', 'closed', '', 'catbg580ddd9f0a997', '', '', '2017-12-03 17:24:41', '2017-12-03 17:24:41', '', 27, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/catBg580ddd9f0a997.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2017-12-03 17:24:53', '2017-12-03 17:24:53', 'To jest nasza historia.', 'Our history', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2017-12-03 17:24:53', '2017-12-03 17:24:53', '', 27, 'http://localhost/dashboard/FicUni/2017/12/03/27-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2017-12-03 17:51:10', '2017-12-03 17:51:10', '', 'PRIVACY', 'Information Privacy on computer keyboard background', 'inherit', 'open', 'closed', '', 'privacy', '', '', '2017-12-03 17:51:10', '2017-12-03 17:51:10', '', 17, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/PRIVACY.jpg', 0, 'attachment', 'image/jpeg', 0),
(174, 1, '2017-12-03 17:51:22', '2017-12-03 17:51:22', 'Polityka prywatnosci strona.', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2017-12-03 17:51:22', '2017-12-03 17:51:22', '', 17, 'http://localhost/dashboard/FicUni/2017/12/03/17-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2017-12-03 17:51:51', '2017-12-03 17:51:51', 'Ciasteczka', 'Cookie policy', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-12-03 17:51:51', '2017-12-03 17:51:51', '', 29, 'http://localhost/dashboard/FicUni/2017/12/03/29-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2017-12-03 17:52:18', '2017-12-03 17:52:18', '', 'G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf', '', 'inherit', 'open', 'closed', '', 'g15022_kfc_83-dozen-cookies-enviro_1291_rgb-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf', '', '', '2017-12-03 17:52:18', '2017-12-03 17:52:18', '', 29, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/G15022_KFC_83-dozen-cookies-Enviro_1291_RGB-copy-3c79d7ef6ea6f6afbc31347a8419e6229ebbfb347b8396f3d05fff5343c36dbf.jpg', 0, 'attachment', 'image/jpeg', 0),
(177, 1, '2017-12-03 17:52:22', '2017-12-03 17:52:22', 'Ciasteczka', 'Cookie policy', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-12-03 17:52:22', '2017-12-03 17:52:22', '', 29, 'http://localhost/dashboard/FicUni/2017/12/03/29-revision-v1/', 0, 'revision', '', 0),
(178, 1, '2017-12-03 17:56:17', '2017-12-03 17:56:17', '', 'scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson', 'Glasgow, UK. 16.10.2017. Scottish Opera presents La Traviata, at the Theatre Royal Glasgow from October 19th, before touring to Aberdeen, Inverness and Edinburgh from November 2nd.  This production is directed by Marie Lambert (original director is Sir David McVicar), with design by Tanya McCallin and lighting design by Stephen Powles (original lighting design by Jennifer Tipton). The cast is: Gulnara Shafigullina (Violetta Valéry), Peter Gijsbertsen (Alfredo Germont), Stephen Gadd (Giorgio Germont), Laura Zigmantaite (Flora Bervoix), Simon Thorpe (Baron Douphol), Christopher Turner (Gastone), Alex Otterburn (Marchese D’Obigny), James Platt (Doctor Grenvil), Catherine Backhouse (Annina). Photograph © Jane Hobson.', 'inherit', 'open', 'closed', '', 'scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson', '', '', '2017-12-03 17:56:17', '2017-12-03 17:56:17', '', 106, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/11/scottish-operas-la-traviata-scottish-opera-2017-credit-jane-hobson.jpg', 0, 'attachment', 'image/jpeg', 0),
(179, 1, '2017-12-03 17:56:34', '2017-12-03 17:56:34', 'A revival of the 2008 production of Verdi''s classic tale. La Traviata tells the story of Violetta, who hopes to escape life as an escort after falling in love with Alfredo.', 'SCOTTISH OPERA: LA TRAVIATA', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2017-12-03 17:56:34', '2017-12-03 17:56:34', '', 106, 'http://localhost/dashboard/FicUni/2017/12/03/106-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2017-12-03 17:59:34', '2017-12-03 17:59:34', '', 'Gobero-Skull-Sahara-Desert-Archeology---2016-1', '', 'inherit', 'open', 'closed', '', 'gobero-skull-sahara-desert-archeology-2016-1', '', '', '2017-12-03 17:59:34', '2017-12-03 17:59:34', '', 129, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/11/Gobero-Skull-Sahara-Desert-Archeology-2016-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2017-12-03 18:05:41', '2017-12-03 18:05:41', '', '636069103982384395-470249493_img_2', '', 'inherit', 'open', 'closed', '', '636069103982384395-470249493_img_2', '', '', '2017-12-03 18:05:41', '2017-12-03 18:05:41', '', 128, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/11/636069103982384395-470249493_img_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2017-12-03 18:08:57', '2017-12-03 18:08:57', '', 'computer-science-meaning-information-technology-and-text-F2HW6T', '', 'inherit', 'open', 'closed', '', 'computer-science-meaning-information-technology-and-text-f2hw6t', '', '', '2017-12-03 18:08:57', '2017-12-03 18:08:57', '', 149, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/computer-science-meaning-information-technology-and-text-F2HW6T.jpg', 0, 'attachment', 'image/jpeg', 0),
(183, 1, '2017-12-03 18:09:36', '2017-12-03 18:09:36', '', '101', '', 'inherit', 'open', 'closed', '', '101', '', '', '2017-12-03 18:09:36', '2017-12-03 18:09:36', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/101.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2017-12-03 18:09:37', '2017-12-03 18:09:37', '', 'Music-on-Blackboard-1240x660', '', 'inherit', 'open', 'closed', '', 'music-on-blackboard-1240x660', '', '', '2017-12-03 18:09:37', '2017-12-03 18:09:37', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/Music-on-Blackboard-1240x660.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2017-12-03 18:09:38', '2017-12-03 18:09:38', '', 'paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ', '', 'inherit', 'open', 'closed', '', 'paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-a71bfj', '', '', '2017-12-03 18:09:38', '2017-12-03 18:09:38', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/paphos-mosaic-pafos-roman-archeology-archeological-site-excavation-A71BFJ.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2017-12-03 18:09:39', '2017-12-03 18:09:39', '', 'philo-major', '', 'inherit', 'open', 'closed', '', 'philo-major', '', '', '2017-12-03 18:09:39', '2017-12-03 18:09:39', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/philo-major.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2017-12-03 18:09:40', '2017-12-03 18:09:40', '', 'Science-and-Nature-blog-post-pexels-photo-132477', '', 'inherit', 'open', 'closed', '', 'science-and-nature-blog-post-pexels-photo-132477', '', '', '2017-12-03 18:09:40', '2017-12-03 18:09:40', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/Science-and-Nature-blog-post-pexels-photo-132477.jpg', 0, 'attachment', 'image/jpeg', 0),
(188, 1, '2017-12-03 18:09:40', '2017-12-03 18:09:40', '', 'writing1', '', 'inherit', 'open', 'closed', '', 'writing1', '', '', '2017-12-03 18:09:40', '2017-12-03 18:09:40', '', 0, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/writing1.jpg', 0, 'attachment', 'image/jpeg', 0),
(189, 1, '2017-12-03 18:18:47', '2017-12-03 18:18:47', '<p class="story-body__introduction">Donald Trump lashed out at the FBI on Sunday, issuing a fresh denial that he asked former director James Comey to drop an investigation into the conduct of one of his top aides, Michael Flynn.</p>\r\nIn a Twitter tirade, Mr Trump said the FBI''s reputation was "in tatters".\r\n\r\nHis attack came amid a flurry of developments in Special Counsel Robert Mueller''s inquiry into alleged Russian interference in the US election.\r\n\r\nMr Trump denies that his team colluded with Russia to get him elected.\r\n\r\nReports emerged over the weekend that Mr Mueller, a former FBI director, had dismissed an FBI officer from the investigation during the summer after he was discovered to have made anti-Trump remarks in text messages.\r\n\r\nThe president seized on the officer''s dismissal, tweeting: "Report: ''ANTI-TRUMP FBI AGENT LED CLINTON EMAIL PROBE'' Now it all starts to make sense!"\r\n<div class="social-embed">\r\n<div class="social-embed-post social-embed-fallbacktwitter embed-image-wrap"></div>\r\n</div>', 'Russia-Trump: President hits out at FBI over Russia inquiry', 'A spokesman for Mr Mueller said the officer was dismissed from the investigating team as soon as the messages were discovered.', 'publish', 'open', 'open', '', 'russia-trump-president-hits-out-at-fbi-over-russia-inquiry', '', '', '2017-12-03 18:19:45', '2017-12-03 18:19:45', '', 0, 'http://localhost/dashboard/FicUni/?p=189', 0, 'post', '', 0),
(190, 1, '2017-12-03 18:18:28', '2017-12-03 18:18:28', '', '_99039334_mediaitem99039333', '', 'inherit', 'open', 'closed', '', '_99039334_mediaitem99039333', '', '', '2017-12-03 18:18:28', '2017-12-03 18:18:28', '', 189, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/99039334_mediaitem99039333.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2017-12-03 18:18:47', '2017-12-03 18:18:47', '<p class="story-body__introduction">Donald Trump lashed out at the FBI on Sunday, issuing a fresh denial that he asked former director James Comey to drop an investigation into the conduct of one of his top aides, Michael Flynn.</p>\r\nIn a Twitter tirade, Mr Trump said the FBI''s reputation was "in tatters".\r\n\r\nHis attack came amid a flurry of developments in Special Counsel Robert Mueller''s inquiry into alleged Russian interference in the US election.\r\n\r\nMr Trump denies that his team colluded with Russia to get him elected.\r\n\r\nReports emerged over the weekend that Mr Mueller, a former FBI director, had dismissed an FBI officer from the investigation during the summer after he was discovered to have made anti-Trump remarks in text messages.\r\n\r\nThe president seized on the officer''s dismissal, tweeting: "Report: ''ANTI-TRUMP FBI AGENT LED CLINTON EMAIL PROBE'' Now it all starts to make sense!"\r\n<div class="social-embed">\r\n<div class="social-embed-post social-embed-fallbacktwitter embed-image-wrap"></div>\r\n</div>', 'Russia-Trump: President hits out at FBI over Russia inquiry', 'A spokesman for Mr Mueller said the officer was dismissed from the investigating team as soon as the messages were discovered.', 'inherit', 'closed', 'closed', '', '189-revision-v1', '', '', '2017-12-03 18:18:47', '2017-12-03 18:18:47', '', 189, 'http://localhost/dashboard/FicUni/2017/12/03/189-revision-v1/', 0, 'revision', '', 0),
(192, 1, '2017-12-03 18:19:22', '2017-12-03 18:19:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2017-12-03 18:19:22', '2017-12-03 18:19:22', '', 1, 'http://localhost/dashboard/FicUni/2017/12/03/1-revision-v1/', 0, 'revision', '', 0),
(193, 1, '2017-12-03 18:23:46', '2017-12-03 18:23:46', '', '1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways', '', 'inherit', 'open', 'closed', '', '1-first-chiltern-train-from-oxford-station-by-chiltern-railways', '', '', '2017-12-03 18:23:46', '2017-12-03 18:23:46', '', 96, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/11/1-First-Chiltern-train-from-Oxford-station-by-Chiltern-Railways.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(194, 1, '2017-12-03 18:31:52', '2017-12-03 18:31:52', '<p class="story-body__introduction">Railway lines closed in the 1960s could be reopened if they boost the economy, the government has said.</p>\r\nThe plan forms part of a wider rail strategy under which the government will consider splitting up two of the biggest train operators.\r\n\r\nThe move would affect Great Western and GTR, which comprises Southern, Thameslink and Great Northern.\r\n\r\nThe government also plans to devolve running the track and train services to local companies.\r\n\r\nAt the moment Network Rail, which is state-owned, looks after the track and other infrastructure while train services are operated by private companies.\r\n\r\nThe first public-private partnerships introduced would be on the East Coast mainline from 2020, which connects London, the North East and Scotland.\r\n\r\nMr Grayling described Network Rail as "one big central blob", saying the network could be better run locally.\r\n\r\n"It means when things go wrong, there''s one team to sort it out," he told BBC Radio 4''s Today programme.\r\n<h2 class="story-body__crosshead">Tracks revived</h2>\r\nSome 4,000 miles of rail routes were closed in the 1960s, mainly in rural areas, known as the Beeching cuts.\r\n\r\nTransport Secretary Chris Grayling said the new rail lines could unlock jobs, encourage house building and ease overcrowding.\r\n\r\n"The system is creaking - it''s bursting at the seams," he said.\r\n\r\nMr Grayling said the new routes would "provide better services for commuters but also unlock housing potential".\r\n\r\nWork on the Oxford to Cambridge route starts next summer, and plans to re-open routes around Bristol, Birmingham, Exeter and the North East are being considered.\r\n\r\nThe government will also consult on splitting up the Great Western franchise between London, the South West and Wales.\r\n\r\nThat could result in one company running long-distance lines between London, Wiltshire, Somerset, Devon and Cornwall - while another runs local services across the South West.', 'Some lost rail routes may be ''restored''', 'I have never met anyone in the rail industry - either pro- or anti-privatisation - who thinks it was a good idea to split up who runs the trains and who runs the track and signals.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2017-12-03 18:31:52', '2017-12-03 18:31:52', '', 96, 'http://localhost/dashboard/FicUni/2017/12/03/96-revision-v1/', 0, 'revision', '', 0),
(195, 1, '2017-12-03 20:25:57', '2017-12-03 20:25:57', 'Gilmorehill Campus is located in the west end of Glasgow, 3 miles from the city centre. This is where you will find our grand main building and many of the University’s teaching and research facilities.', 'Gilmorehill Campus', 'Our main campus', 'publish', 'closed', 'closed', '', 'gilmorehill-campus', '', '', '2017-12-04 20:23:07', '2017-12-04 20:23:07', '', 0, 'http://localhost/dashboard/FicUni/?post_type=campus&#038;p=195', 0, 'campus', '', 0),
(196, 1, '2017-12-03 20:26:37', '2017-12-03 20:26:37', 'Garscube Campus is 4 miles away from our main campus. Here you will find the School of Veterinary Medicine and 4 Research Institutes in the College of Medical, Veterinary and Life Sciences as well as our outdoor sports facilities.', 'Garscube Campus', 'Maryhill pride', 'publish', 'closed', 'closed', '', 'garscube-campus', '', '', '2017-12-04 20:22:50', '2017-12-04 20:22:50', '', 0, 'http://localhost/dashboard/FicUni/?post_type=campus&#038;p=196', 0, 'campus', '', 0),
(197, 1, '2017-12-03 20:27:16', '2017-12-03 20:27:16', 'Dumfries Campus is surrounded by 85 acres of parkland and gardens in the south west of Scotland, and home to our School of Interdisciplinary Studies.', 'Dumfries Campus ', 'Almost in England.', 'publish', 'closed', 'closed', '', 'dumfries-campus', '', '', '2017-12-04 20:21:40', '2017-12-04 20:21:40', '', 0, 'http://localhost/dashboard/FicUni/?post_type=campus&#038;p=197', 0, 'campus', '', 0),
(198, 1, '2017-12-03 20:28:15', '2017-12-03 20:28:15', '', 'media_338478_en', '', 'inherit', 'open', 'closed', '', 'media_338478_en', '', '', '2017-12-03 20:28:15', '2017-12-03 20:28:15', '', 197, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/media_338478_en.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2017-12-03 20:28:59', '2017-12-03 20:28:59', '', 'media_424745_en-300x191', '', 'inherit', 'open', 'closed', '', 'media_424745_en-300x191', '', '', '2017-12-03 20:28:59', '2017-12-03 20:28:59', '', 196, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/media_424745_en-300x191.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2017-12-03 20:29:35', '2017-12-03 20:29:35', '', 'media_334543_en', '', 'inherit', 'open', 'closed', '', 'media_334543_en', '', '', '2017-12-03 20:29:35', '2017-12-03 20:29:35', '', 195, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/media_334543_en.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2017-12-03 20:30:48', '2017-12-03 20:30:48', '', 'newspic_1982', '', 'inherit', 'open', 'closed', '', 'newspic_1982', '', '', '2017-12-03 20:30:48', '2017-12-03 20:30:48', '', 196, 'http://localhost/dashboard/FicUni/wp-content/uploads/2017/12/newspic_1982.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2017-12-03 20:32:48', '2017-12-03 20:32:48', '', 'Map Location', '', 'publish', 'closed', 'closed', '', 'acf_map-location', '', '', '2017-12-03 20:38:01', '2017-12-03 20:38:01', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=202', 0, 'acf', '', 0),
(203, 1, '2017-12-03 22:44:37', '2017-12-03 22:44:37', ' ', '', '', 'publish', 'closed', 'closed', '', '203', '', '', '2017-12-03 22:44:37', '2017-12-03 22:44:37', '', 0, 'http://localhost/dashboard/FicUni/?p=203', 4, 'nav_menu_item', '', 0),
(205, 1, '2017-12-04 21:51:05', '2017-12-04 21:51:05', '', 'Related Campus', '', 'publish', 'closed', 'closed', '', 'acf_related-campus', '', '', '2017-12-04 21:51:05', '2017-12-04 21:51:05', '', 0, 'http://localhost/dashboard/FicUni/?post_type=acf&#038;p=205', 0, 'acf', '', 0),
(206, 1, '2017-12-13 21:03:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-12-13 21:03:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/dashboard/FicUni/?p=206', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'General', 'general', 0),
(2, 'Uni main menu', 'uni-main-menu', 0),
(3, 'Footer left', 'footer-left', 0),
(4, 'Footer right', 'footer-right', 0),
(5, 'Africa', 'africa', 0),
(6, 'Politics', 'politics', 0),
(7, 'EU', 'eu', 0),
(8, 'United Kingdom', 'uk', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(6, 1, 0),
(42, 2, 0),
(43, 2, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 4, 0),
(61, 2, 0),
(62, 1, 0),
(62, 5, 0),
(64, 6, 0),
(64, 8, 0),
(66, 8, 0),
(68, 6, 0),
(70, 6, 0),
(72, 6, 0),
(72, 7, 0),
(72, 8, 0),
(74, 6, 0),
(74, 8, 0),
(76, 6, 0),
(76, 8, 0),
(80, 8, 0),
(95, 2, 0),
(96, 8, 0),
(124, 3, 0),
(139, 2, 0),
(189, 1, 0),
(189, 6, 0),
(203, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', 'Very general stuff', 0, 2),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'category', 'Stuff from Africa', 0, 1),
(6, 6, 'category', 'Politics...anyone??', 0, 7),
(7, 7, 'category', 'Our neighbor EU', 0, 1),
(8, 8, 'category', 'Sweet home...UK', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Marcin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'Software developer and 3D artist wannabe...'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'midnight'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"40e6fc8e9ca198b85044ca1d05d1ad2646e3342a9c0cf0eda6a222783a4c3013";a:4:{s:10:"expiration";i:1513371796;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513198996;}s:64:"d506d8ceb1bf3f153cd32a371d3e7ff72e5477c5545c6b50849d12245eaa58ae";a:4:{s:10:"expiration";i:1513455948;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1513283148;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '206'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:2:"::";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(21, 1, 'nav_menu_recently_edited', '2'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:16:"commentstatusdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(24, 1, 'wp_user-settings', 'editor=tinymce&posts_list_mode=list&libraryContent=browse'),
(25, 1, 'wp_user-settings-time', '1512324593'),
(26, 1, 'closedpostboxes_event', 'a:0:{}'),
(27, 1, 'metaboxhidden_event', 'a:1:{i:0;s:7:"slugdiv";}'),
(28, 1, 'closedpostboxes_post', 'a:0:{}'),
(29, 1, 'metaboxhidden_post', 'a:4:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";}'),
(30, 1, 'edit_event_per_page', '20'),
(31, 1, 'closedpostboxes_campus', 'a:0:{}'),
(32, 1, 'metaboxhidden_campus', 'a:3:{i:0;s:7:"acf_136";i:1;s:7:"acf_102";i:2;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'marcin', '$P$Bhvk/mE.aayLBsxqO8IWBEC3TfVBo2.', 'marcin', 'emwu83@gmail.com', 'http://www.vase3dstudio.com', '2017-11-27 13:36:04', '', 0, 'Marcin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=721;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=830;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
