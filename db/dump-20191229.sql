-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Dez-2019 às 00:12
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

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
-- Estrutura da tabela `wp_ig_actions`
--

CREATE TABLE `wp_ig_actions` (
  `contact_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `campaign_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `link_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `list_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_actions`
--

INSERT INTO `wp_ig_actions` (`contact_id`, `message_id`, `campaign_id`, `type`, `count`, `link_id`, `list_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 0, 0, 1572992623, 1572992623),
(2, 1, 1, 2, 1, 0, 0, 1572992626, 1572992626),
(3, NULL, NULL, 1, 1, 0, 2, 1572992714, 1572992714);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_blocked_emails`
--

CREATE TABLE `wp_ig_blocked_emails` (
  `id` int(10) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_campaigns`
--

CREATE TABLE `wp_ig_campaigns` (
  `id` int(10) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_to_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_template_id` int(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_campaigns`
--

INSERT INTO `wp_ig_campaigns` (`id`, `slug`, `name`, `type`, `parent_id`, `parent_type`, `subject`, `body`, `from_name`, `from_email`, `reply_to_name`, `reply_to_email`, `categories`, `list_ids`, `base_template_id`, `status`, `meta`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'welcome-to-email-subscribers', 'Welcome To Email Subscribers', 'newsletter', NULL, NULL, NULL, '', 'Facelook Cosméticos', 'vinydias0509@gmail.com', 'Facelook Cosméticos', 'vinydias0509@gmail.com', '', '1', 180, 1, NULL, '2019-11-05 22:09:14', NULL, NULL),
(2, 'new-post-published-posttitle', 'New Post Published &#8211; {{POSTTITLE}}', 'post_notification', NULL, NULL, NULL, '', 'vinydias0509@gmail.com', 'Facelook Cosméticos', 'vinydias0509@gmail.com', 'Facelook Cosméticos', '##1##{T}blogs{T}##', '1', 181, 1, NULL, '2019-11-05 22:09:16', '2019-11-05 22:33:04', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_contactmeta`
--

CREATE TABLE `wp_ig_contactmeta` (
  `meta_id` bigint(20) NOT NULL,
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_contacts`
--

CREATE TABLE `wp_ig_contacts` (
  `id` int(10) NOT NULL,
  `wp_user_id` int(10) NOT NULL DEFAULT 0,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form_id` int(10) NOT NULL DEFAULT 0,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed` tinyint(1) NOT NULL DEFAULT 0,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `is_disposable` tinyint(1) DEFAULT 0,
  `is_rolebased` tinyint(1) DEFAULT 0,
  `is_webmail` tinyint(1) DEFAULT 0,
  `is_deliverable` tinyint(1) DEFAULT 0,
  `is_sendsafely` tinyint(1) DEFAULT 0,
  `meta` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_contacts`
--

INSERT INTO `wp_ig_contacts` (`id`, `wp_user_id`, `first_name`, `last_name`, `email`, `source`, `form_id`, `status`, `unsubscribed`, `hash`, `created_at`, `updated_at`, `is_verified`, `is_disposable`, `is_rolebased`, `is_webmail`, `is_deliverable`, `is_sendsafely`, `meta`) VALUES
(1, 1, 'vinydias0509@gmail.com', '', 'vinydias0509@gmail.com', 'admin', 0, 'verified', 0, 'quxcwo-bcsevq-engsti-msfxqg-vzisqp', '2019-11-05 22:08:10', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 1, ''),
(2, 0, 'lucasdasilvamendes123456', '', 'lucasdasilvamendes123456@gmail.com', 'admin', 0, 'verified', 0, 'ewagzu-fuzhqr-xrhtdo-wbatyv-ugdrwj', '2019-11-05 22:09:13', '0000-00-00 00:00:00', 1, 0, 0, 0, 1, 1, ''),
(3, 0, 'lucasdasilvamendes123456', '', 'lucasdasilvamendes123456@hotmail.com', 'form', 1, 'verified', 0, 'vtkxon-esqjnc-yztbeh-eyicnq-qfwuin', '2019-11-05 22:25:14', '2019-11-05 22:29:48', 1, 0, 0, 0, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_contacts_ips`
--

CREATE TABLE `wp_ig_contacts_ips` (
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_contact_meta`
--

CREATE TABLE `wp_ig_contact_meta` (
  `id` int(10) NOT NULL,
  `contact_id` bigint(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_forms`
--

CREATE TABLE `wp_ig_forms` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `styles` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `af_id` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_forms`
--

INSERT INTO `wp_ig_forms` (`id`, `name`, `body`, `settings`, `styles`, `created_at`, `updated_at`, `deleted_at`, `af_id`) VALUES
(1, 'Formulario', 'a:4:{i:0;a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:4:\"Name\";s:2:\"id\";s:4:\"name\";s:6:\"params\";a:4:{s:5:\"label\";s:0:\"\";s:12:\"place_holder\";s:0:\"\";s:4:\"show\";b:0;s:8:\"required\";b:0;}s:8:\"position\";i:1;}i:1;a:5:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:5:\"Email\";s:2:\"id\";s:5:\"email\";s:6:\"params\";a:4:{s:5:\"label\";s:0:\"\";s:12:\"place_holder\";s:20:\"Coloque o seu e-mail\";s:4:\"show\";b:1;s:8:\"required\";b:1;}s:8:\"position\";i:2;}i:2;a:5:{s:4:\"type\";s:8:\"checkbox\";s:4:\"name\";s:5:\"Lists\";s:2:\"id\";s:5:\"lists\";s:6:\"params\";a:4:{s:5:\"label\";s:5:\"Lists\";s:4:\"show\";b:0;s:8:\"required\";b:1;s:6:\"values\";a:1:{i:0;s:1:\"2\";}}s:8:\"position\";i:3;}i:3;a:5:{s:4:\"type\";s:6:\"submit\";s:4:\"name\";s:6:\"submit\";s:2:\"id\";s:6:\"submit\";s:6:\"params\";a:3:{s:5:\"label\";s:7:\"Assinar\";s:4:\"show\";b:1;s:8:\"required\";b:1;}s:8:\"position\";i:4;}}', 'a:3:{s:5:\"lists\";a:1:{i:0;s:1:\"2\";}s:4:\"desc\";s:0:\"\";s:12:\"form_version\";s:3:\"1.0\";}', NULL, '2019-11-05 22:08:10', '2019-11-05 22:24:20', NULL, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_links`
--

CREATE TABLE `wp_ig_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` int(10) UNSIGNED NOT NULL,
  `campaign_id` int(10) UNSIGNED NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `i` tinyint(1) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_lists`
--

CREATE TABLE `wp_ig_lists` (
  `id` int(10) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_lists`
--

INSERT INTO `wp_ig_lists` (`id`, `slug`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test', 'Test', '2019-11-05 22:08:10', NULL, NULL),
(2, 'main', 'Main', '2019-11-05 22:08:10', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_lists_contacts`
--

CREATE TABLE `wp_ig_lists_contacts` (
  `id` int(10) NOT NULL,
  `list_id` int(10) NOT NULL,
  `contact_id` int(10) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `optin_type` tinyint(4) NOT NULL,
  `subscribed_at` datetime DEFAULT NULL,
  `subscribed_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsubscribed_at` datetime DEFAULT NULL,
  `unsubscribed_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_lists_contacts`
--

INSERT INTO `wp_ig_lists_contacts` (`id`, `list_id`, `contact_id`, `status`, `optin_type`, `subscribed_at`, `subscribed_ip`, `unsubscribed_at`, `unsubscribed_ip`) VALUES
(1, 1, 1, 'subscribed', 1, '2019-11-05 22:08:10', '', NULL, NULL),
(2, 2, 1, 'subscribed', 1, '2019-11-05 22:08:10', '', NULL, NULL),
(3, 1, 2, 'subscribed', 1, '2019-11-05 22:09:13', '', NULL, NULL),
(5, 1, 3, 'subscribed', 2, '2019-11-05 22:29:48', '', NULL, NULL),
(6, 2, 3, 'subscribed', 2, '2019-11-05 22:29:48', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_mailing_queue`
--

CREATE TABLE `wp_ig_mailing_queue` (
  `id` int(10) NOT NULL,
  `hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_id` int(10) NOT NULL DEFAULT 0,
  `subject` text COLLATE utf8mb4_unicode_ci DEFAULT '',
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_at` datetime DEFAULT NULL,
  `finish_at` datetime DEFAULT NULL,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_mailing_queue`
--

INSERT INTO `wp_ig_mailing_queue` (`id`, `hash`, `campaign_id`, `subject`, `body`, `count`, `status`, `start_at`, `finish_at`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'ngjaub-qmdupz-cdwipr-jaukyl-ixndbe', 1, 'Welcome To Email Subscribers', '<strong style=\"color: #990000\">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style=\"color: #990000\">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 2, 'Sent', '2019-11-05 22:09:14', '2019-11-05 22:23:46', NULL, '2019-11-05 22:09:14', '2019-11-05 22:09:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_queue`
--

CREATE TABLE `wp_ig_queue` (
  `contact_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `campaign_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `requeued` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sent_at` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `error` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ignore_status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `options` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tags` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_ig_sending_queue`
--

CREATE TABLE `wp_ig_sending_queue` (
  `id` int(10) NOT NULL,
  `mailing_queue_id` int(10) NOT NULL DEFAULT 0,
  `mailing_queue_hash` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_id` int(10) NOT NULL DEFAULT 0,
  `contact_id` int(10) NOT NULL DEFAULT 0,
  `contact_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `links` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opened` int(1) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_ig_sending_queue`
--

INSERT INTO `wp_ig_sending_queue` (`id`, `mailing_queue_id`, `mailing_queue_hash`, `campaign_id`, `contact_id`, `contact_hash`, `email`, `status`, `links`, `opened`, `sent_at`, `opened_at`) VALUES
(1, 1, 'ngjaub-qmdupz-cdwipr-jaukyl-ixndbe', 1, 1, 'quxcwo-bcsevq-engsti-msfxqg-vzisqp', 'vinydias0509@gmail.com', 'Sent', '', 0, '2019-11-05 22:23:46', '0000-00-00 00:00:00'),
(2, 1, 'ngjaub-qmdupz-cdwipr-jaukyl-ixndbe', 1, 2, 'ewagzu-fuzhqr-xrhtdo-wbatyv-ugdrwj', 'lucasdasilvamendes123456@gmail.com', 'Sent', '', 0, '2019-11-05 22:23:46', '0000-00-00 00:00:00');

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
-- Estrutura da tabela `wp_newsletter`
--

CREATE TABLE `wp_newsletter` (
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S',
  `id` int(11) NOT NULL,
  `profile` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` int(11) NOT NULL DEFAULT 0,
  `last_activity` int(11) NOT NULL DEFAULT 0,
  `followup_step` tinyint(4) NOT NULL DEFAULT 0,
  `followup_time` bigint(20) NOT NULL DEFAULT 0,
  `followup` tinyint(4) NOT NULL DEFAULT 0,
  `surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sex` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'n',
  `feed_time` bigint(20) NOT NULL DEFAULT 0,
  `feed` tinyint(4) NOT NULL DEFAULT 0,
  `referrer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wp_user_id` int(11) NOT NULL DEFAULT 0,
  `http_referer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `geo` tinyint(4) NOT NULL DEFAULT 0,
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `region` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bounce_time` int(11) NOT NULL DEFAULT 0,
  `unsub_email_id` int(11) NOT NULL DEFAULT 0,
  `unsub_time` int(11) NOT NULL DEFAULT 0,
  `list_1` tinyint(4) NOT NULL DEFAULT 0,
  `list_2` tinyint(4) NOT NULL DEFAULT 0,
  `list_3` tinyint(4) NOT NULL DEFAULT 0,
  `list_4` tinyint(4) NOT NULL DEFAULT 0,
  `list_5` tinyint(4) NOT NULL DEFAULT 0,
  `list_6` tinyint(4) NOT NULL DEFAULT 0,
  `list_7` tinyint(4) NOT NULL DEFAULT 0,
  `list_8` tinyint(4) NOT NULL DEFAULT 0,
  `list_9` tinyint(4) NOT NULL DEFAULT 0,
  `list_10` tinyint(4) NOT NULL DEFAULT 0,
  `list_11` tinyint(4) NOT NULL DEFAULT 0,
  `list_12` tinyint(4) NOT NULL DEFAULT 0,
  `list_13` tinyint(4) NOT NULL DEFAULT 0,
  `list_14` tinyint(4) NOT NULL DEFAULT 0,
  `list_15` tinyint(4) NOT NULL DEFAULT 0,
  `list_16` tinyint(4) NOT NULL DEFAULT 0,
  `list_17` tinyint(4) NOT NULL DEFAULT 0,
  `list_18` tinyint(4) NOT NULL DEFAULT 0,
  `list_19` tinyint(4) NOT NULL DEFAULT 0,
  `list_20` tinyint(4) NOT NULL DEFAULT 0,
  `list_21` tinyint(4) NOT NULL DEFAULT 0,
  `list_22` tinyint(4) NOT NULL DEFAULT 0,
  `list_23` tinyint(4) NOT NULL DEFAULT 0,
  `list_24` tinyint(4) NOT NULL DEFAULT 0,
  `list_25` tinyint(4) NOT NULL DEFAULT 0,
  `list_26` tinyint(4) NOT NULL DEFAULT 0,
  `list_27` tinyint(4) NOT NULL DEFAULT 0,
  `list_28` tinyint(4) NOT NULL DEFAULT 0,
  `list_29` tinyint(4) NOT NULL DEFAULT 0,
  `list_30` tinyint(4) NOT NULL DEFAULT 0,
  `list_31` tinyint(4) NOT NULL DEFAULT 0,
  `list_32` tinyint(4) NOT NULL DEFAULT 0,
  `list_33` tinyint(4) NOT NULL DEFAULT 0,
  `list_34` tinyint(4) NOT NULL DEFAULT 0,
  `list_35` tinyint(4) NOT NULL DEFAULT 0,
  `list_36` tinyint(4) NOT NULL DEFAULT 0,
  `list_37` tinyint(4) NOT NULL DEFAULT 0,
  `list_38` tinyint(4) NOT NULL DEFAULT 0,
  `list_39` tinyint(4) NOT NULL DEFAULT 0,
  `list_40` tinyint(4) NOT NULL DEFAULT 0,
  `profile_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `profile_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `test` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_newsletter`
--

INSERT INTO `wp_newsletter` (`name`, `email`, `token`, `language`, `status`, `id`, `profile`, `created`, `updated`, `last_activity`, `followup_step`, `followup_time`, `followup`, `surname`, `sex`, `feed_time`, `feed`, `referrer`, `ip`, `wp_user_id`, `http_referer`, `geo`, `country`, `region`, `city`, `bounce_type`, `bounce_time`, `unsub_email_id`, `unsub_time`, `list_1`, `list_2`, `list_3`, `list_4`, `list_5`, `list_6`, `list_7`, `list_8`, `list_9`, `list_10`, `list_11`, `list_12`, `list_13`, `list_14`, `list_15`, `list_16`, `list_17`, `list_18`, `list_19`, `list_20`, `list_21`, `list_22`, `list_23`, `list_24`, `list_25`, `list_26`, `list_27`, `list_28`, `list_29`, `list_30`, `list_31`, `list_32`, `list_33`, `list_34`, `list_35`, `list_36`, `list_37`, `list_38`, `list_39`, `list_40`, `profile_1`, `profile_2`, `profile_3`, `profile_4`, `profile_5`, `profile_6`, `profile_7`, `profile_8`, `profile_9`, `profile_10`, `profile_11`, `profile_12`, `profile_13`, `profile_14`, `profile_15`, `profile_16`, `profile_17`, `profile_18`, `profile_19`, `profile_20`, `test`) VALUES
('', 'vinydias0509@gmail.com', 'a35b42bf39', '', 'C', 1, NULL, '2019-11-05 22:01:33', 0, 0, 0, 0, 0, '', 'n', 0, 0, '', '', 0, '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1),
('', 'algumacoisa@hotmail.com', 'f45eb22d46', '', 'C', 2, NULL, '2019-11-05 22:38:15', 1572993495, 0, 0, 0, 0, '', 'n', 0, 0, 'minimal', '::1', 0, 'http://localhost/Facelook/', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0),
('', 'lucasdasilvamendes123456@hotmail.com', 'ea6092256d', '', 'C', 3, NULL, '2019-11-05 22:39:46', 1572994016, 0, 0, 0, 0, '', 'n', 0, 0, 'minimal', '::1', 0, 'http://localhost/Facelook/', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_newsletter_emails`
--

CREATE TABLE `wp_newsletter_emails` (
  `id` int(11) NOT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message2` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('new','sending','sent','paused') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `total` int(11) NOT NULL DEFAULT 0,
  `last_id` int(11) NOT NULL DEFAULT 0,
  `sent` int(11) NOT NULL DEFAULT 0,
  `track` int(11) NOT NULL DEFAULT 0,
  `list` int(11) NOT NULL DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `query` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editor` tinyint(4) NOT NULL DEFAULT 0,
  `sex` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferences` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_on` int(11) NOT NULL DEFAULT 0,
  `token` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private` tinyint(1) NOT NULL DEFAULT 0,
  `click_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `open_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_newsletter_emails`
--

INSERT INTO `wp_newsletter_emails` (`id`, `language`, `subject`, `message`, `subject2`, `message2`, `name2`, `created`, `status`, `total`, `last_id`, `sent`, `track`, `list`, `type`, `query`, `editor`, `sex`, `theme`, `message_text`, `preferences`, `send_on`, `token`, `options`, `private`, `click_count`, `version`, `open_count`) VALUES
(1, '', 'Here the email subject', '<!DOCTYPE html>\n<html>\n<head>\n<title>Your email title</title>\n</head>\n<body>\n</body>\n</html>', '', NULL, '', '2019-11-05 22:36:45', 'new', 0, 0, 0, 1, 0, 'message', NULL, 1, '', '', NULL, NULL, 1572993405, '32e46e8375', NULL, 0, 0, '', 0),
(2, '', 'Email bolado', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n<title>Your email title</title>\r\n</head>\r\n<body>\r\n  email enviado com sucesso\r\n</body>\r\n</html>', '', NULL, '', '2019-11-05 22:47:31', 'new', 3, 0, 0, 1, 0, 'message', 'select * from wp_newsletter where status=\'C\' and sex in (\'n\')', 1, '', '', '', NULL, 1572991200, 'b4b1fc4125', 'a:4:{s:14:\"lists_operator\";s:2:\"or\";s:3:\"sex\";a:1:{i:0;s:1:\"n\";}s:6:\"status\";s:1:\"C\";s:8:\"wp_users\";s:1:\"0\";}', 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_newsletter_sent`
--

CREATE TABLE `wp_newsletter_sent` (
  `email_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `open` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `error` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_newsletter_stats`
--

CREATE TABLE `wp_newsletter_stats` (
  `id` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `email_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `link_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_newsletter_user_logs`
--

CREATE TABLE `wp_newsletter_user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_newsletter_user_logs`
--

INSERT INTO `wp_newsletter_user_logs` (`id`, `user_id`, `ip`, `source`, `data`, `created`) VALUES
(1, 2, '::1', 'subscribe', '{\"status\":\"C\"}', 1572993496),
(2, 3, '::1', 'subscribe', '{\"status\":\"C\"}', 1572993586),
(3, 3, '::1', 'subscribe', '{\"status\":\"C\"}', 1572994016);

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
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
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
(48, 'db_version', '45805', 'yes'),
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
(103, 'cron', 'a:7:{i:1577664052;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1577687200;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1577730398;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577730428;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577730433;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1577737004;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(167, 'recently_activated', 'a:0:{}', 'yes'),
(246, 'recovery_mode_email_last_sent', '1571344102', 'yes'),
(255, 'barber_category_children', 'a:0:{}', 'yes'),
(309, 'blog_category_children', 'a:0:{}', 'yes'),
(503, 'acf_version', '5.8.7', 'yes'),
(567, 'wdev-frash', 'a:3:{s:7:\"plugins\";a:1:{s:34:\"custom-sidebars/customsidebars.php\";i:1570546668;}s:5:\"queue\";a:2:{s:32:\"6a9b139509f3226afafc03dc81d90bd2\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:5:\"email\";s:7:\"show_at\";i:1570546668;}s:32:\"f21a0d5a84b747557fce042d7049df2b\";a:3:{s:6:\"plugin\";s:34:\"custom-sidebars/customsidebars.php\";s:4:\"type\";s:4:\"rate\";s:7:\"show_at\";i:1571151468;}}s:4:\"done\";a:0:{}}', 'no'),
(568, 'cs_modifiable', 'a:15:{s:10:\"modifiable\";a:1:{i:0;s:10:\"prod_categ\";}s:7:\"authors\";a:0:{}s:4:\"blog\";a:0:{}s:16:\"category_archive\";a:1:{i:8;a:1:{s:10:\"prod_categ\";s:4:\"cs-1\";}}s:14:\"category_pages\";N;s:14:\"category_posts\";N;s:15:\"category_single\";a:1:{i:8;a:1:{s:10:\"prod_categ\";s:4:\"cs-1\";}}s:4:\"date\";a:0:{}s:8:\"defaults\";N;s:17:\"post_type_archive\";a:0:{}s:15:\"post_type_pages\";N;s:16:\"post_type_single\";a:1:{s:5:\"prods\";a:0:{}}s:6:\"search\";a:0:{}s:4:\"tags\";a:0:{}s:6:\"screen\";a:1:{s:4:\"cs-1\";a:0:{}}}', 'yes'),
(571, 'cs_sidebars', 'a:1:{i:0;a:7:{s:2:\"id\";s:4:\"cs-1\";s:4:\"name\";s:7:\"product\";s:11:\"description\";s:8:\"produtos\";s:13:\"before_widget\";s:0:\"\";s:12:\"before_title\";s:0:\"\";s:12:\"after_widget\";s:0:\"\";s:11:\"after_title\";s:0:\"\";}}', 'yes'),
(579, 'widget_custom-post-type-archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(580, 'widget_custom-post-type-categories', 'a:2:{i:2;a:5:{s:5:\"title\";s:10:\"Categorias\";s:8:\"taxonomy\";s:16:\"produto_category\";s:5:\"count\";b:0;s:12:\"hierarchical\";b:0;s:8:\"dropdown\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(581, 'widget_custom-post-type-calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(582, 'widget_custom-post-type-tag-cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(868, 'newsletter_logger_secret', '73123a79', 'yes'),
(870, 'newsletter_main_first_install_time', '1572991273', 'no'),
(871, 'newsletter_main', 'a:31:{s:11:\"return_path\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"sender_email\";s:28:\"lucasdasilvamendes@gmail.com\";s:11:\"sender_name\";s:20:\"Facelook Cosméticos\";s:6:\"editor\";i:0;s:13:\"scheduler_max\";i:100;s:9:\"phpmailer\";i:0;s:5:\"debug\";i:0;s:5:\"track\";i:1;s:3:\"css\";s:0:\"\";s:12:\"css_disabled\";i:0;s:2:\"ip\";s:0:\"\";s:4:\"page\";i:179;s:19:\"disable_cron_notice\";i:0;s:13:\"do_shortcodes\";i:0;s:11:\"header_logo\";s:0:\"\";s:12:\"header_title\";s:20:\"Facelook Cosméticos\";s:10:\"header_sub\";s:26:\"Só mais um site WordPress\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:14:\"googleplus_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";}', 'yes'),
(872, 'newsletter_main_info', 'a:16:{s:11:\"header_logo\";a:1:{s:2:\"id\";i:0;}s:12:\"header_title\";s:20:\"Facelook Cosméticos\";s:10:\"header_sub\";s:26:\"Só mais um site WordPress\";s:12:\"footer_title\";s:0:\"\";s:14:\"footer_contact\";s:0:\"\";s:12:\"footer_legal\";s:0:\"\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:14:\"googleplus_url\";s:0:\"\";s:13:\"pinterest_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:10:\"tumblr_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:9:\"vimeo_url\";s:0:\"\";s:14:\"soundcloud_url\";s:0:\"\";}', 'yes'),
(873, 'newsletter_main_smtp', 'a:7:{s:7:\"enabled\";i:0;s:4:\"host\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";s:4:\"port\";i:25;s:6:\"secure\";s:0:\"\";s:12:\"ssl_insecure\";i:0;}', 'yes'),
(874, 'newsletter_main_version', '1.5.1', 'yes'),
(875, 'newsletter_subscription_first_install_time', '1572991277', 'no'),
(876, 'newsletter', 'a:20:{s:14:\"noconfirmation\";i:1;s:9:\"antiflood\";i:10;s:12:\"ip_blacklist\";a:0:{}s:17:\"address_blacklist\";a:0:{}s:12:\"domain_check\";i:0;s:7:\"akismet\";i:0;s:7:\"captcha\";i:0;s:12:\"notify_email\";s:22:\"vinydias0509@gmail.com\";s:8:\"multiple\";i:1;s:6:\"notify\";i:0;s:10:\"error_text\";s:102:\"<p>You cannot subscribe with the email address you entered, please contact the site administrator.</p>\";s:17:\"subscription_text\";s:19:\"{subscription_form}\";s:17:\"confirmation_text\";s:104:\"<p>A confirmation email is on the way. Follow the instructions and check the spam folder. Thank you.</p>\";s:20:\"confirmation_subject\";s:32:\"Please confirm your subscription\";s:21:\"confirmation_tracking\";s:0:\"\";s:20:\"confirmation_message\";s:94:\"<p>Please confirm your subscription <a href=\"{subscription_confirm_url}\">clicking here</a></p>\";s:14:\"confirmed_text\";s:43:\"<p>Your subscription has been confirmed</p>\";s:17:\"confirmed_subject\";s:7:\"Welcome\";s:17:\"confirmed_message\";s:130:\"<p>This message confirms your subscription to our newsletter. Thank you!</p><hr><p><a href=\"{profile_url}\">Change your profile</p>\";s:18:\"confirmed_tracking\";s:0:\"\";}', 'yes'),
(877, 'newsletter_subscription_lists', 'a:160:{s:6:\"list_1\";s:0:\"\";s:13:\"list_1_status\";i:0;s:14:\"list_1_checked\";i:0;s:13:\"list_1_forced\";i:0;s:6:\"list_2\";s:0:\"\";s:13:\"list_2_status\";i:0;s:14:\"list_2_checked\";i:0;s:13:\"list_2_forced\";i:0;s:6:\"list_3\";s:0:\"\";s:13:\"list_3_status\";i:0;s:14:\"list_3_checked\";i:0;s:13:\"list_3_forced\";i:0;s:6:\"list_4\";s:0:\"\";s:13:\"list_4_status\";i:0;s:14:\"list_4_checked\";i:0;s:13:\"list_4_forced\";i:0;s:6:\"list_5\";s:0:\"\";s:13:\"list_5_status\";i:0;s:14:\"list_5_checked\";i:0;s:13:\"list_5_forced\";i:0;s:6:\"list_6\";s:0:\"\";s:13:\"list_6_status\";i:0;s:14:\"list_6_checked\";i:0;s:13:\"list_6_forced\";i:0;s:6:\"list_7\";s:0:\"\";s:13:\"list_7_status\";i:0;s:14:\"list_7_checked\";i:0;s:13:\"list_7_forced\";i:0;s:6:\"list_8\";s:0:\"\";s:13:\"list_8_status\";i:0;s:14:\"list_8_checked\";i:0;s:13:\"list_8_forced\";i:0;s:6:\"list_9\";s:0:\"\";s:13:\"list_9_status\";i:0;s:14:\"list_9_checked\";i:0;s:13:\"list_9_forced\";i:0;s:7:\"list_10\";s:0:\"\";s:14:\"list_10_status\";i:0;s:15:\"list_10_checked\";i:0;s:14:\"list_10_forced\";i:0;s:7:\"list_11\";s:0:\"\";s:14:\"list_11_status\";i:0;s:15:\"list_11_checked\";i:0;s:14:\"list_11_forced\";i:0;s:7:\"list_12\";s:0:\"\";s:14:\"list_12_status\";i:0;s:15:\"list_12_checked\";i:0;s:14:\"list_12_forced\";i:0;s:7:\"list_13\";s:0:\"\";s:14:\"list_13_status\";i:0;s:15:\"list_13_checked\";i:0;s:14:\"list_13_forced\";i:0;s:7:\"list_14\";s:0:\"\";s:14:\"list_14_status\";i:0;s:15:\"list_14_checked\";i:0;s:14:\"list_14_forced\";i:0;s:7:\"list_15\";s:0:\"\";s:14:\"list_15_status\";i:0;s:15:\"list_15_checked\";i:0;s:14:\"list_15_forced\";i:0;s:7:\"list_16\";s:0:\"\";s:14:\"list_16_status\";i:0;s:15:\"list_16_checked\";i:0;s:14:\"list_16_forced\";i:0;s:7:\"list_17\";s:0:\"\";s:14:\"list_17_status\";i:0;s:15:\"list_17_checked\";i:0;s:14:\"list_17_forced\";i:0;s:7:\"list_18\";s:0:\"\";s:14:\"list_18_status\";i:0;s:15:\"list_18_checked\";i:0;s:14:\"list_18_forced\";i:0;s:7:\"list_19\";s:0:\"\";s:14:\"list_19_status\";i:0;s:15:\"list_19_checked\";i:0;s:14:\"list_19_forced\";i:0;s:7:\"list_20\";s:0:\"\";s:14:\"list_20_status\";i:0;s:15:\"list_20_checked\";i:0;s:14:\"list_20_forced\";i:0;s:7:\"list_21\";s:0:\"\";s:14:\"list_21_status\";i:0;s:15:\"list_21_checked\";i:0;s:14:\"list_21_forced\";i:0;s:7:\"list_22\";s:0:\"\";s:14:\"list_22_status\";i:0;s:15:\"list_22_checked\";i:0;s:14:\"list_22_forced\";i:0;s:7:\"list_23\";s:0:\"\";s:14:\"list_23_status\";i:0;s:15:\"list_23_checked\";i:0;s:14:\"list_23_forced\";i:0;s:7:\"list_24\";s:0:\"\";s:14:\"list_24_status\";i:0;s:15:\"list_24_checked\";i:0;s:14:\"list_24_forced\";i:0;s:7:\"list_25\";s:0:\"\";s:14:\"list_25_status\";i:0;s:15:\"list_25_checked\";i:0;s:14:\"list_25_forced\";i:0;s:7:\"list_26\";s:0:\"\";s:14:\"list_26_status\";i:0;s:15:\"list_26_checked\";i:0;s:14:\"list_26_forced\";i:0;s:7:\"list_27\";s:0:\"\";s:14:\"list_27_status\";i:0;s:15:\"list_27_checked\";i:0;s:14:\"list_27_forced\";i:0;s:7:\"list_28\";s:0:\"\";s:14:\"list_28_status\";i:0;s:15:\"list_28_checked\";i:0;s:14:\"list_28_forced\";i:0;s:7:\"list_29\";s:0:\"\";s:14:\"list_29_status\";i:0;s:15:\"list_29_checked\";i:0;s:14:\"list_29_forced\";i:0;s:7:\"list_30\";s:0:\"\";s:14:\"list_30_status\";i:0;s:15:\"list_30_checked\";i:0;s:14:\"list_30_forced\";i:0;s:7:\"list_31\";s:0:\"\";s:14:\"list_31_status\";i:0;s:15:\"list_31_checked\";i:0;s:14:\"list_31_forced\";i:0;s:7:\"list_32\";s:0:\"\";s:14:\"list_32_status\";i:0;s:15:\"list_32_checked\";i:0;s:14:\"list_32_forced\";i:0;s:7:\"list_33\";s:0:\"\";s:14:\"list_33_status\";i:0;s:15:\"list_33_checked\";i:0;s:14:\"list_33_forced\";i:0;s:7:\"list_34\";s:0:\"\";s:14:\"list_34_status\";i:0;s:15:\"list_34_checked\";i:0;s:14:\"list_34_forced\";i:0;s:7:\"list_35\";s:0:\"\";s:14:\"list_35_status\";i:0;s:15:\"list_35_checked\";i:0;s:14:\"list_35_forced\";i:0;s:7:\"list_36\";s:0:\"\";s:14:\"list_36_status\";i:0;s:15:\"list_36_checked\";i:0;s:14:\"list_36_forced\";i:0;s:7:\"list_37\";s:0:\"\";s:14:\"list_37_status\";i:0;s:15:\"list_37_checked\";i:0;s:14:\"list_37_forced\";i:0;s:7:\"list_38\";s:0:\"\";s:14:\"list_38_status\";i:0;s:15:\"list_38_checked\";i:0;s:14:\"list_38_forced\";i:0;s:7:\"list_39\";s:0:\"\";s:14:\"list_39_status\";i:0;s:15:\"list_39_checked\";i:0;s:14:\"list_39_forced\";i:0;s:7:\"list_40\";s:0:\"\";s:14:\"list_40_status\";i:0;s:15:\"list_40_checked\";i:0;s:14:\"list_40_forced\";i:0;}', 'yes'),
(878, 'newsletter_subscription_template', 'a:1:{s:8:\"template\";s:2365:\"<!DOCTYPE html>\n<html>\n    <head>\n        <!-- General styles, not used by all email clients -->\n        <style type=\"text/css\" media=\"all\">\n            a {\n                text-decoration: none;\n                color: #0088cc;\n            }\n            hr {\n                border-top: 1px solid #999;\n            }\n        </style>\n    </head>\n\n    <!-- KEEP THE LAYOUT SIMPLE: THOSE ARE SERVICE MESSAGES. -->\n    <body style=\"margin: 0; padding: 0;\">\n\n        <!-- Top title with dark background -->\n        <table style=\"background-color: #444; width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n            <tr>\n                <td style=\"padding: 20px; text-align: center; font-family: sans-serif; color: #fff; font-size: 28px\">\n                    {blog_title}\n                </td>\n            </tr>\n        </table>\n\n        <!-- Main table 100% wide with background color #eee -->    \n        <table style=\"background-color: #eee; width: 100%;\">\n            <tr>\n                <td align=\"center\" style=\"padding: 15px;\">\n\n                    <!-- Content table with backgdound color #fff, width 500px -->\n                    <table style=\"background-color: #fff; max-width: 600px; width: 100%; border: 1px solid #ddd;\">\n                        <tr>\n                            <td style=\"padding: 15px; color: #333; font-size: 16px; font-family: sans-serif\">\n                                <!-- The \"message\" tag below is replaced with one of confirmation, welcome or goodbye messages -->\n                                <!-- Messages content can be configured on Newsletter List Building panels --> \n\n                                {message}\n\n                                <hr>\n                                <!-- Signature if not already added to single messages (surround with <p>) -->\n                                <p>\n                                    <small>\n                                        <a href=\"{blog_url}\">{blog_url}</a><br>\n                                        {company_name}<br>\n                                        {company_address}\n                                    </small>\n                                </p>\n                                \n\n                            </td>\n                        </tr>\n                    </table>\n\n                </td>\n            </tr>\n        </table>\n\n    </body>\n</html>\";}', 'yes'),
(879, 'newsletter_profile', 'a:184:{s:5:\"email\";s:5:\"Email\";s:11:\"email_error\";s:28:\"Email address is not correct\";s:4:\"name\";s:23:\"First name or full name\";s:10:\"name_error\";s:16:\"Name is required\";s:11:\"name_status\";i:0;s:10:\"name_rules\";i:0;s:7:\"surname\";s:9:\"Last name\";s:13:\"surname_error\";s:21:\"Last name is required\";s:14:\"surname_status\";i:0;s:10:\"sex_status\";i:0;s:3:\"sex\";s:3:\"I\'m\";s:7:\"privacy\";s:44:\"By continuing, you accept the privacy policy\";s:13:\"privacy_error\";s:34:\"You must accept the privacy policy\";s:14:\"privacy_status\";i:0;s:11:\"privacy_url\";s:0:\"\";s:18:\"privacy_use_wp_url\";i:0;s:9:\"subscribe\";s:6:\"Enviar\";s:12:\"title_female\";s:3:\"Ms.\";s:10:\"title_male\";s:3:\"Mr.\";s:10:\"title_none\";s:4:\"Dear\";s:8:\"sex_male\";s:3:\"Man\";s:10:\"sex_female\";s:5:\"Woman\";s:8:\"sex_none\";s:13:\"Not specified\";s:13:\"profile_error\";s:34:\"A mandatory field is not filled in\";s:16:\"profile_1_status\";i:0;s:9:\"profile_1\";s:0:\"\";s:14:\"profile_1_type\";s:4:\"text\";s:21:\"profile_1_placeholder\";s:0:\"\";s:15:\"profile_1_rules\";i:0;s:17:\"profile_1_options\";s:0:\"\";s:16:\"profile_2_status\";i:0;s:9:\"profile_2\";s:0:\"\";s:14:\"profile_2_type\";s:4:\"text\";s:21:\"profile_2_placeholder\";s:0:\"\";s:15:\"profile_2_rules\";i:0;s:17:\"profile_2_options\";s:0:\"\";s:16:\"profile_3_status\";i:0;s:9:\"profile_3\";s:0:\"\";s:14:\"profile_3_type\";s:4:\"text\";s:21:\"profile_3_placeholder\";s:0:\"\";s:15:\"profile_3_rules\";i:0;s:17:\"profile_3_options\";s:0:\"\";s:16:\"profile_4_status\";i:0;s:9:\"profile_4\";s:0:\"\";s:14:\"profile_4_type\";s:4:\"text\";s:21:\"profile_4_placeholder\";s:0:\"\";s:15:\"profile_4_rules\";i:0;s:17:\"profile_4_options\";s:0:\"\";s:16:\"profile_5_status\";i:0;s:9:\"profile_5\";s:0:\"\";s:14:\"profile_5_type\";s:4:\"text\";s:21:\"profile_5_placeholder\";s:0:\"\";s:15:\"profile_5_rules\";i:0;s:17:\"profile_5_options\";s:0:\"\";s:16:\"profile_6_status\";i:0;s:9:\"profile_6\";s:0:\"\";s:14:\"profile_6_type\";s:4:\"text\";s:21:\"profile_6_placeholder\";s:0:\"\";s:15:\"profile_6_rules\";i:0;s:17:\"profile_6_options\";s:0:\"\";s:16:\"profile_7_status\";i:0;s:9:\"profile_7\";s:0:\"\";s:14:\"profile_7_type\";s:4:\"text\";s:21:\"profile_7_placeholder\";s:0:\"\";s:15:\"profile_7_rules\";i:0;s:17:\"profile_7_options\";s:0:\"\";s:16:\"profile_8_status\";i:0;s:9:\"profile_8\";s:0:\"\";s:14:\"profile_8_type\";s:4:\"text\";s:21:\"profile_8_placeholder\";s:0:\"\";s:15:\"profile_8_rules\";i:0;s:17:\"profile_8_options\";s:0:\"\";s:16:\"profile_9_status\";i:0;s:9:\"profile_9\";s:0:\"\";s:14:\"profile_9_type\";s:4:\"text\";s:21:\"profile_9_placeholder\";s:0:\"\";s:15:\"profile_9_rules\";i:0;s:17:\"profile_9_options\";s:0:\"\";s:17:\"profile_10_status\";i:0;s:10:\"profile_10\";s:0:\"\";s:15:\"profile_10_type\";s:4:\"text\";s:22:\"profile_10_placeholder\";s:0:\"\";s:16:\"profile_10_rules\";i:0;s:18:\"profile_10_options\";s:0:\"\";s:17:\"profile_11_status\";i:0;s:10:\"profile_11\";s:0:\"\";s:15:\"profile_11_type\";s:4:\"text\";s:22:\"profile_11_placeholder\";s:0:\"\";s:16:\"profile_11_rules\";i:0;s:18:\"profile_11_options\";s:0:\"\";s:17:\"profile_12_status\";i:0;s:10:\"profile_12\";s:0:\"\";s:15:\"profile_12_type\";s:4:\"text\";s:22:\"profile_12_placeholder\";s:0:\"\";s:16:\"profile_12_rules\";i:0;s:18:\"profile_12_options\";s:0:\"\";s:17:\"profile_13_status\";i:0;s:10:\"profile_13\";s:0:\"\";s:15:\"profile_13_type\";s:4:\"text\";s:22:\"profile_13_placeholder\";s:0:\"\";s:16:\"profile_13_rules\";i:0;s:18:\"profile_13_options\";s:0:\"\";s:17:\"profile_14_status\";i:0;s:10:\"profile_14\";s:0:\"\";s:15:\"profile_14_type\";s:4:\"text\";s:22:\"profile_14_placeholder\";s:0:\"\";s:16:\"profile_14_rules\";i:0;s:18:\"profile_14_options\";s:0:\"\";s:17:\"profile_15_status\";i:0;s:10:\"profile_15\";s:0:\"\";s:15:\"profile_15_type\";s:4:\"text\";s:22:\"profile_15_placeholder\";s:0:\"\";s:16:\"profile_15_rules\";i:0;s:18:\"profile_15_options\";s:0:\"\";s:17:\"profile_16_status\";i:0;s:10:\"profile_16\";s:0:\"\";s:15:\"profile_16_type\";s:4:\"text\";s:22:\"profile_16_placeholder\";s:0:\"\";s:16:\"profile_16_rules\";i:0;s:18:\"profile_16_options\";s:0:\"\";s:17:\"profile_17_status\";i:0;s:10:\"profile_17\";s:0:\"\";s:15:\"profile_17_type\";s:4:\"text\";s:22:\"profile_17_placeholder\";s:0:\"\";s:16:\"profile_17_rules\";i:0;s:18:\"profile_17_options\";s:0:\"\";s:17:\"profile_18_status\";i:0;s:10:\"profile_18\";s:0:\"\";s:15:\"profile_18_type\";s:4:\"text\";s:22:\"profile_18_placeholder\";s:0:\"\";s:16:\"profile_18_rules\";i:0;s:18:\"profile_18_options\";s:0:\"\";s:17:\"profile_19_status\";i:0;s:10:\"profile_19\";s:0:\"\";s:15:\"profile_19_type\";s:4:\"text\";s:22:\"profile_19_placeholder\";s:0:\"\";s:16:\"profile_19_rules\";i:0;s:18:\"profile_19_options\";s:0:\"\";s:17:\"profile_20_status\";i:0;s:10:\"profile_20\";s:0:\"\";s:15:\"profile_20_type\";s:4:\"text\";s:22:\"profile_20_placeholder\";s:0:\"\";s:16:\"profile_20_rules\";i:0;s:18:\"profile_20_options\";s:0:\"\";s:13:\"list_1_forced\";i:0;s:13:\"list_2_forced\";i:0;s:13:\"list_3_forced\";i:0;s:13:\"list_4_forced\";i:0;s:13:\"list_5_forced\";i:0;s:13:\"list_6_forced\";i:0;s:13:\"list_7_forced\";i:0;s:13:\"list_8_forced\";i:0;s:13:\"list_9_forced\";i:0;s:14:\"list_10_forced\";i:0;s:14:\"list_11_forced\";i:0;s:14:\"list_12_forced\";i:0;s:14:\"list_13_forced\";i:0;s:14:\"list_14_forced\";i:0;s:14:\"list_15_forced\";i:0;s:14:\"list_16_forced\";i:0;s:14:\"list_17_forced\";i:0;s:14:\"list_18_forced\";i:0;s:14:\"list_19_forced\";i:0;s:14:\"list_20_forced\";i:0;s:14:\"list_21_forced\";i:0;s:14:\"list_22_forced\";i:0;s:14:\"list_23_forced\";i:0;s:14:\"list_24_forced\";i:0;s:14:\"list_25_forced\";i:0;s:14:\"list_26_forced\";i:0;s:14:\"list_27_forced\";i:0;s:14:\"list_28_forced\";i:0;s:14:\"list_29_forced\";i:0;s:14:\"list_30_forced\";i:0;s:14:\"list_31_forced\";i:0;s:14:\"list_32_forced\";i:0;s:14:\"list_33_forced\";i:0;s:14:\"list_34_forced\";i:0;s:14:\"list_35_forced\";i:0;s:14:\"list_36_forced\";i:0;s:14:\"list_37_forced\";i:0;s:14:\"list_38_forced\";i:0;s:14:\"list_39_forced\";i:0;s:14:\"list_40_forced\";i:0;}', 'yes'),
(880, 'newsletter_subscription_version', '2.1.7', 'yes'),
(881, 'newsletter_unsubscription_first_install_time', '1572991278', 'no'),
(882, 'newsletter_unsubscription', 'a:6:{s:16:\"unsubscribe_text\";s:103:\"<p>Please confirm you want to unsubscribe <a href=\"{unsubscription_confirm_url}\">clicking here</a>.</p>\";s:10:\"error_text\";s:99:\"<p>Subscriber not found, it probably has already been removed. No further actions are required.</p>\";s:17:\"unsubscribed_text\";s:124:\"<p>Your subscription has been deleted. If that was an error you can <a href=\"{reactivate_url}\">subscribe again here</a>.</p>\";s:20:\"unsubscribed_subject\";s:7:\"Goodbye\";s:20:\"unsubscribed_message\";s:87:\"<p>This message confirms that you have unsubscribed from our newsletter. Thank you.</p>\";s:16:\"reactivated_text\";s:46:\"<p>Your subscription has been reactivated.</p>\";}', 'yes'),
(883, 'newsletter_unsubscription_version', '1.0.0', 'yes'),
(884, 'newsletter_profile_first_install_time', '1572991279', 'no'),
(885, 'newsletter_profile_main', 'a:8:{s:4:\"text\";s:188:\"{profile_form}\n    <p>If you change your email address, a confirmation email will be sent to activate it.</p>\n    <p><a href=\"{unsubscription_confirm_url}\">Cancel your subscription</a></p>\";s:13:\"email_changed\";s:81:\"Your email has been changed, an activation email has been sent with instructions.\";s:5:\"error\";s:42:\"Your email is not valid or already in use.\";s:10:\"save_label\";s:4:\"Save\";s:13:\"privacy_label\";s:21:\"Read our privacy note\";s:5:\"saved\";s:14:\"Profile saved.\";s:18:\"export_newsletters\";i:0;s:3:\"url\";s:0:\"\";}', 'yes'),
(886, 'newsletter_profile_version', '1.1.0', 'yes'),
(887, 'newsletter_emails_first_install_time', '1572991279', 'no'),
(888, 'newsletter_emails', 'a:1:{s:5:\"theme\";s:7:\"default\";}', 'yes'),
(889, 'newsletter_emails_theme_default', 'a:0:{}', 'no'),
(890, 'newsletter_emails_version', '1.1.5', 'yes'),
(891, 'newsletter_users_first_install_time', '1572991279', 'no'),
(892, 'newsletter_users', 'a:0:{}', 'yes'),
(893, 'newsletter_users_version', '1.3.0', 'yes'),
(894, 'newsletter_statistics_first_install_time', '1572991281', 'no'),
(895, 'newsletter_statistics', 'a:1:{s:3:\"key\";s:32:\"d4a97d29fa5ba8efec374a3a13a67b2a\";}', 'yes'),
(896, 'newsletter_statistics_version', '1.1.8', 'yes'),
(897, 'newsletter_install_time', '1572991284', 'no'),
(898, 'widget_newsletterwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(899, 'widget_newsletterwidgetminimal', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(902, 'newsletter_page', '179', 'no'),
(904, 'newsletter_diagnostic_cron_calls', 'a:16:{i:0;i:1572991316;i:1;i:1572991627;i:2;i:1572991695;i:3;i:1572991920;i:4;i:1572992251;i:5;i:1572992545;i:6;i:1572992619;i:7;i:1572992861;i:8;i:1572993145;i:9;i:1572993407;i:10;i:1572993495;i:11;i:1572993708;i:12;i:1572994009;i:13;i:1572994311;i:14;i:1572994672;i:15;i:1572994913;}', 'no'),
(905, 'newsletter_diagnostic_cron_data', '', 'no'),
(908, 'newsletter_main_status', 'a:2:{s:4:\"mail\";i:0;s:10:\"mail_error\";N;}', 'yes'),
(916, 'ig_es_from_name', 'Facelook Cosméticos', 'no'),
(917, 'ig_es_from_email', 'vinydias0509@gmail.com', 'no'),
(918, 'ig_es_admin_new_contact_email_subject', 'One more contact joins our tribe!', 'no'),
(919, 'ig_es_admin_new_contact_email_content', 'Hi,\r\n\r\nYour friendly Email Subscribers notification bot here!\r\n\r\n{{NAME}} ({{EMAIL}}) joined our tribe just now.\r\n\r\nWhich list/s? {{LIST}}\r\n\r\nIf you know this person, or if they are an influencer, you may want to reach out to them personally!\r\n\r\nLater...', 'no'),
(920, 'ig_es_admin_emails', 'vinydias0509@gmail.com', 'no'),
(921, 'ig_es_confirmation_mail_subject', 'Thanks!', 'no'),
(922, 'ig_es_confirmation_mail_content', 'Hi {{NAME}},\r\n\r\nJust one more step before we share the awesomeness from {{SITENAME}}!\r\n\r\nPlease confirm your subscription by clicking on this link:\r\n\r\n{{SUBSCRIBE-LINK}}\r\n\r\nThanks!', 'no'),
(923, 'ig_es_enable_welcome_email', 'yes', 'no'),
(924, 'ig_es_welcome_email_subject', 'Welcome to {{SITENAME}}', 'no'),
(925, 'ig_es_welcome_email_content', 'Hi {{NAME}},\r\n\r\nJust wanted to send you a quick note...\r\n\r\nThank you for joining the awesome {{SITENAME}} tribe.\r\n\r\nOnly valuable emails from me, promise!\r\n\r\nThanks!', 'no'),
(926, 'ig_es_enable_cron_admin_email', 'yes', 'no'),
(927, 'ig_es_cron_admin_email', 'Hi Admin,\r\n\r\nCron URL has been triggered successfully on {{DATE}} for the email \'{{SUBJECT}}\'. And it sent email to {{COUNT}} recipient(s).\r\n\r\nBest,\r\nFacelook Cosméticos', 'no'),
(928, 'ig_es_cronurl', 'http://localhost/Facelook?es=cron&guid=nmpauy-jxatlc-bkeaoh-ovxtmg-jnefdi', 'no'),
(929, 'ig_es_hourly_email_send_limit', '300', 'no'),
(930, 'ig_es_sent_report_subject', 'Your email has been sent', 'no'),
(931, 'ig_es_sent_report_content', 'Hi Admin,\n\nEmail has been sent successfully to {{COUNT}} email(s). Please find the details below:\n\nUnique ID: {{UNIQUE}}\nStart Time: {{STARTTIME}}\nEnd Time: {{ENDTIME}}\nFor more information, login to your dashboard and go to Reports menu in Email Subscribers.\n\nThank You.', 'no'),
(932, 'ig_es_unsubscribe_link', 'http://localhost/Facelook/?es=unsubscribe&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'no'),
(933, 'ig_es_optin_link', 'http://localhost/Facelook/?es=optin&db={{DBID}}&email={{EMAIL}}&guid={{GUID}}', 'no'),
(934, 'ig_es_unsubscribe_link_content', 'I\'d be sad to see you go. But if you want to, you can unsubscribe from here: {{UNSUBSCRIBE-LINK}}', 'no'),
(935, 'ig_es_email_type', 'wp_html_mail', 'no'),
(936, 'ig_es_notify_admin', 'yes', 'no'),
(937, 'ig_es_optin_type', 'double_opt_in', 'no'),
(938, 'ig_es_subscription_error_messsage', 'Hmm.. Something\'s amiss..\r\n\r\nCould not complete your request. That email address  is probably already subscribed. Or worse blocked!!\r\n\r\nPlease try again after some time - or contact us if the problem persists.\r\n\r\n', 'no'),
(939, 'ig_es_subscription_success_message', 'You have been successfully subscribed.', 'no'),
(940, 'ig_es_unsubscribe_error_message', 'Urrgh.. Something\'s wrong..\r\n\r\nAre you sure that email address is on our file? There was some problem in completing your request.\r\n\r\nPlease try again after some time - or contact us if the problem persists.\r\n\r\n', 'no'),
(941, 'ig_es_unsubscribe_success_message', '<h2>Unsubscribed.</h2><p>You will no longer hear from us. ☹️ Sorry to see you go!</p>', 'no'),
(942, 'ig_es_post_image_size', 'thumbnail', 'no'),
(943, 'ig_es_db_version', '4.2.4', 'no'),
(944, 'ig_es_current_version_date_details', 'a:2:{s:18:\"es_current_version\";s:5:\"4.2.4\";s:15:\"es_current_date\";s:19:\"05/11/2019 20:08:11\";}', 'no'),
(945, 'ig_es_enable_captcha', '', 'no'),
(946, 'ig_es_roles_and_capabilities', '', 'no'),
(947, 'ig_es_sample_data_imported', 'no', 'no'),
(948, 'ig_es_default_subscriber_imported', 'no', 'no'),
(949, 'ig_es_set_widget', '', 'no'),
(950, 'ig_es_sync_wp_users', '', 'no'),
(951, 'ig_es_blocked_domains', 'mail.ru', 'no'),
(952, 'ig_es_disable_wp_cron', 'no', 'no'),
(953, 'ig_es_track_email_opens', 'yes', 'no'),
(954, 'ig_es_installed_on', '2019-11-05 22:08:07', 'no'),
(955, 'ig_es_form_submission_success_message', 'Your subscription was successful! Kindly check your mailbox and confirm your subscription. If you don\'t see the email within a few minutes, check the spam/junk folder.', 'no'),
(956, 'ig_es_db_update_history', 'a:1:{s:5:\"4.2.4\";s:19:\"2019-11-05 22:08:07\";}', 'no'),
(957, 'ig_es_email_sent_data', 'a:1:{s:10:\"2019-11-05\";a:1:{i:22;i:2;}}', 'no'),
(958, 'ig_es_mailer_settings', 'a:1:{s:6:\"mailer\";s:6:\"wpmail\";}', 'no'),
(960, 'ig_admin_notices', 'a:0:{}', 'yes'),
(961, 'widget_email-subscribers-form', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(963, 'ig_es_onboarding_test_campaign_error', 'yes', 'yes'),
(964, 'ig_es_onboarding_complete', 'yes', 'yes'),
(974, 'ig_es_last_cron_run', '1572992628', 'yes'),
(984, 'newsletter_users_search', 'a:4:{s:11:\"search_text\";s:0:\"\";s:13:\"search_status\";s:0:\"\";s:11:\"search_list\";s:0:\"\";s:11:\"search_page\";i:0;}', 'yes'),
(1105, 'ai1wm_updater', 'a:0:{}', 'yes'),
(1180, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1573919631;s:7:\"version\";s:5:\"5.1.5\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(1188, 'swpsmtp_options', 'a:8:{s:16:\"from_email_field\";s:22:\"vinydias0509@gmail.com\";s:15:\"from_name_field\";s:20:\"Facelook Cosméticos\";s:23:\"force_from_name_replace\";b:0;s:13:\"smtp_settings\";a:9:{s:4:\"host\";s:14:\"smtp.gmail.com\";s:15:\"type_encryption\";s:3:\"ssl\";s:4:\"port\";s:3:\"587\";s:13:\"autentication\";s:2:\"no\";s:8:\"username\";s:22:\"vinydias0509@gmail.com\";s:8:\"password\";s:16:\"Y294aW5oYTEyMzQ=\";s:12:\"enable_debug\";b:0;s:12:\"insecure_ssl\";b:0;s:12:\"encrypt_pass\";b:0;}s:15:\"allowed_domains\";s:12:\"bG9jYWxob3N0\";s:14:\"reply_to_email\";s:0:\"\";s:17:\"email_ignore_list\";s:0:\"\";s:19:\"enable_domain_check\";b:0;}', 'yes'),
(1189, 'smtp_test_mail', 'a:3:{s:10:\"swpsmtp_to\";s:22:\"fernandoardo@gmail.com\";s:15:\"swpsmtp_subject\";s:3:\"123\";s:15:\"swpsmtp_message\";s:3:\"123\";}', 'yes'),
(1194, 'wp_mail_smtp_initial_version', '1.7.1', 'no'),
(1195, 'wp_mail_smtp_version', '1.7.1', 'no'),
(1196, 'wp_mail_smtp', 'a:6:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:22:\"vinydias0509@gmail.com\";s:9:\"from_name\";s:20:\"Facelook Cosméticos\";s:6:\"mailer\";s:8:\"sendgrid\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:0;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:10:\"sendinblue\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:1:{s:7:\"api_key\";s:69:\"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\";}s:5:\"gmail\";a:2:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";}}', 'no'),
(1203, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(1210, 'polylang', 'a:14:{s:7:\"browser\";i:1;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:0;s:13:\"media_support\";i:1;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.6.7\";s:16:\"first_activation\";i:1573934754;s:12:\"default_lang\";s:2:\"pt\";}', 'yes'),
(1211, 'polylang_wpml_strings', 'a:0:{}', 'yes'),
(1212, 'widget_polylang', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1221, 'category_children', 'a:0:{}', 'yes'),
(1229, 'lingotek_plugin_version', '1.4.4', 'yes'),
(1230, '_transient_pll_languages_list', 'a:2:{i:0;a:27:{s:7:\"term_id\";i:19;s:4:\"name\";s:10:\"Português\";s:4:\"slug\";s:2:\"pt\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:19;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"pt_BR\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:10:\"tl_term_id\";i:20;s:19:\"tl_term_taxonomy_id\";i:20;s:8:\"tl_count\";i:1;s:6:\"locale\";R:9;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"pt-BR\";s:8:\"facebook\";s:5:\"pt_BR\";s:8:\"flag_url\";s:66:\"http://localhost/facelook/wp-content/plugins/polylang/flags/br.png\";s:4:\"flag\";s:895:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHjSURBVHjaYmRIZkCAfwwMf2DkLzCCMyDoBwNAALEAlTVGN/5nYPj//x8Q/P3/9++/vzZa31gY/mw5z/Tn3x8g98+f37///fn99/eq2lUAAQTS8J/h/7NPz/9C5P79WRj89f9/zv//fztLvPVezPzrz+8/f3//+vtLhl8GaANAAIE1/P8PVA1U6qn7NVTqb1XVpAv/JH7/+a/848XmtpBlj39PO8gM1PP7z2+gqwACiAnoYpC9TF9nB34NVf5z4XpoZJbEjJKfWaEfL7KLlbaURKj8Opj08RfIVb+BNgAEEBPQW1L8P+b6/mb6//s/w+/+nc4F0/9P2cj65xdHc+p/QR39//9/AdHJ9A/60l8YvjIABBAT0JYH75jStv75zwCSMBY8BXTMxXv/21ezfHj9X5/3BESDy5JfBy7/ZuBnAAggkA1//vx594kpaCnLloe/smLaVT9/ff3y/+/P/w+u/+JuW7fhwS/tSayPXrOycrEyfGQACCAWoA1//oOCDIgm72fu4vy6b4LD/9/S/3///s9+S28yy+9/LEAf//kLChVgCAEEEEjD7z9/JHgkQeHwD8gUjV79O9r6CzPLv6lr1OUFwWH9Fxjcv//9BcYoA0AAMTI4ImIROUYRMf2XARkABBgA8kMvQf3q+24AAAAASUVORK5CYII=\" title=\"Português (pt_BR)\" alt=\"Português\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:26:\"http://localhost/facelook/\";s:10:\"search_url\";s:26:\"http://localhost/facelook/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"196\";s:13:\"page_on_front\";b:0;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"br\";s:15:\"lingotek_locale\";s:5:\"pt-BR\";}i:1;a:27:{s:7:\"term_id\";i:22;s:4:\"name\";s:7:\"English\";s:4:\"slug\";s:2:\"en\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:22;s:8:\"taxonomy\";s:8:\"language\";s:11:\"description\";s:5:\"en_US\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:10:\"tl_term_id\";i:23;s:19:\"tl_term_taxonomy_id\";i:23;s:8:\"tl_count\";i:1;s:6:\"locale\";R:36;s:6:\"is_rtl\";i:0;s:3:\"w3c\";s:5:\"en-US\";s:8:\"facebook\";s:5:\"en_US\";s:8:\"flag_url\";s:66:\"http://localhost/facelook/wp-content/plugins/polylang/flags/us.png\";s:4:\"flag\";s:909:\"<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAIAAAD5gJpuAAAABGdBTUEAAK/INwWK6QAAABl0RVh0U29mdHdhcmUAQWRvYmUgSW1hZ2VSZWFkeXHJZTwAAAHzSURBVHjaYkxOP8IAB//+Mfz7w8Dwi4HhP5CcJb/n/7evb16/APL/gRFQDiAAw3JuAgAIBEDQ/iswEERjGzBQLEru97ll0g0+3HvqMn1SpqlqGsZMsZsIe0SICA5gt5a/AGIEarCPtFh+6N/ffwxA9OvP/7//QYwff/6fZahmePeB4dNHhi+fGb59Y4zyvHHmCEAAAW3YDzQYaJJ93a+vX79aVf58//69fvEPlpIfnz59+vDhw7t37968efP3b/SXL59OnjwIEEAsDP+YgY53b2b89++/awvLn98MDi2cVxl+/vl6mituCtBghi9f/v/48e/XL86krj9XzwEEEENy8g6gu22rfn78+NGs5Ofr16+ZC58+fvyYwX8rxOxXr169fPny+fPn1//93bJlBUAAsQADZMEBxj9/GBxb2P/9+S/R8u3vzxuyaX8ZHv3j8/YGms3w8ycQARmi2eE37t4ACCDGR4/uSkrKAS35B3TT////wADOgLOBIaXIyjBlwxKAAGKRXjCB0SOEaeu+/y9fMnz4AHQxCP348R/o+l+//sMZQBNLEvif3AcIIMZbty7Ly6t9ZmXl+fXj/38GoHH/UcGfP79//BBiYHjy9+8/oUkNAAHEwt1V/vI/KBY/QSISFqM/GBg+MzB8A6PfYC5EFiDAABqgW776MP0rAAAAAElFTkSuQmCC\" title=\"English (en_US)\" alt=\"English\" width=\"16\" height=\"11\" />\";s:8:\"home_url\";s:29:\"http://localhost/facelook/en/\";s:10:\"search_url\";s:29:\"http://localhost/facelook/en/\";s:4:\"host\";N;s:5:\"mo_id\";s:3:\"197\";s:13:\"page_on_front\";b:0;s:14:\"page_for_posts\";b:0;s:6:\"filter\";s:3:\"raw\";s:9:\"flag_code\";s:2:\"us\";s:15:\"lingotek_locale\";s:5:\"en-US\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1232, 'rewrite_rules', 'a:171:{s:18:\"biblioteca/blog/?$\";s:25:\"index.php?post_type=blogs\";s:48:\"biblioteca/blog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:43:\"biblioteca/blog/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=blogs&feed=$matches[1]\";s:35:\"biblioteca/blog/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=blogs&paged=$matches[1]\";s:20:\"biblioteca/barber/?$\";s:29:\"index.php?post_type=barbeiros\";s:50:\"biblioteca/barber/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=barbeiros&feed=$matches[1]\";s:45:\"biblioteca/barber/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?post_type=barbeiros&feed=$matches[1]\";s:37:\"biblioteca/barber/page/([0-9]{1,})/?$\";s:47:\"index.php?post_type=barbeiros&paged=$matches[1]\";s:21:\"biblioteca/produto/?$\";s:25:\"index.php?post_type=prods\";s:51:\"biblioteca/produto/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=prods&feed=$matches[1]\";s:46:\"biblioteca/produto/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=prods&feed=$matches[1]\";s:38:\"biblioteca/produto/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=prods&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:51:\"categorias/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?produto_category=$matches[1]&feed=$matches[2]\";s:46:\"categorias/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?produto_category=$matches[1]&feed=$matches[2]\";s:27:\"categorias/([^/]+)/embed/?$\";s:49:\"index.php?produto_category=$matches[1]&embed=true\";s:39:\"categorias/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?produto_category=$matches[1]&paged=$matches[2]\";s:21:\"categorias/([^/]+)/?$\";s:38:\"index.php?produto_category=$matches[1]\";s:45:\"tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?produto_tag=$matches[1]&feed=$matches[2]\";s:40:\"tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?produto_tag=$matches[1]&feed=$matches[2]\";s:21:\"tags/([^/]+)/embed/?$\";s:44:\"index.php?produto_tag=$matches[1]&embed=true\";s:33:\"tags/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?produto_tag=$matches[1]&paged=$matches[2]\";s:15:\"tags/([^/]+)/?$\";s:33:\"index.php?produto_tag=$matches[1]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:38:\"index.php?blogs=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:32:\"index.php?blogs=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?blogs=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?blogs=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?blogs=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:54:\"especialidade/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?barber_category=$matches[1]&feed=$matches[2]\";s:49:\"especialidade/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?barber_category=$matches[1]&feed=$matches[2]\";s:30:\"especialidade/([^/]+)/embed/?$\";s:48:\"index.php?barber_category=$matches[1]&embed=true\";s:42:\"especialidade/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?barber_category=$matches[1]&paged=$matches[2]\";s:24:\"especialidade/([^/]+)/?$\";s:37:\"index.php?barber_category=$matches[1]\";s:34:\"barber/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"barber/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"barber/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"barber/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"barber/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"barber/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"barber/([^/]+)/embed/?$\";s:42:\"index.php?barbeiros=$matches[1]&embed=true\";s:27:\"barber/([^/]+)/trackback/?$\";s:36:\"index.php?barbeiros=$matches[1]&tb=1\";s:47:\"barber/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?barbeiros=$matches[1]&feed=$matches[2]\";s:42:\"barber/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?barbeiros=$matches[1]&feed=$matches[2]\";s:35:\"barber/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?barbeiros=$matches[1]&paged=$matches[2]\";s:42:\"barber/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?barbeiros=$matches[1]&cpage=$matches[2]\";s:31:\"barber/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?barbeiros=$matches[1]&page=$matches[2]\";s:23:\"barber/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"barber/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"barber/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"barber/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"barber/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"barber/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:38:\"index.php?prods=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:32:\"index.php?prods=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?prods=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?prods=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?prods=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?prods=$matches[1]&cpage=$matches[2]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?prods=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=9&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(1327, 'admin_email_lifespan', '1590495052', 'yes'),
(1328, 'db_upgraded', '', 'yes'),
(1331, 'can_compress_scripts', '1', 'no'),
(1334, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1577661061;s:7:\"checked\";a:1:{s:8:\"Facelook\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(1400, 'produto_category_children', 'a:0:{}', 'yes'),
(1435, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1577661061;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.6\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"1.8.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"1.8.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.1.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.png?rev=2120094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.png?rev=2120094\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1483, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3.2-partial-1.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:5:\"5.3.1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1577661058;s:15:\"version_checked\";s:5:\"5.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(1484, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:22:\"vinydias0509@gmail.com\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1577042982;}', 'no'),
(1528, '_site_transient_timeout_theme_roots', '1577662860', 'no'),
(1529, '_site_transient_theme_roots', 'a:1:{s:8:\"Facelook\";s:7:\"/themes\";}', 'no');

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
(10, 9, '_edit_lock', '1575228699:1'),
(42, 29, '_edit_lock', '1573854639:1'),
(71, 48, '_edit_lock', '1568683985:1'),
(75, 51, '_edit_lock', '1569170952:1'),
(105, 66, '_edit_lock', '1571758086:1'),
(109, 71, '_edit_last', '1'),
(110, 71, '_edit_lock', '1573935828:1'),
(129, 87, 'sidebar_id', 'custom-sidebar-1'),
(130, 87, 'sidebar_replacement_id', 'prod_categ'),
(131, 87, 'sidebar_description', 'Barra lateral de produtos'),
(132, 87, 'sidebar_attachments', 'a:2:{i:0;a:6:{s:15:\"menu-item-db-id\";s:1:\"1\";s:19:\"menu-item-object-id\";s:1:\"1\";s:16:\"menu-item-object\";s:16:\"produto_category\";s:19:\"menu-item-parent-id\";s:16:\"produto_category\";s:18:\"menu-item-position\";s:1:\"0\";s:14:\"menu-item-type\";s:12:\"taxonomy_all\";}i:1;a:6:{s:15:\"menu-item-db-id\";s:2:\"29\";s:19:\"menu-item-object-id\";s:2:\"29\";s:16:\"menu-item-object\";s:4:\"page\";s:19:\"menu-item-parent-id\";s:1:\"0\";s:18:\"menu-item-position\";s:1:\"0\";s:14:\"menu-item-type\";s:9:\"post_type\";}}'),
(133, 29, '_edit_last', '1'),
(134, 29, '_cs_replacements', 'a:1:{s:10:\"prod_categ\";s:10:\"prod_categ\";}'),
(170, 99, '_wp_attached_file', '2019/10/cropped-1080p-Full-HD-Images.jpg'),
(171, 99, '_wp_attachment_context', 'custom-header'),
(172, 99, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:300;s:4:\"file\";s:40:\"2019/10/cropped-1080p-Full-HD-Images.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"cropped-1080p-Full-HD-Images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"cropped-1080p-Full-HD-Images-300x47.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:47;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"cropped-1080p-Full-HD-Images-768x120.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"cropped-1080p-Full-HD-Images-1024x160.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:98;}'),
(173, 99, '_wp_attachment_custom_header_last_used_Facelook', '1571344236'),
(174, 99, '_wp_attachment_is_custom_header', 'Facelook'),
(177, 103, '_edit_lock', '1571758126:1'),
(201, 107, '_edit_lock', '1575247342:1'),
(205, 107, '_edit_last', '1'),
(206, 107, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(207, 107, '_desc_loc', 'field_5d9b7b4950a6e'),
(208, 107, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.0135041372687!2d-46.71313118502342!3d-23.49602308471538!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef900581a41b9%3A0xc6c3f4028dc782a3!2sR.%20%C3%81guas%20Claras%2C%2098%20-%20Vila%20Pereira%20Cerca%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2002931-000!5e0!3m2!1spt-BR!2sbr!4v1573154201321!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(209, 107, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(210, 107, 'facebook', 'https://www.facebook.com/gustavo.felix.395669'),
(211, 107, '_facebook', 'field_5d9b7c02a227c'),
(212, 107, 'instagram', 'https://www.instagram.com/gusttavo_corttes'),
(213, 107, '_instagram', 'field_5d9b7c3da227d'),
(214, 107, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=551195327342'),
(215, 107, '_twitter', 'field_5d9b7c76a227e'),
(216, 107, 'telefone', '(11) 9532-7342'),
(217, 107, '_telefone', 'field_5d9ba36188bbb'),
(218, 107, 'mail', 'caramujo_corttes@hotmail.com'),
(219, 107, '_mail', 'field_5d9ba40288bbc'),
(220, 107, 'endereco', 'R. Águas Claras - 98'),
(221, 107, '_endereco', 'field_5d9ba934fcb70'),
(222, 109, '_edit_lock', '1575249057:1'),
(223, 109, '_edit_last', '1'),
(224, 109, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n '),
(225, 109, '_desc_loc', 'field_5d9b7b4950a6e'),
(226, 109, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571685947211!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(227, 109, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(228, 109, 'facebook', 'https://www.facebook.com/cristiano.fagundes.904'),
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
(242, 109, '_thumbnail_id', '188'),
(243, 111, '_edit_lock', '1573176528:1'),
(246, 111, '_thumbnail_id', '190'),
(247, 111, '_edit_last', '1'),
(248, 111, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(249, 111, '_desc_loc', 'field_5d9b7b4950a6e'),
(250, 111, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571686572625!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(251, 111, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(252, 111, 'facebook', 'https://www.facebook.com/agata.leticia.585'),
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
(264, 113, '_edit_lock', '1573176487:1'),
(267, 113, '_edit_last', '1'),
(268, 113, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(269, 113, '_desc_loc', 'field_5d9b7b4950a6e'),
(270, 113, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.9248223303666!2d-46.66023508554472!3d-23.49921716518416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef7ecd318112f%3A0x4299999cab53cf17!2sR.%20Ouro%20Grosso%2C%201158%20-%20Parque%20Peruche%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2002531-001!5e0!3m2!1spt-BR!2sbr!4v1571686688865!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(271, 113, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(272, 113, 'facebook', 'https://www.facebook.com/Heverson.Cabeleireiro'),
(273, 113, '_facebook', 'field_5d9b7c02a227c'),
(274, 113, 'instagram', 'https://www.instagram.com/barbeiroheverson/?hl=pt-br'),
(275, 113, '_instagram', 'field_5d9b7c3da227d'),
(276, 113, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511945216734'),
(277, 113, '_twitter', 'field_5d9b7c76a227e'),
(278, 113, 'telefone', '(11) 94521-6734'),
(279, 113, '_telefone', 'field_5d9ba36188bbb'),
(280, 113, 'mail', 'heversonprofessional@gmail.com'),
(281, 113, '_mail', 'field_5d9ba40288bbc'),
(282, 113, 'endereco', 'R. Ouro Grosso - 1158'),
(283, 113, '_endereco', 'field_5d9ba934fcb70'),
(284, 113, '_thumbnail_id', '189'),
(285, 115, '_edit_lock', '1575247400:1'),
(286, 115, '_edit_last', '1'),
(287, 115, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(288, 115, '_desc_loc', 'field_5d9b7b4950a6e'),
(289, 115, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.7230144936434!2d-46.715950185545495!3d-23.470453664125422!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef979fe9151dd%3A0x6110bf85e88a573f!2sR.%20Prof.%20Jos%C3%A9%20Louren%C3%A7o%2C%20562%20-%20Vila%20Zat%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2002977-020!5e0!3m2!1spt-BR!2sbr!4v1571687093571!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(290, 115, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(291, 115, 'facebook', 'https://www.facebook.com/rhauan.ferreira.1865'),
(292, 115, '_facebook', 'field_5d9b7c02a227c'),
(293, 115, 'instagram', 'https://www.instagram.com/rhauan__/?hl=pt-br'),
(294, 115, '_instagram', 'field_5d9b7c3da227d'),
(295, 115, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=551175532008'),
(296, 115, '_twitter', 'field_5d9b7c76a227e'),
(297, 115, 'telefone', '(11) 7553-2008'),
(298, 115, '_telefone', 'field_5d9ba36188bbb'),
(299, 115, 'mail', 'rhaun.fa.ke@gmail.com'),
(300, 115, '_mail', 'field_5d9ba40288bbc'),
(301, 115, 'endereco', 'R. Elisio Teixeira Leite - 30'),
(302, 115, '_endereco', 'field_5d9ba934fcb70'),
(305, 115, '_thumbnail_id', '186'),
(306, 117, '_edit_lock', '1576949377:1'),
(307, 117, '_edit_last', '1'),
(308, 117, 'desc_loc', 'Localizado na região Norte de São Paulo, prezando a melhor localidade para abranger o máximo de clientes de diferentes lugares, sempre tentando ser o mais rápido e preciso em meus atendimentos.\r\n'),
(309, 117, '_desc_loc', 'field_5d9b7b4950a6e'),
(310, 117, 'iframe_da_localizacao', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.5160842046325!2d-46.62009938553955!3d-23.693257572360267!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce44f670f591b9%3A0xa9a098110fb3a041!2sR.%20Martim%20Afonso%2C%20355%20-%20Concei%C3%A7%C3%A3o%2C%20Diadema%20-%20SP%2C%2009911-550!5e0!3m2!1spt-BR!2sbr!4v1571686572625!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>'),
(311, 117, '_iframe_da_localizacao', 'field_5d9a9a3199fd7'),
(312, 117, 'facebook', 'https://www.facebook.com/profile.php?id=100003994004919'),
(313, 117, '_facebook', 'field_5d9b7c02a227c'),
(314, 117, 'instagram', 'https://www.instagram.com/miriambarberfemy/?hl=pt-br'),
(315, 117, '_instagram', 'field_5d9b7c3da227d'),
(316, 117, 'twitter', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511980509750'),
(317, 117, '_twitter', 'field_5d9b7c76a227e'),
(318, 117, 'telefone', '(11) 98050-9750'),
(319, 117, '_telefone', 'field_5d9ba36188bbb'),
(320, 117, 'mail', 'miriam7475@hotmail.com'),
(321, 117, '_mail', 'field_5d9ba40288bbc'),
(322, 117, 'endereco', 'R. nossa senhora do Ó - 532'),
(323, 117, '_endereco', 'field_5d9ba934fcb70'),
(326, 117, '_thumbnail_id', '187'),
(342, 119, '_edit_lock', '1571687912:1'),
(343, 120, '_wp_attached_file', '2019/10/low-e-no-poo-1280x640.jpg'),
(344, 120, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:640;s:4:\"file\";s:33:\"2019/10/low-e-no-poo-1280x640.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"low-e-no-poo-1280x640-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"low-e-no-poo-1280x640-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 119, '_thumbnail_id', '120'),
(346, 121, '_edit_lock', '1571688408:1'),
(347, 122, '_wp_attached_file', '2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg'),
(348, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:810;s:6:\"height\";i:456;s:4:\"file\";s:52:\"2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:52:\"cabelo-ondulado-curto-perfeito-5-810x456-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(349, 121, '_thumbnail_id', '122'),
(350, 123, '_edit_lock', '1574943124:1'),
(351, 124, '_wp_attached_file', '2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg'),
(352, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1273;s:6:\"height\";i:640;s:4:\"file\";s:57:\"2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-300x151.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:57:\"Como.fazer_.a.reconstrução.capilar-1273x640-768x386.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:386;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"Como.fazer_.a.reconstrução.capilar-1273x640-1024x515.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:515;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(353, 123, '_thumbnail_id', '124'),
(370, 126, '_edit_last', '1'),
(371, 126, '_edit_lock', '1571696000:1'),
(372, 9, '_edit_last', '1'),
(373, 9, 'ntel', '(11) 95496-5600'),
(374, 9, '_ntel', 'field_5dae1307bf467'),
(375, 9, 'endface', 'R. Armando Martino - 360'),
(376, 9, '_endface', 'field_5dae13b68bb32'),
(377, 9, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/tFOwZg7hFIw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
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
(422, 148, '_edit_lock', '1575226003:1'),
(423, 149, '_wp_attached_file', '2019/10/po-descolorante-moon-light-facelook.jpg'),
(424, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:47:\"2019/10/po-descolorante-moon-light-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"po-descolorante-moon-light-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"po-descolorante-moon-light-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(425, 148, '_thumbnail_id', '149'),
(426, 148, '_edit_last', '1'),
(427, 148, 'use', '1-Preparo: Em um recipiente não metálico misture na proporção de 1 medida de pó descolorante para 2 medidas de Emulsão Oxidante Moonlight 35 volumes – matizadora da Facelook Profissional, ou na volumagem adequada para técnica escolhida, até obter uma consistência homogenia e cremosa.\r\n\r\n2- Aplicação: Aplique a mistura com um pincel e use luvas adequadas, faça uma prova de toque antes de aplicar o produto. O tempo de ação deverá ser controlado pelo profissional em função do grau de clareamento desejado. Após o tempo de pausa, enxaguar com água morna e shampoo. Em cabelos fragilizados, caso emborrache ou fique elástico os fios, use o Reverse Shock da Facelook Profissional (o salva vidas dos cabeleireiros), restauração instantânea e permanente.\r\n\r\n3-Matização:  Para matização, use a máscara Carbon Power da Facelook Cosméticos, além de hidratar os fios, ela retira o amarelado indesejado, deixando da forma que o seu cliente deseja.\r\n\r\nEmbalagem PÓ DESCOLORANTE MOONLIGHT FACELOOK PROFISSIONAL 500 G'),
(428, 148, '_use', 'field_5d9cb4568af57'),
(429, 150, '_edit_lock', '1575225959:1'),
(430, 151, '_wp_attached_file', '2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg'),
(431, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:60:\"2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:62:\"oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 150, '_thumbnail_id', '151'),
(433, 150, '_edit_last', '1'),
(434, 150, 'use', '1 – Lavar os cabelos com Shampoo de Limpeza Profunda de 2 a 3 vezes deixando as cutículas bem abertas.\r\n2 – Separe os cabelos em mechas.\r\n3 – Aplique o BBtox Matizador Facelook mecha a mecha enluvando bem, deixe agir de 10 a 20 minutos (para cabelo\r\nresistente até 30 minutos).\r\n4 – Lavar bem o cabelo com água, tirando todo o excesso do produto.\r\n5 – Escovar e pranchar de 12 a 18 vezes.\r\n\r\nEmbalagem BBtox Matizador Facelook Profissional 1kg.'),
(435, 150, '_use', 'field_5d9cb4568af57'),
(436, 152, '_edit_lock', '1575226730:1'),
(437, 153, '_wp_attached_file', '2019/10/banho-de-verniz-parfait-liss-facelook.jpg'),
(438, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:49:\"2019/10/banho-de-verniz-parfait-liss-facelook.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"banho-de-verniz-parfait-liss-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"banho-de-verniz-parfait-liss-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(439, 152, '_thumbnail_id', '153'),
(440, 152, '_edit_last', '1'),
(441, 152, 'use', 'Após lavar, com shampoo de sua preferência, aplicar com um pincel o Banho De Verniz Pró Repair System Parfait\r\nLisse Facelook do comprimento até as pontas, massageando os fios com suavidade. Deixar agir por 10\r\nminutos para uma máxima hidratação e então enxaguar com água em abundância. Se desejar, pode finalizar com\r\numa escova e prancha.\r\n\r\nEsse tratamento é indicado, após a Selagem Parfait Lisse Facelook Profissional. Para manter por mais tempo o\r\nefeito liso.\r\n\r\nEmbalagem Banho De Verniz Pró Repair System\r\nParfait Lisse Facelook  1kg.'),
(442, 152, '_use', 'field_5d9cb4568af57'),
(443, 154, '_edit_last', '1'),
(444, 154, '_edit_lock', '1574943432:1'),
(447, 29, 'imgf', '190'),
(448, 29, '_imgf', 'field_5dae749c0fc72'),
(449, 29, 'imgm', '189'),
(450, 29, '_imgm', 'field_5dae74d10fc73'),
(451, 29, 'imgp', '186'),
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
(465, 29, 'parc', '185'),
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
(510, 169, '_edit_lock', '1575229698:1'),
(511, 9, 'apidw', '11954965600'),
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
(593, 177, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(594, 180, 'es_template_type', 'newsletter'),
(595, 181, 'es_template_type', 'post_notification'),
(609, 185, '_wp_attached_file', '2019/10/Gustavo.png'),
(610, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:682;s:6:\"height\";i:683;s:4:\"file\";s:19:\"2019/10/Gustavo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Gustavo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Gustavo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(611, 107, '_thumbnail_id', '185'),
(612, 186, '_wp_attached_file', '2019/10/Rhauan.png'),
(613, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:611;s:6:\"height\";i:611;s:4:\"file\";s:18:\"2019/10/Rhauan.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Rhauan-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Rhauan-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(614, 187, '_wp_attached_file', '2019/10/Miriam-1.png'),
(615, 187, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:649;s:6:\"height\";i:648;s:4:\"file\";s:20:\"2019/10/Miriam-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Miriam-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Miriam-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(616, 188, '_wp_attached_file', '2019/10/Cristiano-Fhagundes.png'),
(617, 188, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:31:\"2019/10/Cristiano-Fhagundes.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"Cristiano-Fhagundes-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"Cristiano-Fhagundes-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"Cristiano-Fhagundes-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(618, 189, '_wp_attached_file', '2019/10/Heverson-1.png'),
(619, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:22:\"2019/10/Heverson-1.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Heverson-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"Heverson-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(620, 190, '_wp_attached_file', '2019/10/Agata-1.png'),
(621, 190, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:19:\"2019/10/Agata-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Agata-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Agata-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"Agata-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(622, 193, 'imgf', '190'),
(623, 193, '_imgf', 'field_5dae749c0fc72'),
(624, 193, 'imgm', '189'),
(625, 193, '_imgm', 'field_5dae74d10fc73'),
(626, 193, 'imgp', '186'),
(627, 193, '_imgp', 'field_5dae75110fc74'),
(628, 193, 'parc', '185'),
(629, 193, '_parc', 'field_5dae77b7bf78f'),
(630, 193, 'banner', '166'),
(631, 193, '_banner', 'field_5dae786863d29'),
(632, 193, 'apidw', 'http://api.whatsapp.com/send?1=pt_BR&phone=5511954965600'),
(633, 193, '_apidw', 'field_5daf1df3d39cd'),
(634, 193, 'telefone_contato', '(11) 94002-8922'),
(635, 193, '_telefone_contato', 'field_5daf1e20d39ce'),
(636, 193, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(637, 193, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(638, 194, '_form', '<div class=\"news__form\">\n[email email-135 class:novidades__input placeholder \"Insira o seu e-mail\"]\n[submit class:novidades__button \"Enviar\"]                   \n </div>'),
(639, 194, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"Facelook Cosméticos\";s:6:\"sender\";s:22:\"vinydias0509@gmail.com\";s:9:\"recipient\";s:22:\"vinydias0509@gmail.com\";s:4:\"body\";s:57:\"email do cabra que quer receber a newsletter: [email-135]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(640, 194, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:37:\"Facelook Cosméticos \"[your-subject]\"\";s:6:\"sender\";s:45:\"Facelook Cosméticos <vinydias0509@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:126:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Facelook Cosméticos (http://localhost/facelook)\";s:18:\"additional_headers\";s:32:\"Reply-To: vinydias0509@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(641, 194, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:35:\"A mensagem foi enviada com sucesso.\";s:12:\"mail_sent_ng\";s:40:\"O envio da mensagem do remetente falhou.\";s:16:\"validation_error\";s:31:\"Ocorreram erros de validação.\";s:4:\"spam\";s:35:\"A submissão mencionou-se como spam\";s:12:\"accept_terms\";s:44:\"Existem termos que o remetente deve aceitar.\";s:16:\"invalid_required\";s:44:\"Há um campo que o remetente deve preencher.\";s:16:\"invalid_too_long\";s:65:\"Há um campo com a entrada maior que o tamanho máximo permitido.\";s:17:\"invalid_too_short\";s:65:\"Há um campo com a entrada menor que o tamanho mínimo permitido.\";s:12:\"invalid_date\";s:53:\"Formato da data que o remetente digitou é inválido.\";s:14:\"date_too_early\";s:49:\"A data é mais adiantada do que o limite mínimo.\";s:13:\"date_too_late\";s:44:\"A data é posterior do que o limite máximo.\";s:13:\"upload_failed\";s:48:\"O upload de um arquivo falhou por alguma razão.\";s:24:\"upload_file_type_invalid\";s:44:\"O tipo de arquivo enviado não é permitido.\";s:21:\"upload_file_too_large\";s:32:\"Arquivo enviado é muito grande.\";s:23:\"upload_failed_php_error\";s:48:\"O upload de um arquivo falhou por alguma razão.\";s:14:\"invalid_number\";s:56:\"Formato de número que o remetente digitou é inválido.\";s:16:\"number_too_small\";s:41:\"Número é menor do que o limite mínimo.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:56:\"Endereço de e-mail que o remetente digitou é inválido\";s:11:\"invalid_url\";s:40:\"URL que o remetente digitou é inválido\";s:11:\"invalid_tel\";s:56:\"Número de telefone que o remetente digitou é inválido\";}'),
(642, 194, '_additional_settings', ''),
(643, 194, '_locale', 'pt_BR'),
(646, 195, '_form', '[email email-624 class:novidades__input--footer placeholder \"Insira o seu e-mail\"]\n[submit class:novidades__button--footer \"Enviar\"]'),
(647, 195, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"Facelook Cosméticos\";s:6:\"sender\";s:22:\"vinydias0509@gmail.com\";s:9:\"recipient\";s:22:\"vinydias0509@gmail.com\";s:4:\"body\";s:50:\"Email do novo assinante da newsletter: [email-624]\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(648, 195, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:37:\"Facelook Cosméticos \"[your-subject]\"\";s:6:\"sender\";s:45:\"Facelook Cosméticos <vinydias0509@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:126:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Facelook Cosméticos (http://localhost/facelook)\";s:18:\"additional_headers\";s:32:\"Reply-To: vinydias0509@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(649, 195, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(650, 195, '_additional_settings', ''),
(651, 195, '_locale', 'pt_BR'),
(652, 196, '_pll_strings_translations', 'a:0:{}'),
(653, 197, '_pll_strings_translations', 'a:0:{}'),
(663, 107, 'wps', '11940028922'),
(664, 107, '_wps', 'field_5d9b7c76a227e'),
(668, 201, '_edit_lock', '1574621765:1'),
(671, 201, '_thumbnail_id', '122'),
(672, 203, '_edit_lock', '1574622014:1'),
(675, 203, '_thumbnail_id', '120'),
(687, 210, '_edit_lock', '1575226704:1'),
(688, 211, '_wp_attached_file', '2019/12/matizador-carbon-power-facelook.jpg'),
(689, 211, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:43:\"2019/12/matizador-carbon-power-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"matizador-carbon-power-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"matizador-carbon-power-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"matizador-carbon-power-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"matizador-carbon-power-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 210, '_thumbnail_id', '211'),
(691, 212, '_edit_lock', '1575226374:1'),
(692, 213, '_wp_attached_file', '2019/12/defrizante-facelook.jpg'),
(693, 213, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:31:\"2019/12/defrizante-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"defrizante-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"defrizante-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 212, '_thumbnail_id', '213'),
(695, 214, '_edit_lock', '1575226717:1'),
(696, 215, '_wp_attached_file', '2019/12/kit-selagem-1.jpg'),
(697, 215, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:974;s:6:\"height\";i:1200;s:4:\"file\";s:25:\"2019/12/kit-selagem-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"kit-selagem-1-244x300.jpg\";s:5:\"width\";i:244;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"kit-selagem-1-831x1024.jpg\";s:5:\"width\";i:831;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"kit-selagem-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"kit-selagem-1-768x946.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:946;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 214, '_thumbnail_id', '215'),
(699, 217, '_edit_lock', '1575226751:1'),
(700, 218, '_wp_attached_file', '2019/12/reversor-quimico-profissional-reverse-shock-facelook.jpg'),
(701, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:64:\"2019/12/reversor-quimico-profissional-reverse-shock-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:66:\"reversor-quimico-profissional-reverse-shock-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:64:\"reversor-quimico-profissional-reverse-shock-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 217, '_thumbnail_id', '218'),
(703, 217, '_edit_last', '1'),
(704, 214, '_edit_last', '1'),
(705, 212, '_edit_last', '1'),
(706, 210, '_edit_last', '1'),
(718, 223, '_edit_lock', '1575226366:1'),
(719, 224, '_wp_attached_file', '2019/12/perfume-de-cabelo-jullien-facelook.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(720, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:46:\"2019/12/perfume-de-cabelo-jullien-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"perfume-de-cabelo-jullien-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"perfume-de-cabelo-jullien-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"perfume-de-cabelo-jullien-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"perfume-de-cabelo-jullien-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(721, 223, '_thumbnail_id', '224'),
(723, 226, '_wp_attached_file', '2019/12/reparador-de-pontas-ojon-oil-7ml-facelook.jpg'),
(724, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:53:\"2019/12/reparador-de-pontas-ojon-oil-7ml-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:53:\"reparador-de-pontas-ojon-oil-7ml-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:55:\"reparador-de-pontas-ojon-oil-7ml-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:53:\"reparador-de-pontas-ojon-oil-7ml-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:53:\"reparador-de-pontas-ojon-oil-7ml-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(730, 228, '_edit_lock', '1575226780:1'),
(731, 229, '_wp_attached_file', '2019/12/ojon-e-macadamia-bb-cream-facelook.jpg'),
(732, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:46:\"2019/12/ojon-e-macadamia-bb-cream-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"ojon-e-macadamia-bb-cream-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"ojon-e-macadamia-bb-cream-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"ojon-e-macadamia-bb-cream-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"ojon-e-macadamia-bb-cream-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(733, 228, '_thumbnail_id', '229'),
(734, 230, '_edit_lock', '1575226938:1'),
(735, 231, '_wp_attached_file', '2019/12/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg'),
(736, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:65:\"2019/12/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:67:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:65:\"mascara-de-hidratacao-profunda-perfait-lisse-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(737, 230, '_thumbnail_id', '231'),
(738, 232, '_edit_lock', '1576589421:1'),
(739, 233, '_wp_attached_file', '2019/12/emulsao-oxidante-moon-light-facelook.jpg'),
(740, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:48:\"2019/12/emulsao-oxidante-moon-light-facelook.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"emulsao-oxidante-moon-light-facelook-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"emulsao-oxidante-moon-light-facelook-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"emulsao-oxidante-moon-light-facelook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"emulsao-oxidante-moon-light-facelook-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(741, 232, '_thumbnail_id', '233'),
(742, 234, '_edit_lock', '1575227429:1'),
(743, 235, '_wp_attached_file', '2019/12/Como-Alisar-o-Cabelo-Naturalmente-1280x640.jpg'),
(744, 235, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:640;s:4:\"file\";s:54:\"2019/12/Como-Alisar-o-Cabelo-Naturalmente-1280x640.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:54:\"Como-Alisar-o-Cabelo-Naturalmente-1280x640-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:55:\"Como-Alisar-o-Cabelo-Naturalmente-1280x640-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:54:\"Como-Alisar-o-Cabelo-Naturalmente-1280x640-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:54:\"Como-Alisar-o-Cabelo-Naturalmente-1280x640-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(745, 234, '_thumbnail_id', '235'),
(746, 236, '_edit_lock', '1576949232:1'),
(747, 237, '_wp_attached_file', '2019/12/escova-progressiva.jpg'),
(748, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:640;s:4:\"file\";s:30:\"2019/12/escova-progressiva.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"escova-progressiva-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"escova-progressiva-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"escova-progressiva-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"escova-progressiva-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(749, 236, '_thumbnail_id', '237'),
(750, 238, 'ntel', '(11) 95496-5600'),
(751, 238, '_ntel', 'field_5dae1307bf467'),
(752, 238, 'endface', 'R. Armando Martino - 360'),
(753, 238, '_endface', 'field_5dae13b68bb32'),
(754, 238, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/IbJjgKz-1qQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(755, 238, '_video', 'field_5dae13ef8bb33'),
(756, 238, 'vicanal', 'https://www.youtube.com/watch?v=IbJjgKz-1qQ&t'),
(757, 238, '_vicanal', 'field_5dae145a8bb34'),
(758, 238, 'wp', ''),
(759, 238, '_wp', 'field_5dae14ad8bb35'),
(760, 238, 'apidw', '11954965600'),
(761, 238, '_apidw', 'field_5daf1df3d39cd'),
(762, 238, 'telefone_contato', '(11) 94002-8922'),
(763, 238, '_telefone_contato', 'field_5daf1e20d39ce'),
(764, 238, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(765, 238, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(766, 239, 'ntel', '(11) 95496-5600'),
(767, 239, '_ntel', 'field_5dae1307bf467'),
(768, 239, 'endface', 'R. Armando Martino - 360'),
(769, 239, '_endface', 'field_5dae13b68bb32'),
(770, 239, 'video', '<iframe width=\"540\" height=\"305\" src=\"https://www.youtube.com/embed/tFOwZg7hFIw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(771, 239, '_video', 'field_5dae13ef8bb33'),
(772, 239, 'vicanal', 'https://www.youtube.com/watch?v=IbJjgKz-1qQ&t'),
(773, 239, '_vicanal', 'field_5dae145a8bb34'),
(774, 239, 'wp', ''),
(775, 239, '_wp', 'field_5dae14ad8bb35'),
(776, 239, 'apidw', '11954965600'),
(777, 239, '_apidw', 'field_5daf1df3d39cd'),
(778, 239, 'telefone_contato', '(11) 94002-8922'),
(779, 239, '_telefone_contato', 'field_5daf1e20d39ce'),
(780, 239, 'localiza_rdp', 'Rua qualquer ai só para testar'),
(781, 239, '_localiza_rdp', 'field_5daf1e9cd39d3'),
(782, 115, '_wp_old_slug', 'mercio-barber'),
(783, 115, 'wps', ''),
(784, 115, '_wps', 'field_5d9b7c76a227e'),
(785, 107, '_wp_old_slug', 'dibrow-santos'),
(790, 242, '_edit_lock', '1576589162:1'),
(796, 245, '_edit_lock', '1576949218:1'),
(797, 245, '_thumbnail_id', '237'),
(798, 246, '_edit_lock', '1576949594:1'),
(799, 246, '_thumbnail_id', '211'),
(800, 246, '_wp_trash_meta_status', 'publish'),
(801, 246, '_wp_trash_meta_time', '1577043929'),
(802, 246, '_wp_desired_post_slug', 'nome-do-produto'),
(803, 232, '_wp_trash_meta_status', 'publish'),
(804, 232, '_wp_trash_meta_time', '1577043929'),
(805, 232, '_wp_desired_post_slug', 'emulsao-oxidante-cremosa-estabilizada-35-vol-105-anti-yellow-matizadora'),
(806, 230, '_wp_trash_meta_status', 'publish'),
(807, 230, '_wp_trash_meta_time', '1577043929'),
(808, 230, '_wp_desired_post_slug', 'mascara-de-hidratacao-profunda'),
(809, 228, '_wp_trash_meta_status', 'publish'),
(810, 228, '_wp_trash_meta_time', '1577043929'),
(811, 228, '_wp_desired_post_slug', 'bb-cream-intense-hidratation-hir-facelook'),
(812, 223, '_wp_trash_meta_status', 'publish'),
(813, 223, '_wp_trash_meta_time', '1577043929'),
(814, 223, '_wp_desired_post_slug', 'jullien-hair-facelook'),
(815, 217, '_wp_trash_meta_status', 'publish'),
(816, 217, '_wp_trash_meta_time', '1577043929'),
(817, 217, '_wp_desired_post_slug', 'reverse-shock-facelook-profissional'),
(818, 214, '_wp_trash_meta_status', 'publish'),
(819, 214, '_wp_trash_meta_time', '1577043929'),
(820, 214, '_wp_desired_post_slug', 'kit-selagem-shampoo-defrizzer'),
(821, 212, '_wp_trash_meta_status', 'publish'),
(822, 212, '_wp_trash_meta_time', '1577043929'),
(823, 212, '_wp_desired_post_slug', '212'),
(824, 210, '_wp_trash_meta_status', 'publish'),
(825, 210, '_wp_trash_meta_time', '1577043929'),
(826, 210, '_wp_desired_post_slug', 'carbon-power-mascara-matizadora-efeito-platinado'),
(827, 152, '_wp_trash_meta_status', 'publish'),
(828, 152, '_wp_trash_meta_time', '1577043929'),
(829, 152, '_wp_desired_post_slug', 'banho-de-verniz-pro-repair-system-parfait-lisse-facelook'),
(830, 150, '_wp_trash_meta_status', 'publish'),
(831, 150, '_wp_trash_meta_time', '1577043929'),
(832, 150, '_wp_desired_post_slug', 'bbtox-matizador-facelook-4-em-1-profissional'),
(833, 148, '_wp_trash_meta_status', 'publish'),
(834, 148, '_wp_trash_meta_time', '1577043929'),
(835, 148, '_wp_desired_post_slug', 'po-descolorante-moonlight-facelook-profissional'),
(837, 248, '_edit_lock', '1577045405:1'),
(838, 249, '_wp_attached_file', '2019/12/IMG_8464-scaled.jpg'),
(839, 249, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8464-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8464-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8464-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8464-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8464-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8464-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8464-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893257\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8464.jpg\";}'),
(840, 248, '_thumbnail_id', '249'),
(841, 250, '_edit_lock', '1577045415:1'),
(842, 251, '_wp_attached_file', '2019/12/IMG_8402-scaled.jpg'),
(843, 251, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8402-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8402-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8402-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8402-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8402-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8402-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8402-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574892630\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8402.jpg\";}'),
(844, 250, '_thumbnail_id', '251'),
(845, 252, '_edit_lock', '1577045455:1'),
(846, 253, '_wp_attached_file', '2019/12/IMG_8429-scaled.jpg'),
(847, 253, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8429-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8429-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8429-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8429-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8429-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8429-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8429-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893039\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8429.jpg\";}'),
(848, 252, '_thumbnail_id', '253'),
(849, 254, '_edit_lock', '1577045382:1'),
(850, 255, '_wp_attached_file', '2019/12/IMG_8448-scaled.jpg'),
(851, 255, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8448-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8448-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8448-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8448-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8448-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8448-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8448-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893184\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8448.jpg\";}'),
(852, 254, '_thumbnail_id', '255'),
(853, 256, '_edit_lock', '1577045637:1'),
(854, 257, '_wp_attached_file', '2019/12/IMG_8478-scaled.jpg'),
(855, 257, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8478-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8478-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8478-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8478-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8478-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8478-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8478-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893350\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8478.jpg\";}'),
(856, 256, '_thumbnail_id', '257'),
(857, 258, '_edit_lock', '1577045801:1'),
(858, 259, '_wp_attached_file', '2019/12/IMG_8464-1-scaled.jpg'),
(859, 259, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:29:\"2019/12/IMG_8464-1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"IMG_8464-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"IMG_8464-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"IMG_8464-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"IMG_8464-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"IMG_8464-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"IMG_8464-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893257\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"IMG_8464-1.jpg\";}'),
(860, 258, '_thumbnail_id', '259'),
(861, 260, '_edit_lock', '1577045952:1'),
(862, 261, '_wp_attached_file', '2019/12/IMG_8474-scaled.jpg'),
(863, 261, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8474-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8474-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8474-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8474-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8474-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8474-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8474-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893319\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"320\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8474.jpg\";}'),
(864, 260, '_thumbnail_id', '261'),
(865, 262, '_edit_lock', '1577058432:1'),
(866, 263, '_wp_attached_file', '2019/12/IMG_8501-scaled.jpg'),
(867, 263, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8501-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8501-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8501-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8501-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8501-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8501-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8501-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893512\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8501.jpg\";}'),
(868, 262, '_thumbnail_id', '263'),
(869, 264, '_edit_lock', '1577046411:1'),
(870, 265, '_wp_attached_file', '2019/12/IMG_8509-scaled.jpg'),
(871, 265, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8509-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8509-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8509-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8509-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8509-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8509-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8509-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893621\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"38\";s:3:\"iso\";s:3:\"250\";s:13:\"shutter_speed\";s:7:\"0.00625\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8509.jpg\";}'),
(872, 264, '_thumbnail_id', '265'),
(873, 266, '_edit_lock', '1577046572:1'),
(874, 267, '_wp_attached_file', '2019/12/IMG_8520-scaled.jpg'),
(875, 267, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8520-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8520-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8520-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8520-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8520-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8520-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8520-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574893714\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.005\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8520.jpg\";}'),
(876, 266, '_thumbnail_id', '267'),
(877, 268, '_edit_lock', '1577046736:1'),
(878, 269, '_wp_attached_file', '2019/12/IMG_8565-scaled.jpg'),
(879, 269, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8565-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8565-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8565-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8565-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8565-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8565-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8565-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894679\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"43\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8565.jpg\";}'),
(880, 268, '_thumbnail_id', '269'),
(881, 270, '_edit_lock', '1577058788:1'),
(882, 271, '_wp_attached_file', '2019/12/IMG_8570-scaled.jpg'),
(883, 271, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8570-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8570-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8570-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8570-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8570-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8570-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8570-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894712\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"40\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8570.jpg\";}'),
(884, 270, '_thumbnail_id', '271'),
(885, 272, '_edit_lock', '1577047263:1'),
(886, 273, '_wp_attached_file', '2019/12/IMG_8580-scaled.jpg'),
(887, 273, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8580-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8580-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8580-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8580-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8580-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8580-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8580-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894776\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8580.jpg\";}'),
(888, 272, '_thumbnail_id', '273'),
(889, 274, '_edit_lock', '1577047435:1'),
(890, 275, '_wp_attached_file', '2019/12/IMG_8602-scaled.jpg'),
(891, 275, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8602-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8602-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8602-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8602-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8602-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8602-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8602-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894873\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"200\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8602.jpg\";}'),
(892, 274, '_thumbnail_id', '275'),
(893, 276, '_edit_lock', '1577047812:1'),
(894, 277, '_wp_attached_file', '2019/12/IMG_8605-scaled.jpg'),
(895, 277, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8605-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8605-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8605-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8605-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8605-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8605-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8605-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894970\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"45\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8605.jpg\";}'),
(896, 276, '_thumbnail_id', '277'),
(897, 278, '_edit_lock', '1577051443:1'),
(898, 279, '_wp_attached_file', '2019/12/IMG_8615-scaled.jpg'),
(899, 279, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8615-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8615-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8615-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8615-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8615-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8615-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8615-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574895062\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8615.jpg\";}'),
(900, 278, '_thumbnail_id', '279'),
(901, 280, '_edit_lock', '1577051678:1'),
(902, 281, '_wp_attached_file', '2019/12/IMG_8612-scaled.jpg'),
(903, 281, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8612-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8612-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8612-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8612-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8612-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8612-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8612-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574895021\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8612.jpg\";}'),
(904, 280, '_thumbnail_id', '281'),
(905, 282, '_edit_lock', '1577051816:1'),
(906, 283, '_wp_attached_file', '2019/12/IMG_8619-scaled.jpg'),
(907, 283, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8619-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8619-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8619-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8619-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8619-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8619-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8619-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574895083\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8619.jpg\";}'),
(908, 282, '_thumbnail_id', '283'),
(909, 284, '_edit_lock', '1577051958:1'),
(910, 284, '_thumbnail_id', '218'),
(911, 285, '_edit_lock', '1577052225:1'),
(912, 286, '_wp_attached_file', '2019/12/IMG_8632-scaled.jpg'),
(913, 286, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8632-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8632-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8632-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8632-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8632-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8632-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8632-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574895164\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8632.jpg\";}'),
(914, 285, '_thumbnail_id', '286'),
(915, 287, '_edit_lock', '1577052525:1'),
(916, 288, '_wp_attached_file', '2019/12/IMG_8625-scaled.jpg'),
(917, 288, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2019/12/IMG_8625-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8625-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8625-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8625-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"IMG_8625-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8625-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8625-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574895132\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"160\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8625.jpg\";}'),
(918, 287, '_thumbnail_id', '288'),
(919, 289, '_edit_lock', '1577131897:1'),
(920, 290, '_wp_attached_file', '2019/12/IMG_8577-scaled.jpg'),
(921, 290, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:27:\"2019/12/IMG_8577-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"IMG_8577-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"IMG_8577-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"IMG_8577-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"IMG_8577-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"IMG_8577-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"IMG_8577-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"16\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:13:\"Canon EOS 70D\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1574894759\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:5:\"0.004\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"IMG_8577.jpg\";}'),
(922, 289, '_thumbnail_id', '290');

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
(9, 1, '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-12-01 17:33:10', '2019-12-01 19:33:10', '', 0, 'http://localhost/Facelook/?page_id=9', 0, 'page', '', 0),
(10, 1, '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-08-25 15:32:35', '2019-08-25 18:32:35', '', 9, 'http://localhost/Facelook/9-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-11-15 19:50:36', '2019-11-15 21:50:36', '', 0, 'http://localhost/Facelook/?page_id=29', 0, 'page', '', 0),
(30, 1, '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-15 15:33:19', '2019-09-15 18:33:19', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2019-09-16 22:07:37', '2019-09-17 01:07:37', '<!-- wp:paragraph -->\n<p>É o pó krai</p>\n<!-- /wp:paragraph -->', 'Pó descolorante', '', 'publish', 'closed', 'closed', '', 'po-descolorante', '', '', '2019-09-16 22:35:20', '2019-09-17 01:35:20', '', 0, 'http://localhost/Facelook/?post_type=produtos&#038;p=48', 0, 'produtos', '', 0),
(51, 1, '2019-09-22 13:51:34', '2019-09-22 16:51:34', '<!-- wp:paragraph -->\n<p>alguma coisa</p>\n<!-- /wp:paragraph -->', 'alguma coisa', '', 'publish', 'closed', 'closed', '', 'alguma-coisa', '', '', '2019-09-22 13:51:34', '2019-09-22 16:51:34', '', 0, 'http://localhost/Facelook/?post_type=produtos&#038;p=51', 0, 'produtos', '', 0),
(54, 1, '2019-09-22 16:37:17', '2019-09-22 19:37:17', '', 'Produto', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-22 16:37:17', '2019-09-22 19:37:17', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2019-09-22 16:38:35', '2019-09-22 19:38:35', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-09-22 16:38:35', '2019-09-22 19:38:35', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2019-09-30 19:04:12', '2019-09-30 22:04:12', '', 'Barbeiros', '', 'publish', 'closed', 'closed', '', 'barbeiros', '', '', '2019-10-22 12:28:05', '2019-10-22 15:28:05', '', 0, 'http://localhost/Facelook/?page_id=66', 0, 'page', '', 0),
(67, 1, '2019-09-30 19:04:09', '2019-09-30 22:04:09', '', 'Barbeiros', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2019-09-30 19:04:09', '2019-09-30 22:04:09', '', 66, 'http://localhost/Facelook/66-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2019-10-06 17:23:23', '2019-10-06 20:23:23', '<!-- wp:html -->\n<figure><figure><iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3658.6733179840935!2d-46.69073950962601!3d-23.50827344934456!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94cef90e86f6f047%3A0x1104591ae58f5019!2sBob\'s%20Shakes!5e0!3m2!1spt-BR!2sbr!4v1570393075303!5m2!1spt-BR!2sbr\" width=\"600\" height=\"450\" allowfullscreen=\"\"></iframe></figure></figure>\n<!-- /wp:html -->', 'Bloco reutilizável sem título', '', 'publish', 'closed', 'closed', '', 'bloco-reutilizavel-sem-titulo', '', '', '2019-10-06 17:23:23', '2019-10-06 20:23:23', '', 0, 'http://localhost/Facelook/bloco-reutilizavel-sem-titulo/', 0, 'wp_block', '', 0),
(71, 1, '2019-10-06 22:56:42', '2019-10-07 01:56:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"barbeiros\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:38:\"Informações adicionais dos barbeiros\";}', 'Barbeiros', 'barbeiros', 'publish', 'closed', 'closed', '', 'group_5d9a998ea4682', '', '', '2019-11-16 18:25:23', '2019-11-16 20:25:23', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=71', 0, 'acf-field-group', '', 0),
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
(82, 1, '2019-10-07 14:58:09', '2019-10-07 17:58:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:77:\"Insira o numero do Barbeiro, somente DDD e o numero sem caracteres especiais.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'WhatsAPP', 'wps', 'publish', 'closed', 'closed', '', 'field_5d9b7c76a227e', '', '', '2019-11-16 18:25:23', '2019-11-16 20:25:23', '', 71, 'http://localhost/Facelook/?post_type=acf-field&#038;p=82', 4, 'acf-field', '', 0),
(84, 1, '2019-10-07 17:46:44', '2019-10-07 20:46:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:29:\"Insira o telefone do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:19:\"Número de telefone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_5d9ba36188bbb', '', '', '2019-10-07 17:46:44', '2019-10-07 20:46:44', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=84', 5, 'acf-field', '', 0),
(85, 1, '2019-10-07 17:46:44', '2019-10-07 20:46:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Insira o e-mail do barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Insira o e-mail\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'E-mail', 'mail', 'publish', 'closed', 'closed', '', 'field_5d9ba40288bbc', '', '', '2019-10-07 17:46:44', '2019-10-07 20:46:44', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=85', 6, 'acf-field', '', 0),
(86, 1, '2019-10-07 18:08:38', '2019-10-07 21:08:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:30:\"Insira o endereço do Barbeiro\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Insira o endereço\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5d9ba934fcb70', '', '', '2019-10-07 18:08:38', '2019-10-07 21:08:38', '', 71, 'http://localhost/Facelook/?post_type=acf-field&p=86', 7, 'acf-field', '', 0),
(87, 1, '2019-10-08 12:33:21', '2019-10-08 15:33:21', '', 'Produtos', '', 'publish', 'closed', 'closed', '', 'produtos', '', '', '2019-10-08 12:43:49', '2019-10-08 15:43:49', '', 0, 'http://localhost/Facelook/?post_type=sidebar_instance&#038;p=87', 0, 'sidebar_instance', '', 0),
(99, 1, '2019-10-17 17:30:35', '2019-10-17 20:30:35', '', 'cropped-1080p-Full-HD-Images.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-1080p-full-hd-images-jpg', '', '', '2019-10-17 17:30:35', '2019-10-17 20:30:35', '', 0, 'http://localhost/Facelook/wp-content/uploads/2019/10/cropped-1080p-Full-HD-Images.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 'Listagem', '', 'publish', 'closed', 'closed', '', 'listagem', '', '', '2019-10-22 12:28:43', '2019-10-22 15:28:43', '', 0, 'http://localhost/Facelook/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 'Listagem', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2019-10-19 14:46:23', '2019-10-19 17:46:23', '', 103, 'http://localhost/Facelook/103-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2019-10-21 16:12:26', '2019-10-21 19:12:26', '<!-- wp:paragraph -->\n<p> Meus 50 mil seguidores foi por merecimento e muito trabalho, por isso você pode confiar seu estilo no meu trabalho e ainda fazer parte dessa linda caminhada.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Venha fazer parte dessa galera !!!!</p>\n<!-- /wp:paragraph -->', 'Gusttavo Corttes', 'Se você não acredita em bons resultados, venha dar um tour no meu estabelecimento que você irá mudar de opinião', 'publish', 'closed', 'closed', '', 'gusttavo-corttes', '', '', '2019-12-01 22:44:29', '2019-12-02 00:44:29', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=107', 0, 'barbeiros', '', 0),
(109, 0, '2019-10-21 16:27:12', '2019-10-21 19:27:12', '<!-- wp:paragraph -->\n<p>A sua aparência hoje em dia pesa muito no seu dia a dia, por isso um bom estilo irá te destacar nos seus objetivos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Cristiano Fhagundes', 'Comigo seu estilo tem espaço para mudanças sem preconceito, aqui cliente feliz é prioridade.', 'publish', 'closed', 'closed', '', 'cristiano-fhagundes', '', '', '2019-11-07 23:29:25', '2019-11-08 01:29:25', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=109', 0, 'barbeiros', '', 0),
(111, 0, '2019-10-21 16:35:00', '2019-10-21 19:35:00', '<!-- wp:paragraph -->\n<p>Meu objetivo é mudar o seu visual, minha alegria é ver meus clientes satisfeitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Agata Santos', 'Barbeira paulistana da ZN, determinada a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você sairá incrível !!', 'publish', 'closed', 'closed', '', 'agata-santos', '', '', '2019-11-07 23:28:47', '2019-11-08 01:28:47', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=111', 0, 'barbeiros', '', 0),
(113, 0, '2019-10-21 16:41:00', '2019-10-21 19:41:00', '<!-- wp:paragraph -->\n<p> Se você preza as aparências, comigo o seu visual irá ser o mais destacado entre a massa, não importa o seu tipo de cabelo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Meu intuito é deixar todos felizes consigo mesmo com o meu trabalho, sempre tento priorizar os meus clientes.</p>\n<!-- /wp:paragraph -->', 'Heverson', 'Heverson da ZN, aqui você vai encontrar o melhor entre os barbeiros da região, focado em mudar seu cabelo.', 'publish', 'closed', 'closed', '', 'heverson', '', '', '2019-11-07 23:28:06', '2019-11-08 01:28:06', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=113', 0, 'barbeiros', '', 0),
(115, 1, '2019-10-21 16:45:51', '2019-10-21 19:45:51', '<!-- wp:paragraph -->\n<p>Comigo o seu visual será único, trazendo modernidade em tudo que há no mundo do estilo e da moda.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Rhauan Barber', 'Barbeiro bravo, determinado a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você ficará massa!!', 'publish', 'closed', 'closed', '', 'rhauan-barber', '', '', '2019-12-01 22:43:19', '2019-12-02 00:43:19', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=115', 0, 'barbeiros', '', 0),
(117, 0, '2019-10-21 16:49:58', '2019-10-21 19:49:58', '<!-- wp:paragraph -->\n<p>Meu objetivo é mudar o seu visual, minha alegria é ver meus clientes satisfeitos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso realizo Workshops para quem quer aprender sobre a arte de mudar os visuais.</p>\n<!-- /wp:paragraph -->', 'Miriam Barber', 'Barbeira gaúcha, determinada a mudar o seu visual. Não importa seu estilo ou seu gosto, comigo você sairá incrível !!', 'publish', 'closed', 'closed', '', 'miriam-barber', '', '', '2019-11-07 23:22:35', '2019-11-08 01:22:35', '', 0, 'http://localhost/Facelook/?post_type=barbeiros&#038;p=117', 0, 'barbeiros', '', 0),
(119, 1, '2019-10-21 16:56:40', '2019-10-21 19:56:40', '<!-- wp:paragraph -->\n<p>O&nbsp;<strong>Low Poo e No Poo</strong>&nbsp;são técnicas de cuidados capilares desenvolvidas exclusivamente para os cabelos cacheados e crespos. Elas fazem uma limpeza mais suave, procurando manter os cabelos hidratados, nutridos, saudáveis e mais fortes. Aqui no blog da Facelook a gente já explicou cada uma das técnicas separadas, mas o texto de hoje é um Guia Mais que Definitivo do<strong>&nbsp;Low Poo e No Poo</strong>. Vamos tirar qualquer dúvida que ainda reste, falar das diferenças de cada técnica e muito mais!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>HISTÓRIA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tudo começou com a cabeleireira cacheada Lorraine Massey, que depois de muito estudo desenvolveu o&nbsp;<strong>Low Poo e No Poo</strong>&nbsp;com o objetivo de cuidar dos cabelos cacheados de forma menos agressiva, com produtos naturais. Lorraine Massey publicou um livro em 2002, chamado “Curly Girl: The Handbook”, em tradução livre “Garota Cacheada: o Manual”. No mesmo ano, criou a sua marca de produtos para cabelos cacheados, a Deva Curl, que foi a primeira a desenvolver produtos específicos para as técnicas de&nbsp;<strong>Low Poo e No Poo</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Desde então o interesses pelo novo método de cuidar dos fios só foi aumentando e se popularizando. Hoje em dia são inúmeras as marcas de produtos capilares que também têm produtos sem os componentes proibidos. Mas isso não quer dizer que ainda não exitam dúvidas sobre o tema, né? Então continua lendo que a gente explica tudinho pra você!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>O QUE É O&nbsp;<strong>LOW POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A tradução para o português significa ‘’Pouco Shampoo’’. Como o próprio nome já diz, essa técnica diminui o uso do shampoo. O objetivo é cuidar das madeixas sem agressões químicas, ou seja, da forma mais natural possível. Os produtos para&nbsp;<strong>Low Poo</strong>&nbsp;não tem sulfatos, petrolatos, parafinas e afins. A limpeza faz menos espuma do que a lavagem com os shampoos tradicionais, já que a espuma é gerada pelo surfactante, proibido na fórmula dos produtos&nbsp;<strong>Low Poo</strong>. O surfactante tem ação detergente e quando usado nos shampoos acaba removendo os óleos necessários para que os cabelos se mantenham hidratados e saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>O QUE É&nbsp;<strong>NO POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Já o&nbsp;<strong>No Poo</strong>&nbsp;exclui totalmente o uso de shampoos (entenda-se SULFATOS de qualquer tipo), fazendo a limpeza dos fios somente com produtos condicionantes. Mas não é qualquer produto. Nesta técnica, só é permitido o uso de condicionadores leves, que sejam livres de quaisquer petrolatos e silicones. Ou seja, assim que você deixa de usar os sulfatos “detergentes”, os condicionadores que contenham ingredientes “residuais” também devem ser deixados de lado.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>QUAL A DIFERENÇA ENTRE&nbsp;<strong>LOW POO</strong>&nbsp;E&nbsp;<strong>NO POO</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Enquanto no&nbsp;<strong>Low Poo</strong>&nbsp;é permitido o uso de shampoos que não contenham certos componentes, no&nbsp;<strong>No Poo</strong>&nbsp;não se usa nenhum shampoo. Além disso, para as duas técnicas, os condicionadores também precisam ser diferentes, sem petrolatos, silicones, parafinas e outros.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>No&nbsp;<strong>Low Poo,</strong>&nbsp;o shampoo e o condicionador precisam ser específicos para a técnica. Já no&nbsp;<strong>No Poo</strong>, a lavagem é feita com a técnica&nbsp;<a href=\"http://www.blogdoscabelos.com.br/co-wash-lavar-cabelo-com-condicionador/\" target=\"_blank\" rel=\"noreferrer noopener\">Co-Wash</a>, ou a lavagem apenas com condicionador.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>PARA QUEM O&nbsp;<strong>LOW POO E NO POO</strong>&nbsp;SÃO INDICADOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como a gente já disse, o&nbsp;<strong>Low Poo e o No Poo</strong>&nbsp;foram desenvolvidos inicialmente para cuidar dos cabelos cacheados e crespos de uma forma mais suave e natural.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Entretanto, muitas pessoas com outros tipos de cabelo já testaram a técnica e se surpreenderam com os resultados. Ela é indicada, principalmente, para quem tem os fios mais ressecados, frágeis e quebradiços. Já que os produtos limpam os fios sem agressões, ajudando a fortalecer o cabelo enfraquecido. Pessoas com cabelos oleosos também podem aderir, mas é preciso ter uma atenção especial para evitar danos como a caspa, seborreia e alergias.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>QUAIS OS COMPONENTES PROIBIDOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Tanto o&nbsp;<strong>Low Poo</strong>&nbsp;quanto o&nbsp;<strong>No Poo,</strong>&nbsp;têm componentes em comum que são proibidos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>O QUE É O SULFATO?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os sulfatos podem ser encontrados na maioria dos shampoos e são reconhecidos nas fórmulas como Lauril Sulfato de Sódio (ou Lauril Sodium Sulfate). Ele é responsável pela formação da espuma do produto e pela ação “detergente”, o que “limpa” os fios. Mas, essa limpeza pode retirar dos fios, além da sujeira, óleos e outros nutrientes essenciais para a saúde capilar. Além disso, os sulfatos também se acumulam na natureza e são um dos poluentes mais agressivos do meio ambiente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>O QUE SÃO OS PETROLATOS E SILICONES?</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Esses componentes são encontrados em máscaras, condicionadores, leave-ins e produtos finalizadores. Um é derivado do petróleo, como o próprio nome sugere, e é encontrado nas fórmulas com os nomes Petrolatum, Paraffinum Liquidum e/ou Mineral Oil.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Eles não fazem absolutamente nada pelos fios, servindo apenas como um diluidor de ativos para dar consistência. Quando aplicados nos fios, esses elementos formam uma espécie de “capa” na fibra capilar. Isso acaba impedindo a entrada da água e de qualquer outro ativo benéfico, como nutrientes e vitaminas. Ou seja, eles praticamente plastificam os fios. Com o passar do tempo, o excesso de resíduos dos petrolatos deixa os cabelos com aspecto sujo, pesado e opaco. Em alguns casos, pode acontecer o enfraquecimento e quebra dos fios. Quando na natureza, essas substâncias poluem tanto quanto o óleo, o piche e o plástico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Já os silicones, podem ser divididos em duas categorias: insolúveis (que não se diluem na água) e os solúveis (que se diluem). No&nbsp;<strong>Low Poo</strong>&nbsp;são permitidos apenas os silicones solúveis, enquanto no&nbsp;<strong>No Poo</strong>&nbsp;não são usados nenhum tipo de silicone.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>DICA</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Muitos nomes? Calma! A gente tem uma forma mais fácil de você saber quais os proibidos de cada técnica. Preparamos uma imagem com todos os componentes que você deve evitar. Assim, você pode imprimir ou salvar no celular, para ter sempre à mão na hora de comprar seus produtinhos. Outra dica é compartilhar informações entre amigas ou grupos que também também aderiram às técnicas. Assim, você fica sabendo os produtos que são permitidos, troca experiências e fica por dentro das novidades!</p>\n<!-- /wp:paragraph -->', 'LOW POO E NO POO: O SEU GUIA MAIS QUE DEFINITIVO', 'O Low Poo e No Poo são técnicas de cuidados capilares desenvolvidas exclusivamente para os cabelos cacheados e crespos. Ficou interessado, quer saber mais, veja na integra.', 'publish', 'closed', 'closed', '', 'low-poo-e-no-poo-o-seu-guia-mais-que-definitivo', '', '', '2019-10-21 17:00:29', '2019-10-21 20:00:29', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=119', 0, 'blogs', '', 0),
(120, 1, '2019-10-21 16:56:33', '2019-10-21 19:56:33', '', 'low-e-no-poo-1280x640', '', 'inherit', 'open', 'closed', '', 'low-e-no-poo-1280x640', '', '', '2019-10-21 16:56:33', '2019-10-21 19:56:33', '', 119, 'http://localhost/Facelook/wp-content/uploads/2019/10/low-e-no-poo-1280x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2019-10-21 17:06:19', '2019-10-21 20:06:19', '<!-- wp:paragraph -->\n<p>Dentro da tabela de curvaturas, o&nbsp;<strong>cabelo ondulado</strong>&nbsp;corresponde ao tipo 2. Porém, esse fio ainda é subdividido em outras 3 subcategorias: 2A, 2B e 2C. Entender em qual dessas você se encontra é super importante para descobrir quais são as necessidades do seu cabelo. Depois de descobrir qual o seu tipo de cabelo, tratar ele fica muito mais fácil e os resultados ficam bem mais evidentes. Quer saber mais sobre os&nbsp;<strong>cabelos ondulados</strong>? Então continue lendo esse post!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2A</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Esse tipo de cabelo é o mais próximo dos cabelos lisos. Isso porque as ondulações são mais leves e sutis. Mesmo com a aparência similar aos fios lisos, os&nbsp;<strong>cabelos ondulados</strong>&nbsp;do tipo 2A já apresentam dificuldades para manter as pontas hidratadas. Por conta disso, é super importante manter uma rotina de hidratação, concentrando os tratamentos no comprimento e nas pontas. Assim, você evitará os problemas com a oleosidade da raiz e manterá os fios saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A dica é sempre usar produtos com texturas mais leves, para não pesar no cabelo, e não exagerar nas quantidades. Mousses e óleos são super bem vindos nas pontas. Além disso, evite deixar seus cabelos sem proteção ao longo do dia. Os leave-ins e os óleos capilares com proteção UV vão ser seus aliados nessa missão. Outro ponto importante é não esquecer do finalizador. Por mais que lavar as madeixas com shampoo e condicionador e deixá-las secando ao natural, sem cosméticos, pareça tentador, evite isso. Os finalizadores servem como uma camada protetora dos fios, contra os danos diários.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2B</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aqui, as ondas mais espaçadas dão as caras. Esse tipo de ondulado é o mais comum de ser encontrado. Nessa categoria, a raiz continua lisa, mas as ondulações se espalham por todo o comprimento e pontas dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem tem esse tipo de cabelo, geralmente, não sabe como conter o volume. Isso acontece porque a finalização é super necessária para definir as ondas nesse tipo de fio. Por esse motivo, mousses, cremes e leave-ins bem levinhos são opções ideais para conter o volume e proteger os fios. Além disso, evite aplicar produtos que não sejam o shampoo na raiz, assim você não estimula a produção excessiva de óleo do couro cabeludo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>CABELOS ONDULADOS</strong>&nbsp;TIPO 2C</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Nessa última categoria dos<strong>&nbsp;cabelos ondulados</strong>, o volume está super presente! Nesse caso, os fios são mais grossos e as ondas formam um S bem definido. A melhor dica pra esse tipo de cabelo é investir em um corte que valorize o volume, como os repicados ou em camadas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Na hora de finalizar, os finalizadores de cachos e os cremes multifuncionais são uma ótima opção. Mas atenção, tome cuidado com a quantidade que vai ser aplicada nos fios. Isso porque, assim como nos outros casos, usar muito produto pode pesar nas madeixas e deixá-las com um aspecto de “ensebado”.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Para os tratamentos, invista na hidratação e na nutrição. Quando você sentir necessidade, as umectações também vão ser grandes aliadas para eliminar o ressecamento e o visual mais opaco dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>10 DICAS PARA MANTER OS&nbsp;<strong>CABELOS ONDULADOS</strong>&nbsp;INCRÍVEIS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>1 – NÃO SAIA POR AI COMPRANDO QUALQUER SHAMPOO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O shampoo ideal para cuidar das madeixas onduladas são os 100% livres de sulfato e de sal. Isso porque essas substâncias ressecam os fios e favorecem o aparecimento do frizz. Outra diquinha é sobre a frequência de lavagem. Se os seus fios são mais finos, vale lavar um dia sim, um dia não. Agora, se os seus fios forem mais grossos, fique pelo menos dois dias sem lavar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>2 – MANTENHA O CONDICIONADOR SEMPRE POR PERTO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A característica mais marcante dos <strong>cabelos ondulados</strong> é a raiz oleosa e o comprimento e as pontas secas. Por isso, além de utilizar sempre o condicionador a cada lavagem, invista em um leave-in para aplicar após o banho. Assim, seus cabelos vão ficar protegidos e hidratados.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>3 – MODELE O CABELO COM ELE AINDA MOLHADO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Um jeito super simples de evitar o frizz e prevenir aquela sensação de fios “ásperos” é modelar as madeixas ainda molhadas. Com os dedos, espalhe um pouco de creme para pentear com textura mais fluida ou um leave-in nas madeixas. Depois, amasse e torça os fios delicadamente, com as mãos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>&nbsp;4 – PRODUTOS COM ÁLCOOL DEVEM SER EVITADOS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os produtos para cabelo com água na sua composição retiram a umidade dos fios. Se for usar um desses produtos, lembre-se de caprichar na hidratação depois!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>5 – EVITE PASSAR AS MÃOS NOS&nbsp;<strong>CABELOS ONDULADOS</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Quanto mais você passa as mãos nos cachos, maiores são as chances de você ter frizz nos fios. O segredo para evitar esse problema é simples! Evite escovar e passar as mãos nas madeixas muitas vezes ao dia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>6 – DIFUSOR: SEU MAIS NOVO ALIADO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O difusor seca as ondas de maneira uniforme, criando um look lindo, natural e volumoso. Quando for usar o difusor, não se esqueça de proteger os fios com um protetor térmico antes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>7 – PENTEIE OS FIOS DO JEITO CERTO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para evitar que as ondas se desfaçam e que os fios se quebrem, a nossa dica é pentear os&nbsp;<strong>cabelos ondulados</strong>&nbsp;com os dedos e ainda úmidos. Depois de lavar as madeixas, retire um pouco do excesso da água com o auxílio de uma toalha. Mas atenção: não esfregue a toalha nos fios. Depois, aplique um creme de pentear ou um leave-in nas madeixas, e penteie-as com os dedos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>8 – CORTE O CABELO APENAS COM ELE SECO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os&nbsp;<strong>cabelos ondulados</strong>&nbsp;secos são completamente diferentes deles úmidos. Isso porque, por conta do peso da água, os cabelos molhados parecem maiores do que realmente são. Por esse motivo, sempre que for cortar as madeixas, corte-as ainda secas, para evitar surpresas desagradáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>9 – EVITE O EXCESSO DE CALOR</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O excesso de calor altera o formato dos&nbsp;<strong>cabelos ondulados</strong>, além de danificar os fios. Por esse motivo, nada de usar o secador a temperatura máxima, ok? E, se for usar, lembre-se sempre do protetor térmico.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>10 – FRONHA DE SEDA NO TRAVESSEIRO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os tecidos de algodão absorvem a umidade natural dos cabelos, provocando o frizz. Por conta disso, invista em uma fronha de seda ou cetim para reduzir a fricção com o tecido e manter as madeixas macias.</p>\n<!-- /wp:paragraph -->', 'CABELOS ONDULADOS: TUDO SOBRE!', 'Veja tudo sobre os cabelos ondulados, sane todas as suas duvidas aqui nesse post.', 'publish', 'closed', 'closed', '', 'cabelos-ondulados-tudo-sobre', '', '', '2019-10-21 17:09:09', '2019-10-21 20:09:09', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=121', 0, 'blogs', '', 0),
(122, 1, '2019-10-21 17:05:38', '2019-10-21 20:05:38', '', 'cabelo-ondulado-curto-perfeito-5-810x456', '', 'inherit', 'open', 'closed', '', 'cabelo-ondulado-curto-perfeito-5-810x456', '', '', '2019-10-21 17:05:38', '2019-10-21 20:05:38', '', 121, 'http://localhost/Facelook/wp-content/uploads/2019/10/cabelo-ondulado-curto-perfeito-5-810x456.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-10-21 17:10:16', '2019-10-21 20:10:16', '<!-- wp:paragraph -->\n<p>Nós já fizemos um post explicando o que é e como funciona&nbsp;a&nbsp;<strong>reconstrução capilar</strong>. Se você sente que os seus fios estão super danificados e precisando de um up, esse post é pra você! Confira como fazer a&nbsp;<strong>reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>RECONSTRUÇÃO CAPILAR: A IMPORTÂNCIA DO PROCESSO</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O nosso cabelo é composto por três substâncias básicas: água, lipídio e queratina. A queratina é uma proteína super importante para garantir a força, resistência e a elasticidade dos fios.&nbsp;Os cabelos que se mostram ressecados, ou mais quebradiços, apresentam deficiência de queratina e, por esse motivo, precisam passar pela<strong>&nbsp;reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>São diversos os fatores que podem causar a perda da queratina em nossos fios, como:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>A realização de procedimentos químicos.</li><li>Exposição excessiva dos cabelos ao sol.</li><li>Uso constante do secador &nbsp;ou da chapinha de cabelo.</li><li>Lavar os fios com água quente durante o banho.</li><li>Contato com o cloro.</li><li>Contato com a água do mar.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Como já vimos, a<strong>&nbsp;reconstrução capilar</strong>&nbsp;é o procedimento que recupera os fios, renovando e protegendo todas as camadas. Além disso, a reconstrução devolve aos fios todos os nutrientes essenciais, que se perdem devido aos danos. O resultado são cabelos sem frizz, com muito brilho e maciez, além de super fortes e saudáveis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>EU PRECISO FAZER ESSE PROCEDIMENTO NOS FIOS?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Conseguimos perceber a olho nu, toda a fragilidade dos nossos fios! Mas como saber se a deficiência é especificamente de queratina?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Existe uma forma bem popular, que chama-se “teste do fio de cabelo no copo de água’’. Para fazer o teste, você vai precisar de um fio do seu cabelo, e colocá-lo dentro de um copo com água. Se o fio for para o fundo do copo, isso significa um cabelo está mais poroso, e que está bem danificado, ou seja, precisando fazer a<strong>&nbsp;reconstrução capilar</strong>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>COMO FAZER NOS CABELOS EM TRANSIÇÃO?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><em>Scab hair</em>&nbsp;é o nome dado para a aqueles fiozinhos mais finos de cabelo que encontram-se em crescimento, depois que você abre mão de fazer tratamentos químicos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Existem até alguns casos onde esse cabelo natural se apresenta mais rebelde, mas nessas horas não é preciso se desesperar. A&nbsp;<strong>reconstrução capilar</strong>, sendo intercalada com outros tratamentos de hidratação e de nutrição, vai auxiliar tanto o&nbsp;<em>scab hair</em>, quanto no restante do cabelo que ainda está com o efeito de química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>PASSO A PASSO PARA&nbsp;<strong>FAZER A RECONSTRUÇÃO CAPILAR</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Os produtos utilizados no tratamento são ricos em queratina, aminoácidos, silicones e agentes reconstrutores. Durante o processo, as cutículas dos fios são fechadas, deixando os cabelos mais alinhados, sedosos e brilhantes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>INGREDIENTES</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>1 – SHAMPOO ANTIRESSÍDUOS</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Ele é essencial para abrir as escamas dos fios, retirando todos os resíduos depositados nas madeixas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>2 – AMPOLA E MÁSCARA RECONSTRUTORA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>As ampolas reconstrutoras têm proteínas e queratina que restauram e recuperam os fios profundamente. Além disso, elas ajudam a fortalecer a estrutura interna dos fios, recuperando a elasticidade e repondo os nutrientes perdidos. As ampolas são mais concentradas e, por isso, super necessárias para&nbsp;<strong>fazer a reconstrução capilar.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Já as máscaras, geralmente, têm em sua composição: proteínas, aminoácidos e queratina. Elas hidratam, reconstroem e nutrem profundamente os fios, restaurando a vitalidade das madeixas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>3 – FINALIZADOR</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O finalizador ajuda a selar o cabelo. Ou seja, ele repara as pontas, elimina o frizz e dá mais brilho aos fios, auxiliando na manutenção da umidade nos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>COMO&nbsp;<strong>FAZER A RECONSTRUÇÃO CAPILAR</strong>?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list {\"ordered\":true} -->\n<ol><li>Lave seus cabelos com o shampoo antirresíduos e enxágue bem.</li><li>Com o auxílio de uma toalha, retire o excesso da água.</li><li>Aplique uma mistura da máscara reconstrutora com a ampola. Passe em toda a extensão dos cabelos. Depois, coloque uma touca e deixe agir por 20 minutos e enxágue bem.</li><li>Finalize com um leave-in.</li></ol>\n<!-- /wp:list -->', 'COMO FAZER A RECONSTRUÇÃO CAPILAR', 'Aprenda a fazer uma reconstrução capilar do 0 e passo a passo com essas super dicas.', 'publish', 'closed', 'closed', '', 'como-fazer-a-reconstrucao-capilar', '', '', '2019-10-21 17:11:24', '2019-10-21 20:11:24', '', 0, 'http://localhost/Facelook/?post_type=blogs&#038;p=123', 0, 'blogs', '', 0),
(124, 1, '2019-10-21 17:10:46', '2019-10-21 20:10:46', '', 'Como.fazer_.a.reconstrução.capilar-1273x640', '', 'inherit', 'open', 'closed', '', 'como-fazer_-a-reconstrucao-capilar-1273x640', '', '', '2019-10-21 17:10:46', '2019-10-21 20:10:46', '', 123, 'http://localhost/Facelook/wp-content/uploads/2019/10/Como.fazer_.a.reconstrução.capilar-1273x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2019-10-21 17:20:31', '2019-10-21 20:20:31', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"9\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:51:\"Informações da página principal e rodapé e menu\";}', 'Página - home', 'pagina-home', 'publish', 'closed', 'closed', '', 'group_5dae12dda58eb', '', '', '2019-10-21 17:39:40', '2019-10-21 20:39:40', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=126', 0, 'acf-field-group', '', 0),
(127, 1, '2019-10-21 17:20:31', '2019-10-21 20:20:31', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:54:\"Coloque o número de telefone que ira ficar no rodapé\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:28:\"Insira o número de telefone\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Número de telefone', 'ntel', 'publish', 'closed', 'closed', '', 'field_5dae1307bf467', '', '', '2019-10-21 17:28:49', '2019-10-21 20:28:49', '', 126, 'http://localhost/Facelook/?post_type=acf-field&#038;p=127', 0, 'acf-field', '', 0),
(128, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:49:\"Insira o endereço do espaço físico da facelook\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço da Facelook', 'endface', 'publish', 'closed', 'closed', '', 'field_5dae13b68bb32', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=128', 1, 'acf-field', '', 0),
(129, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:49:\"Insira o Iframe de video que ira aparecer na home\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:15:\"Insira o Iframe\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Iframe de vídeo principal', 'video', 'publish', 'closed', 'closed', '', 'field_5dae13ef8bb33', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=129', 2, 'acf-field', '', 0),
(130, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:37:\"Link do vídeo ou do canal do youtube\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Insira o link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link do vídeo/canal', 'vicanal', 'publish', 'closed', 'closed', '', 'field_5dae145a8bb34', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=130', 3, 'acf-field', '', 0),
(131, 1, '2019-10-21 17:28:50', '2019-10-21 20:28:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:27:\"Insira o link da API do WPP\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Insira o link\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'API Whats App', 'wp', 'publish', 'closed', 'closed', '', 'field_5dae14ad8bb35', '', '', '2019-10-21 17:28:50', '2019-10-21 20:28:50', '', 126, 'http://localhost/Facelook/?post_type=acf-field&p=131', 4, 'acf-field', '', 0),
(132, 1, '2019-10-21 17:41:05', '2019-10-21 20:41:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-10-21 17:41:05', '2019-10-21 20:41:05', '', 9, 'http://localhost/Facelook/9-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-10-21 23:20:34', '2019-10-22 02:20:34', '<!-- wp:paragraph -->\n<p>Possui em sua composição química HIDROLYZED COLLAGEN E AMODIMETHICONE, entre outros, permitindo uma maior eficiência da ação de descoloração nas camadas mais profundas dos fios de cabelo, de forma uniforme da raiz, meio e pontas. Abre de 6 a 12 tons.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando preparado o produto apresenta coloração violeta. Seguro, rápido, uniforme e progressivo, para ser usado em todas as técnicas de reflexos, ballayages, decapagens e clareamento de fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1-Preparo: Em um recipiente não metálico misture na proporção de 1 medida de pó descolorante para 2 medidas de Emulsão Oxidante Moonlight 35 volumes – matizadora da Facelook Profissional, ou na volumagem adequada para técnica escolhida, até obter uma consistência homogenia e cremosa.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2- Aplicação: Aplique a mistura com um pincel e use luvas adequadas, faça uma prova de toque antes de aplicar o produto. O tempo de ação deverá ser controlado pelo profissional em função do grau de clareamento desejado. Após o tempo de pausa, enxaguar com água morna e shampoo. Em cabelos fragilizados, caso emborrache ou fique elástico os fios, use o Reverse Shock da Facelook Profissional (o salva vidas dos cabeleireiros), restauração instantânea e permanente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3-Matização:&nbsp; Para matização, use a máscara Carbon Power da Facelook Cosméticos, além de hidratar os fios, ela retira o amarelado indesejado, deixando da forma que o seu cliente deseja.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem PÓ DESCOLORANTE MOONLIGHT FACELOOK PROFISSIONAL 500 G</p>\n<!-- /wp:paragraph -->', 'Pó Descolorante Moonlight Facelook Profissional', '', 'trash', 'closed', 'closed', '', 'po-descolorante-moonlight-facelook-profissional__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=148', 0, 'prods', '', 0),
(149, 1, '2019-10-21 23:20:27', '2019-10-22 02:20:27', '', 'po-descolorante-moon-light-facelook', '', 'inherit', 'open', 'closed', '', 'po-descolorante-moon-light-facelook', '', '', '2019-10-21 23:20:27', '2019-10-22 02:20:27', '', 148, 'http://localhost/Facelook/wp-content/uploads/2019/10/po-descolorante-moon-light-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2019-10-21 23:33:40', '2019-10-22 02:33:40', '<!-- wp:paragraph -->\n<p>O BBtox Matizador Facelook é um tratamento eficaz tanto quanto uma Selagem. Tratamento moderno a base de Óleo<br>de Ojon e Macadâmia, super prático na Redução de Volume e Alisamento Capilar, trata toda a estrutura da<br>fibra, mantendo os fios alinhados, nutridos, fortes, saudáveis e sem frizz. Com sua exclusiva fórmula a base<br>de Ojon e Macadâmia, o BBtox Capilar Facelook age no selamento das cutículas e reposição de massa,<br>recuperando toda a estrutura capilar, além que nos fios descoloridos, tem ação matizadora. E nos demais tons, ele<br>revigora a cor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Resultado:<br>Cabelos lisos, saudáveis, a fibra capilar tratada, sem frizz com brilho e volume reduzido.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1 – Lavar os cabelos com Shampoo de Limpeza Profunda de 2 a 3 vezes deixando as cutículas bem abertas.<br>2 – Separe os cabelos em mechas.<br>3 – Aplique o BBtox Matizador Facelook mecha a mecha enluvando bem, deixe agir de 10 a 20 minutos (para cabelo<br>resistente até 30 minutos).<br>4 – Lavar bem o cabelo com água, tirando todo o excesso do produto.<br>5 – Escovar e pranchar de 12 a 18 vezes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem BBtox Matizador Facelook Profissional 1kg.</p>\n<!-- /wp:paragraph -->', 'BBtox Matizador Facelook 4 em 1 Profissional', '', 'trash', 'closed', 'closed', '', 'bbtox-matizador-facelook-4-em-1-profissional__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=150', 0, 'prods', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(151, 1, '2019-10-21 23:32:38', '2019-10-22 02:32:38', '', 'oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook', '', 'inherit', 'open', 'closed', '', 'oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook', '', '', '2019-10-21 23:32:38', '2019-10-22 02:32:38', '', 150, 'http://localhost/Facelook/wp-content/uploads/2019/10/oleo-de-macadamia-e-oleo-de-ojon-bb-tox-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-10-21 23:38:17', '2019-10-22 02:38:17', '<!-- wp:paragraph -->\n<p><strong>Banho De Verniz Pró Repair System Parfait Lisse Facelook</strong>&nbsp;tem fórmula suave, leve e de rápida absorção,<br>além de formar um filme sedoso e aveludado sobre os fios, protegendo-os e condicionando-os, sem deixá-los oleosos.<br>Restabelece, hidrata e restaura os fios danificados por diversas agressões diárias. Sua fórmula exclusiva com<br>Aminoácidos, Proteínas, Vitaminas, Óleo de Argan, Macadâmia e Ojon, promove o selamento das cutículas,<br>desembaraçando os fios e prolongando o penteado, deixando-os leves, macios e com brilho intenso.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Após lavar, com shampoo de sua preferência, aplicar com um pincel o Banho De Verniz Pró Repair System Parfait<br>Lisse Facelook do comprimento até as pontas, massageando os fios com suavidade. Deixar agir por 10<br>minutos para uma máxima hidratação e então enxaguar com água em abundância. Se desejar, pode finalizar com<br>uma escova e prancha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Esse tratamento é indicado, após a Selagem Parfait Lisse Facelook Profissional. Para manter por mais tempo o<br>efeito liso.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Embalagem Banho De Verniz Pró Repair System</strong><br>Parfait Lisse Facelook&nbsp; 1kg.</p>\n<!-- /wp:paragraph -->', 'Banho De Verniz Pró Repair System Parfait Lisse Facelook', '', 'trash', 'closed', 'closed', '', 'banho-de-verniz-pro-repair-system-parfait-lisse-facelook__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/Facelook/?post_type=prods&#038;p=152', 0, 'prods', '', 0),
(153, 1, '2019-10-21 23:38:05', '2019-10-22 02:38:05', '', 'banho-de-verniz-parfait-liss-facelook', '', 'inherit', 'open', 'closed', '', 'banho-de-verniz-parfait-liss-facelook', '', '', '2019-10-21 23:38:05', '2019-10-22 02:38:05', '', 152, 'http://localhost/Facelook/wp-content/uploads/2019/10/banho-de-verniz-parfait-liss-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"29\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Página - produtos', 'pagina-produtos', 'publish', 'closed', 'closed', '', 'group_5dae748403109', '', '', '2019-10-22 00:33:40', '2019-10-22 03:33:40', '', 0, 'http://localhost/Facelook/?post_type=acf-field-group&#038;p=154', 0, 'acf-field-group', '', 0),
(155, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:40:\"Escolha uma imagem para a linha feminina\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Feminina', 'imgf', 'publish', 'closed', 'closed', '', 'field_5dae749c0fc72', '', '', '2019-10-22 00:24:33', '2019-10-22 03:24:33', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=155', 0, 'acf-field', '', 0),
(156, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:46:\"Insira a imagem masculina da linha de produtos\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Masculina', 'imgm', 'publish', 'closed', 'closed', '', 'field_5dae74d10fc73', '', '', '2019-10-22 00:28:30', '2019-10-22 03:28:30', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=156', 1, 'acf-field', '', 0),
(157, 1, '2019-10-22 00:20:54', '2019-10-22 03:20:54', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:44:\"Insira a imagem premium da linha de produtos\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Img Premium', 'imgp', 'publish', 'closed', 'closed', '', 'field_5dae75110fc74', '', '', '2019-10-22 00:28:30', '2019-10-22 03:28:30', '', 154, 'http://localhost/Facelook/?post_type=acf-field&#038;p=157', 2, 'acf-field', '', 0),
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
(177, 1, '2019-10-22 12:29:19', '2019-10-22 15:29:19', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-10-22 12:29:19', '2019-10-22 15:29:19', '', 29, 'http://localhost/Facelook/29-revision-v1/', 0, 'revision', '', 0),
(180, 1, '2019-11-05 20:09:14', '2019-11-05 22:09:14', '<strong style=\"color: #990000\">What can you achieve using Email Subscribers?</strong><p>Add subscription forms on website, send HTML newsletters & automatically notify subscribers about new blog posts once it is published. You can also Import or Export subscribers from any list to Email Subscribers.</p> <strong style=\"color: #990000\">Plugin Features</strong><ol> <li>Send notification emails to subscribers when new blog posts are published.</li> <li>Subscribe form available with 3 options to setup.</li> <li>Double Opt-In and Single Opt-In support.</li> <li>Email notification to admin when a new user signs up (Optional).</li> <li>Automatic welcome email to subscriber.</li> <li>Auto add unsubscribe link in the email.</li> <li>Import/Export subscriber emails to migrate to any lists.</li> <li>Default WordPress editor to create emails.</li> </ol> <strong>Thanks & Regards,</strong><br>Admin', 'Welcome To Email Subscribers', '', 'publish', 'closed', 'closed', '', 'welcome-to-email-subscribers', '', '', '2019-11-05 20:09:14', '2019-11-05 22:09:14', '', 0, 'http://localhost/Facelook/es_template/welcome-to-email-subscribers/', 0, 'es_template', '', 0),
(181, 1, '2019-11-05 20:09:16', '2019-11-05 22:09:16', 'Hello {{NAME}},\r\n\r\nWe have published a new blog article on our website : {{POSTTITLE}}\r\n{{POSTIMAGE}}\r\n\r\nYou can view it from this link : {{POSTLINK}}\r\n\r\nThanks & Regards,\r\nAdmin\r\n\r\nYou received this email because in the past you have provided us your email address : {{EMAIL}} to receive notifications when new updates are posted.', 'New Post Published - {{POSTTITLE}}', '', 'publish', 'closed', 'closed', '', 'new-post-published-posttitle', '', '', '2019-11-05 20:09:16', '2019-11-05 22:09:16', '', 0, 'http://localhost/Facelook/es_template/new-post-published-posttitle/', 0, 'es_template', '', 0),
(185, 1, '2019-11-07 17:06:32', '2019-11-07 19:06:32', '', 'Gustavo', '', 'inherit', 'open', 'closed', '', 'gustavo', '', '', '2019-11-07 17:06:32', '2019-11-07 19:06:32', '', 107, 'http://localhost/Facelook/wp-content/uploads/2019/10/Gustavo.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2019-11-07 17:07:41', '2019-11-07 19:07:41', '', 'Rhauan', '', 'inherit', 'open', 'closed', '', 'rhauan', '', '', '2019-11-07 17:07:41', '2019-11-07 19:07:41', '', 115, 'http://localhost/Facelook/wp-content/uploads/2019/10/Rhauan.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2019-11-07 17:09:38', '2019-11-07 19:09:38', '', 'Miriam', '', 'inherit', 'open', 'closed', '', 'miriam-2', '', '', '2019-11-07 17:09:38', '2019-11-07 19:09:38', '', 117, 'http://localhost/Facelook/wp-content/uploads/2019/10/Miriam-1.png', 0, 'attachment', 'image/png', 0),
(188, 1, '2019-11-07 17:10:59', '2019-11-07 19:10:59', '', 'Cristiano Fhagundes', '', 'inherit', 'open', 'closed', '', 'cristiano-fhagundes-2', '', '', '2019-11-07 17:10:59', '2019-11-07 19:10:59', '', 109, 'http://localhost/Facelook/wp-content/uploads/2019/10/Cristiano-Fhagundes.png', 0, 'attachment', 'image/png', 0),
(189, 1, '2019-11-07 17:11:38', '2019-11-07 19:11:38', '', 'Heverson', '', 'inherit', 'open', 'closed', '', 'heverson-2', '', '', '2019-11-07 17:11:38', '2019-11-07 19:11:38', '', 113, 'http://localhost/Facelook/wp-content/uploads/2019/10/Heverson-1.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2019-11-07 17:12:17', '2019-11-07 19:12:17', '', 'Agata', '', 'inherit', 'open', 'closed', '', 'agata-2', '', '', '2019-11-07 17:12:17', '2019-11-07 19:12:17', '', 111, 'http://localhost/Facelook/wp-content/uploads/2019/10/Agata-1.png', 0, 'attachment', 'image/png', 0),
(193, 1, '2019-11-15 19:50:36', '2019-11-15 21:50:36', '', 'Produtos', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-11-15 19:50:36', '2019-11-15 21:50:36', '', 29, 'http://localhost/facelook/29-revision-v1/', 0, 'revision', '', 0),
(194, 1, '2019-11-16 15:53:47', '2019-11-16 17:53:47', '<div class=\"news__form\">\r\n[email email-135 class:novidades__input placeholder \"Insira o seu e-mail\"]\r\n[submit class:novidades__button \"Enviar\"]                   \r\n </div>\n1\nFacelook Cosméticos\nvinydias0509@gmail.com\nvinydias0509@gmail.com\nemail do cabra que quer receber a newsletter: [email-135]\n\n\n\n\n\nFacelook Cosméticos \"[your-subject]\"\nFacelook Cosméticos <vinydias0509@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Facelook Cosméticos (http://localhost/facelook)\nReply-To: vinydias0509@gmail.com\n\n\n\nA mensagem foi enviada com sucesso.\nO envio da mensagem do remetente falhou.\nOcorreram erros de validação.\nA submissão mencionou-se como spam\nExistem termos que o remetente deve aceitar.\nHá um campo que o remetente deve preencher.\nHá um campo com a entrada maior que o tamanho máximo permitido.\nHá um campo com a entrada menor que o tamanho mínimo permitido.\nFormato da data que o remetente digitou é inválido.\nA data é mais adiantada do que o limite mínimo.\nA data é posterior do que o limite máximo.\nO upload de um arquivo falhou por alguma razão.\nO tipo de arquivo enviado não é permitido.\nArquivo enviado é muito grande.\nO upload de um arquivo falhou por alguma razão.\nFormato de número que o remetente digitou é inválido.\nNúmero é menor do que o limite mínimo.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nEndereço de e-mail que o remetente digitou é inválido\nURL que o remetente digitou é inválido\nNúmero de telefone que o remetente digitou é inválido', 'newsletter', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-12-01 17:54:22', '2019-12-01 19:54:22', '', 0, 'http://localhost/facelook/?post_type=wpcf7_contact_form&#038;p=194', 0, 'wpcf7_contact_form', '', 0),
(195, 1, '2019-11-16 16:56:23', '2019-11-16 18:56:23', '[email email-624 class:novidades__input--footer placeholder \"Insira o seu e-mail\"]\r\n[submit class:novidades__button--footer \"Enviar\"]\n1\nFacelook Cosméticos\nvinydias0509@gmail.com\nvinydias0509@gmail.com\nEmail do novo assinante da newsletter: [email-624]\n\n\n\n\n\nFacelook Cosméticos \"[your-subject]\"\nFacelook Cosméticos <vinydias0509@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Facelook Cosméticos (http://localhost/facelook)\nReply-To: vinydias0509@gmail.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'newsletter_footer', '', 'publish', 'closed', 'closed', '', 'newsletter_copy', '', '', '2019-11-16 17:47:05', '2019-11-16 19:47:05', '', 0, 'http://localhost/facelook/?post_type=wpcf7_contact_form&#038;p=195', 0, 'wpcf7_contact_form', '', 0),
(196, 1, '2019-11-16 18:06:46', '2019-11-16 20:06:46', '', 'polylang_mo_19', '', 'private', 'closed', 'closed', '', 'polylang_mo_19', '', '', '2019-11-16 18:06:46', '2019-11-16 20:06:46', '', 0, 'http://localhost/facelook/?post_type=polylang_mo&p=196', 0, 'polylang_mo', '', 0),
(197, 1, '2019-11-16 18:07:12', '2019-11-16 20:07:12', '', 'polylang_mo_22', '', 'private', 'closed', 'closed', '', 'polylang_mo_22', '', '', '2019-11-16 18:07:12', '2019-11-16 20:07:12', '', 0, 'http://localhost/facelook/?post_type=polylang_mo&p=197', 0, 'polylang_mo', '', 0),
(201, 1, '2019-11-24 16:58:26', '2019-11-24 18:58:26', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget porta lorem. Nunc quis sapien vestibulum enim interdum imperdiet id at metus. Etiam sed metus eu orci cursus maximus sit amet eu sapien. Curabitur at ultrices arcu, ut bibendum erat. Donec dui eros, consequat eu purus in, volutpat tristique quam. Mauris vel posuere purus. Fusce consequat magna nulla, non volutpat urna congue ac. Morbi luctus mi vel quam ultrices viverra. Mauris aliquet tincidunt pellentesque. Suspendisse pharetra viverra est, vitae pellentesque diam viverra in. Etiam quis eleifend elit, eu ullamcorper felis. Nunc luctus elementum arcu eget pretium. Donec id elementum libero.\n\n</p>\n<!-- /wp:paragraph -->', 'OS melhores produtos', 'Etiam eget porta lorem. Nunc quis sapien vestibulum enim interdum imperdiet id at metus. ', 'publish', 'open', 'open', '', 'os-melhores-produtos', '', '', '2019-11-24 16:58:26', '2019-11-24 18:58:26', '', 0, 'http://localhost/facelook/?p=201', 0, 'post', '', 0),
(202, 1, '2019-11-24 16:58:26', '2019-11-24 18:58:26', '<!-- wp:paragraph -->\n<p>\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget porta lorem. Nunc quis sapien vestibulum enim interdum imperdiet id at metus. Etiam sed metus eu orci cursus maximus sit amet eu sapien. Curabitur at ultrices arcu, ut bibendum erat. Donec dui eros, consequat eu purus in, volutpat tristique quam. Mauris vel posuere purus. Fusce consequat magna nulla, non volutpat urna congue ac. Morbi luctus mi vel quam ultrices viverra. Mauris aliquet tincidunt pellentesque. Suspendisse pharetra viverra est, vitae pellentesque diam viverra in. Etiam quis eleifend elit, eu ullamcorper felis. Nunc luctus elementum arcu eget pretium. Donec id elementum libero.\n\n</p>\n<!-- /wp:paragraph -->', 'OS melhores produtos', 'Etiam eget porta lorem. Nunc quis sapien vestibulum enim interdum imperdiet id at metus. ', 'inherit', 'closed', 'closed', '', '201-revision-v1', '', '', '2019-11-24 16:58:26', '2019-11-24 18:58:26', '', 201, 'http://localhost/facelook/201-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2019-11-24 17:02:35', '2019-11-24 19:02:35', '<!-- wp:paragraph -->\n<p>Fusce placerat purus nec est viverra faucibus. Maecenas non nisi eget eros condimentum auctor. Pellentesque tincidunt sem sed posuere rhoncus. Vivamus porta, sem quis laoreet luctus, ex dolor tempus mi, quis malesuada odio nisi in nisi. In nisi mauris, ultricies hendrerit elementum eu, scelerisque vel arcu. Duis aliquet purus nisl, vitae dictum nisi tempus quis. Proin pellentesque massa a ipsum eleifend lobortis a id odio. Morbi quis erat a diam pulvinar lobortis. Pellentesque felis nibh, tristique eu nisl ut, accumsan iaculis mi. Integer laoreet quam id posuere convallis. Integer quam justo, pharetra vitae augue vel, ullamcorper ullamcorper enim. Vestibulum suscipit venenatis eros, rutrum ullamcorper sem euismod at. Mauris tincidunt libero vitae placerat dignissim. Phasellus commodo ex nisl, eget pellentesque metus vehicula ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Recentes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\n\nMorbi quis erat a diam pulvinar lobortis. Pellentesque felis nibh, tristique eu nisl ut, accumsan iaculis mi. Integer laoreet quam id posuere convallis. Integer quam justo, pharetra vitae augue vel, ullamcorper ullamcorper enim. Vestibulum suscipit venenatis eros, rutrum ullamcorper sem euismod at. Mauris tincidunt libero vitae placerat dignissim. Phasellus commodo ex nisl, eget pellentesque metus vehicula ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\n</p>\n<!-- /wp:paragraph -->', 'Outros produtos', ' Duis aliquet purus nisl, vitae dictum nisi tempus quis. Proin pellentesque massa a ipsum eleifend lobortis a id odio. Morbi quis erat a diam pulvinar lobortis.', 'publish', 'open', 'open', '', 'outros-produtos', '', '', '2019-11-24 17:02:35', '2019-11-24 19:02:35', '', 0, 'http://localhost/facelook/?p=203', 0, 'post', '', 0),
(204, 1, '2019-11-24 17:02:35', '2019-11-24 19:02:35', '<!-- wp:paragraph -->\n<p>Fusce placerat purus nec est viverra faucibus. Maecenas non nisi eget eros condimentum auctor. Pellentesque tincidunt sem sed posuere rhoncus. Vivamus porta, sem quis laoreet luctus, ex dolor tempus mi, quis malesuada odio nisi in nisi. In nisi mauris, ultricies hendrerit elementum eu, scelerisque vel arcu. Duis aliquet purus nisl, vitae dictum nisi tempus quis. Proin pellentesque massa a ipsum eleifend lobortis a id odio. Morbi quis erat a diam pulvinar lobortis. Pellentesque felis nibh, tristique eu nisl ut, accumsan iaculis mi. Integer laoreet quam id posuere convallis. Integer quam justo, pharetra vitae augue vel, ullamcorper ullamcorper enim. Vestibulum suscipit venenatis eros, rutrum ullamcorper sem euismod at. Mauris tincidunt libero vitae placerat dignissim. Phasellus commodo ex nisl, eget pellentesque metus vehicula ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Recentes</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\n\nMorbi quis erat a diam pulvinar lobortis. Pellentesque felis nibh, tristique eu nisl ut, accumsan iaculis mi. Integer laoreet quam id posuere convallis. Integer quam justo, pharetra vitae augue vel, ullamcorper ullamcorper enim. Vestibulum suscipit venenatis eros, rutrum ullamcorper sem euismod at. Mauris tincidunt libero vitae placerat dignissim. Phasellus commodo ex nisl, eget pellentesque metus vehicula ut. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\n</p>\n<!-- /wp:paragraph -->', 'Outros produtos', ' Duis aliquet purus nisl, vitae dictum nisi tempus quis. Proin pellentesque massa a ipsum eleifend lobortis a id odio. Morbi quis erat a diam pulvinar lobortis.', 'inherit', 'closed', 'closed', '', '203-revision-v1', '', '', '2019-11-24 17:02:35', '2019-11-24 19:02:35', '', 203, 'http://localhost/facelook/203-revision-v1/', 0, 'revision', '', 0),
(210, 1, '2019-12-01 16:14:19', '2019-12-01 18:14:19', '<!-- wp:paragraph -->\n<p>Carbon Power Máscara Matizadora Efeito Platinado Facelook Cosméticos, é o mais famoso e eficaz<br>desamarelador para cabelos loiros. Um produto revolucionário que veio para facilitar o dia a dia dos<br>profissionais e um ótimo aliado para as loiras que sofrem com o desbotamento dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Foi desenvolvido especialmente para expulsar o amarelado de cabelos loiros, grisalhos e brancos, causados pela ação<br>do tempo, nicotina, poluição, raios UV e coloração. Seu efeito é gradual e progressivo. Proporcionando mais vida<br>aos cabelos loiros, eliminando o amarelado sem danificar os fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em sua fórmula, possui ácido violeta que neutraliza o tom amarelo claro do fio. Recomenda-se teste de mechas para<br>encontrar o tom desejado, por tratar-se de um produto com fixador que demora a sair dos fios. O seu uso, evita o<br>desbotamento e proporciona resultando no efeito acinzentado/platinado. Possui efeito gradual ou imediato,<br>conforme o tom de descoloração dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem CARBON POWER Máscara Matizadora Efeito<br>Platinado –<br>500ml</p>\n<!-- /wp:paragraph -->', 'Carbon Power – Máscara Matizadora Efeito Platinado', '', 'trash', 'closed', 'closed', '', 'carbon-power-mascara-matizadora-efeito-platinado__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=210', 0, 'prods', '', 0),
(211, 1, '2019-12-01 16:11:26', '2019-12-01 18:11:26', '', 'matizador-carbon-power-facelook', '', 'inherit', 'open', 'closed', '', 'matizador-carbon-power-facelook', '', '', '2019-12-01 16:11:26', '2019-12-01 18:11:26', '', 210, 'http://localhost/facelook/wp-content/uploads/2019/12/matizador-carbon-power-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2019-12-01 16:15:41', '2019-12-01 18:15:41', '<!-- wp:paragraph -->\n<p>Defrizante proteção térmica: O poder do Ceraphyl 70 agirá como filme protetor térmico e mecânico sobre os fios dos cabelos. É uma dimetilamina complexo derivado de fonte natural: Óleo de Girassol. Possui uma cadeia carbônica com 82 carbonos, tendo efeito condicionante, anti estático, com qualidades lubrificantes para o fio de cabelo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ômega-active®: Ômega 3, 6 e 9. Penetra no córtex dos fios, interagindo com as cargas residuais, ocupando espaços no córtex. Proporciona mais intensidade de brilho, com maciez, maleabilidade e saúde dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplique uma pequena quantidade nas palmas das mãos, ativando o produto. Distribua uniformemente em toda cabeleira. Escove e pranche em mexas finas.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem Defrizante 300g</p>\n<!-- /wp:paragraph -->', 'Defrizante', '', 'trash', 'closed', 'closed', '', '212__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=212', 0, 'prods', '', 0),
(213, 1, '2019-12-01 16:16:12', '2019-12-01 18:16:12', '', 'defrizante-facelook', '', 'inherit', 'open', 'closed', '', 'defrizante-facelook', '', '', '2019-12-01 16:16:12', '2019-12-01 18:16:12', '', 212, 'http://localhost/facelook/wp-content/uploads/2019/12/defrizante-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2019-12-01 16:19:25', '2019-12-01 18:19:25', '<!-- wp:paragraph -->\n<p>Com alto poder de higienização, o Shampoo Deep Clean System Parfait Lisse Facelook, contém um Blend de hidratantes, óleo de ojon, argan e macadâmia, que juntos hidratam e removem as impurezas e preparam os cabelos, dilatando as cutículas dos fios, deixando-os prontos para receber o Tratamento do Defrizzer Gloss Hair System Parfait Lisse Facelook.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, massageando o couro cabeludo suavemente com as pontas dos dedos. Após, enxaguar, repetir a operação. Na última aplicação, deixa agir por 10 minutos e enxague em abundância. E logo, aplique o Defrizzer Gloss Hair System Parfait Lisse Facelook.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>DEFRIZZER</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Com um exclusivo composto de proteínas, óleo de argan, macadâmia, ojon e tutano, o Defrizzer Gloss Hair System Parfait Lisse Facelook,&nbsp;<strong>promove selamento da cutícula, redução do volume, liso perfeito e proteção regeneradora</strong>, além de ajudar no crescimento dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Após lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, secar os fios com o auxílio de um secador 100% e dividir em 4 partes iguais. Aplicar mecha a mecha o Defrizzer Gloss Hair System Parfait Lisse Facelook, enluvando-as com suavidade, sempre respeitando 1 cm da raíz. &nbsp;Deixe um tempo de pausa de 10 a 25 minutos, retirando o excesso com o auxílio de um pente fino, quando necessário. Dado o tempo de pausa, secar, escovar e pranchar os cabelos em mechas finas de 10 a 18 vezes cada mecha, com a prancha. É opcional lavar quando finalizado.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Conselhos e Observações</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Sugerimos que a SELAGEM seja aplicada por um profissional cabeleireiro que já conheça o processo de aplicação, sempre seguindo corretamente o passo a passo que acompanha o produto.</li><li>Somente a avaliação de um profissional pode determinar qual é o produto indicado para as necessidades de cada cliente, bem como se o cabelo pode ou não passar por um processo químico naquele momento.</li><li>Não utilizar o produto em crianças, gestantes, lactantes ou em caso de couro cabeludo sensível, irritado ou ferido.</li><li>Em contato com os olhos, enxágue abundantemente para evitar irritação.</li><li>Manter fora do alcance de crianças e em local seco e arejado.</li><li>O fabricante não se responsabiliza pelo mau uso ou uso indevido dos produtos. Sempre leia e siga corretamente as instruções antes da utilização.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2>O kit contém:</h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>1 Shampoo Deep Clean System Parfait Liss (Dilatador) – 1 litro</li><li>1 Defrizzer Gloss Hair System Parfait Liss (Ativo) – 1 litro</li></ul>\n<!-- /wp:list -->', 'KIT Selagem – Shampoo + Defrizzer', '', 'trash', 'closed', 'closed', '', 'kit-selagem-shampoo-defrizzer__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=214', 0, 'prods', '', 0),
(215, 1, '2019-12-01 16:20:54', '2019-12-01 18:20:54', '', 'kit-selagem-1', '', 'inherit', 'open', 'closed', '', 'kit-selagem-1', '', '', '2019-12-01 16:20:54', '2019-12-01 18:20:54', '', 214, 'http://localhost/facelook/wp-content/uploads/2019/12/kit-selagem-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2019-12-01 16:21:57', '2019-12-01 18:21:57', '<!-- wp:paragraph -->\n<p>Com alto poder de higienização, o Shampoo Deep Clean System Parfait Lisse Facelook, contém um Blend de hidratantes, óleo de ojon, argan e macadâmia, que juntos hidratam e removem as impurezas e preparam os cabelos, dilatando as cutículas dos fios, deixando-os prontos para receber o Tratamento do Defrizzer Gloss Hair System Parfait Lisse Facelook.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, massageando o couro cabeludo suavemente com as pontas dos dedos. Após, enxaguar, repetir a operação. Na última aplicação, deixa agir por 10 minutos e enxague em abundância. E logo, aplique o Defrizzer Gloss Hair System Parfait Lisse Facelook.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>DEFRIZZER</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Com um exclusivo composto de proteínas, óleo de argan, macadâmia, ojon e tutano, o Defrizzer Gloss Hair System Parfait Lisse Facelook,&nbsp;<strong>promove selamento da cutícula, redução do volume, liso perfeito e proteção regeneradora</strong>, além de ajudar no crescimento dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Após lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, secar os fios com o auxílio de um secador 100% e dividir em 4 partes iguais. Aplicar mecha a mecha o Defrizzer Gloss Hair System Parfait Lisse Facelook, enluvando-as com suavidade, sempre respeitando 1 cm da raíz. &nbsp;Deixe um tempo de pausa de 10 a 25 minutos, retirando o excesso com o auxílio de um pente fino, quando necessário. Dado o tempo de pausa, secar, escovar e pranchar os cabelos em mechas finas de 10 a 18 vezes cada mecha, com a prancha. É opcional lavar quando finalizado.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Conselhos e Observações</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Sugerimos que a SELAGEM seja aplicada por um profissional cabeleireiro que já conheça o processo de aplicação, sempre seguindo corretamente o passo a passo que acompanha o produto.</li><li>Somente a avaliação de um profissional pode determinar qual é o produto indicado para as necessidades de cada cliente, bem como se o cabelo pode ou não passar por um processo químico naquele momento.</li><li>Não utilizar o produto em crianças, gestantes, lactantes ou em caso de couro cabeludo sensível, irritado ou ferido.</li><li>Em contato com os olhos, enxágue abundantemente para evitar irritação.</li><li>Manter fora do alcance de crianças e em local seco e arejado.</li><li>O fabricante não se responsabiliza pelo mau uso ou uso indevido dos produtos. Sempre leia e siga corretamente as instruções antes da utilização.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading -->\n<h2><strong>O kit contém:</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>1 Shampoo Deep Clean System Parfait Liss (Dilatador) – 1 litro</li><li>1 Defrizzer Gloss Hair System Parfait Liss (Ativo) – 1 litro</li></ul>\n<!-- /wp:list -->', 'KIT Selagem – Shampoo + Defrizzer', '', 'inherit', 'closed', 'closed', '', '214-autosave-v1', '', '', '2019-12-01 16:21:57', '2019-12-01 18:21:57', '', 214, 'http://localhost/facelook/214-autosave-v1/', 0, 'revision', '', 0),
(217, 1, '2019-12-01 16:33:02', '2019-12-01 18:33:02', '<!-- wp:paragraph -->\n<p>Reverse Shock Facelook Profissional é um reversor Químico Permanente de Restauração Imediata, sua ação regeneradora potencializada que&nbsp; reestrutura os fios quando tudo deu errado.<br>Quando o cabelo emborrachou, sensibilizou ou está quebrando é só aplicá-lo e deixar por 10 minutos,&nbsp; ele neutraliza qualquer tipo de química!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pode ser usado para auxiliar os relaxamentos e descolorações e também para neutralizar os efeitos da amônia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Recupera os cabelos instantaneamente e permanentemente, devolvendo o aspecto saudável dos fios, danificados e quimicamente tratados.<br>Possui ação antioxidante, que restaura, cauteriza e hidrata profundamente, devolvendo maciez e penteabilidade dos fios, a partir dos ativos, como a Arginina, Cisteína e Creatina, esse trio de aminoácidos, penetra com muita facilidade na fibra capilar. Protege também os fios, dos danos causados pelo uso frequente de químicas, ferramentas térmicas e ação do tempo, garantindo a recuperação, devolvendo a resistência e minimizando os efeitos de envelhecimento dos fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cauterização e reconstrução capilar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem Reverse Shock Facelook Profissional 250 ml</p>\n<!-- /wp:paragraph -->', 'Reverse Shock Facelook Profissional', '', 'trash', 'closed', 'closed', '', 'reverse-shock-facelook-profissional__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=217', 0, 'prods', '', 0),
(218, 1, '2019-12-01 16:32:26', '2019-12-01 18:32:26', '', 'reversor-quimico-profissional-reverse-shock-facelook', '', 'inherit', 'open', 'closed', '', 'reversor-quimico-profissional-reverse-shock-facelook', '', '', '2019-12-01 16:32:26', '2019-12-01 18:32:26', '', 217, 'http://localhost/facelook/wp-content/uploads/2019/12/reversor-quimico-profissional-reverse-shock-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2019-12-01 16:54:56', '2019-12-01 18:54:56', '<!-- wp:paragraph -->\n<p><strong>Jullien Hair Facelook</strong>&nbsp;– Perfume para os Cabelos para mulheres elegantes e sedutoras. Possui fragrância verdadeiramente intensa que, com uma combinação de ativos de absorção rápida e sem peso, promove uma incrível sensação de frescor, também possui benefícios de &nbsp;proteção para os cabelos, dando brilho e maciez aos fios, hidrata e revitaliza os cabelos danificados e ressecados.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ele é enriquecido com ingredientes ativos, a sua fórmula literalmente veste o cabelo de forma sensual.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Vaporize acima da cabeça, sobe os cabelos limpos e secos a uma distância de 20 cm aproximadamente , deixe a névoa cair, para que não fiquem pesados os fios.</p>\n<!-- /wp:paragraph -->', 'Jullien Hair Facelook', '', 'trash', 'closed', 'closed', '', 'jullien-hair-facelook__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=223', 0, 'prods', '', 0),
(224, 1, '2019-12-01 16:54:13', '2019-12-01 18:54:13', '', 'perfume-de-cabelo-jullien-facelook', '', 'inherit', 'open', 'closed', '', 'perfume-de-cabelo-jullien-facelook', '', '', '2019-12-01 16:54:13', '2019-12-01 18:54:13', '', 223, 'http://localhost/facelook/wp-content/uploads/2019/12/perfume-de-cabelo-jullien-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2019-12-01 16:55:58', '2019-12-01 18:55:58', '', 'reparador-de-pontas-ojon-oil-7ml-facelook', '', 'inherit', 'open', 'closed', '', 'reparador-de-pontas-ojon-oil-7ml-facelook', '', '', '2019-12-01 16:55:58', '2019-12-01 18:55:58', '', 0, 'http://localhost/facelook/wp-content/uploads/2019/12/reparador-de-pontas-ojon-oil-7ml-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(228, 1, '2019-12-01 17:00:42', '2019-12-01 19:00:42', '<!-- wp:paragraph -->\n<p><strong>O MAIS NOVO E REVOLUCIONÁRIO TRATAMENTO CAPILAR</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>18 ações em 1 só produto: os poderes do BB CREAM</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>INTENSE HIDRATION HAIR FACELOOK OJON E MACADÂMIA – pH 3,5 – 4,5<br>1. Revitaliza os cabelos secos e danificados<br>2. Nutre os fios<br>3. Prolonga o efeito da cor<br>4. Protege do calor da chapinha e do secador<br>5. Hidrata<br>6. Desembaraça<br>7. Controla o frizz<br>8. Aumenta o brilho<br>9. Previne pontas duplas<br>10. Deixa os fios macios<br>11. Mantém a sedosidade<br>12. Controla o volume<br>13. Promove o movimento e o balanço natural<br>14. Revitaliza os cachos<br>15. Facilita a escovação<br>16. Aumenta a durabilidade da escova<br>17. Ameniza a ação de agressões químicas<br>18. Neutraliza o cheiro de cigarro</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>São 18 funções milagrosas para tratar os fios em um só produto! Você precisa conhecer melhor a versão para<br>cabelos do BB Cream, que já é sucesso na maquiagem.<br>Na primeira aplicação o produto já dá o resultado proposto.<br>BB Cream para cabelo chegou há pouco no Brasil. O nome é uma referência ao produto de maquiagem que no ano<br>passado, o BB Cream – aquele que mistura base,corretivo, protetor e outros ativos cosméticos. Essa versão<br>para cabelo é tão potente que deixa os fios renovados com uma aplicação.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Esse produto reúne várias funções em uma só mistura e age como um tratamento revitalizador do fio, nutrindo o<br>córtex selando as cutículas, o que dá um efeito rejuvenescedor ao cabelo. Ideal tanto para fios<br>quimicamente tratados, como para cabelos saudáveis.<br>Dá uma aparência de fios bem tratados, com brilho e maciez.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Após lavar com shampoo de Limpeza Profunda de 2 a 3 vezes deixando as cutículas bem abertas, aplique o BB<br>Cream Intense Hidration Hair Facelook , mecha a mecha enluvando, deixar agir 15 minutos. Enxágue<br>retirando todo o produto e pranchar de 12 a 18 vezes, para finalização.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Com qual frequência devo usar o produto?<br>Para quem tem cabelo muito danificado ou castigado pela química, o ideal é aplicar o produto a cada 15 dias. Já<br>quem tem fios saudáveis, uma vez por mês já é o suficiente.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem BB Cream Intense Hidration Hair</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Facelook 1.000g</p>\n<!-- /wp:paragraph -->', 'BB CREAM Intense Hidratation HIR FACELOOK', '', 'trash', 'closed', 'closed', '', 'bb-cream-intense-hidratation-hir-facelook__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=228', 0, 'prods', '', 0),
(229, 1, '2019-12-01 17:01:25', '2019-12-01 19:01:25', '', 'ojon-e-macadamia-bb-cream-facelook', '', 'inherit', 'open', 'closed', '', 'ojon-e-macadamia-bb-cream-facelook', '', '', '2019-12-01 17:01:25', '2019-12-01 19:01:25', '', 228, 'http://localhost/facelook/wp-content/uploads/2019/12/ojon-e-macadamia-bb-cream-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2019-12-01 17:02:41', '2019-12-01 19:02:41', '<!-- wp:paragraph -->\n<p>Mandioca, Ojon e Macadâmia Hidrata, Restaura e Condiciona<br>Pote: 2 kg<br>Parfait Lisse</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lave os cabelos com shampoo de sua preferência 2 ou 3 vezes. Com os cabelos limpos e úmidos aplique<br>hidratação Facelook , mecha a mecha massageando de forma regular da raiz até pontas, após pausa de<br>15 minutos retire todo o produto com água em abundância. E finalize como desejar.<br>Embalagem Máscara de Hidratação Facelook Profissional<br>2000g</p>\n<!-- /wp:paragraph -->', 'Máscara de Hidratação Profunda', '', 'trash', 'closed', 'closed', '', 'mascara-de-hidratacao-profunda__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=230', 0, 'prods', '', 0),
(231, 1, '2019-12-01 17:03:30', '2019-12-01 19:03:30', '', 'mascara-de-hidratacao-profunda-perfait-lisse-facelook', '', 'inherit', 'open', 'closed', '', 'mascara-de-hidratacao-profunda-perfait-lisse-facelook', '', '', '2019-12-01 17:03:30', '2019-12-01 19:03:30', '', 230, 'http://localhost/facelook/wp-content/uploads/2019/12/mascara-de-hidratacao-profunda-perfait-lisse-facelook.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2019-12-01 17:06:04', '2019-12-01 19:06:04', '<!-- wp:paragraph -->\n<p>Emulsão Oxidante Cremosa Estabilizada 35 vol. (10,5%)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Anti Yellow Matizadora</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Abertura e Neutralização de tons amarelados</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ojon Oil<br>pH: 3,0 a 4,0</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem Emulsão Oxidante Cremosa Estabilizada<br>35 vol. (10,5%) Anti Yellow Matizadora – 900 ml</p>\n<!-- /wp:paragraph -->', 'Emulsão Oxidante Cremosa Estabilizada 35 vol. (10,5%) Anti Yellow Matizadora', '', 'trash', 'closed', 'closed', '', 'emulsao-oxidante-cremosa-estabilizada-35-vol-105-anti-yellow-matizadora__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=232', 0, 'prods', '', 0),
(233, 1, '2019-12-01 17:05:54', '2019-12-01 19:05:54', '', 'emulsao-oxidante-moon-light-facelook', '', 'inherit', 'open', 'closed', '', 'emulsao-oxidante-moon-light-facelook', '', '', '2019-12-01 17:05:54', '2019-12-01 19:05:54', '', 232, 'http://localhost/facelook/wp-content/uploads/2019/12/emulsao-oxidante-moon-light-facelook.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(234, 1, '2019-12-01 17:10:32', '2019-12-01 19:10:32', '<!-- wp:paragraph -->\n<p>Se você é do time das que amam os cabelos lisos, o post de hoje é pra você! Sabemos que as substâncias presentes nos alisamentos convencionais podem prejudicar a saúde dos nossos fios. Pensando nisso, separamos algumas receitinhas pra você que quer fazer um <strong>alisamento natural</strong>, sem sair de casa!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ficou curiosa? Então vem conferir!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>ALISAMENTO NATURAL</strong>&nbsp;COM MAISENA</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Uma das formas de fazer um&nbsp;<strong>alisamento natural</strong>&nbsp;caseiro é usando amido de milho (a famosa maisena). Pra fazer essa receita você vai precisar apenas de dois ingredientes:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>1 copo de 200 ml de leite do tipo integral;</li><li>2 colheres de sopa de maisena.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Misture bem os ingredientes e leve ao fogo até engrossar. Depois, lave bem os fios com um shampoo antirresíduos. Assim, os fios estarão limpos e prontos para receber os nutrientes. Após isso, retire o excesso de água dos fios com uma toalha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando os fios estiverem apenas úmidos, separe o cabelo em mechas. Aplique a misturinha, mecha a mecha e massageie os fios. Depois disso, deixe a mistura agir no cabelo por cerca de uma hora. Entretanto, enquanto aguarda o produto fazer efeito, os fios devem estar soltos e sem touca. Após essa uma hora, enxágue bem os fios, lave com shampoo e condicionador. O resultado é um&nbsp;<strong>alisamento natural</strong>&nbsp;super leve, e um cabelo bem mais hidratado.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se você preferir, pode finalizar escovando os fios e passando a chapinha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>ALISAMENTO NATURAL</strong>&nbsp;COM LEITE</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Outro método super simples de fazer um&nbsp;<strong>alisamento natural</strong>&nbsp;é usando o leite! Para fazer, será necessário:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>½ xícara de chá de leite do tipo integral.</li><li>½ xícara de chá de água.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Assim como dissemos antes, comece lavando bem o seu cabelo com um shampoo antirresíduos. Desta forma, os nutrientes entrarão nos fios do seu cabelo de forma mais rápida! Após lavar, seque o cabelo com uma toalha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depois, misture os ingredientes em um recipiente e coloque a mistura em um borrifador! Quando seu cabelo estiver seco, divida-o em mechas e borrife a mistura nos fios. Aplique da raiz até as pontas, sempre penteando e massageando os fios.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Aguarde por 30 minutos com os cabelos soltos e sem touca. Após esse tempo, retire bem a mistura com shampoo e condicionador. Para finalizar, seque os fios com o secador e aplique a chapinha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>ALISAMENTO NATURAL</strong>&nbsp;COM AÇÚCAR</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Outro&nbsp;<strong>alisamento natural</strong>&nbsp;super simples é o com açúcar.&nbsp;Para isso, você vai precisar de:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>100 ml de leite do tipo integral.</li><li>1 xícara de chá de açúcar integral.</li><li>2 colheres de sopa de maisena.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Depois de separar os ingredientes, a primeira coisa a ser feita é deixar o cabelo limpo. Para isso, você pode contar, novamente, com a ajuda de um shampoo antirresíduos.&nbsp;Este tipo de shampoo irá abrir as cutículas do cabelo, que potencializará o processo da entrada dos nutrientes nos fios. Em seguida, retire o excesso de água do cabelo com uma toalha, deixando-o apenas úmido.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depois é hora de misturar os ingredientes em um potinho, mexendo bem, deixando a mistura homogênea. Com o seu cabelo ainda úmido, divida o cabelo em mechas e aplique a mistura com a ajuda de um pincel. Depois, massageie bem o cabelo com os dedos. Vale ressaltar que o produto deve ser aplicado na raiz e espalhado até as pontas do cabelo.&nbsp;Espere por cerca de 30 minutos e lave o seu cabelo normalmente, com os mesmos produtos que utiliza no dia a dia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Depois finalize com secador e chapinha. Ou, se preferir, deixe o cabelo secar naturalmente.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prontinho! Agora seus cabelos ficaram lisos de uma forma mais saudável e natural!</p>\n<!-- /wp:paragraph -->', 'ALISAMENTO NATURAL: DICAS PARA ALISAR O CABELO EM CASA!', 'Se você é do time das que amam os cabelos lisos, o post de hoje é pra você! Sabemos que as substâncias presentes nos alisamentos convencionais podem prejudicar a saúde dos nossos fios. Pensando nisso, separamos algumas receitinhas pra você que quer fazer um alisamento natural, sem sair de casa!', 'publish', 'closed', 'closed', '', 'alisamento-natural-dicas-para-alisar-o-cabelo-em-casa', '', '', '2019-12-01 17:12:21', '2019-12-01 19:12:21', '', 0, 'http://localhost/facelook/?post_type=blogs&#038;p=234', 0, 'blogs', '', 0),
(235, 1, '2019-12-01 17:10:26', '2019-12-01 19:10:26', '', 'Como-Alisar-o-Cabelo-Naturalmente-1280x640', '', 'inherit', 'open', 'closed', '', 'como-alisar-o-cabelo-naturalmente-1280x640', '', '', '2019-12-01 17:10:26', '2019-12-01 19:10:26', '', 234, 'http://localhost/facelook/wp-content/uploads/2019/12/Como-Alisar-o-Cabelo-Naturalmente-1280x640.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2019-12-01 17:15:37', '2019-12-01 19:15:37', '<!-- wp:paragraph -->\n<p>Com o surgimento da&nbsp;<strong>escova progressiva</strong>, muitas mulheres encontraram uma solução para os cabelo volumosos, por ser um método que tem maior duração e uma manutenção fácil. A&nbsp;<strong>escova progressiva</strong>&nbsp;é perfeita para quem tem cabelos ondulados e volumosos. Com ela, os fios ficam lisos, brilhantes e com movimento. A técnica também é chamada de&nbsp;<em>defrizz</em>&nbsp;e resolve problemas como pontas duplas, fios ressecados, sem forma e indisciplinados.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>COMO É FEITA A ESCOVA PROGRESSIVA?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>O processo é feito através da aplicação de um produto específico para o tratamento nos cabelos. Para que seja feita a fixação da&nbsp;<strong>progressiva</strong>, o profissional utiliza o&nbsp;<a href=\"http://www.blogdoscabelos.com.br/secador-de-cabelo-aproveite-seu-aparelho/\" target=\"_blank\" rel=\"noreferrer noopener\">secador de cabelo</a>&nbsp;e a chapinha, aproveitando também para fazer a modelagem dos fios e deixá-los bem alinhados.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>TIPOS DE ESCOVA PROGRESSIVAS:</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>SEM FORMOL</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Geralmente as<strong>&nbsp;escovas progressivas</strong>&nbsp;sem formol contém em sua fórmula extratos naturais como óleo de argan, queratina hidrolisada, agentes hidratantes e um blend de óleos que oferece um tratamento eficaz sem prejudicar a saúde e vitalidade dos seus cabelos. Por ser um produto sem formol, é compatível com qualquer tipo de química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>DEFINITIVA</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A&nbsp;<strong>escova progressiva</strong>&nbsp;definitiva mantém os cabelos lisos por mais tempo do que os outros alisamentos. À base de tioglicolato de amônia, um ativo que muda a estrutura do fio, garante uma aparência super lisa, efeito esse que as mulheres só conseguem atingir com a ajuda da chapinha.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>SEMI DEFINITIVA</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Se a intenção é transformar cachos e ondas em fios lisos com aspecto mais natural, esse é o melhor tipo de&nbsp;<strong>escova progressiva</strong>&nbsp;para você. Ela pode durar em torno de quatro meses.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em vez da prancha de cerâmica, como nas outras progressivas citadas, os profissionais usam uma chapinha de porcelana nesse processo, que não alisa tanto o cabelo, deixando-o com a aparência mais natural.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>INTELIGENTE</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Com composição semelhante a definitiva, a&nbsp;<strong>escova progressiva</strong>&nbsp;inteligente tem adição de proteínas e minerais. Com ela, os cabelos podem ser lavados no mesmo dia do tratamento. A cada aplicação, os cabelos se tornam mais finos e lisos, ou seja, também perdem massa. O período de duração desta escova é de quatro a seis meses.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>O retoque do tratamento vai de acordo com o crescimento dos cabelos, ou seja, quando crescer, é só retocar a raiz. Esse procedimento não é muito indicado para quem tem os fios muito crespos, pois pode deixar um efeito de ondas artificiais.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>INDICAÇÕES E CONTRAINDICAÇÕES</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Como falamos anteriormente, a&nbsp;<strong>escova progressiva</strong>&nbsp;é um tratamento indicado para quem tem cabelos volumosos, crespos, enrolados ou ondulados. Não é recomendado para pessoas com couro cabeludo sensível ou cabelos muito oleosos.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Além disso, crianças não podem fazer&nbsp;<strong>escova progressiva</strong>. E grávidas também devem evitar o procedimento porque a química pode afetar a saúde do bebê.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Produtos que contenham fórmulas distintas não podem ser aplicados no mesmo cabelo em um intervalo de tempo muito curto, podendo levar ao corte químico. Por exemplo, quem utiliza produtos com guanidina em sua composição não deve recorrer a produtos que contenham amônia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>COMO FAZER A PROGRESSIVA DURAR MAIS</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para quem quer fazer com que o tratamento dure mais, é indicado o uso de shampoos sem sal. Este mineral é um ativo responsável pela &nbsp;limpeza profunda dos fios. Ou seja, ajuda a acelerar a remoção o efeito da escova progressiva.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>E lembre-se, quanto mais o cabelo for lavado, menor será a duração da&nbsp;<strong>progressiva</strong>. A água tende a retirar o efeito do procedimento. Por isso, evite lavar os cabelos todos os dias, tente limitar-se a 3 vezes por semana.</p>\n<!-- /wp:paragraph -->', 'ESCOVA PROGRESSIVA: TIPOS, CUIDADOS E PRECAUÇÕES', 'Com o surgimento da escova progressiva, muitas mulheres encontraram uma solução para os cabelo volumosos, por ser um método que tem maior duração e uma manutenção fácil. ', 'publish', 'closed', 'closed', '', 'escova-progressiva-tipos-cuidados-e-precaucoes', '', '', '2019-12-01 17:16:12', '2019-12-01 19:16:12', '', 0, 'http://localhost/facelook/?post_type=blogs&#038;p=236', 0, 'blogs', '', 0),
(237, 1, '2019-12-01 17:16:09', '2019-12-01 19:16:09', '', 'escova-progressiva', '', 'inherit', 'open', 'closed', '', 'escova-progressiva', '', '', '2019-12-01 17:16:09', '2019-12-01 19:16:09', '', 236, 'http://localhost/facelook/wp-content/uploads/2019/12/escova-progressiva.jpg', 0, 'attachment', 'image/jpeg', 0),
(238, 1, '2019-12-01 17:30:10', '2019-12-01 19:30:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-12-01 17:30:10', '2019-12-01 19:30:10', '', 9, 'http://localhost/facelook/9-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2019-12-01 17:33:10', '2019-12-01 19:33:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-12-01 17:33:10', '2019-12-01 19:33:10', '', 9, 'http://localhost/facelook/9-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2019-12-17 10:27:38', '2019-12-17 13:27:38', '', 'Mega', '', 'publish', 'closed', 'closed', '', 'mega', '', '', '2019-12-17 10:27:38', '2019-12-17 13:27:38', '', 0, 'http://localhost/facelook/?page_id=242', 0, 'page', '', 0),
(243, 1, '2019-12-17 10:27:38', '2019-12-17 13:27:38', '', 'Mega', '', 'inherit', 'closed', 'closed', '', '242-revision-v1', '', '', '2019-12-17 10:27:38', '2019-12-17 13:27:38', '', 242, 'http://localhost/facelook/242-revision-v1/', 0, 'revision', '', 0),
(245, 1, '2019-12-21 14:28:56', '2019-12-21 17:28:56', '<!-- wp:paragraph -->\n<p>conteúdo da postagem</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Titulo adicional</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>outro paragrafo de conteudo</p>\n<!-- /wp:paragraph -->', 'Titulo da postagem', 'Resumo da postagem', 'publish', 'closed', 'closed', '', 'titulo-da-postagem', '', '', '2019-12-21 14:28:56', '2019-12-21 17:28:56', '', 0, 'http://localhost/facelook/?post_type=blogs&#038;p=245', 0, 'blogs', '', 0),
(246, 1, '2019-12-21 14:33:21', '2019-12-21 17:33:21', '<!-- wp:paragraph -->\n<p>asisdshssauiafdsadasfgjhasgsfasjhad</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Como Usar</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>oaosoadsisdhfhjasadsafddasdasaaaaaaaaaaaaa</p>\n<!-- /wp:paragraph -->', 'Nome  do Produto', '', 'trash', 'closed', 'closed', '', 'nome-do-produto__trashed', '', '', '2019-12-22 16:45:29', '2019-12-22 19:45:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=246', 0, 'prods', '', 0),
(248, 1, '2019-12-22 16:56:45', '2019-12-22 19:56:45', '<!-- wp:paragraph -->\n<p>O&nbsp;Shaving&nbsp;para barbear&nbsp;Barbaro&nbsp;da&nbsp;Facelook&nbsp;Men, foi especialmente desenvolvido para proporcionar um barbear rente, devido a sua lubrificação ideal para a lâmina de corte.&nbsp;&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Aplique o produto, em toda a área a ser barbeado.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3> Precauções: </h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>Manter o produto em local fresco e arejado e fora do alcance das crianças.&nbsp;</li><li>Em caso de sensibilidade, suspenda o uso e procure médico.&nbsp;</li></ul>\n<!-- /wp:list -->', 'Shaving - 1 Litro', '', 'publish', 'closed', 'closed', '', 'shaving-1-litro', '', '', '2019-12-22 17:12:26', '2019-12-22 20:12:26', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=248', 0, 'prods', '', 0),
(249, 1, '2019-12-22 16:52:32', '2019-12-22 19:52:32', '', 'IMG_8464', '', 'inherit', 'open', 'closed', '', 'img_8464', '', '', '2019-12-22 16:52:32', '2019-12-22 19:52:32', '', 248, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8464.jpg', 0, 'attachment', 'image/jpeg', 0),
(250, 1, '2019-12-22 17:02:50', '2019-12-22 20:02:50', '<!-- wp:paragraph -->\n<p>Anti&nbsp;Yellow&nbsp;Matizadora&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Abertura e Neutralização de tons amarelados&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ojon&nbsp;Oil&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>pH: 3,0 a 4,0&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem Emulsão Oxidante Cremosa Estabilizada&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>35 vols.&nbsp;(10,5%)&nbsp;Anti&nbsp;Yellow&nbsp;Matizadora&nbsp;– 900 ml&nbsp;</p>\n<!-- /wp:paragraph -->', 'Emulsão Oxidante Cremosa Estabilizada 35 vol.', '', 'publish', 'closed', 'closed', '', 'emulsao-oxidante-cremosa-estabilizada-35-vol', '', '', '2019-12-22 17:02:50', '2019-12-22 20:02:50', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=250', 0, 'prods', '', 0),
(251, 1, '2019-12-22 17:01:50', '2019-12-22 20:01:50', '', 'IMG_8402', '', 'inherit', 'open', 'closed', '', 'img_8402', '', '', '2019-12-22 17:01:50', '2019-12-22 20:01:50', '', 250, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8402.jpg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2019-12-22 17:06:20', '2019-12-22 20:06:20', '<!-- wp:paragraph -->\n<p>Possui em sua composição química HIDROLYZED COLLAGEN E AMODIMETHICONE, entre outros, permitindo uma maior eficiência da ação de descoloração nas camadas mais profundas dos fios de cabelo, de forma uniforme da raiz, meio e pontas. Abre de 6 a 12 tons.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quando preparado o produto apresenta coloração violeta. Seguro, rápido, uniforme e progressivo, para ser usado em todas as técnicas de reflexos,&nbsp;ballayages, decapagens e clareamento de fios.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>1- Preparo:</strong>&nbsp;&nbsp;</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Em um recipiente não metálico misture na proporção de 1 medida de pó descolorante para 2 medidas de Emulsão Oxidante&nbsp;Moonlight&nbsp;35 volumes -&nbsp;matizadora&nbsp;da&nbsp;Facelook&nbsp;Profissional, ou na&nbsp;volumagem&nbsp;adequada para técnica escolhida, até obter uma consistência homogenia e cremosa.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>2- Aplicação:</strong>&nbsp;&nbsp;</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplique a mistura com um pincel e use luvas adequadas, faça uma prova de toque antes de aplicar o produto. O tempo de ação deverá ser controlado pelo profissional em função do grau de clareamento desejado. Após o tempo de pausa, enxaguar com água morna e shampoo. Em cabelos fragilizados, caso emborrache ou fique elástico os fios, use o Reverse&nbsp;Shock&nbsp;da&nbsp;Facelook&nbsp;Profissional (o salva vidas dos cabeleireiros), restauração instantânea e permanente.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>3- Matização:</strong>&nbsp;&nbsp;&nbsp;</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para matização, use a máscara&nbsp;Carbon&nbsp;Power da&nbsp;Facelook&nbsp;Cosméticos, além de hidratar os fios, ela retira o amarelado indesejado, deixando da forma que o seu cliente deseja.&nbsp;</p>\n<!-- /wp:paragraph -->', 'PÓ DESCOLORANTE MOONLIGHT FACELOOK 500g', '', 'publish', 'closed', 'closed', '', 'po-descolorante-moonlight-facelook', '', '', '2019-12-22 17:13:05', '2019-12-22 20:13:05', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=252', 0, 'prods', '', 0),
(253, 1, '2019-12-22 17:04:58', '2019-12-22 20:04:58', '', 'IMG_8429', '', 'inherit', 'open', 'closed', '', 'img_8429', '', '', '2019-12-22 17:04:58', '2019-12-22 20:04:58', '', 252, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8429.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2019-12-22 17:12:04', '2019-12-22 20:12:04', '<!-- wp:paragraph -->\n<p> A Loção Pós Barba Bárbaro da Facelook Cosméticos, foi especialmente desenvolvido para acelerar o processo de cicatrização e manter a hidratação, após o barbear. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Modo de uso:</strong>  </h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplique o produto em toda a área previamente barbeada. Pode ser usado diariamente. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Precauções:</strong>  </h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Manter o produto em local fresco e arejado e fora do alcance das crianças.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em caso de sensibilidade, suspenda o uso e procure médico.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Loção Pós Barba 200 ml', '', 'publish', 'closed', 'closed', '', 'locao-pos-barba-200-ml', '', '', '2019-12-22 17:12:04', '2019-12-22 20:12:04', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=254', 0, 'prods', '', 0),
(255, 1, '2019-12-22 17:10:34', '2019-12-22 20:10:34', '', 'IMG_8448', '', 'inherit', 'open', 'closed', '', 'img_8448', '', '', '2019-12-22 17:10:34', '2019-12-22 20:10:34', '', 254, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8448.jpg', 0, 'attachment', 'image/jpeg', 0),
(256, 1, '2019-12-22 17:16:17', '2019-12-22 20:16:17', '<!-- wp:paragraph -->\n<p> Óleo reparador para barba, cabelo e bigode Bárbaro Facelook Men, foi formulado com uma bomba de vitaminas que estimula o crescimento. Fios extremamente fortes, macios e com brilho, da raiz às pontas. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Modo de usar:</strong>  </h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Espalhe algumas gotas na palma da mão, aplique na barba, cabelo e bigode diariamente.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Óleo reparador para barba, cabelo e bigode Bárbaro -  Facelook Men 30ml', '', 'publish', 'closed', 'closed', '', 'oleo-reparador-para-barba-cabelo-e-bigode-barbaro-facelook-men-30ml', '', '', '2019-12-22 17:16:17', '2019-12-22 20:16:17', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=256', 0, 'prods', '', 0),
(257, 1, '2019-12-22 17:14:52', '2019-12-22 20:14:52', '', 'IMG_8478', '', 'inherit', 'open', 'closed', '', 'img_8478', '', '', '2019-12-22 17:14:52', '2019-12-22 20:14:52', '', 256, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8478.jpg', 0, 'attachment', 'image/jpeg', 0),
(258, 1, '2019-12-22 17:18:37', '2019-12-22 20:18:37', '<!-- wp:paragraph -->\n<p>É um produto de fixação,&nbsp;pré-secador, totalmente diferenciado por sua formulação feita à base de 4 extratos naturais: Alecrim, Chá Verde, Hibisco e Jaborandi.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ele tem efeito memória, auxiliando na divisão das mechas, pois os fios ficam molhados e alinhados em todo o período do corte. Fixa e dá volume ao cabelo. Além de proteger o fio contra altas temperaturas, sua combinação de polímeros fixadores com o mix de extratos e de proteínas vegetais estrutura e trata os fios. O ativo de proteção térmica também tem função anti-frizz, alinha a fibra capilar e tem efeito de longa duração.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>Modo de usar:</strong> </h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplique o produto no cabelo úmido, para prepara ló para o corte. Após o corte, seque com secador. Finalize com pomadas da Linha&nbsp;Bárbaro&nbsp;Facelook&nbsp;Men&nbsp;para maior volume e diferentes opções de textura, fixação e penteado.&nbsp;</p>\n<!-- /wp:paragraph -->', 'O Grooming Barbaro - Facelook Men 200ml', '', 'publish', 'closed', 'closed', '', 'o-grooming-barbaro-facelook-men-200ml', '', '', '2019-12-22 17:18:37', '2019-12-22 20:18:37', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=258', 0, 'prods', '', 0),
(259, 1, '2019-12-22 17:17:49', '2019-12-22 20:17:49', '', 'IMG_8464', '', 'inherit', 'open', 'closed', '', 'img_8464-2', '', '', '2019-12-22 17:17:49', '2019-12-22 20:17:49', '', 258, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8464-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(260, 1, '2019-12-22 17:21:28', '2019-12-22 20:21:28', '<!-- wp:paragraph -->\n<p> TINTA PARA AERÓGRAFO BARBARO FACELOOK MEN, já vem pronta para o uso, não precisa diluir, é só agitar e aplicar com o aerógrafo.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3><strong>PRECAUÇÕES:</strong>  </h3>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li>USO EXTERNO </li><li>MANTENHA FORA DO ALCANCE DAS CRIANÇAS </li><li>EM CONTATO COM OS OLHOS LAVE COM ÁGUA EM ABUNDÂNCIA </li></ul>\n<!-- /wp:list -->', 'TINTA PARA AERÓGRAFO BARBARO FACELOOK MEN', '', 'publish', 'closed', 'closed', '', 'tinta-para-aerografo-barbaro-facelook-men', '', '', '2019-12-22 17:21:28', '2019-12-22 20:21:28', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=260', 0, 'prods', '', 0),
(261, 1, '2019-12-22 17:20:32', '2019-12-22 20:20:32', '', 'IMG_8474', '', 'inherit', 'open', 'closed', '', 'img_8474', '', '', '2019-12-22 17:20:32', '2019-12-22 20:20:32', '', 260, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8474.jpg', 0, 'attachment', 'image/jpeg', 0),
(262, 1, '2019-12-22 17:24:44', '2019-12-22 20:24:44', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Colocar uma pequena quantidade da FIBER POMADE DRY EFFECT BARBARO DA FACELOOK MEN, na palma da mão, então aplicar sobre os cabelos, modelando-os como desejar.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precauções</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Uso externo. Mantenha fora do alcance das crianças. Em contato com os olhos, lavar com água em abundância. Em caso de sensibilização ou ingestão acidental, suspender o uso e procurar orientação médica. Manter o produto em local fresco, arejado e ao abrigo de luz.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Pomada dry effect - \"Efeito Teia\"', '', 'publish', 'closed', 'closed', '', 'pomada-dry-effect', '', '', '2019-12-22 20:49:34', '2019-12-22 23:49:34', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=262', 0, 'prods', '', 0),
(263, 1, '2019-12-22 17:23:36', '2019-12-22 20:23:36', '', 'IMG_8501', '', 'inherit', 'open', 'closed', '', 'img_8501', '', '', '2019-12-22 17:23:36', '2019-12-22 20:23:36', '', 262, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8501.jpg', 0, 'attachment', 'image/jpeg', 0),
(264, 1, '2019-12-22 17:29:13', '2019-12-22 20:29:13', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Colocar uma pequena quantidade da MATTE POMADE PASTE BARBARO DA FACELOOK MEN, na palma da mão, então aplicar sobre os cabelos, modelando-os como desejar </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precaução</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Uso externo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> Mantenha fora do alcance das crianças. Em contato com os olhos, lavar com água em abundância. Em caso de sensibilização ou ingestão acidental, suspender o uso e procurar orientação médica. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Manter o produto em local fresco, arejado e ao abrigo de luz.  </p>\n<!-- /wp:paragraph -->', '“POMADA CARAMELITO” - MATTE POMADE PASTE', '', 'publish', 'closed', 'closed', '', 'pomada-caramelito-matte-pomade-paste', '', '', '2019-12-22 17:29:13', '2019-12-22 20:29:13', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=264', 0, 'prods', '', 0),
(265, 1, '2019-12-22 17:27:29', '2019-12-22 20:27:29', '', 'IMG_8509', '', 'inherit', 'open', 'closed', '', 'img_8509', '', '', '2019-12-22 17:27:29', '2019-12-22 20:27:29', '', 264, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8509.jpg', 0, 'attachment', 'image/jpeg', 0),
(266, 1, '2019-12-22 17:31:52', '2019-12-22 20:31:52', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Colocar uma pequena quantidade da EXTREME STRONG POMADE BARBARO DA FACELOOK MEN, na palma da mão, então aplicar sobre os cabelos, modelando-os como desejar </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precauções</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Uso externo. Mantenha fora do alcance das crianças. Em contato com os olhos, lavar com água em abundância. Em caso de sensibilização ou ingestão acidental, suspender o uso e procurar orientação médica. Manter o produto em local fresco, arejado e ao abrigo de luz.  </p>\n<!-- /wp:paragraph -->', '“POMADA EXTREMAMENTE FORTE” - EXTREME STRONG POMADE', '', 'publish', 'closed', 'closed', '', 'pomada-extremamente-forte-extreme-strong-pomade', '', '', '2019-12-22 17:31:52', '2019-12-22 20:31:52', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=266', 0, 'prods', '', 0),
(267, 1, '2019-12-22 17:30:45', '2019-12-22 20:30:45', '', 'IMG_8520', '', 'inherit', 'open', 'closed', '', 'img_8520', '', '', '2019-12-22 17:30:45', '2019-12-22 20:30:45', '', 266, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8520.jpg', 0, 'attachment', 'image/jpeg', 0),
(268, 1, '2019-12-22 17:34:38', '2019-12-22 20:34:38', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Aplique o Gel Cera Barbaro Facelook Men com pente, sobre os cabelos úmidos e modele o penteado.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precauções</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Não aplicar se o couro cabeludo estiver irritado ou lesionado. Manter o produto em local fresco e arejado e fora do alcance das crianças.  </p>\n<!-- /wp:paragraph -->', 'Gel Cera 250grs', '', 'publish', 'closed', 'closed', '', 'gel-cera-250grs', '', '', '2019-12-22 17:34:38', '2019-12-22 20:34:38', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=268', 0, 'prods', '', 0),
(269, 1, '2019-12-22 17:33:17', '2019-12-22 20:33:17', '', 'IMG_8565', '', 'inherit', 'open', 'closed', '', 'img_8565', '', '', '2019-12-22 17:33:17', '2019-12-22 20:33:17', '', 268, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8565.jpg', 0, 'attachment', 'image/jpeg', 0),
(270, 1, '2019-12-22 17:39:30', '2019-12-22 20:39:30', '<!-- wp:paragraph -->\n<p>Uso exclusivo profissional&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Leia atentamente as instruções antes de utilizar este produto.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3> Advertência</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Este produto somente deve ser usado para o fim de que se destina, sendo perigoso para qualquer outro uso. Contém Álcali. Se o couro cabeludo estiver irritado ou lesionado, não deve ser aplicado. Sempre usar luvas. Evite o contato com os olhos, este produto pode causar cegueira. Caso ocorra, enxágue abundantemente e procure um médico. Não utilize o produto, caso o cabelo tiver sofrido descoloração, tintura de qualquer origem ou química que não seja à base de Hidróxido de Sódio. Não reutilize a embalagem. Não dispense em nenhuma circunstância, o teste de mechas.&nbsp;&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplicar o produto em toda cabeleira, evitando encostar no couro cabeludo. Direcione o tempo necessário para o relaxamento (máximo de 18 minutos). Usando luvas, aplique a quantidade necessária do Alisante Americano Hidróxido de Sódio&nbsp;Bárbaro&nbsp;da&nbsp;Facelook&nbsp;Men&nbsp;a partir da nuca, com o auxílio do pente. Continue aplicando para cima em direção a fronte, partindo de finas mechas. Ainda com o pente, alise a raiz dos cabelos até as pontas, até que o alisamento desejado seja atingido. Não aplique com pressão e nunca ultrapasse o tempo recomendado. Enxágue, cuidadosamente com água morna.&nbsp; </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precauções</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Manter o produto em local fresco e arejado e fora do alcance das crianças.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Alisante Americano Hidróxido de Sódio Bárbaro - Black', '', 'publish', 'closed', 'closed', '', 'alisante-americano-hidroxido-de-sodio-barbaro-da-facelook-men', '', '', '2019-12-22 20:54:29', '2019-12-22 23:54:29', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=270', 0, 'prods', '', 0),
(271, 1, '2019-12-22 17:38:20', '2019-12-22 20:38:20', '', 'IMG_8570', '', 'inherit', 'open', 'closed', '', 'img_8570', '', '', '2019-12-22 17:38:20', '2019-12-22 20:38:20', '', 270, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8570.jpg', 0, 'attachment', 'image/jpeg', 0),
(272, 1, '2019-12-22 17:42:38', '2019-12-22 20:42:38', '<!-- wp:paragraph -->\n<p>Com fórmula inovadora a fim de tratar os cabelos sem Química, o&nbsp;BBtox&nbsp;Orgânico Açaí Berry&nbsp;Matizador&nbsp;Facelook&nbsp;Cosméticos Profissional, tem a finalidade de devolver aos fios hidratação profunda, nutrição, brilho e maciez. Alisando os cabelos com 0% de Formol para não agredir os fios e nem a saúde de quem está aplicando e recebendo o tratamento. Age eliminando o&nbsp;frizz&nbsp;e proporcionando um Liso Natural.&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>O&nbsp;BBtox&nbsp;Orgânico Açaí Berry&nbsp;Matizador&nbsp;Facelook&nbsp;Cosméticos Profissional pode ser usado em gestantes e lactantes, porém consulte sempre seu médico para que autorize.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Ação</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Alinha os fios para que fiquem disciplinados, além de nutrir e restaurar as fibras danificadas. Possui potente ação&nbsp;anti-frizz, redução do volume e efeito nutri-selante, age impedindo a oxidação dos radicais livres e sela as cutículas, promovendo brilho intenso e intensificação da cor, deixando seus fios lisos e saudáveis. Reconstitui profundamente a estrutura, repõe a massa capilar perdida, devolve o brilho e o balanço natural dos cabelos. Ajuda a desembaraçar facilmente, proporcionando um brilho intenso.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lave os cabelos com um Shampoo Dilatador. Seque 80% dos fios com secador;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Com o auxílio de um pente e pincel inicie o processo de aplicação do&nbsp;BBtox&nbsp;Orgânico Açaí Berry&nbsp;Matizador, deixar o produto em pausa sobre os fios de acordo com a estrutura do cabelo (30min para cabelos levemente ondulados - até 1h 30 m para cabelos mais resistentes);&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Após o tempo de pausa recomendado enxaguar bem os fios para retirar todo o produto</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Importante</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Para cabelos loiros ou vermelhos, além de tirar o produto com água, use um Shampoo hidratante com&nbsp;ph&nbsp;3,5 – 4,5 para que não haja alteração da cor.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- Com uma toalha retire o excesso de água, seque com auxílio do secador, e escove muito bem e depois sele as cutículas com o auxílio de uma prancha de 12 a 18 vezes, mechas finas.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Durabilidade do Tratamento:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>- 20 a 40 dias</p>\n<!-- /wp:paragraph -->', 'BOTOX ORGANICO WHITE', '', 'publish', 'closed', 'closed', '', 'botox-organico-white', '', '', '2019-12-22 17:43:39', '2019-12-22 20:43:39', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=272', 0, 'prods', '', 0),
(273, 1, '2019-12-22 17:41:57', '2019-12-22 20:41:57', '', 'IMG_8580', '', 'inherit', 'open', 'closed', '', 'img_8580', '', '', '2019-12-22 17:41:57', '2019-12-22 20:41:57', '', 272, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8580.jpg', 0, 'attachment', 'image/jpeg', 0),
(274, 1, '2019-12-22 17:46:06', '2019-12-22 20:46:06', '<!-- wp:paragraph -->\n<p>Óleo de tratamento para todos os tipos de cabelo. O Reparador de Pontas – Óleo de Ojon Facelook Cosméticos, age hidratando e nutrindo as fibras capilares. Ele ainda ajuda a dar brilho e proporciona proteção moderada para a secagem dos fios com o secador. Seu cabelo fica nutrido, hidratado, com um brilho intenso e um perfume duradouro </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Ação do Ojon</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Rico em nutrientes e altamente emoliente, hidrata e nutre os fios. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Espalhe nas mãos de 2 a 3 gotas e deslize suavemente ao longo dos fios úmidos ou secos, sem passar na raiz.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem do Reparador de Pontas – 30 ml&nbsp;</p>\n<!-- /wp:paragraph -->', 'REPARADOR DE PONTAS - ÓLEO DE OJON', '', 'publish', 'closed', 'closed', '', 'reparador-de-pontas-oleo-de-ojon', '', '', '2019-12-22 17:46:06', '2019-12-22 20:46:06', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=274', 0, 'prods', '', 0),
(275, 1, '2019-12-22 17:45:47', '2019-12-22 20:45:47', '', 'IMG_8602', '', 'inherit', 'open', 'closed', '', 'img_8602', '', '', '2019-12-22 17:45:47', '2019-12-22 20:45:47', '', 274, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8602.jpg', 0, 'attachment', 'image/jpeg', 0),
(276, 1, '2019-12-22 17:52:34', '2019-12-22 20:52:34', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Shampoo</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Com alto poder de higienização, o Shampoo Deep Clean System Parfait Lisse Facelook, contém um Blend de hidratantes, óleo de ojon, argan e macadâmia, que juntos hidratam e removem as impurezas e preparam os cabelos, dilatando as cutículas dos fios, deixando-os prontos para receber o Tratamento do Defrizzer Gloss Hair System Parfait Lisse Facelook.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, massageando o couro cabeludo suavemente com as pontas dos dedos. Após, enxaguar, repetir a operação. Na última aplicação, deixa agir por 10 minutos e enxague em abundância. E logo, aplique o Defrizzer Gloss Hair System Parfait Lisse Facelook. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2><strong>Defrizzer</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Com um exclusivo composto de proteínas, óleo de argan, macadâmia, ojon, tanino e tutano, o Defrizzer Gloss Hair System Parfait Lisse Facelook, promove selamento da cutícula, redução do volume, liso perfeito e proteção regeneradora, além de ajudar no crescimento dos fios.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Após lavar os cabelos com o Shampoo Deep Clean System Parfait Lisse Facelook, secar os fios com o auxílio de um secador 100% e dividir em 4 partes iguais. Aplicar mecha a mecha o Defrizzer Gloss Hair System Parfait Lisse Facelook, enluvando-as com suavidade, sempre respeitando 1 cm da raíz.  Deixe um tempo de pausa de 10 a 25 minutos, retirando o excesso com o auxílio de um pente fino, quando necessário. Dado o tempo de pausa, secar, escovar e pranchar os cabelos em mechas finas de 10 a 18 vezes cada mecha, com a prancha. É opcional lavar quando finalizado.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Conselhos e Observações</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Sugerimos que a SELAGEM seja aplicada por um profissional cabeleireiro que já conheça o processo de aplicação, sempre seguindo corretamente o passo a passo que acompanha o produto. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Somente a avaliação de um profissional pode determinar qual é o produto indicado para as necessidades de cada cliente, bem como se o cabelo pode ou não passar por um processo químico naquele momento. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Não utilizar o produto em crianças, gestantes, lactantes ou em caso de couro cabeludo sensível, irritado ou ferido. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Em contato com os olhos, enxágue abundantemente para evitar irritação. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Manter fora do alcance de crianças e em local seco e arejado. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>O fabricante não se responsabiliza pelo mau uso ou uso indevido dos produtos. Sempre leia e siga corretamente as instruções antes da utilização. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>• O kit contém:&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1 Shampoo Deep Clean System Parfait Liss (Dilatador) - 1 litro </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1 Defrizzer Gloss Hair System Parfait Liss (Ativo) - 1 litro </p>\n<!-- /wp:paragraph -->', 'PROGRESSIVA PARFAIT LISSE', '', 'publish', 'closed', 'closed', '', 'progressiva-parfait-lisse', '', '', '2019-12-22 17:52:34', '2019-12-22 20:52:34', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=276', 0, 'prods', '', 0),
(277, 1, '2019-12-22 17:52:01', '2019-12-22 20:52:01', '', 'IMG_8605', '', 'inherit', 'open', 'closed', '', 'img_8605', '', '', '2019-12-22 17:52:01', '2019-12-22 20:52:01', '', 276, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8605.jpg', 0, 'attachment', 'image/jpeg', 0),
(278, 1, '2019-12-22 18:53:05', '2019-12-22 21:53:05', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Possui fragrância verdadeiramente intensa que, com uma combinação de ativos de absorção rápida e sem peso, promove uma incrível sensação de frescor, também possui benefícios de proteção para os cabelos, dando brilho e maciez aos fios, hidrata e revitaliza os cabelos danificados e ressecados.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ele é enriquecido com ingredientes ativos, a sua fórmula literalmente veste o cabelo de forma sensual. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Vaporize acima da cabeça, sobe os cabelos limpos e secos a uma distância de 20 cm aproximadamente, deixe a névoa cair, para que não fiquem pesados os fios.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Embalagem do Perfume de Cabelo 100ml&nbsp;</p>\n<!-- /wp:paragraph -->', 'Jullien Hair Facelook – Perfume para os Cabelos para mulheres elegantes e sedutoras.', '', 'publish', 'closed', 'closed', '', 'jullien-hair-facelook-perfume-para-os-cabelos-para-mulheres-elegantes-e-sedutoras', '', '', '2019-12-22 18:53:05', '2019-12-22 21:53:05', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=278', 0, 'prods', '', 0),
(279, 1, '2019-12-22 18:52:31', '2019-12-22 21:52:31', '', 'IMG_8615', '', 'inherit', 'open', 'closed', '', 'img_8615', '', '', '2019-12-22 18:52:31', '2019-12-22 21:52:31', '', 278, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8615.jpg', 0, 'attachment', 'image/jpeg', 0),
(280, 1, '2019-12-22 18:56:59', '2019-12-22 21:56:59', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> O BBtox Matizador Facelook é um tratamento eficaz tanto quanto uma Selagem. Tratamento moderno a base de Óleo de Ojon e Macadâmia, super prático na Redução de Volume e Alisamento Capilar, trata toda a estrutura da fibra, mantendo os fios alinhados, nutridos, fortes, saudáveis e sem frizz. Com sua exclusiva fórmula a base de Ojon e Macadâmia, o BBtox Capilar Facelook age no selamento das cutículas e reposição de massa, recuperando toda a estrutura capilar, além que nos fios descoloridos, tem ação matizadora. E nos demais tons, ele revigora a cor.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Resultado</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Cabelos lisos, saudáveis, a fibra capilar tratada, sem frizz com brilho e volume reduzido.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>1 – Lavar os cabelos com Shampoo de Limpeza Profunda de 2 a 3 vezes deixando as cutículas bem abertas.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2 – Separe os cabelos em mechas.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3 – Aplique o&nbsp;BBtox&nbsp;Matizador&nbsp;Facelook&nbsp;mecha a mecha enluvando bem, deixe agir de 10 a 20 minutos (para cabelo&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>resistente até 30 minutos).&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4 – Lavar bem o cabelo com água, tirando todo o excesso do produto.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5 – Escovar e pranchar de 12 a 18 vezes.&nbsp;</p>\n<!-- /wp:paragraph -->', 'BBtox Matizador Facelook', '', 'publish', 'closed', 'closed', '', 'bbtox-matizador-facelook', '', '', '2019-12-22 18:56:59', '2019-12-22 21:56:59', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=280', 0, 'prods', '', 0),
(281, 1, '2019-12-22 18:56:24', '2019-12-22 21:56:24', '', 'IMG_8612', '', 'inherit', 'open', 'closed', '', 'img_8612', '', '', '2019-12-22 18:56:24', '2019-12-22 21:56:24', '', 280, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8612.jpg', 0, 'attachment', 'image/jpeg', 0),
(282, 1, '2019-12-22 18:59:17', '2019-12-22 21:59:17', '<!-- wp:paragraph -->\n<p>O Perfume Capilar&nbsp;Million&nbsp;Barbaro&nbsp;Facelook&nbsp;Men, possui fragrância verdadeiramente intensa que, com uma combinação de ativos de absorção rápida e sem peso, promove uma incrível sensação de frescor, também possui benefícios de proteção para os cabelos, dando brilho e maciez aos fios, hidrata e revitaliza os cabelos danificados e ressecados.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ele é enriquecido com ingredientes ativos, a sua fórmula literalmente veste o cabelo de forma sensual. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Vaporize acima da cabeça, sobe os cabelos limpos e secos a uma distância de 20 cm aproximadamente, deixe a névoa cair, para que não fiquem pesados os fios e finalize como desejar.  </p>\n<!-- /wp:paragraph -->', 'Perfume Capilar Million Barbaro Facelook Men 100ml', '', 'publish', 'closed', 'closed', '', 'perfume-capilar-million-barbaro-facelook-men-100ml', '', '', '2019-12-22 18:59:17', '2019-12-22 21:59:17', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=282', 0, 'prods', '', 0),
(283, 1, '2019-12-22 18:58:42', '2019-12-22 21:58:42', '', 'IMG_8619', '', 'inherit', 'open', 'closed', '', 'img_8619', '', '', '2019-12-22 18:58:42', '2019-12-22 21:58:42', '', 282, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8619.jpg', 0, 'attachment', 'image/jpeg', 0),
(284, 1, '2019-12-22 19:01:37', '2019-12-22 22:01:37', '<!-- wp:paragraph -->\n<p>Reverse&nbsp;Shock&nbsp;Facelook&nbsp;Profissional é um reversor Químico Permanente de Restauração Imediata, sua ação regeneradora potencializada que reestrutura os fios quando tudo deu errado.&nbsp;<br>Quando o cabelo emborrachou, sensibilizou ou está quebrando é só aplicá-lo e deixar por 10 minutos, ele neutraliza qualquer tipo de química!&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Pode ser usado para auxiliar os relaxamentos e descolorações e também para neutralizar os efeitos da amônia.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Recupera os cabelos instantaneamente e permanentemente, devolvendo o aspecto saudável dos fios, danificados e quimicamente tratados.&nbsp;<br>Possui ação antioxidante, que restaura, cauteriza e hidrata profundamente, devolvendo maciez e&nbsp;penetrabilidade&nbsp;dos fios, a partir dos ativos, como a Arginina, Cisteína e Creatina, esse trio de aminoácidos, penetra com muita facilidade na fibra capilar. Protege também os fios, dos danos causados pelo uso frequente de químicas, ferramentas térmicas e ação do tempo, garantindo a recuperação, devolvendo a resistência e minimizando os efeitos de envelhecimento dos fios.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cauterização e reconstrução capilar.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Reverse Shock Facelook Profissional', '', 'publish', 'closed', 'closed', '', 'reverse-shock-facelook-profissional', '', '', '2019-12-22 19:01:37', '2019-12-22 22:01:37', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=284', 0, 'prods', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(285, 1, '2019-12-22 19:04:13', '2019-12-22 22:04:13', '<!-- wp:paragraph -->\n<p>Tem fórmula suave, leve e de rápida absorção, além de formar um filme sedoso e aveludado sobre os fios, protegendo-os e condicionando-os, sem deixá-los oleosos. Restabelece, hidrata e restaura os fios danificados por diversas agressões diárias. Sua fórmula exclusiva com Aminoácidos, Proteínas, Vitaminas, Óleo de Argan, Macadâmia e Ojon, promove o selamento das cutículas, desembaraçando os fios e prolongando o penteado, deixando-os leves, macios e com brilho intenso. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Após lavar, com shampoo de sua preferência, aplicar com um pincel o Banho De Verniz Pró&nbsp;Repair&nbsp;System&nbsp;Parfait&nbsp;Lisse&nbsp;Facelook&nbsp;do comprimento até as pontas, massageando os fios com suavidade. Deixar agir por 10 minutos para uma máxima hidratação e então enxaguar com água em abundância. Se desejar, pode finalizar com uma escova e prancha.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Esse tratamento é indicado, após a Selagem&nbsp;Parfait&nbsp;Lisse&nbsp;Facelook&nbsp;Profissional. Para manter por mais tempo o efeito liso.&nbsp;</p>\n<!-- /wp:paragraph -->', 'Banho De Verniz Pró Repair System Parfait Lisse Facelook', '', 'publish', 'closed', 'closed', '', 'banho-de-verniz-pro-repair-system-parfait-lisse-facelook', '', '', '2019-12-22 19:04:13', '2019-12-22 22:04:13', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=285', 0, 'prods', '', 0),
(286, 1, '2019-12-22 19:03:45', '2019-12-22 22:03:45', '', 'IMG_8632', '', 'inherit', 'open', 'closed', '', 'img_8632', '', '', '2019-12-22 19:03:45', '2019-12-22 22:03:45', '', 285, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8632.jpg', 0, 'attachment', 'image/jpeg', 0),
(287, 1, '2019-12-22 19:11:04', '2019-12-22 22:11:04', '<!-- wp:paragraph -->\n<p>É muito importante entender a importância dos aminoácidos do cabelo: Esta formação de aminoácidos no cabelo pode diminuir pela química ou simplesmente por agressões externas como secador, chapinha, vento, sol, etc. a falta destes aminoácidos causam queda e quebra de cabelos. E a forma para suprir estas necessidades pode ser ingerida, com suplementos e uma boa alimentação, ou tópico, com cremes ricos em aminoácido diretamente nos cabelos.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Aplicar a Máscara Anabolizante Facelook Cosméticos, nos cabelos úmidos e já lavados do comprimento até as pontas, massageando os fios com suavidade. Deixar agir por 10 a 15 minutos, enluvando para uma máxima potencialização e então enxaguar com água em abundância. Finalizar como desejar.  </p>\n<!-- /wp:paragraph -->', 'DECA PROTEIN ANABOLIZANTE', '', 'publish', 'closed', 'closed', '', 'deca-protein-anabolizante', '', '', '2019-12-22 19:11:04', '2019-12-22 22:11:04', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=287', 0, 'prods', '', 0),
(288, 1, '2019-12-22 19:08:51', '2019-12-22 22:08:51', '', 'IMG_8625', '', 'inherit', 'open', 'closed', '', 'img_8625', '', '', '2019-12-22 19:08:51', '2019-12-22 22:08:51', '', 287, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8625.jpg', 0, 'attachment', 'image/jpeg', 0),
(289, 1, '2019-12-22 20:59:56', '2019-12-22 23:59:56', '<!-- wp:paragraph -->\n<p>Uso exclusivo profissional&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Leia atentamente as instruções antes de utilizar este produto. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Advertência</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Este produto somente deve ser usado para o fim de que se destina, sendo perigoso para qualquer outro uso. Contém Álcali. Se o couro cabeludo estiver irritado ou lesionado, não deve ser aplicado. Sempre usar luvas. Evite o contato com os olhos, este produto pode causar cegueira. Caso ocorra, enxágue abundantemente e procure um médico. Não utilize o produto, caso o cabelo tiver sofrido descoloração, tintura de qualquer origem ou química que não seja à base de Hidróxido de Sódio. Não reutilize a embalagem. Não dispense em nenhuma circunstância, o teste de mechas.   </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Modo de Uso</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Aplicar o produto em toda cabeleira, evitando encostar no couro cabeludo. Direcione o tempo necessário para o relaxamento (máximo de 18 minutos). Usando luvas, aplique a quantidade necessária do Alisante Americano Hidróxido de Sódio Bárbaro da Facelook Men a partir da nuca, com o auxílio do pente. Continue aplicando para cima em direção a fronte, partindo de finas mechas. Ainda com o pente, alise a raiz dos cabelos até as pontas, até que o alisamento desejado seja atingido. Não aplique com pressão e nunca ultrapasse o tempo recomendado. Enxágue, cuidadosamente com água morna.   </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Precauções</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p> Manter o produto em local fresco e arejado e fora do alcance das crianças.  </p>\n<!-- /wp:paragraph -->', 'Alisante Americano Hidróxido de Sódio Bárbaro - White', '', 'publish', 'closed', 'closed', '', 'alisante-americano-hidroxido-de-sodio-barbaro-white', '', '', '2019-12-22 20:59:56', '2019-12-22 23:59:56', '', 0, 'http://localhost/facelook/?post_type=prods&#038;p=289', 0, 'prods', '', 0),
(290, 1, '2019-12-22 20:59:18', '2019-12-22 23:59:18', '', 'IMG_8577', '', 'inherit', 'open', 'closed', '', 'img_8577', '', '', '2019-12-22 20:59:18', '2019-12-22 23:59:18', '', 289, 'http://localhost/facelook/wp-content/uploads/2019/12/IMG_8577.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(6, 'Pó', 'po', 0),
(8, 'pintola', 'pintola', 0),
(9, 'alguma coisa', 'alguma-coisa', 0),
(10, 'cabelo', 'cabelo', 0),
(11, 'cabelo', 'cabelo', 0),
(12, 'Teste', 'teste', 0),
(13, 'Shampoo', 'shampoo', 0),
(14, 'Condicionador', 'condicionador', 0),
(15, 'Cremes', 'cremes', 0),
(16, 'Pomada', 'pomadas', 0),
(17, 'Géis', 'geis', 0),
(18, 'Óleos', 'oleos', 0),
(19, 'Português', 'pt', 0),
(20, 'Português', 'pll_pt', 0),
(21, 'pll_5dd056d63b9b3', 'pll_5dd056d63b9b3', 0),
(22, 'English', 'en', 0),
(23, 'English', 'pll_en', 0),
(24, 'Uncategorized', 'uncategorized-en', 0),
(26, 'Reversor químico', 'reversor-quimico', 0),
(27, 'Matizador', 'matizador', 0),
(28, 'Botox', 'botox', 0),
(29, 'Defrizante', 'defrizante', 0),
(30, 'Tratamento', 'tratamento', 0),
(31, 'Finalizador', 'finalizador', 0),
(32, 'Perfume para Cabelo', 'perfume-para-cabelo', 0),
(33, 'Ox', 'ox', 0),
(34, 'algo', 'algo', 0);

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
(1, 20, 0),
(1, 21, 0),
(24, 21, 0),
(24, 23, 0),
(48, 6, 0),
(57, 10, 0),
(57, 11, 0),
(62, 12, 0),
(148, 6, 0),
(150, 28, 0),
(150, 30, 0),
(152, 30, 0),
(152, 31, 0),
(198, 22, 0),
(201, 1, 0),
(203, 1, 0),
(210, 27, 0),
(210, 31, 0),
(212, 29, 0),
(212, 31, 0),
(214, 13, 0),
(214, 29, 0),
(214, 31, 0),
(217, 26, 0),
(217, 31, 0),
(223, 31, 0),
(223, 32, 0),
(228, 30, 0),
(232, 33, 0),
(246, 14, 0),
(246, 15, 0),
(246, 28, 0),
(246, 29, 0),
(252, 6, 0),
(256, 18, 0),
(262, 16, 0),
(264, 16, 0),
(266, 16, 0),
(268, 17, 0),
(272, 28, 0),
(274, 18, 0),
(276, 13, 0),
(278, 32, 0),
(280, 27, 0),
(282, 32, 0),
(284, 26, 0);

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
(1, 1, 'category', '', 0, 2),
(2, 2, 'barber_category', '', 0, 0),
(3, 3, 'barber_category', '', 0, 0),
(4, 4, 'barber_category', '', 0, 0),
(5, 5, 'barber_category', '', 0, 0),
(6, 6, 'produto_category', '', 0, 1),
(8, 8, 'category', '', 0, 0),
(9, 9, 'blog_category', '', 0, 0),
(10, 10, 'categoria', '', 0, 1),
(11, 11, 'tag', '', 0, 1),
(12, 12, 'tag', '', 0, 1),
(13, 13, 'produto_category', '', 0, 1),
(14, 14, 'produto_category', '', 0, 0),
(15, 15, 'produto_category', '', 0, 0),
(16, 16, 'produto_category', '', 0, 3),
(17, 17, 'produto_category', '', 0, 1),
(18, 18, 'produto_category', '', 0, 2),
(19, 19, 'language', 'a:3:{s:6:\"locale\";s:5:\"pt_BR\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"br\";}', 0, 0),
(20, 20, 'term_language', '', 0, 1),
(21, 21, 'term_translations', 'a:2:{s:2:\"pt\";i:1;s:2:\"en\";i:24;}', 0, 2),
(22, 22, 'language', 'a:3:{s:6:\"locale\";s:5:\"en_US\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"us\";}', 0, 0),
(23, 23, 'term_language', '', 0, 1),
(24, 24, 'category', '', 0, 0),
(26, 26, 'produto_category', '', 0, 1),
(27, 27, 'produto_category', '', 0, 1),
(28, 28, 'produto_category', '', 0, 1),
(29, 29, 'produto_category', '', 0, 0),
(30, 30, 'produto_category', '', 0, 0),
(31, 31, 'produto_category', '', 0, 0),
(32, 32, 'produto_category', '', 0, 2),
(33, 33, 'produto_category', '', 0, 0),
(34, 34, 'produto_tag', '', 0, 0);

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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,wpmudcs1,lingotek-professional-translation,lingotek-translation'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '199'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&widgets_access=off&mfold=o'),
(19, 1, 'wp_user-settings-time', '1573502310'),
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
(34, 1, 'metaboxhidden_nav-menus', 'a:10:{i:0;s:19:\"add-post-type-blogs\";i:1;s:23:\"add-post-type-barbeiros\";i:2;s:19:\"add-post-type-prods\";i:3;s:12:\"add-post_tag\";i:4;s:17:\"add-blog_category\";i:5;s:12:\"add-blog_tag\";i:6;s:19:\"add-barber_category\";i:7;s:14:\"add-barber_tag\";i:8;s:20:\"add-produto_category\";i:9;s:15:\"add-produto_tag\";}'),
(35, 1, 'pll_dismissed_notices', 'a:1:{i:0;s:8:\"lingotek\";}'),
(36, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";}'),
(37, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(38, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5dae12dda58eb\";}'),
(39, 1, 'metaboxhidden_page', 'a:0:{}');

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
-- Índices para tabela `wp_ig_actions`
--
ALTER TABLE `wp_ig_actions`
  ADD UNIQUE KEY `id` (`contact_id`,`message_id`,`campaign_id`,`type`,`link_id`,`list_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `type` (`type`);

--
-- Índices para tabela `wp_ig_blocked_emails`
--
ALTER TABLE `wp_ig_blocked_emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_ig_campaigns`
--
ALTER TABLE `wp_ig_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `status` (`status`),
  ADD KEY `base_template_id` (`base_template_id`);

--
-- Índices para tabela `wp_ig_contactmeta`
--
ALTER TABLE `wp_ig_contactmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `meta_ley` (`meta_key`);

--
-- Índices para tabela `wp_ig_contacts`
--
ALTER TABLE `wp_ig_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wp_user_id` (`wp_user_id`),
  ADD KEY `email` (`email`),
  ADD KEY `status` (`status`),
  ADD KEY `form_id` (`form_id`);

--
-- Índices para tabela `wp_ig_contacts_ips`
--
ALTER TABLE `wp_ig_contacts_ips`
  ADD PRIMARY KEY (`created_on`,`ip`),
  ADD KEY `ip` (`ip`);

--
-- Índices para tabela `wp_ig_contact_meta`
--
ALTER TABLE `wp_ig_contact_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `meta_ley` (`meta_key`);

--
-- Índices para tabela `wp_ig_forms`
--
ALTER TABLE `wp_ig_forms`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_ig_links`
--
ALTER TABLE `wp_ig_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `message_id` (`message_id`),
  ADD KEY `link` (`link`(100));

--
-- Índices para tabela `wp_ig_lists`
--
ALTER TABLE `wp_ig_lists`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_ig_lists_contacts`
--
ALTER TABLE `wp_ig_lists_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_ig_mailing_queue`
--
ALTER TABLE `wp_ig_mailing_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Índices para tabela `wp_ig_queue`
--
ALTER TABLE `wp_ig_queue`
  ADD UNIQUE KEY `id` (`contact_id`,`campaign_id`,`requeued`,`options`),
  ADD KEY `contact_id` (`contact_id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `requeued` (`requeued`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `priority` (`priority`),
  ADD KEY `count` (`count`),
  ADD KEY `error` (`error`),
  ADD KEY `ignore_status` (`ignore_status`);

--
-- Índices para tabela `wp_ig_sending_queue`
--
ALTER TABLE `wp_ig_sending_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `wp_user_id` (`wp_user_id`);

--
-- Índices para tabela `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_newsletter_sent`
--
ALTER TABLE `wp_newsletter_sent`
  ADD PRIMARY KEY (`email_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `email_id` (`email_id`);

--
-- Índices para tabela `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_id` (`email_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- AUTO_INCREMENT de tabela `wp_ig_blocked_emails`
--
ALTER TABLE `wp_ig_blocked_emails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_ig_campaigns`
--
ALTER TABLE `wp_ig_campaigns`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_ig_contactmeta`
--
ALTER TABLE `wp_ig_contactmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_ig_contacts`
--
ALTER TABLE `wp_ig_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_ig_contact_meta`
--
ALTER TABLE `wp_ig_contact_meta`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_ig_forms`
--
ALTER TABLE `wp_ig_forms`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_ig_links`
--
ALTER TABLE `wp_ig_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_ig_lists`
--
ALTER TABLE `wp_ig_lists`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_ig_lists_contacts`
--
ALTER TABLE `wp_ig_lists_contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `wp_ig_mailing_queue`
--
ALTER TABLE `wp_ig_mailing_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_ig_sending_queue`
--
ALTER TABLE `wp_ig_sending_queue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_newsletter`
--
ALTER TABLE `wp_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_newsletter_emails`
--
ALTER TABLE `wp_newsletter_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `wp_newsletter_stats`
--
ALTER TABLE `wp_newsletter_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_newsletter_user_logs`
--
ALTER TABLE `wp_newsletter_user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1530;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=923;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
