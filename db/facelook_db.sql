-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 28-Out-2019 às 15:06
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `facelook_db`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Facelook', 'yes'),
(2, 'home', 'http://localhost/Facelook', 'yes'),
(3, 'blogname', 'Facelook Cosméticos', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vinydias0509@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:171:{s:18:\"biblioteca/blog/?$\";s:25:\"index.php?post_type=blogs\";s:48:\"biblioteca/blog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:43:\"biblioteca/blog/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:35:\"biblioteca/blog/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=blogs&paged=$matches[1]\";s:20:\"biblioteca/barber/?$\";s:29:\"index.php?post_type=barbeiros\";s:50:\"biblioteca/barber/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=barbeiros&feed=$matches[1]\";s:45:\"biblioteca/barber/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=barbeiros&feed=$matches[1]\";s:37:\"biblioteca/barber/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=barbeiros&paged=$matches[1]\";s:21:\"biblioteca/produto/?$\";s:25:\"index.php?post_type=prods\";s:51:\"biblioteca/produto/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=prods&feed=$matches[1]\";s:46:\"biblioteca/produto/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=prods&feed=$matches[1]\";s:38:\"biblioteca/produto/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=prods&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:51:\"categorias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?produto_category=$matches[1]&feed=$matches[2]\";s:46:\"categorias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?produto_category=$matches[1]&feed=$matches[2]\";s:27:\"categorias/([^/]+)/embed/?$\";s:49:\"index.php?produto_category=$matches[1]&embed=true\";s:39:\"categorias/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?produto_category=$matches[1]&paged=$matches[2]\";s:21:\"categorias/([^/]+)/?$\";s:38:\"index.php?produto_category=$matches[1]\";s:45:\"tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?produto_tag=$matches[1]&feed=$matches[2]\";s:40:\"tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?produto_tag=$matches[1]&feed=$matches[2]\";s:21:\"tags/([^/]+)/embed/?$\";s:44:\"index.php?produto_tag=$matches[1]&embed=true\";s:33:\"tags/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?produto_tag=$matches[1]&paged=$matches[2]\";s:15:\"tags/([^/]+)/?$\";s:33:\"index.php?produto_tag=$matches[1]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:38:\"index.php?blogs=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:32:\"index.php?blogs=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?blogs=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"especialidade/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?barber_category=$matches[1]&feed=$matches[2]\";s:49:\"especialidade/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?barber_category=$matches[1]&feed=$matches[2]\";s:30:\"especialidade/([^/]+)/embed/?$\";s:48:\"index.php?barber_category=$matches[1]&embed=true\";s:42:\"especialidade/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?barber_category=$matches[1]&paged=$matches[2]\";s:24:\"especialidade/([^/]+)/?$\";s:37:\"index.php?barber_category=$matches[1]\";s:34:\"barber/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"barber/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"barber/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"barber/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"barber/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"barber/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"barber/([^/]+)/embed/?$\";s:42:\"index.php?barbeiros=$matches[1]&embed=true\";s:27:\"barber/([^/]+)/trackback/?$\";s:36:\"index.php?barbeiros=$matches[1]&tb=1\";s:47:\"barber/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?barbeiros=$matches[1]&feed=$matches[2]\";s:42:\"barber/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?barbeiros=$matches[1]&feed=$matches[2]\";s:35:\"barber/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?barbeiros=$matches[1]&paged=$matches[2]\";s:42:\"barber/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?barbeiros=$matches[1]&cpage=$matches[2]\";s:31:\"barber/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?barbeiros=$matches[1]&page=$matches[2]\";s:23:\"barber/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"barber/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"barber/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"barber/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"barber/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"barber/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:38:\"index.php?prods=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:32:\"index.php?prods=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?prods=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?prods=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?prods=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?prods=$matches[1]&cpage=$matches[2]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?prods=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:61:\"C:\\xampp\\htdocs\\facelook/wp-content/themes/Facelook/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'Facelook', 'yes'),
(41, 'stylesheet', 'Facelook', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
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
(78, 'widget_categories', 'a:6:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categorias\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:5;a:4:{s:5:\"title\";s:10:\"Categorias\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:6;a:6:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;s:14:\"csb_visibility\";a:3:{s:6:\"action\";s:4:\"show\";s:10:\"conditions\";a:22:{s:5:\"guest\";a:0:{}s:4:\"date\";a:0:{}s:5:\"roles\";a:0:{}s:9:\"pagetypes\";a:0:{}s:9:\"posttypes\";a:0:{}s:10:\"membership\";a:0:{}s:11:\"membership2\";a:0:{}s:7:\"prosite\";a:0:{}s:7:\"pt-post\";a:0:{}s:7:\"pt-page\";a:0:{}s:8:\"pt-blogs\";a:0:{}s:12:\"pt-barbeiros\";a:0:{}s:8:\"pt-prods\";a:0:{}s:12:\"tax-category\";a:0:{}s:12:\"tax-post_tag\";a:0:{}s:15:\"tax-post_format\";a:0:{}s:17:\"tax-blog_category\";a:0:{}s:12:\"tax-blog_tag\";a:0:{}s:19:\"tax-barber_category\";a:0:{}s:14:\"tax-barber_tag\";a:0:{}s:20:\"tax-produto_category\";a:0:{}s:15:\"tax-produto_tag\";a:0:{}}s:6:\"always\";b:1;}s:9:\"csb_clone\";a:2:{s:5:\"group\";s:1:\"1\";s:5:\"state\";s:2:\"ok\";}}i:7;a:4:{s:5:\"title\";s:5:\"jonso\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:53:\"custom-post-type-widgets/custom-post-type-widgets.php\";a:2:{i:0;s:24:\"Custom_Post_Type_Widgets\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '9', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'pt_BR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:5:{s:7:\"produto\";a:1:{i:0;s:12:\"categories-5\";}s:16:\"custom-sidebar-1\";a:1:{i:0;s:12:\"categories-7\";}s:19:\"wp_inactive_widgets\";a:8:{i:0;s:12:\"categories-6\";i:1;s:12:\"categories-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:10:\"prod_categ\";a:1:{i:0;s:29:\"custom-post-type-categories-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1572272820;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572287198;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572287200;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572287228;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572287233;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'nonce_key', '+[]57PK)mitmq<dhC^>q~r4Eid9N>JY+^|`*L5,P0Q|hPNJFB76`%+Gt-%&5|.rI', 'no'),
(111, 'nonce_salt', 'Yzl_SHD;.0Dq&w9>n;9v_*j/<sQAO.pW7Aim(+WVV|gi}h`HR`!wh^XAn2mmv=e6', 'no'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1566757652;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(117, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'logged_in_key', '5Xz(bt Vzn%zo+g78)JFscN<Nn{3+X2=m|oc]+9@zwWRUX,=X88.#8yc|WrXs.Si', 'no'),
(125, 'logged_in_salt', '?_bAt02NEZ]py~/{>|&^rQL9~5&GWEo^ZL8mi !o6n(578$?TfQA-,99YFu[!%%p', 'no'),
(130, 'auth_key', ';s1@,OU|.HFIJlEkOl:V+NtgT.FG&&{ _uha,eF0zvsdgAR!*t9^j:tWU#;38S{ ', 'no'),
(131, 'auth_salt', 'HI(u5@Wb]OzXgXy&6spDo>H0xJ$l^gNM-oeFJy:-KwLOO2]H;X: y0k.GcP-&UCH', 'no'),
(149, 'current_theme', 'Facelook Cosméticos', 'yes'),
(150, 'theme_mods_Facelook', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(152, 'can_compress_scripts', '1', 'no'),
(167, 'recently_activated', 'a:0:{}', 'yes'),
(246, 'recovery_mode_email_last_sent', '1571344102', 'yes'),
(255, 'barber_category_children', 'a:0:{}', 'yes'),
(292, 'category_children', 'a:0:{}', 'yes'),
(309, 'blog_category_children', 'a:0:{}', 'yes'),
(503, 'acf_version', '5.8.5', 'yes'),
(567, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:34:\"custom-sidebars/customsidebars.php\";i:1570546668;}s:5:\"queue\";a:2:{s:32:\"6a9b139509f3226afafc03dc81d90bd2\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1570546668;}s:32:\"f21a0d5a84b747557fce042d7049df2b\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1571151468;}}s:4:\"done\";a:0:{}}', 'no'),
(568, 'cs_modifiable', 'a:15:{s:10:\"modifiable\";a:1:{i:0;s:10:\"prod_categ\";}s:7:\"authors\";a:0:{}s:4:\"blog\";a:0:{}s:16:\"category_archive\";a:1:{i:8;a:1:{s:10:\"prod_categ\";s:4:\"cs-1\";}}s:14:\"category_pages\";N;s:14:\"category_posts\";N;s:15:\"category_single\";a:1:{i:8;a:1:{s:10:\"prod_categ\";s:4:\"cs-1\";}}s:4:\"date\";a:0:{}s:8:\"defaults\";N;s:17:\"post_type_archive\";a:0:{}s:15:\"post_type_pages\";N;s:16:\"post_type_single\";a:1:{s:5:\"prods\";a:0:{}}s:6:\"search\";a:0:{}s:4:\"tags\";a:0:{}s:6:\"screen\";a:1:{s:4:\"cs-1\";a:0:{}}}', 'yes'),
(571, 'cs_sidebars', 'a:1:{i:0;a:7:{s:2:\"id\";s:4:\"cs-1\";s:4:\"name\";s:7:\"product\";s:11:\"description\";s:8:\"produtos\";s:13:\"before_widget\";s:0:\"\";s:12:\"before_title\";s:0:\"\";s:12:\"after_widget\";s:0:\"\";s:11:\"after_title\";s:0:\"\";}}', 'yes'),
(579, 'widget_custom-post-type-archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(580, 'widget_custom-post-type-categories', 'a:2:{i:2;a:5:{s:5:\"title\";s:10:\"Categorias\";s:8:\"taxonomy\";s:16:\"produto_category\";s:5:\"count\";b:0;s:12:\"hierarchical\";b:0;s:8:\"dropdown\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(581, 'widget_custom-post-type-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(582, 'widget_custom-post-type-tag-cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(753, 'produto_category_children', 'a:0:{}', 'yes'),
(764, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1572361465', 'no'),
(765, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(781, '_site_transient_timeout_theme_roots', '1572273248', 'no'),
(782, '_site_transient_theme_roots', 'a:1:{s:8:\"Facelook\";s:7:\"/themes\";}', 'no'),
(784, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.4-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.2.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1572271452;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-08-24 16:57:40\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(785, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572271453;s:7:\"checked\";a:1:{s:8:\"Facelook\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(786, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572271455;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.5\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(9, 7, '_edit_lock', '1571757900:1'),
(10, 9, '_edit_lock', '1571757986:1'),
(16, 13, '_wp_attached_file', '2019/08/o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640.jpg'),
(17, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:72:\"2019/08/o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:72:\"o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:72:\"o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:72:\"o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:73:\"o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(30, 23, '_wp_attached_file', '2019/09/img-frutas-1.jpg'),
(31, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1300;s:4:\"file\";s:24:\"2019/09/img-frutas-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-frutas-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-frutas-1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-frutas-1-768x520.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-frutas-1-1024x693.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:693;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 27, '_wp_attached_file', '2019/09/img-bonita-4.jpg'),
(37, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2019/09/img-bonita-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-bonita-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-bonita-4-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-bonita-4-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-bonita-4-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 29, '_edit_lock', '1571758161:1'),
(44, 32, '_wp_attached_file', '2019/09/img-bonita-2.jpg'),
(45, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2019/09/img-bonita-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-bonita-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-bonita-2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-bonita-2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-bonita-2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 34, '_wp_attached_file', '2019/09/img-bonita-3.jpg'),
(49, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2019/09/img-bonita-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-bonita-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-bonita-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-bonita-3-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-bonita-3-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 37, '_wp_attached_file', '2019/09/img-frutas-1-1.jpg'),
(56, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1300;s:4:\"file\";s:26:\"2019/09/img-frutas-1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"img-frutas-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"img-frutas-1-1-300x203.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:203;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"img-frutas-1-1-768x520.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:520;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"img-frutas-1-1-1024x693.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:693;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 38, '_wp_attached_file', '2019/09/img-frutas-2.jpg'),
(58, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2019/09/img-frutas-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-frutas-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-frutas-2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-frutas-2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-frutas-2-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 39, '_wp_attached_file', '2019/09/img-frutas-3.jpg'),
(61, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:24:\"2019/09/img-frutas-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"img-frutas-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"img-frutas-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"img-frutas-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"img-frutas-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(71, 48, '_edit_lock', '1568683985:1'),
(72, 49, '_edit_lock', '1569172450:1'),
(75, 51, '_edit_lock', '1569170952:1'),
(81, 58, '_wp_attached_file', '2019/09/img-bonita-2-1.jpg'),
(82, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:26:\"2019/09/img-bonita-2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"img-bonita-2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"img-bonita-2-1-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"img-bonita-2-1-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"img-bonita-2-1-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 60, '_wp_attached_file', '2019/09/image-widget-2.jpg'),
(86, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:26:\"2019/09/image-widget-2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"image-widget-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 61, '_wp_attached_file', '2019/09/moonlight.jpg'),
(89, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:157;s:6:\"height\";i:157;s:4:\"file\";s:21:\"2019/09/moonlight.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"moonlight-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 66, '_edit_lock', '1571758086:1'),
(109, 71, '_edit_last', '1'),
(110, 71, '_edit_lock', '1571689115:1'),
(129, 87, 'sidebar_id', 'custom-sidebar-1'),
(130, 87, 'sidebar_replacement_id', 'prod_categ'),
(131, 87, 'sidebar_description', 'Barra lateral de produtos'),
(132, 87, 'sidebar_attachments', 'a:2:{i:0;a:6:{s:15:\"menu-item-db-id\";s:1:\"1\";s:19:\"menu-item-object-id\";s:1:\"1\";s:16:\"menu-item-object\";s:16:\"produto_category\";s:19:\"menu-item-parent-id\";s:16:\"produto_category\";s:18:\"menu-item-position\";s:1:\"0\";s:14:\"menu-item-type\";s:12:\"taxonomy_all\";}i:1;a:6:{s:15:\"menu-item-db-id\";s:2:\"29\";s:19:\"menu-item-object-id\";s:2:\"29\";s:16:\"menu-item-object\";s:4:\"page\";s:19:\"menu-item-parent-id\";s:1:\"0\";s:18:\"menu-item-position\";s:1:\"0\";s:14:\"menu-item-type\";s:9:\"post_type\";}}'),
(133, 29, '_edit_last', '1'),
(134, 29, '_cs_replacements', 'a:1:{s:10:\"prod_categ\";s:10:\"prod_categ\";}'),
(135, 88, '_edit_last', '1'),
(136, 88, '_edit_lock', '1571714692:1'),
(140, 92, '_wp_attached_file', '2019/10/defrizante-facelook.jpg'),
(141, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:31:\"2019/10/defrizante-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"defrizante-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 94, '_wp_attached_file', '2019/10/reversor-quimico-profissional-reverse-shock-facelook.jpg'),
(148, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:64:\"2019/10/reversor-quimico-profissional-reverse-shock-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:66:\"reversor-quimico-profissional-reverse-shock-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 96, '_wp_attached_file', '2019/10/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg'),
(158, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:65:\"2019/10/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:67:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 49, '_wp_trash_meta_status', 'publish'),
(161, 49, '_wp_trash_meta_time', '1571341171'),
(162, 49, '_wp_desired_post_slug', 'aaaaa'),
(167, 98, '_wp_attached_file', '2019/10/1080p-Full-HD-Images.jpg'),
(168, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:32:\"2019/10/1080p-Full-HD-Images.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"1080p-Full-HD-Images-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"1080p-Full-HD-Images-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(170, 99, '_wp_attached_file', '2019/10/cropped-1080p-Full-HD-Images.jpg'),
(171, 99, '_wp_attachment_context', 'custom-header'),
(172, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:300;s:4:\"file\";s:40:\"2019/10/cropped-1080p-Full-HD-Images.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-1080p-Full-HD-Images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-1080p-Full-HD-Images-300x47.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"cropped-1080p-Full-HD-Images-768x120.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"cropped-1080p-Full-HD-Images-1024x160.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:98;}'),
(173, 99, '_wp_attachment_custom_header_last_used_Facelook', '1571344236'),
(174, 99, '_wp_attachment_is_custom_header', 'Facelook'),
(177, 103, '_edit_lock', '1571758126:1'),
(201, 107, '_edit_lock', '1571748460:1'),
(202, 108, '_wp_attached_file', '2019/10/dibrow.png'),
(203, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:251;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2019/10/dibrow.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"dibrow-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"dibrow-126x300.png\";s:5:\"width\";i:126;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(204, 107, '_thumbnail_id', '142'),
(205, 107, '_edit_last', '1'),
(206, 107, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(207, 107, '_desc_loc', 'field_5d9b7b4950a6e'),
(208, 107, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.2811486260825!2d-46.75755008554501!3d-23.48638076471154!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cefeb04786f029%3A0xe1be669bcd8572c7!2sR.%20Ana%20Madalena%20Ferreira%2C%2043%20-%20Vila%20Jaragu%C3%A1%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2005160-050!5e0!3m2!1spt-BR!2sbr!4v1571684211693!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(209, 107, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(210, 107, 'facebook', 'https://pt-br.facebook.com/DibrowSantos/'),
(211, 107, '_facebook', 'field_5d9b7c02a227c'),
(212, 107, 'instagram', 'https://www.instagram.com/dibrow_santos/?hl=pt-br'),
(213, 107, '_instagram', 'field_5d9b7c3da227d'),
(214, 107, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5534992501473'),
(215, 107, '_twitter', 'field_5d9b7c76a227e'),
(216, 107, 'telefone', '(34) 99250-1473'),
(217, 107, '_telefone', 'field_5d9ba36188bbb'),
(218, 107, 'mail', 'dibrow_santos@hotmail.com'),
(219, 107, '_mail', 'field_5d9ba40288bbc'),
(220, 107, 'endereco', 'R. Ana Madalena Ferreira - 43'),
(221, 107, '_endereco', 'field_5d9ba934fcb70'),
(222, 109, '_edit_lock', '1571748033:1'),
(223, 109, '_edit_last', '1'),
(224, 109, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n '),
(225, 109, '_desc_loc', 'field_5d9b7b4950a6e'),
(226, 109, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571685947211!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(227, 109, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(228, 109, 'facebook', ''),
(229, 109, '_facebook', 'field_5d9b7c02a227c'),
(230, 109, 'instagram', 'https://www.instagram.com/cristiano_fhagundes/?hl=pt-br'),
(231, 109, '_instagram', 'field_5d9b7c3da227d'),
(232, 109, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511975204927'),
(233, 109, '_twitter', 'field_5d9b7c76a227e'),
(234, 109, 'telefone', '(11) 97520-4927'),
(235, 109, '_telefone', 'field_5d9ba36188bbb'),
(236, 109, 'mail', 'fhagundebarber@yahoo.com.br'),
(237, 109, '_mail', 'field_5d9ba40288bbc'),
(238, 109, 'endereco', 'R. Martim Afonso - 355'),
(239, 109, '_endereco', 'field_5d9ba934fcb70'),
(240, 110, '_wp_attached_file', '2019/10/cristiano.png'),
(241, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:483;s:6:\"height\";i:476;s:4:\"file\";s:21:\"2019/10/cristiano.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"cristiano-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"cristiano-300x296.png\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(242, 109, '_thumbnail_id', '147'),
(243, 111, '_edit_lock', '1571748482:1'),
(244, 112, '_wp_attached_file', '2019/10/agata.png'),
(245, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:567;s:6:\"height\";i:598;s:4:\"file\";s:17:\"2019/10/agata.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"agata-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"agata-284x300.png\";s:5:\"width\";i:284;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(246, 111, '_thumbnail_id', '146'),
(247, 111, '_edit_last', '1'),
(248, 111, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(249, 111, '_desc_loc', 'field_5d9b7b4950a6e'),
(250, 111, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571686572625!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(251, 111, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(252, 111, 'facebook', ''),
(253, 111, '_facebook', 'field_5d9b7c02a227c'),
(254, 111, 'instagram', 'https://www.instagram.com/agatasantos93/?hl=pt-br'),
(255, 111, '_instagram', 'field_5d9b7c3da227d'),
(256, 111, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511991231643'),
(257, 111, '_twitter', 'field_5d9b7c76a227e'),
(258, 111, 'telefone', '(11) 99123-1643'),
(259, 111, '_telefone', 'field_5d9ba36188bbb'),
(260, 111, 'mail', 'agatasantos93@gmail.com'),
(261, 111, '_mail', 'field_5d9ba40288bbc'),
(262, 111, 'endereco', ' R. Martim Afonso, 355'),
(263, 111, '_endereco', 'field_5d9ba934fcb70'),
(264, 113, '_edit_lock', '1571748496:1'),
(265, 114, '_wp_attached_file', '2019/10/heverson.png'),
(266, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:481;s:6:\"height\";i:587;s:4:\"file\";s:20:\"2019/10/heverson.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"heverson-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"heverson-246x300.png\";s:5:\"width\";i:246;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(267, 113, '_edit_last', '1'),
(268, 113, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(269, 113, '_desc_loc', 'field_5d9b7b4950a6e'),
(270, 113, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.9248223303666!2d-46.66023508554472!3d-23.49921716518416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef7ecd318112f%3A0x4299999cab53cf17!2sR.%20Ouro%20Grosso%2C%201158%20-%20Parque%20Peruche%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2002531-001!5e0!3m2!1spt-BR!2sbr!4v1571686688865!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(271, 113, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(272, 113, 'facebook', 'https://www.facebook.com/Heverson.Cabeleireiro'),
(273, 113, '_facebook', 'field_5d9b7c02a227c'),
(274, 113, 'instagram', 'https://www.instagram.com/barbeiroheverson/?hl=pt-br'),
(275, 113, '_instagram', 'field_5d9b7c3da227d'),
(276, 113, 'twitter', ''),
(277, 113, '_twitter', 'field_5d9b7c76a227e'),
(278, 113, 'telefone', '(11) 94521-6734'),
(279, 113, '_telefone', 'field_5d9ba36188bbb'),
(280, 113, 'mail', 'heversonprofessional@gmail.com'),
(281, 113, '_mail', 'field_5d9ba40288bbc'),
(282, 113, 'endereco', 'R. Ouro Grosso - 1158'),
(283, 113, '_endereco', 'field_5d9ba934fcb70'),
(284, 113, '_thumbnail_id', '145'),
(285, 115, '_edit_lock', '1571748508:1'),
(286, 115, '_edit_last', '1'),
(287, 115, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(288, 115, '_desc_loc', 'field_5d9b7b4950a6e'),
(289, 115, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.7230144936434!2d-46.715950185545495!3d-23.470453664125422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef979fe9151dd%3A0x6110bf85e88a573f!2sR.%20Prof.%20Jos%C3%A9%20Louren%C3%A7o%2C%20562%20-%20Vila%20Zat%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2002977-020!5e0!3m2!1spt-BR!2sbr!4v1571687093571!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(290, 115, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(291, 115, 'facebook', 'https://www.facebook.com/Clebinhoo.ferreira'),
(292, 115, '_facebook', 'field_5d9b7c02a227c'),
(293, 115, 'instagram', 'https://www.instagram.com/merciobarberoficial/?'),
(294, 115, '_instagram', 'field_5d9b7c3da227d'),
(295, 115, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=551175532008'),
(296, 115, '_twitter', 'field_5d9b7c76a227e'),
(297, 115, 'telefone', '(11) 7553-2008'),
(298, 115, '_telefone', 'field_5d9ba36188bbb'),
(299, 115, 'mail', 'barber.mercio32@gmail.com'),
(300, 115, '_mail', 'field_5d9ba40288bbc'),
(301, 115, 'endereco', 'R. Prof. José Lourenço - 562 '),
(302, 115, '_endereco', 'field_5d9ba934fcb70'),
(303, 116, '_wp_attached_file', '2019/10/mercio.png'),
(304, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:597;s:4:\"file\";s:18:\"2019/10/mercio.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"mercio-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"mercio-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 115, '_thumbnail_id', '116'),
(306, 117, '_edit_lock', '1571748522:1'),
(307, 117, '_edit_last', '1'),
(308, 117, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(309, 117, '_desc_loc', 'field_5d9b7b4950a6e'),
(310, 117, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571686572625!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(311, 117, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(312, 117, 'facebook', ''),
(313, 117, '_facebook', 'field_5d9b7c02a227c'),
(314, 117, 'instagram', 'https://www.instagram.com/miriambarberfemy/?hl=pt-br'),
(315, 117, '_instagram', 'field_5d9b7c3da227d'),
(316, 117, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511980509750'),
(317, 117, '_twitter', 'field_5d9b7c76a227e'),
(318, 117, 'telefone', '(11) 98050-9750'),
(319, 117, '_telefone', 'field_5d9ba36188bbb'),
(320, 117, 'mail', 'miriam.barber123@hotmail.com'),
(321, 117, '_mail', 'field_5d9ba40288bbc'),
(322, 117, 'endereco', 'R. nossa senhora do Ó - 532'),
(323, 117, '_endereco', 'field_5d9ba934fcb70'),
(324, 118, '_wp_attached_file', '2019/10/miriam.png'),
(325, 118, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:599;s:6:\"height\";i:597;s:4:\"file\";s:18:\"2019/10/miriam.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"miriam-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"miriam-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(326, 117, '_thumbnail_id', '143'),
(342, 119, '_edit_lock', '1571687912:1'),
(343, 120, '_wp_attached_file', '2019/10/low-e-no-poo-1280x640.jpg'),
(344, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:640;s:4:\"file\";s:33:\"2019/10/low-e-no-poo-1280x640.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"low-e-no-poo-1280x640-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 119, '_thumbnail_id', '120'),
(346, 121, '_edit_lock', '1571688408:1'),
(347, 122, '_wp_attached_file', '2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg'),
(348, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:456;s:4:\"file\";s:52:\"2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 121, '_thumbnail_id', '122'),
(350, 123, '_edit_lock', '1571688543:1'),
(351, 124, '_wp_attached_file', '2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg'),
(352, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1273;s:6:\"height\";i:640;s:4:\"file\";s:57:\"2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-768x386.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:386;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"Como.fazer_.a.reconstrução.capilar-1273x640-1024x515.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 123, '_thumbnail_id', '124'),
(369, 125, '_edit_lock', '1571689032:1'),
(370, 126, '_edit_last', '1'),
(371, 126, '_edit_lock', '1571696000:1'),
(372, 9, '_edit_last', '1'),
(373, 9, 'ntel', '(11) 95496-5600'),
(374, 9, '_ntel', 'field_5dae1307bf467'),
(375, 9, 'endface', 'R. Armando Martino - 360'),
(376, 9, '_endface', 'field_5dae13b68bb32'),
(377, 9, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/IbJjgKz-1qQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(378, 9, '_video', 'field_5dae13ef8bb33'),
(379, 9, 'vicanal', 'https://www.youtube.com/watch?v=IbJjgKz-1qQ&t'),
(380, 9, '_vicanal', 'field_5dae145a8bb34'),
(381, 9, 'wp', ''),
(382, 9, '_wp', 'field_5dae14ad8bb35'),
(383, 132, 'ntel', '(11) 95496-5600'),
(384, 132, '_ntel', 'field_5dae1307bf467'),
(385, 132, 'endface', 'R. Armando Martino - 360'),
(386, 132, '_endface', 'field_5dae13b68bb32'),
(387, 132, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/IbJjgKz-1qQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(388, 132, '_video', 'field_5dae13ef8bb33'),
(389, 132, 'vicanal', 'https://www.youtube.com/watch?v=IbJjgKz-1qQ&t'),
(390, 132, '_vicanal', 'field_5dae145a8bb34'),
(391, 132, 'wp', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(392, 132, '_wp', 'field_5dae14ad8bb35'),
(393, 133, '_wp_attached_file', '2019/10/muie2.jpg'),
(394, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/10/muie2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"muie2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"muie2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"muie2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"muie2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1507476909\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(395, 134, '_wp_attached_file', '2019/10/homi1.jpg'),
(396, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/10/homi1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"homi1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"homi1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"homi1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"homi1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:57:\"Young employee with beard and moustache looking at camera\";s:17:\"created_timestamp\";s:10:\"1498554454\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:11:\"Perfect man\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:28:{i:0;s:8:\"business\";i:1;s:6:\"barber\";i:2;s:10:\"barbershop\";i:3;s:3:\"man\";i:4;s:6:\"beauty\";i:5;s:8:\"grooming\";i:6;s:12:\"professional\";i:7;s:12:\"contemporary\";i:8;s:5:\"young\";i:9;s:5:\"adult\";i:10;s:6:\"luxury\";i:11;s:10:\"profession\";i:12;s:3:\"guy\";i:13;s:4:\"neat\";i:14;s:7:\"natural\";i:15;s:4:\"park\";i:16;s:7:\"outdoor\";i:17;s:7:\"perfect\";i:18;s:9:\"moustache\";i:19;s:11:\"businessman\";i:20;s:8:\"elegance\";i:21;s:4:\"posh\";i:22;s:6:\"classy\";i:23;s:8:\"movember\";i:24;s:8:\"unshaven\";i:25;s:7:\"looking\";i:26;s:8:\"employee\";i:27;s:12:\"entrepreneur\";}}}'),
(397, 135, '_wp_attached_file', '2019/10/muie1.jpg'),
(398, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/10/muie1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"muie1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"muie1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"muie1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"muie1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"ILCE-7M2\";s:7:\"caption\";s:103:\"handsome young bearded guy sitting in an armchair in a beauty salon and the girl near him cuts his hair\";s:17:\"created_timestamp\";s:10:\"1496384641\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:20:\"guy in the barbercos\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:7:\"haircut\";i:1;s:6:\"barber\";i:2;s:3:\"man\";i:3;s:5:\"young\";i:4;s:4:\"male\";i:5;s:5:\"beard\";i:6;s:9:\"hairstyle\";i:7;s:5:\"salon\";i:8;s:8:\"handsome\";i:9;s:4:\"hair\";i:10;s:6:\"client\";i:11;s:8:\"customer\";i:12;s:5:\"style\";i:13;s:5:\"beaty\";i:14;s:6:\"siting\";i:15;s:7:\"fashion\";i:16;s:12:\"professional\";i:17;s:5:\"adult\";i:18;s:8:\"straight\";i:19;s:4:\"face\";i:20;s:10:\"attractive\";i:21;s:10:\"barbershop\";i:22;s:7:\"stylist\";i:23;s:5:\"razor\";i:24;s:11:\"fashionable\";i:25;s:7:\"closeup\";i:26;s:9:\"treatment\";i:27;s:3:\"guy\";i:28;s:6:\"modern\";i:29;s:4:\"hand\";i:30;s:4:\"foam\";i:31;s:8:\"scissors\";i:32;s:5:\"white\";i:33;s:6:\"master\";i:34;s:11:\"preparation\";i:35;s:4:\"gown\";i:36;s:5:\"towel\";i:37;s:5:\"black\";i:38;s:5:\"woman\";i:39;s:3:\"two\";i:40;s:5:\"beaty\";i:41;s:4:\"shop\";i:42;s:5:\"shave\";i:43;s:4:\"comb\";i:44;s:4:\"care\";i:45;s:11:\"hairdresser\";i:46;s:6:\"people\";i:47;s:6:\"inside\";i:48;s:4:\"room\";}}}'),
(399, 136, '_wp_attached_file', '2019/10/homi2.jpg'),
(400, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:17:\"2019/10/homi2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"homi2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"homi2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"homi2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"homi2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:18:\"Hrecheniuk Oleksii\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:57:\"Two stylish bearded men on the background of the old town\";s:17:\"created_timestamp\";s:10:\"1430926686\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:58:\"Stylish cool bearded man in the background of the old city\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:43:{i:0;s:5:\"adult\";i:1;s:11:\"aspirations\";i:2;s:10:\"background\";i:3;s:5:\"beard\";i:4;s:6:\"beauty\";i:5;s:9:\"caucasian\";i:6;s:8:\"clothing\";i:7;s:4:\"cold\";i:8;s:3:\"day\";i:9;s:9:\"ethnicity\";i:10;s:7:\"fashion\";i:11;s:4:\"fear\";i:12;s:7:\"glasses\";i:13;s:3:\"god\";i:14;s:4:\"hair\";i:15;s:6:\"health\";i:16;s:5:\"human\";i:17;s:6:\"jacket\";i:18;s:9:\"lifestyle\";i:19;s:7:\"looking\";i:20;s:8:\"majestic\";i:21;s:4:\"male\";i:22;s:5:\"males\";i:23;s:3:\"man\";i:24;s:3:\"men\";i:25;s:3:\"old\";i:26;s:3:\"one\";i:27;s:6:\"people\";i:28;s:6:\"person\";i:29;s:4:\"plan\";i:30;s:6:\"posing\";i:31;s:5:\"power\";i:32;s:4:\"rust\";i:33;s:6:\"strong\";i:34;s:5:\"style\";i:35;s:4:\"tall\";i:36;s:5:\"three\";i:37;s:4:\"town\";i:38;s:3:\"two\";i:39;s:5:\"watch\";i:40;s:5:\"white\";i:41;s:6:\"wisdom\";i:42;s:8:\"wrinkles\";}}}'),
(401, 137, '_wp_attached_file', '2019/10/homi3.jpg'),
(402, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:799;s:4:\"file\";s:17:\"2019/10/homi3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"homi3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"homi3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"homi3-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"homi3-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(403, 138, '_wp_attached_file', '2019/10/homi3-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(404, 138, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1800;s:6:\"height\";i:1199;s:4:\"file\";s:19:\"2019/10/homi3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi3-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi3-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"homi3-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(405, 139, '_wp_attached_file', '2019/10/homi3-2.jpg'),
(406, 139, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2400;s:6:\"height\";i:1600;s:4:\"file\";s:19:\"2019/10/homi3-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi3-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi3-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"homi3-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(407, 140, '_wp_attached_file', '2019/10/homi3-3.jpg'),
(408, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1450;s:6:\"height\";i:1561;s:4:\"file\";s:19:\"2019/10/homi3-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi3-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi3-3-279x300.jpg\";s:5:\"width\";i:279;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi3-3-768x827.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:827;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"homi3-3-951x1024.jpg\";s:5:\"width\";i:951;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(409, 141, '_wp_attached_file', '2019/10/homi3-4.jpg'),
(410, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1650;s:6:\"height\";i:1561;s:4:\"file\";s:19:\"2019/10/homi3-4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi3-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi3-4-300x284.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi3-4-768x727.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:727;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"homi3-4-1024x969.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:969;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(411, 142, '_wp_attached_file', '2019/10/homi3-5.jpg'),
(412, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:1400;s:4:\"file\";s:19:\"2019/10/homi3-5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi3-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi3-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi3-5-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"homi3-5-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:29:\"Bearded man drinking in a bar\";s:17:\"created_timestamp\";s:10:\"1525270355\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:6:\"0.0025\";s:5:\"title\";s:29:\"Bearded man drinking in a bar\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:3:\"man\";i:1;s:5:\"beard\";i:2;s:4:\"hair\";i:3;s:8:\"mustache\";i:4;s:9:\"mustachio\";i:5;s:5:\"color\";i:6;s:7:\"stylish\";i:7;s:7:\"fashion\";i:8;s:6:\"people\";i:9;s:9:\"caucasian\";i:10;s:4:\"male\";i:11;s:7:\"bearded\";i:12;s:6:\"person\";i:13;s:10:\"appearance\";i:14;s:8:\"handsome\";i:15;s:4:\"town\";i:16;s:5:\"relax\";i:17;s:4:\"posh\";i:18;s:4:\"mode\";i:19;s:6:\"denims\";i:20;s:5:\"shirt\";i:21;s:5:\"white\";i:22;s:4:\"mood\";i:23;s:6:\"casual\";i:24;s:7:\"success\";i:25;s:6:\"summer\";i:26;s:3:\"day\";i:27;s:3:\"sun\";i:28;s:8:\"outdoors\";i:29;s:7:\"meeting\";i:30;s:5:\"black\";i:31;s:7:\"smiling\";i:32;s:8:\"thinking\";i:33;s:5:\"young\";i:34;s:3:\"fun\";i:35;s:5:\"model\";i:36;s:8:\"laughing\";i:37;s:3:\"guy\";i:38;s:4:\"face\";i:39;s:9:\"lifestyle\";i:40;s:8:\"business\";i:41;s:4:\"cafe\";i:42;s:12:\"business man\";i:43;s:10:\"restaurant\";i:44;s:7:\"sitting\";i:45;s:10:\"sunglasses\";i:46;s:8:\"portrait\";i:47;s:8:\"drinking\";i:48;s:8:\"cocktail\";i:49;s:8:\"beverage\";}}}'),
(413, 143, '_wp_attached_file', '2019/10/muie2-1.jpg'),
(414, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:797;s:4:\"file\";s:19:\"2019/10/muie2-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"muie2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"muie2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"muie2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1507476909\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(415, 144, '_edit_lock', '1571709514:1'),
(416, 145, '_wp_attached_file', '2019/10/homi1-1.jpg'),
(417, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:797;s:4:\"file\";s:19:\"2019/10/homi1-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:57:\"Young employee with beard and moustache looking at camera\";s:17:\"created_timestamp\";s:10:\"1498554454\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:6:\"0.0125\";s:5:\"title\";s:11:\"Perfect man\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:28:{i:0;s:8:\"business\";i:1;s:6:\"barber\";i:2;s:10:\"barbershop\";i:3;s:3:\"man\";i:4;s:6:\"beauty\";i:5;s:8:\"grooming\";i:6;s:12:\"professional\";i:7;s:12:\"contemporary\";i:8;s:5:\"young\";i:9;s:5:\"adult\";i:10;s:6:\"luxury\";i:11;s:10:\"profession\";i:12;s:3:\"guy\";i:13;s:4:\"neat\";i:14;s:7:\"natural\";i:15;s:4:\"park\";i:16;s:7:\"outdoor\";i:17;s:7:\"perfect\";i:18;s:9:\"moustache\";i:19;s:11:\"businessman\";i:20;s:8:\"elegance\";i:21;s:4:\"posh\";i:22;s:6:\"classy\";i:23;s:8:\"movember\";i:24;s:8:\"unshaven\";i:25;s:7:\"looking\";i:26;s:8:\"employee\";i:27;s:12:\"entrepreneur\";}}}'),
(418, 146, '_wp_attached_file', '2019/10/muie1-1.jpg'),
(419, 146, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:785;s:6:\"height\";i:785;s:4:\"file\";s:19:\"2019/10/muie1-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"muie1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"muie1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"muie1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"ILCE-7M2\";s:7:\"caption\";s:103:\"handsome young bearded guy sitting in an armchair in a beauty salon and the girl near him cuts his hair\";s:17:\"created_timestamp\";s:10:\"1496384641\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:20:\"guy in the barbercos\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:49:{i:0;s:7:\"haircut\";i:1;s:6:\"barber\";i:2;s:3:\"man\";i:3;s:5:\"young\";i:4;s:4:\"male\";i:5;s:5:\"beard\";i:6;s:9:\"hairstyle\";i:7;s:5:\"salon\";i:8;s:8:\"handsome\";i:9;s:4:\"hair\";i:10;s:6:\"client\";i:11;s:8:\"customer\";i:12;s:5:\"style\";i:13;s:5:\"beaty\";i:14;s:6:\"siting\";i:15;s:7:\"fashion\";i:16;s:12:\"professional\";i:17;s:5:\"adult\";i:18;s:8:\"straight\";i:19;s:4:\"face\";i:20;s:10:\"attractive\";i:21;s:10:\"barbershop\";i:22;s:7:\"stylist\";i:23;s:5:\"razor\";i:24;s:11:\"fashionable\";i:25;s:7:\"closeup\";i:26;s:9:\"treatment\";i:27;s:3:\"guy\";i:28;s:6:\"modern\";i:29;s:4:\"hand\";i:30;s:4:\"foam\";i:31;s:8:\"scissors\";i:32;s:5:\"white\";i:33;s:6:\"master\";i:34;s:11:\"preparation\";i:35;s:4:\"gown\";i:36;s:5:\"towel\";i:37;s:5:\"black\";i:38;s:5:\"woman\";i:39;s:3:\"two\";i:40;s:5:\"beaty\";i:41;s:4:\"shop\";i:42;s:5:\"shave\";i:43;s:4:\"comb\";i:44;s:4:\"care\";i:45;s:11:\"hairdresser\";i:46;s:6:\"people\";i:47;s:6:\"inside\";i:48;s:4:\"room\";}}}'),
(420, 147, '_wp_attached_file', '2019/10/homi2-1.jpg'),
(421, 147, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:787;s:6:\"height\";i:787;s:4:\"file\";s:19:\"2019/10/homi2-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"homi2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"homi2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"homi2-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"3.5\";s:6:\"credit\";s:18:\"Hrecheniuk Oleksii\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:57:\"Two stylish bearded men on the background of the old town\";s:17:\"created_timestamp\";s:10:\"1430926686\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"35\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.001\";s:5:\"title\";s:58:\"Stylish cool bearded man in the background of the old city\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:43:{i:0;s:5:\"adult\";i:1;s:11:\"aspirations\";i:2;s:10:\"background\";i:3;s:5:\"beard\";i:4;s:6:\"beauty\";i:5;s:9:\"caucasian\";i:6;s:8:\"clothing\";i:7;s:4:\"cold\";i:8;s:3:\"day\";i:9;s:9:\"ethnicity\";i:10;s:7:\"fashion\";i:11;s:4:\"fear\";i:12;s:7:\"glasses\";i:13;s:3:\"god\";i:14;s:4:\"hair\";i:15;s:6:\"health\";i:16;s:5:\"human\";i:17;s:6:\"jacket\";i:18;s:9:\"lifestyle\";i:19;s:7:\"looking\";i:20;s:8:\"majestic\";i:21;s:4:\"male\";i:22;s:5:\"males\";i:23;s:3:\"man\";i:24;s:3:\"men\";i:25;s:3:\"old\";i:26;s:3:\"one\";i:27;s:6:\"people\";i:28;s:6:\"person\";i:29;s:4:\"plan\";i:30;s:6:\"posing\";i:31;s:5:\"power\";i:32;s:4:\"rust\";i:33;s:6:\"strong\";i:34;s:5:\"style\";i:35;s:4:\"tall\";i:36;s:5:\"three\";i:37;s:4:\"town\";i:38;s:3:\"two\";i:39;s:5:\"watch\";i:40;s:5:\"white\";i:41;s:6:\"wisdom\";i:42;s:8:\"wrinkles\";}}}'),
(422, 148, '_edit_lock', '1571710836:1'),
(423, 149, '_wp_attached_file', '2019/10/po-descolorante-moon-light-facelook.jpg'),
(424, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:47:\"2019/10/po-descolorante-moon-light-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"po-descolorante-moon-light-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 148, '_thumbnail_id', '149'),
(426, 148, '_edit_last', '1'),
(427, 148, 'use', '1-Preparo: Em um recipiente não metálico misture na proporção de 1 medida de pó descolorante para 2 medidas de Emulsão Oxidante Moonlight 35 volumes – matizadora da Facelook Profissional, ou na volumagem adequada para técnica escolhida, até obter uma consistência homogenia e cremosa.\r\n\r\n2- Aplicação: Aplique a mistura com um pincel e use luvas adequadas, faça uma prova de toque antes de aplicar o produto. O tempo de ação deverá ser controlado pelo profissional em função do grau de clareamento desejado. Após o tempo de pausa, enxaguar com água morna e shampoo. Em cabelos fragilizados, caso emborrache ou fique elástico os fios, use o Reverse Shock da Facelook Profissional (o salva vidas dos cabeleireiros), restauração instantânea e permanente.\r\n\r\n3-Matização:  Para matização, use a máscara Carbon Power da Facelook Cosméticos, além de hidratar os fios, ela retira o amarelado indesejado, deixando da forma que o seu cliente deseja.\r\n\r\nEmbalagem PÓ DESCOLORANTE MOONLIGHT FACELOOK PROFISSIONAL 500 G'),
(428, 148, '_use', 'field_5d9cb4568af57'),
(429, 150, '_edit_lock', '1571711622:1'),
(430, 151, '_wp_attached_file', '2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg'),
(431, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:60:\"2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 150, '_thumbnail_id', '151'),
(433, 150, '_edit_last', '1'),
(434, 150, 'use', '1 – Lavar os cabelos com Shampoo de Limpeza Profunda de 2 a 3 vezes deixando as cutículas bem abertas.\r\n2 – Separe os cabelos em mechas.\r\n3 – Aplique o BBtox Matizador Facelook mecha a mecha enluvando bem, deixe agir de 10 a 20 minutos (para cabelo\r\nresistente até 30 minutos).\r\n4 – Lavar bem o cabelo com água, tirando todo o excesso do produto.\r\n5 – Escovar e pranchar de 12 a 18 vezes.\r\n\r\nEmbalagem BBtox Matizador Facelook Profissional 1kg.'),
(435, 150, '_use', 'field_5d9cb4568af57'),
(436, 152, '_edit_lock', '1571711928:1'),
(437, 153, '_wp_attached_file', '2019/10/banho-de-verniz-parfait-liss-facelook.jpg'),
(438, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:49:\"2019/10/banho-de-verniz-parfait-liss-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"banho-de-verniz-parfait-liss-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 152, '_thumbnail_id', '153'),
(440, 152, '_edit_last', '1'),
(441, 152, 'use', 'Após lavar, com shampoo de sua preferência, aplicar com um pincel o Banho De Verniz Pró Repair System Parfait\r\nLisse Facelook do comprimento até as pontas, massageando os fios com suavidade. Deixar agir por 10\r\nminutos para uma máxima hidratação e então enxaguar com água em abundância. Se desejar, pode finalizar com\r\numa escova e prancha.\r\n\r\nEsse tratamento é indicado, após a Selagem Parfait Lisse Facelook Profissional. Para manter por mais tempo o\r\nefeito liso.\r\n\r\nEmbalagem Banho De Verniz Pró Repair System\r\nParfait Lisse Facelook  1kg.'),
(442, 152, '_use', 'field_5d9cb4568af57'),
(443, 154, '_edit_last', '1'),
(444, 154, '_edit_lock', '1571715080:1'),
(445, 158, '_wp_attached_file', '2019/10/muie2-2.jpg'),
(446, 158, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:797;s:6:\"height\";i:797;s:4:\"file\";s:19:\"2019/10/muie2-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"muie2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"muie2-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"muie2-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.8\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1507476909\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(447, 29, 'imgf', '158'),
(448, 29, '_imgf', 'field_5dae749c0fc72'),
(449, 29, 'imgm', '147'),
(450, 29, '_imgm', 'field_5dae74d10fc73'),
(451, 29, 'imgp', '116'),
(452, 29, '_imgp', 'field_5dae75110fc74'),
(453, 159, 'imgf', '158'),
(454, 159, '_imgf', 'field_5dae749c0fc72'),
(455, 159, 'imgm', '147'),
(456, 159, '_imgm', 'field_5dae74d10fc73'),
(457, 159, 'imgp', '116'),
(458, 159, '_imgp', 'field_5dae75110fc74'),
(459, 160, 'imgf', '158'),
(460, 160, '_imgf', 'field_5dae749c0fc72'),
(461, 160, 'imgm', '147'),
(462, 160, '_imgm', 'field_5dae74d10fc73'),
(463, 160, 'imgp', '116'),
(464, 160, '_imgp', 'field_5dae75110fc74'),
(465, 29, 'parc', '145'),
(466, 29, '_parc', 'field_5dae77b7bf78f'),
(467, 162, 'imgf', '158'),
(468, 162, '_imgf', 'field_5dae749c0fc72'),
(469, 162, 'imgm', '147'),
(470, 162, '_imgm', 'field_5dae74d10fc73'),
(471, 162, 'imgp', '116'),
(472, 162, '_imgp', 'field_5dae75110fc74'),
(473, 162, 'parc', '145'),
(474, 162, '_parc', 'field_5dae77b7bf78f'),
(475, 29, 'banner', '166'),
(476, 29, '_banner', 'field_5dae786863d29'),
(477, 164, 'imgf', '158'),
(478, 164, '_imgf', 'field_5dae749c0fc72'),
(479, 164, 'imgm', '147'),
(480, 164, '_imgm', 'field_5dae74d10fc73'),
(481, 164, 'imgp', '116'),
(482, 164, '_imgp', 'field_5dae75110fc74'),
(483, 164, 'parc', '145'),
(484, 164, '_parc', 'field_5dae77b7bf78f'),
(485, 164, 'banner', '13'),
(486, 164, '_banner', 'field_5dae786863d29'),
(487, 165, 'imgf', '158'),
(488, 165, '_imgf', 'field_5dae749c0fc72'),
(489, 165, 'imgm', '147'),
(490, 165, '_imgm', 'field_5dae74d10fc73'),
(491, 165, 'imgp', '116'),
(492, 165, '_imgp', 'field_5dae75110fc74'),
(493, 165, 'parc', '145'),
(494, 165, '_parc', 'field_5dae77b7bf78f'),
(495, 165, 'banner', '13'),
(496, 165, '_banner', 'field_5dae786863d29'),
(497, 166, '_wp_attached_file', '2019/10/2973207.jpg'),
(498, 166, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1195;s:6:\"height\";i:453;s:4:\"file\";s:19:\"2019/10/2973207.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"2973207-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"2973207-300x114.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"2973207-768x291.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:291;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"2973207-1024x388.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:388;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"11\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D800\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1566811870\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"85\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(499, 167, 'imgf', '158'),
(500, 167, '_imgf', 'field_5dae749c0fc72'),
(501, 167, 'imgm', '147'),
(502, 167, '_imgm', 'field_5dae74d10fc73'),
(503, 167, 'imgp', '116'),
(504, 167, '_imgp', 'field_5dae75110fc74'),
(505, 167, 'parc', '145'),
(506, 167, '_parc', 'field_5dae77b7bf78f'),
(507, 167, 'banner', '166'),
(508, 167, '_banner', 'field_5dae786863d29'),
(509, 169, '_edit_last', '1'),
(510, 169, '_edit_lock', '1571758620:1'),
(511, 9, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(512, 9, '_apidw', 'field_5daf1df3d39cd'),
(513, 9, 'telefone_contato', '(11) 94002-8922'),
(514, 9, '_telefone_contato', 'field_5daf1e20d39ce'),
(515, 9, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(516, 9, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(517, 173, 'ntel', '(11) 95496-5600'),
(518, 173, '_ntel', 'field_5dae1307bf467'),
(519, 173, 'endface', 'R. Armando Martino - 360'),
(520, 173, '_endface', 'field_5dae13b68bb32'),
(521, 173, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/IbJjgKz-1qQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(522, 173, '_video', 'field_5dae13ef8bb33'),
(523, 173, 'vicanal', 'https://www.youtube.com/watch?v=IbJjgKz-1qQ&t'),
(524, 173, '_vicanal', 'field_5dae145a8bb34'),
(525, 173, 'wp', ''),
(526, 173, '_wp', 'field_5dae14ad8bb35'),
(527, 173, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(528, 173, '_apidw', 'field_5daf1df3d39cd'),
(529, 173, 'telefone_contato', '(11) 94002-8922'),
(530, 173, '_telefone_contato', 'field_5daf1e20d39ce'),
(531, 173, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(532, 173, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(533, 7, '_edit_last', '1'),
(534, 7, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(535, 7, '_apidw', 'field_5daf1df3d39cd'),
(536, 7, 'telefone_contato', '(11) 94002-8922'),
(537, 7, '_telefone_contato', 'field_5daf1e20d39ce'),
(538, 7, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(539, 7, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(540, 174, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(541, 174, '_apidw', 'field_5daf1df3d39cd'),
(542, 174, 'telefone_contato', '(11) 94002-8922'),
(543, 174, '_telefone_contato', 'field_5daf1e20d39ce'),
(544, 174, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(545, 174, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(546, 66, '_edit_last', '1'),
(547, 66, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(548, 66, '_apidw', 'field_5daf1df3d39cd'),
(549, 66, 'telefone_contato', '(11) 94002-8922'),
(550, 66, '_telefone_contato', 'field_5daf1e20d39ce'),
(551, 66, 'localiza_rdp', 'Rua qualquer ai só pra testar'),
(552, 66, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(553, 175, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(554, 175, '_apidw', 'field_5daf1df3d39cd'),
(555, 175, 'telefone_contato', '(11) 94002-8922'),
(556, 175, '_telefone_contato', 'field_5daf1e20d39ce'),
(557, 175, 'localiza_rdp', 'Rua qualquer ai só pra testar'),
(558, 175, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(559, 103, '_edit_last', '1'),
(560, 103, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(561, 103, '_apidw', 'field_5daf1df3d39cd'),
(562, 103, 'telefone_contato', '(11) 94002-8922'),
(563, 103, '_telefone_contato', 'field_5daf1e20d39ce'),
(564, 103, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(565, 103, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(566, 176, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(567, 176, '_apidw', 'field_5daf1df3d39cd'),
(568, 176, 'telefone_contato', '(11) 94002-8922'),
(569, 176, '_telefone_contato', 'field_5daf1e20d39ce'),
(570, 176, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(571, 176, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(572, 29, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(573, 29, '_apidw', 'field_5daf1df3d39cd'),
(574, 29, 'telefone_contato', '(11) 94002-8922'),
(575, 29, '_telefone_contato', 'field_5daf1e20d39ce'),
(576, 29, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(577, 29, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(578, 177, 'imgf', '158'),
(579, 177, '_imgf', 'field_5dae749c0fc72'),
(580, 177, 'imgm', '147'),
(581, 177, '_imgm', 'field_5dae74d10fc73'),
(582, 177, 'imgp', '116'),
(583, 177, '_imgp', 'field_5dae75110fc74'),
(584, 177, 'parc', '145'),
(585, 177, '_parc', 'field_5dae77b7bf78f'),
(586, 177, 'banner', '166'),
(587, 177, '_banner', 'field_5dae786863d29'),
(588, 177, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(589, 177, '_apidw', 'field_5daf1df3d39cd'),
(590, 177, 'telefone_contato', '(11) 94002-8922'),
(591, 177, '_telefone_contato', 'field_5daf1e20d39ce'),
(592, 177, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(593, 177, '_localiza_rdp', 'field_5daf1e9cd39d3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(7, 1, '2019-08-25 15:30:14', '2019-08-25 18:30:14', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-10-22 12:27:09', '2019-10-22 15:27:09', '', 0, 'http://localhost/Facelook/?page_id=7', 0, 'page', '', 0),
(8, 1, '2019-08-25 15:30:14', '2019-08-25 18:30:14', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-08-25 15:30:14', '2019-08-25 18:30:14', '', 7, 'http://localhost/Facelook/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-10-22 12:26:24', '2019-10-22 15:26:24', '', 0, 'http://localhost/Facelook/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 9, 'http://localhost/Facelook/9-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-08-25 16:11:52', '2019-08-25 19:11:52', '', 'o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640', '', 'inherit', 'open', 'closed', '', 'o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640', '', '', '2019-10-22 00:34:23', '2019-10-22 03:34:23', '', 29, 'http://localhost/Facelook/wp-content/uploads/2019/08/o-que-nao-pode-faltar-na-sua-barbearia-equipamentos-1024x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2019-09-11 21:22:04', '2019-09-12 00:22:04', '', 'img-frutas-1', '', 'inherit', 'open', 'closed', '', 'img-frutas-1', '', '', '2019-09-11 21:22:04', '2019-09-12 00:22:04', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-frutas-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-09-11 21:39:02', '2019-09-12 00:39:02', '', 'img-bonita-4', '', 'inherit', 'open', 'closed', '', 'img-bonita-4', '', '', '2019-09-11 21:39:02', '2019-09-12 00:39:02', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-bonita-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-10-22 12:29:19', '2019-10-22 15:29:19', '', 0, 'http://localhost/Facelook/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-09-16 11:55:56', '2019-09-16 14:55:56', '', 'img-bonita-2', '', 'inherit', 'open', 'closed', '', 'img-bonita-2', '', '', '2019-09-16 11:55:56', '2019-09-16 14:55:56', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-bonita-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2019-09-16 11:57:28', '2019-09-16 14:57:28', '', 'img-bonita-3', '', 'inherit', 'open', 'closed', '', 'img-bonita-3', '', '', '2019-09-16 11:57:28', '2019-09-16 14:57:28', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-bonita-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2019-09-16 12:15:31', '2019-09-16 15:15:31', '', 'img-frutas-1', '', 'inherit', 'open', 'closed', '', 'img-frutas-1-2', '', '', '2019-09-16 12:15:31', '2019-09-16 15:15:31', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-frutas-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2019-09-16 12:15:47', '2019-09-16 15:15:47', '', 'img-frutas-2', '', 'inherit', 'open', 'closed', '', 'img-frutas-2', '', '', '2019-09-16 12:15:47', '2019-09-16 15:15:47', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-frutas-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-09-16 12:17:03', '2019-09-16 15:17:03', '', 'img-frutas-3', '', 'inherit', 'open', 'closed', '', 'img-frutas-3', '', '', '2019-09-16 12:17:03', '2019-09-16 15:17:03', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-frutas-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2019-09-16 22:07:37', '2019-09-17 01:07:37', '<!-- wp:paragraph -->\n<p>É o pó krai</p>\n<!-- /wp:paragraph -->', 'Pó descolorante', '', 'publish', 'closed', 'closed', '', 'po-descolorante', '', '', '2019-09-16 22:35:20', '2019-09-17 01:35:20', '', 0, 'http://localhost/Facelook/?post_type=produtos&#038;p=48', 0, 'produtos', '', 0),
(49, 1, '2019-09-22 13:47:03', '2019-09-22 16:47:03', '<!-- wp:paragraph -->\n<p>aaaaaaaaa</p>\n<!-- /wp:paragraph -->', 'aaaaa', '', 'trash', 'open', 'open', '', 'aaaaa__trashed', '', '', '2019-10-17 16:39:31', '2019-10-17 19:39:31', '', 0, 'http://localhost/Facelook/?p=49', 0, 'post', '', 0),
(50, 1, '2019-09-22 13:47:03', '2019-09-22 16:47:03', '<!-- wp:paragraph -->\n<p>aaaaaaaaa</p>\n<!-- /wp:paragraph -->', 'aaaaa', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-09-22 13:47:03', '2019-09-22 16:47:03', '', 49, 'http://localhost/Facelook/49-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-09-22 13:51:34', '2019-09-22 16:51:34', '<!-- wp:paragraph -->\n<p>alguma coisa</p>\n<!-- /wp:paragraph -->', 'alguma coisa', '', 'publish', 'closed', 'closed', '', 'alguma-coisa', '', '', '2019-09-22 13:51:34', '2019-09-22 16:51:34', '', 0, 'http://localhost/Facelook/?post_type=produtos&#038;p=51', 0, 'produtos', '', 0),
(54, 1, '2019-09-22 16:37:17', '2019-09-22 19:37:17', '', 'Produto', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-22 16:37:17', '2019-09-22 19:37:17', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-09-22 16:38:35', '2019-09-22 19:38:35', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-22 16:38:35', '2019-09-22 19:38:35', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2019-09-22 17:35:12', '2019-09-22 20:35:12', '', 'img-bonita-2', '', 'inherit', 'open', 'closed', '', 'img-bonita-2-2', '', '', '2019-09-22 17:35:12', '2019-09-22 20:35:12', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/img-bonita-2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2019-09-24 15:56:38', '2019-09-24 18:56:38', '', 'image-widget-2', '', 'inherit', 'open', 'closed', '', 'image-widget-2', '', '', '2019-09-24 15:56:38', '2019-09-24 18:56:38', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/image-widget-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2019-09-24 21:05:53', '2019-09-25 00:05:53', '', 'moonlight', '', 'inherit', 'open', 'closed', '', 'moonlight', '', '', '2019-09-24 21:05:53', '2019-09-25 00:05:53', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/09/moonlight.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-09-30 19:04:12', '2019-09-30 22:04:12', '', 'Barbeiros', '', 'publish', 'closed', 'closed', '', 'barbeiros', '', '', '2019-10-22 12:28:05', '2019-10-22 15:28:05', '', 0, 'http://localhost/Facelook/?page_id=66', 0, 'page', '', 0),
(67, 1, '2019-09-30 19:04:09', '2019-09-30 22:04:09', '', 'Barbeiros', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-09-30 19:04:09', '2019-09-30 22:04:09', '', 66, 'http://localhost/Facelook/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-10-06 17:23:23', '2019-10-06 20:23:23', '<!-- wp:html -->\n<figure><figure><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.6733179840935!2d-46.69073950962601!3d-23.50827344934456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef90e86f6f047%3A0x1104591ae58f5019!2sBob\'s%20Shakes!5e0!3m2!1spt-BR!2sbr!4v1570393075303!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" allowfullscreen=\"\"></iframe></figure></figure>\n<!-- /wp:html -->', 'Bloco reutilizável sem título', '', 'publish', 'closed', 'closed', '', 'bloco-reutilizavel-sem-titulo', '', '', '2019-10-06 17:23:23', '2019-10-06 20:23:23', '', 0, 'http://localhost/Facelook/bloco-reutilizavel-sem-titulo/', 0, 'wp_block', '', 0),
(71, 1, '2019-10-06 22:56:42', '2019-10-07 01:56:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"barbeiros\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:38:\"Informações adicionais dos barbeiros\";}', 'Barbeiros', 'barbeiros', 'publish', 'closed', 'closed', '', 'group_5d9a998ea4682', '', '', '2019-10-07 18:08:38', '2019-10-07 21:08:38', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2019-10-06 22:56:42', '2019-10-07 01:56:42', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:62:\"Inserir o iframe pego no google maps para exibir a localizacao\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Iframe da localizacao', 'iframe_da_localizacao', 'publish', 'closed', 'closed', '', 'field_5d9a9a3199fd7', '', '', '2019-10-07 14:55:09', '2019-10-07 17:55:09', '', 71, 'http://localhost/Facelook/?post_type=acf-field&#038;p=72', 1, 'acf-field', '', 0),
(73, 1, '2019-10-06 22:57:40', '2019-10-07 01:57:40', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '2790e948dd3099a00fe28f3a218ec848', '', '', '2019-10-06 22:57:40', '2019-10-07 01:57:40', '', 0, 'http://localhost/Facelook/2790e948dd3099a00fe28f3a218ec848/', 0, 'oembed_cache', '', 0),
(74, 1, '2019-10-06 22:57:49', '2019-10-07 01:57:49', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '970e3d1662893a3bf4749dc18f6ef399', '', '', '2019-10-06 22:57:49', '2019-10-07 01:57:49', '', 0, 'http://localhost/Facelook/970e3d1662893a3bf4749dc18f6ef399/', 0, 'oembed_cache', '', 0),
(75, 1, '2019-10-06 22:57:52', '2019-10-07 01:57:52', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '622aa5775f8e1ca0653bb501b2629173', '', '', '2019-10-06 22:57:52', '2019-10-07 01:57:52', '', 0, 'http://localhost/Facelook/622aa5775f8e1ca0653bb501b2629173/', 0, 'oembed_cache', '', 0),
(76, 1, '2019-10-06 22:57:52', '2019-10-07 01:57:52', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'a7130ae71b8932bd53457f594b253af5', '', '', '2019-10-06 22:57:52', '2019-10-07 01:57:52', '', 0, 'http://localhost/Facelook/a7130ae71b8932bd53457f594b253af5/', 0, 'oembed_cache', '', 0),
(77, 1, '2019-10-06 22:57:54', '2019-10-07 01:57:54', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '440e5b4f8851ac3ae254e2d26d5bb935', '', '', '2019-10-06 22:57:54', '2019-10-07 01:57:54', '', 0, 'http://localhost/Facelook/440e5b4f8851ac3ae254e2d26d5bb935/', 0, 'oembed_cache', '', 0),
(78, 1, '2019-10-06 22:57:55', '2019-10-07 01:57:55', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', 'b3dcab283fdf6ec974227b9700eb7e67', '', '', '2019-10-06 22:57:55', '2019-10-07 01:57:55', '', 0, 'http://localhost/Facelook/b3dcab283fdf6ec974227b9700eb7e67/', 0, 'oembed_cache', '', 0),
(79, 1, '2019-10-07 14:55:08', '2019-10-07 17:55:08', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:43:\"Descrição da localização dos barbeiros.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:21:\"Digite a informação\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descrição da Localização', 'desc_loc', 'publish', 'closed', 'closed', '', 'field_5d9b7b4950a6e', '', '', '2019-10-07 14:55:08', '2019-10-07 17:55:08', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=79', 0, 'acf-field', '', 0),
(80, 1, '2019-10-07 14:58:09', '2019-10-07 17:58:09', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:32:\"Insira a URL do face do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Insira a URL\";}', 'Facebook', 'facebook', 'publish', 'closed', 'closed', '', 'field_5d9b7c02a227c', '', '', '2019-10-07 15:08:10', '2019-10-07 18:08:10', '', 71, 'http://localhost/Facelook/?post_type=acf-field&#038;p=80', 2, 'acf-field', '', 0),
(81, 1, '2019-10-07 14:58:09', '2019-10-07 17:58:09', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:37:\"Insira a URL do Instagram do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Insira a URL\";}', 'Instagram', 'instagram', 'publish', 'closed', 'closed', '', 'field_5d9b7c3da227d', '', '', '2019-10-07 14:58:09', '2019-10-07 17:58:09', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=81', 3, 'acf-field', '', 0),
(82, 1, '2019-10-07 14:58:09', '2019-10-07 17:58:09', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Insira a URL\";}', 'Twitter', 'twitter', 'publish', 'closed', 'closed', '', 'field_5d9b7c76a227e', '', '', '2019-10-07 14:58:09', '2019-10-07 17:58:09', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=82', 4, 'acf-field', '', 0),
(84, 1, '2019-10-07 17:46:44', '2019-10-07 20:46:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Insira o telefone do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Número de telefone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_5d9ba36188bbb', '', '', '2019-10-07 17:46:44', '2019-10-07 20:46:44', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=84', 5, 'acf-field', '', 0),
(85, 1, '2019-10-07 17:46:44', '2019-10-07 20:46:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Insira o e-mail do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Insira o e-mail\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'mail', 'publish', 'closed', 'closed', '', 'field_5d9ba40288bbc', '', '', '2019-10-07 17:46:44', '2019-10-07 20:46:44', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=85', 6, 'acf-field', '', 0),
(86, 1, '2019-10-07 18:08:38', '2019-10-07 21:08:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:30:\"Insira o endereço do Barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Insira o endereço\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5d9ba934fcb70', '', '', '2019-10-07 18:08:38', '2019-10-07 21:08:38', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=86', 7, 'acf-field', '', 0),
(87, 1, '2019-10-08 12:33:21', '2019-10-08 15:33:21', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-10-08 12:43:49', '2019-10-08 15:43:49', '', 0, 'http://localhost/Facelook/?post_type=sidebar_instance&#038;p=87', 0, 'sidebar_instance', '', 0),
(88, 1, '2019-10-08 13:08:51', '2019-10-08 16:08:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"prods\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:34:\"Campos adicionais para os Produtos\";}', 'Produtos', 'produtos', 'publish', 'closed', 'closed', '', 'group_5d9cb44269e13', '', '', '2019-10-08 13:16:53', '2019-10-08 16:16:53', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2019-10-08 13:08:51', '2019-10-08 16:08:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:60:\"Insira o modo de usar, possui 20 linhas para as instruções\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"Insira o texto\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:20;s:9:\"new_lines\";s:7:\"wpautop\";}', 'Como usar', 'use', 'publish', 'closed', 'closed', '', 'field_5d9cb4568af57', '', '', '2019-10-08 13:16:53', '2019-10-08 16:16:53', '', 88, 'http://localhost/Facelook/?post_type=acf-field&#038;p=89', 0, 'acf-field', '', 0),
(92, 1, '2019-10-15 12:06:46', '2019-10-15 15:06:46', '', 'defrizante-facelook', '', 'inherit', 'open', 'closed', '', 'defrizante-facelook', '', '', '2019-10-15 12:06:46', '2019-10-15 15:06:46', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/defrizante-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2019-10-15 12:25:59', '2019-10-15 15:25:59', '', 'reversor-quimico-profissional-reverse-shock-facelook', '', 'inherit', 'open', 'closed', '', 'reversor-quimico-profissional-reverse-shock-facelook', '', '', '2019-10-15 12:25:59', '2019-10-15 15:25:59', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/reversor-quimico-profissional-reverse-shock-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-10-15 12:32:40', '2019-10-15 15:32:40', '', 'mascara-de-hidratacao-profunda-perfait-lisse-facelook', '', 'inherit', 'open', 'closed', '', 'mascara-de-hidratacao-profunda-perfait-lisse-facelook', '', '', '2019-10-15 12:32:40', '2019-10-15 15:32:40', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-10-17 16:49:14', '2019-10-17 19:49:14', '', '1080p-Full-HD-Images', '', 'inherit', 'open', 'closed', '', '1080p-full-hd-images', '', '', '2019-10-17 16:49:14', '2019-10-17 19:49:14', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/1080p-Full-HD-Images.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2019-10-17 17:30:35', '2019-10-17 20:30:35', '', 'cropped-1080p-Full-HD-Images.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-1080p-full-hd-images-jpg', '', '', '2019-10-17 17:30:35', '2019-10-17 20:30:35', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/cropped-1080p-Full-HD-Images.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 'Listagem', '', 'publish', 'closed', 'closed', '', 'listagem', '', '', '2019-10-22 12:28:43', '2019-10-22 15:28:43', '', 0, 'http://localhost/Facelook/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 'Listagem', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 103, 'http://localhost/Facelook/103-revision-v1/', 0, 'revision', '', 0),
(107, 0, '2019-10-21 16:12:26', '2019-10-21 19:12:26', '<!-- wp:paragraph -->\n<p> Meus 50 mil seguidores foi por merecimento e muito trabalho, por isso você pode confiar seu estilo no meu trabalho e ainda fazer parte dessa linda caminhada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Venha fazer parte dessa galera !!!!</p>\n<!-- /wp:paragraph -->', 'Dibrow Santos', 'Se você não acredita em bons resultados, venha dar um tour no meu estabelecimento que você irá mudar de opinião', 'publish', 'closed', 'closed', '', 'dibrow-santos', '', '', '2019-10-22 09:47:39', '2019-10-22 12:47:39', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=107', 0, 'barbeiros', '', 0),
(108, 1, '2019-10-21 16:12:15', '2019-10-21 19:12:15', '', 'dibrow', '', 'inherit', 'open', 'closed', '', 'dibrow', '', '', '2019-10-21 16:12:15', '2019-10-21 19:12:15', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/dibrow.png', 0, 'attachment', 'image/png', 0),
(109, 0, '2019-10-21 16:27:12', '2019-10-21 19:27:12', '<!-- wp:paragraph -->\n<p>A sua aparência hoje em dia pesa muito no seu dia a dia, por isso um bom estilo irá te destacar nos seus objetivos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Cristiano Fhagundes', 'Comigo seu estilo tem espaço para mudanças sem preconceito, aqui cliente feliz é prioridade.', 'publish', 'closed', 'closed', '', 'cristiano-fhagundes', '', '', '2019-10-22 09:41:45', '2019-10-22 12:41:45', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=109', 0, 'barbeiros', '', 0),
(110, 1, '2019-10-21 16:27:52', '2019-10-21 19:27:52', '', 'cristiano', '', 'inherit', 'open', 'closed', '', 'cristiano', '', '', '2019-10-21 16:27:52', '2019-10-21 19:27:52', '', 109, 'http://localhost/Facelook/wp-content/uploads/2019/10/cristiano.png', 0, 'attachment', 'image/png', 0),
(111, 0, '2019-10-21 16:35:00', '2019-10-21 19:35:00', '<!-- wp:paragraph -->\n<p>Meu objetivo é mudar o seu visual, minha alegria é ver meus clientes satisfeitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Agata Santos', 'Barbeira paulistana da ZN, determinada a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você sairá incrível !!', 'publish', 'closed', 'closed', '', 'agata-santos', '', '', '2019-10-22 09:48:01', '2019-10-22 12:48:01', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=111', 0, 'barbeiros', '', 0),
(112, 1, '2019-10-21 16:32:09', '2019-10-21 19:32:09', '', 'agata', '', 'inherit', 'open', 'closed', '', 'agata', '', '', '2019-10-21 16:32:09', '2019-10-21 19:32:09', '', 111, 'http://localhost/Facelook/wp-content/uploads/2019/10/agata.png', 0, 'attachment', 'image/png', 0),
(113, 0, '2019-10-21 16:41:00', '2019-10-21 19:41:00', '<!-- wp:paragraph -->\n<p> Se você preza as aparências, comigo o seu visual irá ser o mais destacado entre a massa, não importa o seu tipo de cabelo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Meu intuito é deixar todos felizes consigo mesmo com o meu trabalho, sempre tento priorizar os meus clientes.</p>\n<!-- /wp:paragraph -->', 'Heverson', 'Heverson da ZN, aqui você vai encontrar o melhor entre os barbeiros da região, focado em mudar seu cabelo.', 'publish', 'closed', 'closed', '', 'heverson', '', '', '2019-10-22 09:48:15', '2019-10-22 12:48:15', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=113', 0, 'barbeiros', '', 0),
(114, 1, '2019-10-21 16:39:32', '2019-10-21 19:39:32', '', 'heverson', '', 'inherit', 'open', 'closed', '', 'heverson', '', '', '2019-10-21 16:39:32', '2019-10-21 19:39:32', '', 113, 'http://localhost/Facelook/wp-content/uploads/2019/10/heverson.png', 0, 'attachment', 'image/png', 0),
(115, 0, '2019-10-21 16:45:51', '2019-10-21 19:45:51', '<!-- wp:paragraph -->\n<p>Comigo o seu visual será único, trazendo modernidade em tudo que há no mundo do estilo e da moda.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Mercio Barber', 'Barbeiro bravo, determinado a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você ficará massa!!', 'publish', 'closed', 'closed', '', 'mercio-barber', '', '', '2019-10-22 09:48:27', '2019-10-22 12:48:27', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=115', 0, 'barbeiros', '', 0),
(116, 1, '2019-10-21 16:46:53', '2019-10-21 19:46:53', '', 'mercio', '', 'inherit', 'open', 'closed', '', 'mercio', '', '', '2019-10-21 16:46:53', '2019-10-21 19:46:53', '', 115, 'http://localhost/Facelook/wp-content/uploads/2019/10/mercio.png', 0, 'attachment', 'image/png', 0),
(117, 0, '2019-10-21 16:49:58', '2019-10-21 19:49:58', '<!-- wp:paragraph -->\n<p>Meu objetivo é mudar o seu visual, minha alegria é ver meus clientes satisfeitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Miriam Barber', 'Barbeira gaúcha, determinada a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você sairá incrível !!', 'publish', 'closed', 'closed', '', 'miriam-barber', '', '', '2019-10-22 09:48:41', '2019-10-22 12:48:41', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=117', 0, 'barbeiros', '', 0),
(118, 1, '2019-10-21 16:50:42', '2019-10-21 19:50:42', '', 'miriam', '', 'inherit', 'open', 'closed', '', 'miriam', '', '', '2019-10-21 16:50:42', '2019-10-21 19:50:42', '', 117, 'http://localhost/Facelook/wp-content/uploads/2019/10/miriam.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2019-10-21 16:56:40', '2019-10-21 19:56:40', '<!-- wp:paragraph -->\n<p>O&nbsp;<strong>Low Poo e No Poo</strong>&nbsp;são técnicas de cuidados capilares desenvolvidas exclusivamente para os cabelos cacheados e crespos. Elas fazem uma limpeza mais suave, procurando manter os cabelos hidratados, nutridos, saudáveis e mais fortes. Aqui no blog da Facelook a gente já explicou cada uma das técnicas separadas, mas o texto de hoje é um Guia Mais que Definitivo do<strong>&nbsp;Low Poo e No Poo</strong>. Vamos tirar qualquer dúvida que ainda reste, falar das diferenças de cada técnica e muito mais!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>HISTÓRIA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tudo começou com a cabeleireira cacheada Lorraine Massey, que depois de muito estudo desenvolveu o&nbsp;<strong>Low Poo e No Poo</strong>&nbsp;com o objetivo de cuidar dos cabelos cacheados de forma menos agressiva, com produtos naturais. Lorraine Massey publicou um livro em 2002, chamado “Curly Girl: The Handbook”, em tradução livre “Garota Cacheada: o Manual”. No mesmo ano, criou a sua marca de produtos para cabelos cacheados, a Deva Curl, que foi a primeira a desenvolver produtos específicos para as técnicas de&nbsp;<strong>Low Poo e No Poo</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Desde então o interesses pelo novo método de cuidar dos fios só foi aumentando e se popularizando. Hoje em dia são inúmeras as marcas de produtos capilares que também têm produtos sem os componentes proibidos. Mas isso não quer dizer que ainda não exitam dúvidas sobre o tema, né? Então continua lendo que a gente explica tudinho pra você!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>O QUE É O&nbsp;<strong>LOW POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A tradução para o português significa ‘’Pouco Shampoo’’. Como o próprio nome já diz, essa técnica diminui o uso do shampoo. O objetivo é cuidar das madeixas sem agressões químicas, ou seja, da forma mais natural possível. Os produtos para&nbsp;<strong>Low Poo</strong>&nbsp;não tem sulfatos, petrolatos, parafinas e afins. A limpeza faz menos espuma do que a lavagem com os shampoos tradicionais, já que a espuma é gerada pelo surfactante, proibido na fórmula dos produtos&nbsp;<strong>Low Poo</strong>. O surfactante tem ação detergente e quando usado nos shampoos acaba removendo os óleos necessários para que os cabelos se mantenham hidratados e saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>O QUE É&nbsp;<strong>NO POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Já o&nbsp;<strong>No Poo</strong>&nbsp;exclui totalmente o uso de shampoos (entenda-se SULFATOS de qualquer tipo), fazendo a limpeza dos fios somente com produtos condicionantes. Mas não é qualquer produto. Nesta técnica, só é permitido o uso de condicionadores leves, que sejam livres de quaisquer petrolatos e silicones. Ou seja, assim que você deixa de usar os sulfatos “detergentes”, os condicionadores que contenham ingredientes “residuais” também devem ser deixados de lado.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>QUAL A DIFERENÇA ENTRE&nbsp;<strong>LOW POO</strong>&nbsp;E&nbsp;<strong>NO POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Enquanto no&nbsp;<strong>Low Poo</strong>&nbsp;é permitido o uso de shampoos que não contenham certos componentes, no&nbsp;<strong>No Poo</strong>&nbsp;não se usa nenhum shampoo. Além disso, para as duas técnicas, os condicionadores também precisam ser diferentes, sem petrolatos, silicones, parafinas e outros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>No&nbsp;<strong>Low Poo,</strong>&nbsp;o shampoo e o condicionador precisam ser específicos para a técnica. Já no&nbsp;<strong>No Poo</strong>, a lavagem é feita com a técnica&nbsp;<a href=\"http://www.blogdoscabelos.com.br/co-wash-lavar-cabelo-com-condicionador/\" target=\"_blank\" rel=\"noreferrer noopener\">Co-Wash</a>, ou a lavagem apenas com condicionador.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>PARA QUEM O&nbsp;<strong>LOW POO E NO POO</strong>&nbsp;SÃO INDICADOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como a gente já disse, o&nbsp;<strong>Low Poo e o No Poo</strong>&nbsp;foram desenvolvidos inicialmente para cuidar dos cabelos cacheados e crespos de uma forma mais suave e natural.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Entretanto, muitas pessoas com outros tipos de cabelo já testaram a técnica e se surpreenderam com os resultados. Ela é indicada, principalmente, para quem tem os fios mais ressecados, frágeis e quebradiços. Já que os produtos limpam os fios sem agressões, ajudando a fortalecer o cabelo enfraquecido. Pessoas com cabelos oleosos também podem aderir, mas é preciso ter uma atenção especial para evitar danos como a caspa, seborreia e alergias.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>QUAIS OS COMPONENTES PROIBIDOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tanto o&nbsp;<strong>Low Poo</strong>&nbsp;quanto o&nbsp;<strong>No Poo,</strong>&nbsp;têm componentes em comum que são proibidos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>O QUE É O SULFATO?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os sulfatos podem ser encontrados na maioria dos shampoos e são reconhecidos nas fórmulas como Lauril Sulfato de Sódio (ou Lauril Sodium Sulfate). Ele é responsável pela formação da espuma do produto e pela ação “detergente”, o que “limpa” os fios. Mas, essa limpeza pode retirar dos fios, além da sujeira, óleos e outros nutrientes essenciais para a saúde capilar. Além disso, os sulfatos também se acumulam na natureza e são um dos poluentes mais agressivos do meio ambiente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>O QUE SÃO OS PETROLATOS E SILICONES?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Esses componentes são encontrados em máscaras, condicionadores, leave-ins e produtos finalizadores. Um é derivado do petróleo, como o próprio nome sugere, e é encontrado nas fórmulas com os nomes Petrolatum, Paraffinum Liquidum e/ou Mineral Oil.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Eles não fazem absolutamente nada pelos fios, servindo apenas como um diluidor de ativos para dar consistência. Quando aplicados nos fios, esses elementos formam uma espécie de “capa” na fibra capilar. Isso acaba impedindo a entrada da água e de qualquer outro ativo benéfico, como nutrientes e vitaminas. Ou seja, eles praticamente plastificam os fios. Com o passar do tempo, o excesso de resíduos dos petrolatos deixa os cabelos com aspecto sujo, pesado e opaco. Em alguns casos, pode acontecer o enfraquecimento e quebra dos fios. Quando na natureza, essas substâncias poluem tanto quanto o óleo, o piche e o plástico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Já os silicones, podem ser divididos em duas categorias: insolúveis (que não se diluem na água) e os solúveis (que se diluem). No&nbsp;<strong>Low Poo</strong>&nbsp;são permitidos apenas os silicones solúveis, enquanto no&nbsp;<strong>No Poo</strong>&nbsp;não são usados nenhum tipo de silicone.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>DICA</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Muitos nomes? Calma! A gente tem uma forma mais fácil de você saber quais os proibidos de cada técnica. Preparamos uma imagem com todos os componentes que você deve evitar. Assim, você pode imprimir ou salvar no celular, para ter sempre à mão na hora de comprar seus produtinhos. Outra dica é compartilhar informações entre amigas ou grupos que também também aderiram às técnicas. Assim, você fica sabendo os produtos que são permitidos, troca experiências e fica por dentro das novidades!</p>\n<!-- /wp:paragraph -->', 'LOW POO E NO POO: O SEU GUIA MAIS QUE DEFINITIVO', 'O Low Poo e No Poo são técnicas de cuidados capilares desenvolvidas exclusivamente para os cabelos cacheados e crespos. Ficou interessado, quer saber mais, veja na integra.', 'publish', 'closed', 'closed', '', 'low-poo-e-no-poo-o-seu-guia-mais-que-definitivo', '', '', '2019-10-21 17:00:29', '2019-10-21 20:00:29', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=119', 0, 'blogs', '', 0),
(120, 1, '2019-10-21 16:56:33', '2019-10-21 19:56:33', '', 'low-e-no-poo-1280x640', '', 'inherit', 'open', 'closed', '', 'low-e-no-poo-1280x640', '', '', '2019-10-21 16:56:33', '2019-10-21 19:56:33', '', 119, 'http://localhost/Facelook/wp-content/uploads/2019/10/low-e-no-poo-1280x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-10-21 17:06:19', '2019-10-21 20:06:19', '<!-- wp:paragraph -->\n<p>Dentro da tabela de curvaturas, o&nbsp;<strong>cabelo ondulado</strong>&nbsp;corresponde ao tipo 2. Porém, esse fio ainda é subdividido em outras 3 subcategorias: 2A, 2B e 2C. Entender em qual dessas você se encontra é super importante para descobrir quais são as necessidades do seu cabelo. Depois de descobrir qual o seu tipo de cabelo, tratar ele fica muito mais fácil e os resultados ficam bem mais evidentes. Quer saber mais sobre os&nbsp;<strong>cabelos ondulados</strong>? Então continue lendo esse post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2A</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Esse tipo de cabelo é o mais próximo dos cabelos lisos. Isso porque as ondulações são mais leves e sutis. Mesmo com a aparência similar aos fios lisos, os&nbsp;<strong>cabelos ondulados</strong>&nbsp;do tipo 2A já apresentam dificuldades para manter as pontas hidratadas. Por conta disso, é super importante manter uma rotina de hidratação, concentrando os tratamentos no comprimento e nas pontas. Assim, você evitará os problemas com a oleosidade da raiz e manterá os fios saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A dica é sempre usar produtos com texturas mais leves, para não pesar no cabelo, e não exagerar nas quantidades. Mousses e óleos são super bem vindos nas pontas. Além disso, evite deixar seus cabelos sem proteção ao longo do dia. Os leave-ins e os óleos capilares com proteção UV vão ser seus aliados nessa missão. Outro ponto importante é não esquecer do finalizador. Por mais que lavar as madeixas com shampoo e condicionador e deixá-las secando ao natural, sem cosméticos, pareça tentador, evite isso. Os finalizadores servem como uma camada protetora dos fios, contra os danos diários.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2B</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aqui, as ondas mais espaçadas dão as caras. Esse tipo de ondulado é o mais comum de ser encontrado. Nessa categoria, a raiz continua lisa, mas as ondulações se espalham por todo o comprimento e pontas dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem tem esse tipo de cabelo, geralmente, não sabe como conter o volume. Isso acontece porque a finalização é super necessária para definir as ondas nesse tipo de fio. Por esse motivo, mousses, cremes e leave-ins bem levinhos são opções ideais para conter o volume e proteger os fios. Além disso, evite aplicar produtos que não sejam o shampoo na raiz, assim você não estimula a produção excessiva de óleo do couro cabeludo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2C</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nessa última categoria dos<strong>&nbsp;cabelos ondulados</strong>, o volume está super presente! Nesse caso, os fios são mais grossos e as ondas formam um S bem definido. A melhor dica pra esse tipo de cabelo é investir em um corte que valorize o volume, como os repicados ou em camadas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Na hora de finalizar, os finalizadores de cachos e os cremes multifuncionais são uma ótima opção. Mas atenção, tome cuidado com a quantidade que vai ser aplicada nos fios. Isso porque, assim como nos outros casos, usar muito produto pode pesar nas madeixas e deixá-las com um aspecto de “ensebado”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Para os tratamentos, invista na hidratação e na nutrição. Quando você sentir necessidade, as umectações também vão ser grandes aliadas para eliminar o ressecamento e o visual mais opaco dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>10 DICAS PARA MANTER OS&nbsp;<strong>CABELOS ONDULADOS</strong>&nbsp;INCRÍVEIS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>1 – NÃO SAIA POR AI COMPRANDO QUALQUER SHAMPOO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O shampoo ideal para cuidar das madeixas onduladas são os 100% livres de sulfato e de sal. Isso porque essas substâncias ressecam os fios e favorecem o aparecimento do frizz. Outra diquinha é sobre a frequência de lavagem. Se os seus fios são mais finos, vale lavar um dia sim, um dia não. Agora, se os seus fios forem mais grossos, fique pelo menos dois dias sem lavar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>2 – MANTENHA O CONDICIONADOR SEMPRE POR PERTO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A característica mais marcante dos <strong>cabelos ondulados</strong> é a raiz oleosa e o comprimento e as pontas secas. Por isso, além de utilizar sempre o condicionador a cada lavagem, invista em um leave-in para aplicar após o banho. Assim, seus cabelos vão ficar protegidos e hidratados.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>3 – MODELE O CABELO COM ELE AINDA MOLHADO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Um jeito super simples de evitar o frizz e prevenir aquela sensação de fios “ásperos” é modelar as madeixas ainda molhadas. Com os dedos, espalhe um pouco de creme para pentear com textura mais fluida ou um leave-in nas madeixas. Depois, amasse e torça os fios delicadamente, com as mãos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>&nbsp;4 – PRODUTOS COM ÁLCOOL DEVEM SER EVITADOS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os produtos para cabelo com água na sua composição retiram a umidade dos fios. Se for usar um desses produtos, lembre-se de caprichar na hidratação depois!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>5 – EVITE PASSAR AS MÃOS NOS&nbsp;<strong>CABELOS ONDULADOS</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quanto mais você passa as mãos nos cachos, maiores são as chances de você ter frizz nos fios. O segredo para evitar esse problema é simples! Evite escovar e passar as mãos nas madeixas muitas vezes ao dia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>6 – DIFUSOR: SEU MAIS NOVO ALIADO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O difusor seca as ondas de maneira uniforme, criando um look lindo, natural e volumoso. Quando for usar o difusor, não se esqueça de proteger os fios com um protetor térmico antes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>7 – PENTEIE OS FIOS DO JEITO CERTO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para evitar que as ondas se desfaçam e que os fios se quebrem, a nossa dica é pentear os&nbsp;<strong>cabelos ondulados</strong>&nbsp;com os dedos e ainda úmidos. Depois de lavar as madeixas, retire um pouco do excesso da água com o auxílio de uma toalha. Mas atenção: não esfregue a toalha nos fios. Depois, aplique um creme de pentear ou um leave-in nas madeixas, e penteie-as com os dedos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>8 – CORTE O CABELO APENAS COM ELE SECO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os&nbsp;<strong>cabelos ondulados</strong>&nbsp;secos são completamente diferentes deles úmidos. Isso porque, por conta do peso da água, os cabelos molhados parecem maiores do que realmente são. Por esse motivo, sempre que for cortar as madeixas, corte-as ainda secas, para evitar surpresas desagradáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>9 – EVITE O EXCESSO DE CALOR</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O excesso de calor altera o formato dos&nbsp;<strong>cabelos ondulados</strong>, além de danificar os fios. Por esse motivo, nada de usar o secador a temperatura máxima, ok? E, se for usar, lembre-se sempre do protetor térmico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>10 – FRONHA DE SEDA NO TRAVESSEIRO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os tecidos de algodão absorvem a umidade natural dos cabelos, provocando o frizz. Por conta disso, invista em uma fronha de seda ou cetim para reduzir a fricção com o tecido e manter as madeixas macias.</p>\n<!-- /wp:paragraph -->', 'CABELOS ONDULADOS: TUDO SOBRE!', 'Veja tudo sobre os cabelos ondulados, sane todas as suas duvidas aqui nesse post.', 'publish', 'closed', 'closed', '', 'cabelos-ondulados-tudo-sobre', '', '', '2019-10-21 17:09:09', '2019-10-21 20:09:09', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=121', 0, 'blogs', '', 0),
(122, 1, '2019-10-21 17:05:38', '2019-10-21 20:05:38', '', 'cabelo-ondulado-curto-perfeito-5-810x456', '', 'inherit', 'open', 'closed', '', 'cabelo-ondulado-curto-perfeito-5-810x456', '', '', '2019-10-21 17:05:38', '2019-10-21 20:05:38', '', 121, 'http://localhost/Facelook/wp-content/uploads/2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-10-21 17:10:16', '2019-10-21 20:10:16', '<!-- wp:paragraph -->\n<p>Nós já fizemos um post explicando o que é e como funciona&nbsp;a&nbsp;<strong>reconstrução capilar</strong>. Se você sente que os seus fios estão super danificados e precisando de um up, esse post é pra você! Confira como fazer a&nbsp;<strong>reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>RECONSTRUÇÃO CAPILAR: A IMPORTÂNCIA DO PROCESSO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O nosso cabelo é composto por três substâncias básicas: água, lipídio e queratina. A queratina é uma proteína super importante para garantir a força, resistência e a elasticidade dos fios.&nbsp;Os cabelos que se mostram ressecados, ou mais quebradiços, apresentam deficiência de queratina e, por esse motivo, precisam passar pela<strong>&nbsp;reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>São diversos os fatores que podem causar a perda da queratina em nossos fios, como:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>A realização de procedimentos químicos.</li><li>Exposição excessiva dos cabelos ao sol.</li><li>Uso constante do secador &nbsp;ou da chapinha de cabelo.</li><li>Lavar os fios com água quente durante o banho.</li><li>Contato com o cloro.</li><li>Contato com a água do mar.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Como já vimos, a<strong>&nbsp;reconstrução capilar</strong>&nbsp;é o procedimento que recupera os fios, renovando e protegendo todas as camadas. Além disso, a reconstrução devolve aos fios todos os nutrientes essenciais, que se perdem devido aos danos. O resultado são cabelos sem frizz, com muito brilho e maciez, além de super fortes e saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>EU PRECISO FAZER ESSE PROCEDIMENTO NOS FIOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Conseguimos perceber a olho nu, toda a fragilidade dos nossos fios! Mas como saber se a deficiência é especificamente de queratina?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Existe uma forma bem popular, que chama-se “teste do fio de cabelo no copo de água’’. Para fazer o teste, você vai precisar de um fio do seu cabelo, e colocá-lo dentro de um copo com água. Se o fio for para o fundo do copo, isso significa um cabelo está mais poroso, e que está bem danificado, ou seja, precisando fazer a<strong>&nbsp;reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>COMO FAZER NOS CABELOS EM TRANSIÇÃO?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>Scab hair</em>&nbsp;é o nome dado para a aqueles fiozinhos mais finos de cabelo que encontram-se em crescimento, depois que você abre mão de fazer tratamentos químicos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Existem até alguns casos onde esse cabelo natural se apresenta mais rebelde, mas nessas horas não é preciso se desesperar. A&nbsp;<strong>reconstrução capilar</strong>, sendo intercalada com outros tratamentos de hidratação e de nutrição, vai auxiliar tanto o&nbsp;<em>scab hair</em>, quanto no restante do cabelo que ainda está com o efeito de química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>PASSO A PASSO PARA&nbsp;<strong>FAZER A RECONSTRUÇÃO CAPILAR</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os produtos utilizados no tratamento são ricos em queratina, aminoácidos, silicones e agentes reconstrutores. Durante o processo, as cutículas dos fios são fechadas, deixando os cabelos mais alinhados, sedosos e brilhantes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>INGREDIENTES</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>1 – SHAMPOO ANTIRESSÍDUOS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ele é essencial para abrir as escamas dos fios, retirando todos os resíduos depositados nas madeixas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>2 – AMPOLA E MÁSCARA RECONSTRUTORA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As ampolas reconstrutoras têm proteínas e queratina que restauram e recuperam os fios profundamente. Além disso, elas ajudam a fortalecer a estrutura interna dos fios, recuperando a elasticidade e repondo os nutrientes perdidos. As ampolas são mais concentradas e, por isso, super necessárias para&nbsp;<strong>fazer a reconstrução capilar.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Já as máscaras, geralmente, têm em sua composição: proteínas, aminoácidos e queratina. Elas hidratam, reconstroem e nutrem profundamente os fios, restaurando a vitalidade das madeixas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>3 – FINALIZADOR</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O finalizador ajuda a selar o cabelo. Ou seja, ele repara as pontas, elimina o frizz e dá mais brilho aos fios, auxiliando na manutenção da umidade nos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>COMO&nbsp;<strong>FAZER A RECONSTRUÇÃO CAPILAR</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lave seus cabelos com o shampoo antirresíduos e enxágue bem.</li><li>Com o auxílio de uma toalha, retire o excesso da água.</li><li>Aplique uma mistura da máscara reconstrutora com a ampola. Passe em toda a extensão dos cabelos. Depois, coloque uma touca e deixe agir por 20 minutos e enxágue bem.</li><li>Finalize com um leave-in.</li></ol>\n<!-- /wp:list -->', 'COMO FAZER A RECONSTRUÇÃO CAPILAR', 'Aprenda a fazer uma reconstrução capilar do 0 e passo a passo com essas super dicas.', 'publish', 'closed', 'closed', '', 'como-fazer-a-reconstrucao-capilar', '', '', '2019-10-21 17:11:24', '2019-10-21 20:11:24', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=123', 0, 'blogs', '', 0),
(124, 1, '2019-10-21 17:10:46', '2019-10-21 20:10:46', '', 'Como.fazer_.a.reconstrução.capilar-1273x640', '', 'inherit', 'open', 'closed', '', 'como-fazer_-a-reconstrucao-capilar-1273x640', '', '', '2019-10-21 17:10:46', '2019-10-21 20:10:46', '', 123, 'http://localhost/Facelook/wp-content/uploads/2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2019-10-21 17:18:52', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-21 17:18:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/Facelook/?post_type=prods&p=125', 0, 'prods', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2019-10-21 17:20:31', '2019-10-21 20:20:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:51:\"Informações da página principal e rodapé e menu\";}', 'Página - home', 'pagina-home', 'publish', 'closed', 'closed', '', 'group_5dae12dda58eb', '', '', '2019-10-21 17:39:40', '2019-10-21 20:39:40', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=126', 0, 'acf-field-group', '', 0),
(127, 1, '2019-10-21 17:20:31', '2019-10-21 20:20:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"Coloque o número de telefone que ira ficar no rodapé\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"Insira o número de telefone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Número de telefone', 'ntel', 'publish', 'closed', 'closed', '', 'field_5dae1307bf467', '', '', '2019-10-21 17:28:49', '2019-10-21 20:28:49', '', 126, 'http://localhost/Facelook/?post_type=acf-field&#038;p=127', 0, 'acf-field', '', 0),
(128, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:49:\"Insira o endereço do espaço físico da facelook\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço da Facelook', 'endface', 'publish', 'closed', 'closed', '', 'field_5dae13b68bb32', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:49:\"Insira o Iframe de video que ira aparecer na home\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Insira o Iframe\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Iframe de vídeo principal', 'video', 'publish', 'closed', 'closed', '', 'field_5dae13ef8bb33', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Link do vídeo ou do canal do youtube\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Insira o link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link do vídeo/canal', 'vicanal', 'publish', 'closed', 'closed', '', 'field_5dae145a8bb34', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=130', 3, 'acf-field', '', 0),
(131, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Insira o link da API do WPP\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Insira o link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'API Whats App', 'wp', 'publish', 'closed', 'closed', '', 'field_5dae14ad8bb35', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=131', 4, 'acf-field', '', 0),
(132, 1, '2019-10-21 17:41:05', '2019-10-21 20:41:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-21 17:41:05', '2019-10-21 20:41:05', '', 9, 'http://localhost/Facelook/9-revision-v1/', 0, 'revision', '', 0),
(133, 1, '2019-10-21 22:38:44', '2019-10-22 01:38:44', '', 'muie2', '', 'inherit', 'open', 'closed', '', 'muie2', '', '', '2019-10-21 22:38:44', '2019-10-22 01:38:44', '', 117, 'http://localhost/Facelook/wp-content/uploads/2019/10/muie2.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2019-10-21 22:39:40', '2019-10-22 01:39:40', '', 'Perfect man', 'Young employee with beard and moustache looking at camera', 'inherit', 'open', 'closed', '', 'perfect-man', '', '', '2019-10-21 22:39:40', '2019-10-22 01:39:40', '', 113, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi1.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2019-10-21 22:40:13', '2019-10-22 01:40:13', '', 'guy in the barbercos', 'handsome young bearded guy sitting in an armchair in a beauty salon and the girl near him cuts his hair', 'inherit', 'open', 'closed', '', 'guy-in-the-barbercos', '', '', '2019-10-21 22:40:13', '2019-10-22 01:40:13', '', 111, 'http://localhost/Facelook/wp-content/uploads/2019/10/muie1.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2019-10-21 22:40:48', '2019-10-22 01:40:48', '', 'Stylish cool bearded man in the background of the old city', 'Two stylish bearded men on the background of the old town', 'inherit', 'open', 'closed', '', 'stylish-cool-bearded-man-in-the-background-of-the-old-city', '', '', '2019-10-21 22:40:48', '2019-10-22 01:40:48', '', 109, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi2.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-10-21 22:41:39', '2019-10-22 01:41:39', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar', '', '', '2019-10-21 22:41:39', '2019-10-22 01:41:39', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2019-10-21 22:44:55', '2019-10-22 01:44:55', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar-2', '', '', '2019-10-21 22:44:55', '2019-10-22 01:44:55', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2019-10-21 22:47:00', '2019-10-22 01:47:00', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar-3', '', '', '2019-10-21 22:47:00', '2019-10-22 01:47:00', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2019-10-21 22:50:09', '2019-10-22 01:50:09', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar-4', '', '', '2019-10-21 22:50:09', '2019-10-22 01:50:09', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2019-10-21 22:52:11', '2019-10-22 01:52:11', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar-5', '', '', '2019-10-21 22:52:11', '2019-10-22 01:52:11', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-10-21 22:55:04', '2019-10-22 01:55:04', '', 'Bearded man drinking in a bar', 'Bearded man drinking in a bar', 'inherit', 'open', 'closed', '', 'bearded-man-drinking-in-a-bar-6', '', '', '2019-10-21 22:55:04', '2019-10-22 01:55:04', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi3-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2019-10-21 23:00:22', '2019-10-22 02:00:22', '', 'muie2', '', 'inherit', 'open', 'closed', '', 'muie2-2', '', '', '2019-10-21 23:00:22', '2019-10-22 02:00:22', '', 117, 'http://localhost/Facelook/wp-content/uploads/2019/10/muie2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2019-10-21 23:00:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-10-21 23:00:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&p=144', 0, 'barbeiros', '', 0),
(145, 1, '2019-10-21 23:01:20', '2019-10-22 02:01:20', '', 'Perfect man', 'Young employee with beard and moustache looking at camera', 'inherit', 'open', 'closed', '', 'perfect-man-2', '', '', '2019-10-21 23:01:20', '2019-10-22 02:01:20', '', 113, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2019-10-21 23:01:55', '2019-10-22 02:01:55', '', 'guy in the barbercos', 'handsome young bearded guy sitting in an armchair in a beauty salon and the girl near him cuts his hair', 'inherit', 'open', 'closed', '', 'guy-in-the-barbercos-2', '', '', '2019-10-21 23:01:55', '2019-10-22 02:01:55', '', 111, 'http://localhost/Facelook/wp-content/uploads/2019/10/muie1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2019-10-21 23:02:30', '2019-10-22 02:02:30', '', 'Stylish cool bearded man in the background of the old city', 'Two stylish bearded men on the background of the old town', 'inherit', 'open', 'closed', '', 'stylish-cool-bearded-man-in-the-background-of-the-old-city-2', '', '', '2019-10-21 23:02:30', '2019-10-22 02:02:30', '', 109, 'http://localhost/Facelook/wp-content/uploads/2019/10/homi2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(148, 0, '2019-10-21 23:20:34', '2019-10-22 02:20:34', '<!-- wp:paragraph -->\n<p>Possui em sua composição química HIDROLYZED COLLAGEN E AMODIMETHICONE, entre outros, permitindo uma maior eficiência da ação de descoloração nas camadas mais profundas dos fios de cabelo, de forma uniforme da raiz, meio e pontas. Abre de 6 a 12 tons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando preparado o produto apresenta coloração violeta. Seguro, rápido, uniforme e progressivo, para ser usado em todas as técnicas de reflexos, ballayages, decapagens e clareamento de fios.</p>\n<!-- /wp:paragraph -->', 'PÓ DESCOLORANTE MOONLIGHT FACELOOK PROFISSIONAL', '', 'publish', 'closed', 'closed', '', 'po-descolorante-moonlight-facelook-profissional', '', '', '2019-10-21 23:20:35', '2019-10-22 02:20:35', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=148', 0, 'prods', '', 0),
(149, 1, '2019-10-21 23:20:27', '2019-10-22 02:20:27', '', 'po-descolorante-moon-light-facelook', '', 'inherit', 'open', 'closed', '', 'po-descolorante-moon-light-facelook', '', '', '2019-10-21 23:20:27', '2019-10-22 02:20:27', '', 148, 'http://localhost/Facelook/wp-content/uploads/2019/10/po-descolorante-moon-light-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 0, '2019-10-21 23:33:40', '2019-10-22 02:33:40', '<!-- wp:paragraph -->\n<p>O BBtox Matizador Facelook é um tratamento eficaz tanto quanto uma Selagem. Tratamento moderno a base de Óleo<br>de Ojon e Macadâmia, super prático na Redução de Volume e Alisamento Capilar, trata toda a estrutura da<br>fibra, mantendo os fios alinhados, nutridos, fortes, saudáveis e sem frizz. Com sua exclusiva fórmula a base<br>de Ojon e Macadâmia, o BBtox Capilar Facelook age no selamento das cutículas e reposição de massa,<br>recuperando toda a estrutura capilar, além que nos fios descoloridos, tem ação matizadora. E nos demais tons, ele<br>revigora a cor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Resultado:<br>Cabelos lisos, saudáveis, a fibra capilar tratada, sem frizz com brilho e volume reduzido.</p>\n<!-- /wp:paragraph -->', 'BBtox Matizador Facelook 4 em 1 Profissional', '', 'publish', 'closed', 'closed', '', 'bbtox-matizador-facelook-4-em-1-profissional', '', '', '2019-10-21 23:33:41', '2019-10-22 02:33:41', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=150', 0, 'prods', '', 0),
(151, 1, '2019-10-21 23:32:38', '2019-10-22 02:32:38', '', 'oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook', '', 'inherit', 'open', 'closed', '', 'oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook', '', '', '2019-10-21 23:32:38', '2019-10-22 02:32:38', '', 150, 'http://localhost/Facelook/wp-content/uploads/2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 0, '2019-10-21 23:38:17', '2019-10-22 02:38:17', '<!-- wp:paragraph -->\n<p><strong>Banho De Verniz Pró Repair System Parfait Lisse Facelook</strong>&nbsp;tem fórmula suave, leve e de rápida absorção,<br>além de formar um filme sedoso e aveludado sobre os fios, protegendo-os e condicionando-os, sem deixá-los oleosos.<br>Restabelece, hidrata e restaura os fios danificados por diversas agressões diárias. Sua fórmula exclusiva com<br>Aminoácidos, Proteínas, Vitaminas, Óleo de Argan, Macadâmia e Ojon, promove o selamento das cutículas,<br>desembaraçando os fios e prolongando o penteado, deixando-os leves, macios e com brilho intenso.\n\n</p>\n<!-- /wp:paragraph -->', 'Banho De Verniz Pró Repair System Parfait Lisse Facelook', '', 'publish', 'closed', 'closed', '', 'banho-de-verniz-pro-repair-system-parfait-lisse-facelook', '', '', '2019-10-21 23:38:18', '2019-10-22 02:38:18', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=152', 0, 'prods', '', 0),
(153, 1, '2019-10-21 23:38:05', '2019-10-22 02:38:05', '', 'banho-de-verniz-parfait-liss-facelook', '', 'inherit', 'open', 'closed', '', 'banho-de-verniz-parfait-liss-facelook', '', '', '2019-10-21 23:38:05', '2019-10-22 02:38:05', '', 152, 'http://localhost/Facelook/wp-content/uploads/2019/10/banho-de-verniz-parfait-liss-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"29\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Página - produtos', 'pagina-produtos', 'publish', 'closed', 'closed', '', 'group_5dae748403109', '', '', '2019-10-22 00:33:40', '2019-10-22 03:33:40', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=154', 0, 'acf-field-group', '', 0),
(155, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:40:\"Escolha uma imagem para a linha feminina\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Feminina', 'imgf', 'publish', 'closed', 'closed', '', 'field_5dae749c0fc72', '', '', '2019-10-22 00:24:33', '2019-10-22 03:24:33', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=155', 0, 'acf-field', '', 0),
(156, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"Insira a imagem masculina da linha de produtos\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Masculina', 'imgm', 'publish', 'closed', 'closed', '', 'field_5dae74d10fc73', '', '', '2019-10-22 00:28:30', '2019-10-22 03:28:30', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=156', 1, 'acf-field', '', 0),
(157, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:44:\"Insira a imagem premium da linha de produtos\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Premium', 'imgp', 'publish', 'closed', 'closed', '', 'field_5dae75110fc74', '', '', '2019-10-22 00:28:30', '2019-10-22 03:28:30', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=157', 2, 'acf-field', '', 0),
(158, 1, '2019-10-22 00:21:48', '2019-10-22 03:21:48', '', 'muie2', '', 'inherit', 'open', 'closed', '', 'muie2-3', '', '', '2019-10-22 00:21:48', '2019-10-22 03:21:48', '', 29, 'http://localhost/Facelook/wp-content/uploads/2019/10/muie2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2019-10-22 00:22:23', '2019-10-22 03:22:23', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:22:23', '2019-10-22 03:22:23', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(160, 1, '2019-10-22 00:25:28', '2019-10-22 03:25:28', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:25:28', '2019-10-22 03:25:28', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2019-10-22 00:30:46', '2019-10-22 03:30:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"Escolha a imagem de parceria da Mega do Brasil\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Parceria', 'parc', 'publish', 'closed', 'closed', '', 'field_5dae77b7bf78f', '', '', '2019-10-22 00:30:46', '2019-10-22 03:30:46', '', 154, 'http://localhost/Facelook/?post_type=acf-field&p=161', 3, 'acf-field', '', 0),
(162, 1, '2019-10-22 00:31:42', '2019-10-22 03:31:42', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:31:42', '2019-10-22 03:31:42', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-10-22 00:33:40', '2019-10-22 03:33:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:39:\"Escolha a Imagem do banner dos produtos\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5dae786863d29', '', '', '2019-10-22 00:33:40', '2019-10-22 03:33:40', '', 154, 'http://localhost/Facelook/?post_type=acf-field&p=163', 4, 'acf-field', '', 0),
(164, 1, '2019-10-22 00:34:23', '2019-10-22 03:34:23', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:34:23', '2019-10-22 03:34:23', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-10-22 00:34:31', '2019-10-22 03:34:31', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:34:31', '2019-10-22 03:34:31', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2019-10-22 00:40:45', '2019-10-22 03:40:45', '', '2973207', '', 'inherit', 'open', 'closed', '', '2973207', '', '', '2019-10-22 00:40:45', '2019-10-22 03:40:45', '', 29, 'http://localhost/Facelook/wp-content/uploads/2019/10/2973207.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2019-10-22 00:40:52', '2019-10-22 03:40:52', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 00:40:52', '2019-10-22 03:40:52', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(169, 1, '2019-10-22 12:23:01', '2019-10-22 15:23:01', 'a:7:{s:8:\"location\";a:5:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"66\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"7\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}i:3;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"103\";}}i:4;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"29\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Página - Todas', 'pagina-todas', 'publish', 'closed', 'closed', '', 'group_5daf1de064da0', '', '', '2019-10-22 12:25:21', '2019-10-22 15:25:21', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=169', 0, 'acf-field-group', '', 0),
(170, 1, '2019-10-22 12:23:02', '2019-10-22 15:23:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Insira o link da API do Whats App\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Insira o texto aqui\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Api do whats app', 'apidw', 'publish', 'closed', 'closed', '', 'field_5daf1df3d39cd', '', '', '2019-10-22 12:23:02', '2019-10-22 15:23:02', '', 169, 'http://localhost/Facelook/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(171, 1, '2019-10-22 12:23:02', '2019-10-22 15:23:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:28:\"Insira o número de telefone\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Insira o texto aqui\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone contato', 'telefone_contato', 'publish', 'closed', 'closed', '', 'field_5daf1e20d39ce', '', '', '2019-10-22 12:23:02', '2019-10-22 15:23:02', '', 169, 'http://localhost/Facelook/?post_type=acf-field&p=171', 1, 'acf-field', '', 0),
(172, 1, '2019-10-22 12:23:02', '2019-10-22 15:23:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:33:\"Insira a localização do rodapé\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Insira o texto aqui\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Localização rodape', 'localiza_rdp', 'publish', 'closed', 'closed', '', 'field_5daf1e9cd39d3', '', '', '2019-10-22 12:23:02', '2019-10-22 15:23:02', '', 169, 'http://localhost/Facelook/?post_type=acf-field&p=172', 2, 'acf-field', '', 0),
(173, 1, '2019-10-22 12:26:24', '2019-10-22 15:26:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-22 12:26:24', '2019-10-22 15:26:24', '', 9, 'http://localhost/Facelook/9-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2019-10-22 12:27:09', '2019-10-22 15:27:09', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-10-22 12:27:09', '2019-10-22 15:27:09', '', 7, 'http://localhost/Facelook/7-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-10-22 12:28:05', '2019-10-22 15:28:05', '', 'Barbeiros', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-10-22 12:28:05', '2019-10-22 15:28:05', '', 66, 'http://localhost/Facelook/66-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-10-22 12:28:43', '2019-10-22 15:28:43', '', 'Listagem', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-22 12:28:43', '2019-10-22 15:28:43', '', 103, 'http://localhost/Facelook/103-revision-v1/', 0, 'revision', '', 0),
(177, 1, '2019-10-22 12:29:19', '2019-10-22 15:29:19', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 12:29:19', '2019-10-22 15:29:19', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'Dono da poh@ toda', 'dono-da-poh-toda', 0),
(3, 'Barba', 'barba', 0),
(4, 'Cabelo &amp; Barba', 'cabelo-barba', 0),
(5, 'Cabelo', 'cabelo', 0),
(6, 'Pós', 'pos', 0),
(7, 'Perfume para cabelos', 'perfume-para-cabelos', 0),
(8, 'pintola', 'pintola', 0),
(9, 'alguma coisa', 'alguma-coisa', 0),
(10, 'cabelo', 'cabelo', 0),
(11, 'cabelo', 'cabelo', 0),
(12, 'Teste', 'teste', 0),
(13, 'Shampoo', 'shampoo', 0),
(14, 'Condicionador', 'condicionador', 0),
(15, 'Cremes', 'cremes', 0),
(16, 'Pomadas', 'pomadas', 0),
(17, 'Géis', 'geis', 0),
(18, 'Óleos', 'oleos', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(48, 6, 0),
(49, 8, 0),
(51, 7, 0),
(57, 10, 0),
(57, 11, 0),
(62, 12, 0),
(148, 6, 0),
(150, 18, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'barber_category', '', 0, 0),
(3, 3, 'barber_category', '', 0, 0),
(4, 4, 'barber_category', '', 0, 0),
(5, 5, 'barber_category', '', 0, 0),
(6, 6, 'produto_category', '', 0, 1),
(7, 7, 'produto_category', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'blog_category', '', 0, 0),
(10, 10, 'categoria', '', 0, 1),
(11, 11, 'tag', '', 0, 1),
(12, 12, 'tag', '', 0, 1),
(13, 13, 'produto_category', '', 0, 0),
(14, 14, 'produto_category', '', 0, 0),
(15, 15, 'produto_category', '', 0, 0),
(16, 16, 'produto_category', '', 0, 0),
(17, 17, 'produto_category', '', 0, 0),
(18, 18, 'produto_category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adeco'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,wpmudcs1'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"7766be50a929c27a687daa24389967b9065c2b07bfd224466992002cef58d8cf\";a:4:{s:10:\"expiration\";i:1572361066;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1571151466;}s:64:\"39035ede6ae9c6f451c2473809c5b479afd9ee6ad7d88da5f09f71df733c357c\";a:4:{s:10:\"expiration\";i:1572703047;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571493447;}s:64:\"8d87318f6e69c864432c4b9483d481a40e888e3f4aaa0d28dbf2fb0d8fb5ba90\";a:4:{s:10:\"expiration\";i:1572718723;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36\";s:5:\"login\";i:1571509123;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '90'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&widgets_access=off'),
(19, 1, 'wp_user-settings-time', '1570548052'),
(20, 1, 'closedpostboxes_blogs', 'a:0:{}'),
(21, 1, 'metaboxhidden_blogs', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(22, 1, 'meta-box-order_blogs', 'a:7:{s:8:\"form_top\";s:0:\"\";s:16:\"before_permalink\";s:0:\"\";s:11:\"after_title\";s:0:\"\";s:12:\"after_editor\";s:0:\"\";s:4:\"side\";s:54:\"submitdiv,tagsdiv-categoria,pageparentdiv,postimagediv\";s:6:\"normal\";s:35:\"postexcerpt,slugdiv,authordiv,geral\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_blogs', '2'),
(24, 1, 'closedpostboxes_barbeiros', 'a:0:{}'),
(25, 1, 'metaboxhidden_barbeiros', 'a:0:{}'),
(26, 1, 'closedpostboxes_prods', 'a:0:{}'),
(27, 1, 'metaboxhidden_prods', 'a:0:{}'),
(28, 1, 'meta-box-order_prods', 'a:3:{s:8:\"advanced\";s:5:\"geral\";s:4:\"side\";s:0:\"\";s:6:\"normal\";s:0:\"\";}'),
(29, 1, 'meta-box-order_barbeiros', 'a:3:{s:8:\"advanced\";s:5:\"geral\";s:4:\"side\";s:0:\"\";s:6:\"normal\";s:0:\"\";}'),
(30, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(31, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(32, 1, 'wp_custom-sidebars-editor-advance', 'a:1:{s:4:\"cs-1\";b:0;}'),
(33, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(34, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:19:\"add-post-type-blogs\";i:1;s:23:\"add-post-type-barbeiros\";i:2;s:19:\"add-post-type-prods\";i:3;s:12:\"add-post_tag\";i:4;s:17:\"add-blog_category\";i:5;s:12:\"add-blog_tag\";i:6;s:19:\"add-barber_category\";i:7;s:14:\"add-barber_tag\";i:8;s:20:\"add-produto_category\";i:9;s:15:\"add-produto_tag\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adeco', '$P$B.UFzR.S6TxAfcQCj31SSy6Nn1HUZD.', 'adeco', 'vinydias0509@gmail.com', '', '2019-08-25 18:26:34', '', 0, 'adeco');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=787;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=594;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
